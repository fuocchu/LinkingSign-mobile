import 'package:flutter/material.dart';

Widget exampleImage(double width, double height, String url, double radiusNum) {
  return Container(
    width: width,
    height: height,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(radiusNum),
    ),
    child: Image.network(url),
  );
}
