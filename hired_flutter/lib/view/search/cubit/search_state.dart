part of 'search_cubit.dart';

@freezed
class SearchState with _$SearchState{
  const factory SearchState({
    required bool showDetails,
    required String success,
    required String failure,
    required String searchQuery,
    required String datePosted,
    required String currentPage,
    required bool isLoading,
    required bool searchRemote,
    required bool showModal,
    required List<Job> searchResult,
    required List<Job> remoteOnlyJobs,
  }) = _SearchState;
  const SearchState._();

  factory SearchState.empty() => const SearchState(
        showDetails: false, failure: '', success: '', currentPage: "1", isLoading: false, searchResult: [],
        datePosted: "all", remoteOnlyJobs: [],searchQuery: "", searchRemote: false, showModal: false
      );
  
  bool get showError => failure.isNotEmpty;
}
