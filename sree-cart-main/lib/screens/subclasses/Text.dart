import 'package:flutter/material.dart';

class text extends StatelessWidget {
  final String? texts;
  final double? fontsize;
  final Color? color;
  final FontStyle? fontStyle;

  const text({
    super.key,
    required this.texts,
    this.fontsize,
    this.color,
    this.fontStyle,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      texts!,
      style: TextStyle(
          color: color,
          fontSize: fontsize,
          fontWeight: FontWeight.bold,
          fontStyle: fontStyle,
          height: 1),
    );
  }
}