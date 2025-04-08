import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobby/core/models/job.dart';
import 'package:jobby/core/theme/app_textStyles.dart';
import 'package:jobby/presentation/screens/home/widgets/job_cards.dart';
import 'package:jobby/presentation/screens/saved%20jobs/cubit/saved_jobs_cubit.dart';

class SavedeJobsView extends StatelessWidget {
  const SavedeJobsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100.h),
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(16.sp),
            child: Text('Saved Jobs', style: AppTextStyles.sectionTitle),
          ),
        ),
      ),
      body: BlocBuilder<SavedJobsCubit, List<Job>>(
        builder: (context, savedJobs) {
          if (savedJobs.isEmpty) {
            return const Center(child: Text("You haven’t saved any jobs yet."));
          }

          return ListView.builder(
            itemCount: savedJobs.length,
            itemBuilder: (context, index) {
              final job = savedJobs[index];
              return JobCards(job: job);
            },
          );
        },
      ),
    );
  }
}
