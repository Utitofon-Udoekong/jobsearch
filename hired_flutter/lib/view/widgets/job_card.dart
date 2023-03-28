import 'package:flutter/material.dart';
import 'package:hired_flutter/constants/theme.dart';
import 'package:hired_flutter/models/job_model.dart';
import 'package:hired_flutter/view/widgets/screen_header_button.dart';

class JobCard extends StatelessWidget {
  final Job job;
  const JobCard({super.key, required this.job});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        padding: const EdgeInsets.all(SIZES.medium),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(SIZES.small)
        ),
        child: Row(
          children: [
            const ActionIcon(icon: Image(image: AssetImage("")), color: COLORS.white),
            const SizedBox(width: SIZES.medium,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("", style: TextStyles.title.copyWith(fontSize: SIZES.medium),),
                const SizedBox(height: 3,),
                Text("".toUpperCase(), style: const TextStyle(fontSize: SIZES.small + 2, fontWeight: FONT.regular, color: COLORS.gray),),
              ],
            )
          ],
        ),
      ),
    );
  }
}