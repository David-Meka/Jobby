import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobby/core/theme/app_textStyles.dart';
import 'package:jobby/presentation/bloc/job_bloc.dart';
import 'package:jobby/presentation/bloc/job_state.dart';
import 'package:jobby/presentation/screens/home/widgets/job_cards.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100.h),
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(16.sp),
            child: Text('Job Listings', style: AppTextStyles.sectionTitle),
          ),
        ),
      ),
      body: BlocBuilder<JobsBloc, JobsState>(
        builder: (context, state) {
          if (state is JobsLoading) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is JobsLoaded) {
            return ListView.builder(
              itemCount: state.jobs.length,
              itemBuilder: (context, index) {
                final job = state.jobs[index];
                return JobCards(job: job); // pass job to card
              },
            );
          } else if (state is JobsError) {
            return Center(child: Text('Error: ${state.message}'));
          }
          return const Center(child: Text('No data'));
        },
      ),
    );
  }
}
