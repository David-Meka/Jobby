import 'package:equatable/equatable.dart';
import 'package:jobby/core/models/job.dart';

abstract class JobsState extends Equatable {
  const JobsState();

  @override
  List<Object> get props => [];
}

class JobsInitial extends JobsState {}

class JobsLoading extends JobsState {}

class JobsLoaded extends JobsState {
  final List<Job> jobs;

  const JobsLoaded(this.jobs);

  @override
  List<Object> get props => [jobs];
}

class JobsError extends JobsState {
  final String message;

  const JobsError(this.message);

  @override
  List<Object> get props => [message];
}
