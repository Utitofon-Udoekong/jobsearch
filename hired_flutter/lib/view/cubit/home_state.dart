part of 'home_cubit.dart';

@freezed
class HomeCubitState with _$HomeCubitState{
  const factory HomeCubitState({
    required bool showDetails,
    required String success,
    required String failure,
    required bool isLoading,
    required List<Job> popularJobs,
  }) = _HomeCubitState;

  factory HomeCubitState.empty() => const HomeCubitState(
        showDetails: false, failure: '', success: '', isLoading: false, popularJobs: []
      );
}
