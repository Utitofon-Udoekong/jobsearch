import 'package:flutter/material.dart';
import 'package:hired_flutter/constants/custom_lists.dart';
import 'package:hired_flutter/constants/theme.dart';
import 'package:hired_flutter/constants/utils.dart';
import 'package:hired_flutter/view/cubit/home_cubit.dart';
import 'package:hired_flutter/view/search/cubit/search_cubit.dart';
import 'package:hired_flutter/view/search/search.dart';
import 'package:hired_flutter/view/widgets/circle_loader.dart';
import 'package:hired_flutter/view/widgets/custom_text_field.dart';
import 'package:hired_flutter/view/widgets/job_card.dart';
import 'package:hired_flutter/view/widgets/screen_header_button.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final isLoading = context.select((HomeCubit cubit) => cubit.state.isLoading);
    final popularJobList = context.select((HomeCubit cubit) => cubit.state.popularJobs);
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: const HeaderIcon(
          icon: Icons.menu,
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(SIZES.large),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Welcome",
                  style: TextStyles.subTitle,
                ),
                const SizedBox(
                  height: 5,
                ),
                const Text(
                  "Find your perfect job",
                  style: TextStyles.title,
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Expanded(child: CustomTextField(onChanged: (newQuery) => context
                      .read<SearchCubit>()
                      .setSearchQuery(searchQuery: newQuery),)),
                    const SizedBox(
                      width: 10,
                    ),
                    ActionIcon(
                      icon: const Icon(
                        Icons.search,
                        size: 25,
                        color: Colors.white
                      ),
                      color: COLORS.tertiary,
                      onTap: () {
                        final query = context.read<SearchCubit>().state.searchQuery;
                        if(query.isEmpty) return;
                        context.read<SearchCubit>().getInitialSearch();
                        router(context).push(MaterialPageRoute<void>(
                          builder: (BuildContext context) => const SearchPage(),
                        ),);
                      },
                    )
                  ],
                ),
                const SizedBox(
                  height: SIZES.xLarge,
                ),
                Text("Find your job type",
                    style: TextStyles.subTitle.copyWith(fontWeight: FONT.bold)),
                const SizedBox(
                  height: SIZES.medium,
                ),
                GridView.count(
                  physics: const NeverScrollableScrollPhysics(),
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  shrinkWrap: true,
                  crossAxisCount: 2,
                  childAspectRatio: 16 / 5,
                  children: List.generate(cards.length, (index) {
                    final card = cards[index];
                    return CustomCard(title: card.title, color: card.color, onTap: (){
                      context.read<SearchCubit>().setSearchQuery(searchQuery: card.title);
                      if(card.title == "Remote"){
                        context.read<SearchCubit>().setSearchRemote(searchRemote: true);
                      }
                      context.read<SearchCubit>().getInitialSearch();
                      router(context).push(MaterialPageRoute<void>(
                        builder: (BuildContext context) => const SearchPage(),
                      ),);
                    },);
                  }),
                ),
                const SizedBox(
                  height: SIZES.xLarge,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text("Popular jobs", style: TextStyles.subTitle),
                    TextButton(onPressed: (){
                      context.read<SearchCubit>().setSearchQuery(searchQuery: "Software developer");
                      router(context).push(MaterialPageRoute<void>(
                        builder: (BuildContext context) => const SearchPage(),
                      ),);
                    }, child: const Text("Show all", style: TextStyle(fontSize: SIZES.medium, color: COLORS.gray, fontWeight: FONT.medium),))
                ],),
                const SizedBox(
                  height: SIZES.medium,
                ),
                ElevatedButton(onPressed: () => context.read<HomeCubit>().getPopularJobs(), child: const Text("get data", style: TextStyles.title,)),
                isLoading ? const CircleLoader() : Column(
                  children: popularJobList.map((job) {
                    return Container(
                      margin: const EdgeInsets.only(bottom: 10),
                      child: JobCard(job: job));
                  }).toList(),
                ),
                
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CustomCard extends StatelessWidget {
  final String title;
  final Color color;
  final void Function()? onTap;
  const CustomCard(
      {super.key, required this.title, required this.color, this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        // width: getScreenWidth(context) / 2,
        height: 50,
        padding: const EdgeInsets.all(SIZES.xSmall),
        alignment: Alignment.center,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(SIZES.small), color: color),
        child: Text(
          title,
          style: const TextStyle(fontSize: SIZES.medium, color: COLORS.white),
        ),
      ),
    );
  }
}
