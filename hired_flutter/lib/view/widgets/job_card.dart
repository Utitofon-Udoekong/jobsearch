import 'package:flutter/material.dart';
import 'package:hired_flutter/constants/theme.dart';
import 'package:hired_flutter/constants/utils.dart';
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
            ActionIcon(icon: Image.network(checkImageURL(job.employer_logo!) ? job.employer_logo! : "https://t4.ftcdn.net/jpg/05/05/61/73/360_F_505617309_NN1CW7diNmGXJfMicpY9eXHKV4sqzO5H.jpg"), color: COLORS.white),
            const SizedBox(width: SIZES.medium,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(job.job_title, style: TextStyles.title.copyWith(fontSize: SIZES.medium),),
                const SizedBox(height: 3,),
                Text((job.job_employment_type ?? "N/A").toUpperCase(), style: const TextStyle(fontSize: SIZES.small + 2, fontWeight: FONT.regular, color: COLORS.gray),),
              ],
            )
          ],
        ),
      ),
    );
  }
}