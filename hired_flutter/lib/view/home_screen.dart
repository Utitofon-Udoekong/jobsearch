import 'package:flutter/material.dart';
import 'package:hired_flutter/constants/custom_lists.dart';
import 'package:hired_flutter/constants/theme.dart';
import 'package:hired_flutter/constants/utils.dart';
import 'package:hired_flutter/view/widgets/custom_text_field.dart';
import 'package:hired_flutter/view/widgets/screen_header_button.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const HeaderIcon(
          icon: Icons.menu,
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(SIZES.large),
          child: SingleChildScrollView(
            child: Column(
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
                    const CustomTextField(),
                    const SizedBox(
                      width: 10,
                    ),
                    ActionIcon(
                      icon: const Icon(
                        Icons.search,
                        size: 25,
                      ),
                      color: COLORS.tertiary,
                      onTap: () {},
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
                Wrap(
                  runSpacing: 10,
                  spacing: 10,
                  children: List.generate(cards.length, (index) {
                    final card = cards[index];
                    return CustomCard(title: card.title, color: card.color);
                  }),
                ),
                const SizedBox(
                  height: SIZES.xLarge,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text("Popular jobs", style: TextStyles.subTitle),
                    TextButton(onPressed: (){}, child: const Text("Show all", style: TextStyle(fontSize: SIZES.medium, color: COLORS.gray, fontWeight: FONT.medium),))
                ],),
                const SizedBox(
                  height: SIZES.medium,
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
        width: getScreenWidth(context) / 2,
        padding: const EdgeInsets.all(SIZES.xSmall),
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
