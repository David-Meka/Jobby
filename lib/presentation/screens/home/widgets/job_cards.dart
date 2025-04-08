import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobby/core/models/job.dart';
import 'package:jobby/core/theme/app_colors.dart';
import 'package:jobby/core/theme/app_textStyles.dart';
import 'package:jobby/core/theme/spacing.dart';

class JobCards extends StatelessWidget {
  final Job job;

  const JobCards({super.key, required this.job});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10.sp),
      child: GestureDetector(
        child: Container(
          padding: EdgeInsets.all(10.sp),
          width: 350.w,
          decoration: BoxDecoration(
            color:
                Theme.of(context).brightness == Brightness.dark
                    ? AppColors.darkgrey
                    : AppColors.backgroundLight,
            borderRadius: BorderRadius.circular(20.sp),
            boxShadow: [
              BoxShadow(
                color:
                    Theme.of(context).brightness == Brightness.dark
                        ? const Color.fromARGB(50, 52, 54, 54)
                        : const Color.fromARGB(45, 32, 28, 28),
                spreadRadius: 0.5,
                blurRadius: 10,
                offset: const Offset(4, 4),
              ),
            ],
          ),
          child: Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(job.title, style: AppTextStyles.jobTitle),
                  VSpace.tiny,
                  Text(job.companyName, style: AppTextStyles.companyName),
                  VSpace.tiny,
                  Text(job.location, style: AppTextStyles.location),
                ],
              ),
              const Spacer(),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.bookmark_add,
                  color: Theme.of(context).iconTheme.color,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
