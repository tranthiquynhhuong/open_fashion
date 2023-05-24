import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class TTAutoSizeText extends StatelessWidget {
  final String text;
  final TextStyle? style;
  final int maxLines;
  final double? maxFontSize;
  final double minFontSize;
  const TTAutoSizeText({
    Key? key,
    required this.text,
    this.style,
    this.maxLines = 1,
    this.maxFontSize,
    this.minFontSize = 12,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AutoSizeText(
      text,
      style: style,
      maxLines: maxLines,
      textScaleFactor: 1,
      maxFontSize: maxFontSize ?? double.infinity,
      minFontSize: minFontSize,
    );
  }
}
