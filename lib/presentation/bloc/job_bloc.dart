import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobby/core/service/api_service.dart';
import 'package:jobby/presentation/bloc/job_event.dart';
import 'package:jobby/presentation/bloc/job_state.dart';

class JobsBloc extends Bloc<JobsEvent, JobsState> {
  final ApiService apiService;

  JobsBloc({required this.apiService}) : super(JobsInitial()) {
    on<FetchJobsEvent>(_onFetchJobs);
    on<RefreshJobsEvent>(_onRefreshJobs);
  }

  Future<void> _onFetchJobs(
    FetchJobsEvent event,
    Emitter<JobsState> emit,
  ) async {
    emit(JobsLoading());
    try {
      final jobs = await apiService.getJobs();
      emit(JobsLoaded(jobs));
    } catch (e) {
      emit(JobsError(e.toString()));
    }
  }

  Future<void> _onRefreshJobs(
    RefreshJobsEvent event,
    Emitter<JobsState> emit,
  ) async {
    try {
      final jobs = await apiService.getJobs();
      emit(JobsLoaded(jobs));
    } catch (e) {
      emit(JobsError(e.toString()));
    }
  }
}
