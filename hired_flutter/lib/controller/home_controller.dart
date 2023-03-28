import 'dart:io';

import 'package:get/get.dart';
import 'dart:convert';

class HomeController extends GetxController{
  RxBool isLoading = false.obs;
  var error = "";
  var data = [];
  Future<void> getData() async {
    final http = HttpClient();
     var url = Uri.parse("https://api.coingecko.com/api/v3/coins");
      var response = await http.getUrl(url);
      var json = await response.done;
      print(json);
      // var value = json['market_data']['current_price'][''].toString();
  }
}

// const options = {
//                 method: "GET",
//                 url: `https://jsearch.p.rapidapi.com/search`,
//                 headers: {
//                     "X-RapidAPI-Key": 'd26b33c631mshcd49fd4eb646daap1538abjsn2f9ba2c6c420',
//                     "X-RapidAPI-Host": "jsearch.p.rapidapi.com",
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