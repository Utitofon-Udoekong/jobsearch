import 'package:flutter/material.dart';

bool checkImageURL(String? url) {
  if(url == null) {
    return false;
  } 
  final pattern = RegExp('^https?:\\/\\/.+\\.(png|jpg|jpeg|bmp|gif|webp)\$');
  return pattern.hasMatch(url);
}

double getScreenWidth(BuildContext context){
  return MediaQuery.of(context).size.width;
}

DateTime getDateTimeFromUTCString(String date) {
  return DateTime.parse(date);
}

NavigatorState router(BuildContext context){
  return Navigator.of(context);
}