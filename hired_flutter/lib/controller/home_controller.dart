import 'dart:io';
import 'package:hired_flutter/models/job_model.dart';
import 'package:http/http.dart' as http;
import 'package:get/get.dart';
import 'dart:convert';

class HomeController extends GetxController{
  RxBool isLoading = false.obs;
  var error = "";
  var data = [];
  Future<void> getData() async {
     var url = Uri.https("jsearch.p.rapidapi.com","/search",{
      "query": "Vuejs developer",
      "page": "1"
     });
      var response = await http.get(url, headers: {
        "X-RapidAPI-Key": 'd26b33c631mshcd49fd4eb646daap1538abjsn2f9ba2c6c420',
        "X-RapidAPI-Host": "jsearch.p.rapidapi.com",
      });
      // print("resposne");
      // print(response.body);
      print("json");
      List<Job> jobs = [];
      List<dynamic> json = jsonDecode(response.body);
      json.map((e) {
        var job = Job.fromJson(e);
        jobs.add(job);
      });
      print(jobs);
      // var value = json['market_data']['current_price'][''].toString();
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