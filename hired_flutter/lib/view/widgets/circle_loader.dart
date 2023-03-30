import 'package:flutter/material.dart';
import 'package:hired_flutter/constants/theme.dart';

class CircleLoader extends StatelessWidget {
  const CircleLoader({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(child: CircularProgressIndicator(backgroundColor: COLORS.gray, color: COLORS.black,));
  }
}