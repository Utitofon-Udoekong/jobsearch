import 'package:flutter/material.dart';

bool checkImageURL(url) {
  if(!url) {
    return false;
  } 
  final pattern = RegExp('^https?:\\/\\/.+\\.(png|jpg|jpeg|bmp|gif|webp)\$');
  return pattern.hasMatch(url);
}

double getScreenWidth(BuildContext context){
  return MediaQuery.of(context).size.width;
}