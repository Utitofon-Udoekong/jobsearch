
import 'package:flutter/material.dart';
import 'package:hired_flutter/constants/theme.dart';

class CardType {
  final String title;
  final Color color;
  CardType({required this.color, required this.title});
}

List<CardType> cards = [
  CardType(
    title: "Full time",
    color: COLORS.primary,
  ),
  CardType(
    title: "Part time",
    color: COLORS.secondary,
  ),
  CardType(
    title: "Remote",
    color: COLORS.tertiary,
  ),
  CardType(
    title: "Intern",
    color: COLORS.gray,
  ),
];