import 'package:flutter/material.dart';
import 'package:hired_flutter/constants/theme.dart';

class HeaderIcon extends StatelessWidget {
  final IconData icon;
  const HeaderIcon({super.key, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container( width: 40,
    height: 40, decoration: BoxDecoration(
      color: COLORS.gray2,
      borderRadius: BorderRadius.circular(SIZES.small / 1.25)
    ), child: Icon(icon, size: 25,));
  }
}

class ActionIcon extends StatelessWidget {
  final Widget icon;
  final Color color;
  final void Function()? onTap;
  const ActionIcon({super.key, required this.icon, required this.color, this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container( width: 50,
      height: 50, decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(SIZES.medium)
      ), child: icon),
    );
  }
}

