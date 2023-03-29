import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hired_flutter/models/job_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';


part 'home_state.dart';

part 'home_cubit.freezed.dart';

@lazySingleton
class HomeCubit extends Cubit<HomeCubitState> {
  HomeCubit() : super(HomeCubitState.empty());

  Future<void> getPopularJobs ()async{
    reset();
    emit(state.copyWith(isLoading: true));
    try {
       var url = Uri.https("jsearch.p.rapidapi.com","/search",{
      "query": "Vuejs developer",
      "page": "1"
     });
      var response = await http.get(url, headers: {
        "X-RapidAPI-Key": 'd26b33c631mshcd49fd4eb646daap1538abjsn2f9ba2c6c420',
        "X-RapidAPI-Host": "jsearch.p.rapidapi.com",
      });
      // if(response.stat)
      List<Job> jobs = [];
      if(response.statusCode == 200){
        var json = jsonDecode(response.body);
        List<dynamic> jobLists = json["data"];
        for(var item in jobLists){
          var job = Job.fromJson(item);
          jobs.add(job);
        }
        emit(state.copyWith(isLoading: false, popularJobs: job));
      }else{
        emit(state.copyWith(isLoading: false));
      }
     } catch (e) {
      emit(state.copyWith(isLoading: false));
     }
  }

  void reset(){
    emit(state.copyWith(success: "", failure: "", isLoading: false));
  }
}


// const options = {
//                 method: "GET",
//                 url: `https://jsearch.p.rapidapi.com/search`,
//                 headers: {
                    // "X-RapidAPI-Key": 'd26b33c631mshcd49fd4eb646daap1538abjsn2f9ba2c6c420',
                    // "X-RapidAPI-Host": "jsearch.p.rapidapi.com",
//                 },
//                 params: {
//                     query: params.id,
//                     page: page.toString(),
//                     location: location,
//                     radius: 100,
//                     remote_jobs_only: (params.remote || params.id.includes("remote")) ?? searchRemote,
//                     date_posted: datePosted 
//                 }
//             };
// isLoading.value = true;
//      