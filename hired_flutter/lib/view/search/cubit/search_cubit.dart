import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hired_flutter/models/job_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

part 'search_state.dart';
part 'search_cubit.freezed.dart';

@lazySingleton
class SearchCubit extends Cubit<SearchState> {
  SearchCubit() : super(SearchState.empty());

  void setSearchQuery({required String searchQuery}) {
    emit(state.copyWith(searchQuery: searchQuery));
  }

  void setSearchRemote({required bool searchRemote}) {
    emit(state.copyWith(searchRemote: searchRemote));
  }

  void getInitialSearch() async {
    final searchRemote = state.searchRemote;
    final searchQuery = state.searchQuery;
    reset();
    emit(state.copyWith(isLoading: true));
    try {
      var url = Uri.https("jsearch.p.rapidapi.com", "/search", {
        "query": searchQuery,
        "page": "1",
        "remote_only_jobs": searchRemote.toString(),
      });
      var response = await http.get(url, headers: {
        "X-RapidAPI-Key": 'd26b33c631mshcd49fd4eb646daap1538abjsn2f9ba2c6c420',
        "X-RapidAPI-Host": "jsearch.p.rapidapi.com",
      });
      
      List<Job> jobs = [];
      if (response.statusCode == 200) {
        var json = jsonDecode(response.body);
        List<dynamic> jobLists = json["data"];
        for (var item in jobLists) {
          var job = Job.fromJson(item);
          jobs.add(job);
        }
        final List<Job> remoteOnlyJobs =
            jobs.where((element) => element.jobIsRemote! == true).toList();
        emit(state.copyWith(
            isLoading: false,
            searchResult: jobs,
            remoteOnlyJobs: remoteOnlyJobs));
      } else {
        emit(state.copyWith(isLoading: false, failure: "not 200"));
      }
    } catch (e) {
      print(e);
      emit(state.copyWith(isLoading: false, failure: e.toString()));
    }
  }

  void setRemoteJob() {
    final remoteOnlyJobs = state.remoteOnlyJobs;
    emit(state.copyWith(isLoading: false, remoteOnlyJobs: remoteOnlyJobs));
  }

  void runFilterQuery() async {
    reLoad();
    final query = state.searchQuery;
    final searchRemote = state.searchRemote;
    final datePosted = state.datePosted;
    final page = state.currentPage;
    try {
      var url = Uri.https("jsearch.p.rapidapi.com", "/search", {
        "query": query,
        "page": page,
        "remote_only_jobs": searchRemote.toString(),
        "date_posted": datePosted
      });
      var response = await http.get(url, headers: {
        "X-RapidAPI-Key": 'd26b33c631mshcd49fd4eb646daap1538abjsn2f9ba2c6c420',
        "X-RapidAPI-Host": "jsearch.p.rapidapi.com",
      });
      List<Job> jobs = [];
      if (response.statusCode == 200) {
        var json = jsonDecode(response.body);
        List<dynamic> jobLists = json["data"];
        for (var item in jobLists) {
          var job = Job.fromJson(item);
          jobs.add(job);
        }
        final List<Job> remoteOnlyJobs =
            jobs.where((element) => element.jobIsRemote! == true).toList();
        emit(state.copyWith(
            isLoading: false,
            searchResult: jobs,
            remoteOnlyJobs: remoteOnlyJobs));
      } else {
        emit(state.copyWith(isLoading: false));
      }
    } catch (e) {
      print(e);
      emit(state.copyWith(isLoading: false));
    }
  }

  void pageForward() {
    final currentPage = state.currentPage;
    final newPage = (int.parse(currentPage) + 1).toString();
    emit(state.copyWith(currentPage: newPage));
    runFilterQuery();
  }

  void pageBackward() {
    final currentPage = state.currentPage;
    if (currentPage == "1") {
      return;
    }
    final newPage = (int.parse(currentPage) - 1).toString();
    emit(state.copyWith(currentPage: newPage));
    runFilterQuery();
  }

  void reset() {
    emit(state.copyWith(success: "", failure: "", isLoading: false));
  }

  void reLoad() {
    emit(state.copyWith(success: "", failure: "", isLoading: false));
  }
}
