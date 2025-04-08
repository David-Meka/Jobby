import 'package:equatable/equatable.dart';
import 'package:jobby/core/models/job.dart';

abstract class SavedJobsState extends Equatable {
  const SavedJobsState();
}

class SavedJobsInitial extends SavedJobsState {
  @override
  List<Object> get props => [];
}

class SavedJobsLoaded extends SavedJobsState {
  final List<Job> savedJobs;

  const SavedJobsLoaded(this.savedJobs);

  @override
  List<Object> get props => [savedJobs];
}
