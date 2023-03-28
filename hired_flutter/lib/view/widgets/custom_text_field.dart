import 'package:flutter/material.dart';
import 'package:hired_flutter/constants/theme.dart';

class CustomTextField extends StatelessWidget {
  final void Function(String)? onChanged;
  const CustomTextField({super.key, this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Container(
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(SIZES.medium)),
                      child: TextField(
                        decoration: const InputDecoration(
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: SIZES.medium),
                          fillColor: COLORS.white,
                          filled: true,
                          border: InputBorder.none,
                        ),
                        onChanged: onChanged,
                      ),
                    );
  }
}