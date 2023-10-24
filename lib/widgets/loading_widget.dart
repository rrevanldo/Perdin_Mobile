// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:teng_go/core/theme.dart';

class LoadingWidget extends StatelessWidget {
  LoadingWidget({
    Key? key,
    required this.title,
    required this.isLoading,
    required this.child,
    this.isButton = false,
  }) : super(key: key);
  String title;
  final bool isLoading;
  final Widget child;
  final bool isButton;

  @override
  Widget build(BuildContext context) {
    return isLoading
        ? Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                isButton
                    ? Container()
                    : Text(
                        title,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                          color: colorText,
                        ),
                      ),
                isButton
                    ? Container()
                    : const SizedBox(
                        height: spaceHeight,
                      ),
                CircularProgressIndicator(
                  color: colorText,
                ),
              ],
            ),
          )
        : child;
  }
}
