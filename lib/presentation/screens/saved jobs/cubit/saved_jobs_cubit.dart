import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobby/core/models/job.dart';

class SavedJobsCubit extends Cubit<List<Job>> {
  SavedJobsCubit() : super([]);

  void saveJob(Job job) {
    if (!state.contains(job)) {
      emit([...state, job]);
    }
  }

  void removeJob(Job job) {
    emit(state.where((j) => j.id != job.id).toList());
  }

  bool isSaved(Job job) {
    return state.any((j) => j.id == job.id);
  }

  void clearSavedJobs() {
    emit([]);
  }
}
