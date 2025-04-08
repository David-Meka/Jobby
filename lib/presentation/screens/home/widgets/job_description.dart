import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobby/core/models/job.dart';
import 'package:jobby/core/theme/app_textStyles.dart';
import 'package:jobby/core/theme/spacing.dart';

class JobDescriptionSheet extends StatelessWidget {
  final Job job;

  const JobDescriptionSheet({super.key, required this.job});

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      expand: false,
      initialChildSize: 0.65,
      maxChildSize: 0.9,
      minChildSize: 0.4,
      builder: (context, scrollController) {
        return Padding(
          padding: EdgeInsets.all(16.sp),
          child: ListView(
            controller: scrollController,
            children: [
              Text(job.title, style: AppTextStyles.jobTitle),
              VSpace.tiny,
              Text(job.companyName, style: AppTextStyles.companyName),
              VSpace.tiny,
              Text(job.location, style: AppTextStyles.location),
              const Divider(height: 30),
              Text(
                job.fullJobDescription,
                style: AppTextStyles.label.copyWith(fontSize: 14.sp),
              ),
            ],
          ),
        );
      },
    );
  }
}
