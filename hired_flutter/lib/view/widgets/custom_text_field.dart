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

class CustomDropdownTextField extends StatelessWidget {
  final void Function(dynamic)? onChanged;
  final List<DropdownMenuItem<dynamic>>? items;
  const CustomDropdownTextField({super.key, this.onChanged, this.items});

  @override
  Widget build(BuildContext context) {
    return Container(
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(SIZES.medium)),
                      child: DropdownButtonFormField(
                        items: items,
                        elevation: 0,
                        decoration: const InputDecoration(
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: SIZES.medium),
                          fillColor: COLORS.white,
                          filled: true,
                          border: InputBorder.none,
                        ),
                        onChanged: onChanged,
                        borderRadius: BorderRadius.circular(SIZES.small),
                      ),
                    );
  }
}