import 'package:flutter/material.dart';
import 'package:hired_flutter/constants/theme.dart';
import 'package:hired_flutter/constants/utils.dart';
import 'package:hired_flutter/view/search/cubit/search_cubit.dart';
import 'package:hired_flutter/view/widgets/circle_loader.dart';
import 'package:hired_flutter/view/widgets/custom_text_field.dart';
import 'package:hired_flutter/view/widgets/job_card.dart';
import 'package:hired_flutter/view/widgets/screen_header_button.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    
    final query = context.select((SearchCubit bloc) => bloc.state.searchQuery);
    final isLoading =
        context.select((SearchCubit bloc) => bloc.state.isLoading);
    final showError =
        context.select((SearchCubit bloc) => bloc.state.showError);
    final searchRemote =
        context.select((SearchCubit bloc) => bloc.state.searchRemote);
    final remoteJobs =
        context.select((SearchCubit bloc) => bloc.state.remoteOnlyJobs);
    final searchResult =
        context.select((SearchCubit bloc) => bloc.state.searchResult);
    final currentPage =
        context.select((SearchCubit bloc) => bloc.state.currentPage);
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          leading: HeaderIcon(
            icon: Icons.adaptive.arrow_back,
            onTap: () => router(context).pop(),
          ),
          actions: [
            HeaderIcon(
              icon: Icons.filter_alt_rounded,
              onTap: () {
                showFilterBottomSheet(
                  context: context,
                  searchRemote: searchRemote,
                  changeRemote: (setRemote) => context.read<SearchCubit>().setSearchRemote(searchRemote: setRemote),
                  changeQuery: (newQuery) => context
                      .read<SearchCubit>()
                      .setSearchQuery(searchQuery: newQuery),
                  onDone: (){
                    context.read<SearchCubit>().runFilterQuery();
                    router(context).pop();
                  }
                );
              },
            )
          ],
        ),
        body: SafeArea(
            child: Padding(
          padding: const EdgeInsets.all(SIZES.large),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  query,
                  style: TextStyles.title,
                ),
                const SizedBox(
                  height: 3,
                ),
                const Text(
                  "Job opportunities",
                  style: TextStyle(
                      fontWeight: FONT.medium,
                      fontSize: SIZES.small,
                      color: COLORS.primary),
                ),
                const SizedBox(
                  height: SIZES.medium,
                ),
                isLoading
                    ? const CircleLoader()
                    : showError
                        ? const Text(
                            "An error occured",
                            style: TextStyle(
                              fontSize: SIZES.small,
                              color: COLORS.gray,
                            ),
                          )
                        : Column(
                            children: searchRemote
                                ? remoteJobs.map((job) {
                                    return Container(
                                      margin: const EdgeInsets.only(bottom: 10),
                                      child: JobCard(job: job),
                                    );
                                  }).toList()
                                : searchResult.map((job) {
                                    return Container(
                                      margin: const EdgeInsets.only(bottom: 10),
                                      child: JobCard(job: job),
                                    );
                                  }).toList(),
                          ),
                const SizedBox(
                  height: SIZES.small,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    PaginationButton(
                      icon: Icons.arrow_back_ios_rounded,
                      onTap: () => context.read<SearchCubit>().pageBackward(),
                      isNull: currentPage == "1",
                    ),
                    const SizedBox(
                      width: SIZES.xSmall,
                    ),
                    Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(2),
                          color: COLORS.white),
                      alignment: Alignment.center,
                      child: Text(
                        currentPage,
                        style:
                            TextStyles.title.copyWith(fontSize: SIZES.medium),
                      ),
                    ),
                    const SizedBox(
                      width: SIZES.xSmall,
                    ),
                    PaginationButton(
                      icon: Icons.arrow_forward_ios_rounded,
                      onTap: () => context.read<SearchCubit>().pageForward(),
                      isNull: false,
                    )
                  ],
                )
              ],
            ),
          ),
        )));
  }

  showFilterBottomSheet({
    required BuildContext context,
    required bool searchRemote,
    required void Function(bool)? changeRemote,
    required void Function(String)? changeQuery,
    required void Function()? onDone
  }) {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return Container(
            color: COLORS.lightWhite,
            padding: const EdgeInsets.symmetric(horizontal: SIZES.large, vertical: SIZES.xLarge),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Set query",
                  style: TextStyle(
                      fontSize: SIZES.medium,
                      fontWeight: FONT.medium,
                      color: COLORS.primary),
                ),
                const SizedBox(
                  height: 5,
                ),
                CustomTextField(
                  onChanged: changeQuery,
                ),
                // CustomTextField(onChanged: (searchQuery) => context.read<SearchCubit>().setSearchQuery(searchQuery: searchQuery),),
                const SizedBox(
                  height: SIZES.medium,
                ),
                SwitchListTile.adaptive(
                  value: searchRemote,
                  onChanged: changeRemote,
                  title: const Text("Show remote only",
                      style: TextStyle(
                          fontSize: SIZES.medium,
                          fontWeight: FONT.medium,
                          color: COLORS.primary)),
                ),
                const SizedBox(
                  height: SIZES.medium,
                ),
                ElevatedButton(
                  onPressed: onDone, style: ButtonStyle(
                  backgroundColor: const MaterialStatePropertyAll(COLORS.tertiary),
                  side: const MaterialStatePropertyAll(BorderSide.none),
                  fixedSize: MaterialStatePropertyAll(Size(getScreenWidth(context), 44)),
                  shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)))
                ), child: const Text("Finish", style: TextStyle(color: Colors.white, fontSize: SIZES.medium, fontWeight: FONT.medium),),)
              ],
            ),
          );
        });
  }
}

class PaginationButton extends StatelessWidget {
  final IconData icon;
  final void Function()? onTap;
  final bool isNull;
  const PaginationButton(
      {super.key, required this.icon, this.onTap, required this.isNull});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
          width: 30,
          height: 30,
          decoration: BoxDecoration(
              color: isNull ? COLORS.gray : COLORS.tertiary,
              borderRadius: BorderRadius.circular(5)),
          alignment: Alignment.center,
          child: Icon(
            icon,
            size: 20,
          )),
    );
  }
}
