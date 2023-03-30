import 'package:flutter/material.dart';
import 'package:hired_flutter/constants/theme.dart';
import 'package:hired_flutter/constants/utils.dart';
import 'package:hired_flutter/models/job_model.dart';
import 'package:hired_flutter/view/widgets/screen_header_button.dart';

class JobDetailPage extends StatefulWidget {
  final Job job;
  const JobDetailPage({super.key, required this.job});

  @override
  State<JobDetailPage> createState() => _JobDetailPageState();
}

class _JobDetailPageState extends State<JobDetailPage>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
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
              icon: Icons.share_outlined,
              onTap: () {},
            )
          ],
        ),
        body: SafeArea(
            child: Padding(
          padding: const EdgeInsets.all(SIZES.large),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: SIZES.medium,
              ),
              Container(
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(SIZES.large)),
                alignment: Alignment.center,
                child: Image.network(
                  checkImageURL(widget.job.employerLogo)
                      ? widget.job.employerLogo!
                      : "https://t4.ftcdn.net/jpg/05/05/61/73/360_F_505617309_NN1CW7diNmGXJfMicpY9eXHKV4sqzO5H.jpg",
                  scale: 0.8,
                ),
              ),
              const SizedBox(
                height: SIZES.small,
              ),
              Text(
                widget.job.jobTitle ?? 'N/A',
                style: TextStyles.title.copyWith(fontSize: SIZES.large),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: SIZES.small / 2,
              ),
              Text(
                '${widget.job.employerName ?? 'N/A'} / ',
                style: const TextStyle(
                    fontSize: SIZES.medium - 2,
                    color: COLORS.primary,
                    fontWeight: FONT.medium),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.location_on_outlined,
                    color: COLORS.gray,
                    size: 14,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    '${widget.job.jobCity} ${widget.job.jobState}, ${widget.job.jobCountry}',
                    style: const TextStyle(
                        fontSize: SIZES.medium - 2,
                        color: COLORS.gray,
                        fontWeight: FONT.regular),
                  )
                ],
              ),
              const SizedBox(
                height: SIZES.medium,
              ),
              Align(
                alignment: Alignment.center,
                child: TabBar(
                  controller: tabController,
                  labelColor: const Color(0XFFAAA9B8),
                  // labelPadding: const EdgeInsets.symmetric(
                  //     vertical: SIZES.medium, horizontal: SIZES.xLarge),
                  isScrollable: true,
                  indicatorSize: TabBarIndicatorSize.tab,
                  indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(SIZES.medium),
                    color: COLORS.primary),
                  unselectedLabelColor: const Color(0XFFAAA9B8),
                  labelStyle: const TextStyle(
                      fontSize: SIZES.small, fontWeight: FONT.medium),
                  tabs: const [
                    Tab(text: "About"),
                    Tab(
                      text: "Qualifications",
                    ),
                    Tab(
                      text: "Responsibilities",
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: SIZES.small,
              ),
              Expanded(
                child: TabBarView(
                  controller: tabController,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: SIZES.large),
                      padding: const EdgeInsets.all(SIZES.medium),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(SIZES.medium)),
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("About the job:", style: TextStyles.title.copyWith(fontSize: SIZES.large),),
                            const SizedBox(height: SIZES.small,),
                            Text(widget.job.jobDescription ?? 'N/A', style: const TextStyle(
                              fontSize: SIZES.medium - 2,
                              color: COLORS.gray,
                              fontWeight: FONT.regular,
                            ),)
                          ],
                        ),
                      ),
                    ),
                    TabContent(title: "Qualifications", data: widget.job.jobHighlights!.qualifications ?? ['N/A']),
                    TabContent(title: "Responsibilities", data: widget.job.jobHighlights!.responsibilities ?? ['N/A']),
                  ],
                ),
              )
            ],
          ),
        )));
  }
}

class TabContent extends StatelessWidget {
  final List<String> data;
  final String title;
  const TabContent({super.key, required this.data, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
                        margin: const EdgeInsets.only(top: SIZES.large),
                        padding: const EdgeInsets.all(SIZES.medium),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(SIZES.medium)),
                        child: SingleChildScrollView(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                title,
                                style: TextStyles.title
                                    .copyWith(fontSize: SIZES.large),
                              ),
                              ...List.generate(
                                  data.length, (index) {
                                return Container(
                                  margin: const EdgeInsets.symmetric(
                                      vertical: SIZES.small),
                                  child: Row(children: [
                                    Container(
                                      width: 6,
                                      height: 6,
                                      decoration: BoxDecoration(
                                          color: COLORS.gray2,
                                          borderRadius: BorderRadius.circular(6)),
                                    ),
                                    const SizedBox(width: SIZES.small,),
                                    Expanded(
                                      child: Text(data[index], style: const TextStyle(
                                        fontSize: SIZES.medium - 2,
                                        color: COLORS.gray,
                                        fontWeight: FONT.regular
                                      ), softWrap: true),
                                    )
                                  ]),
                                );
                              })
                            ],
                          ),
                        ),
                      );
  }
}

