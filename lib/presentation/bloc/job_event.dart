import 'package:equatable/equatable.dart';

abstract class JobsEvent extends Equatable {
  const JobsEvent();

  @override
  List<Object> get props => [];
}

class FetchJobsEvent extends JobsEvent {}

class RefreshJobsEvent extends JobsEvent {}
