import 'package:flutter/material.dart';

class OnBoardingModel {
  final String title;
  final String description;
  final Color color;
  final String image;
  final String onBoardingCounter;

  OnBoardingModel({
    required this.color,
    required this.description,
    required this.image,
    required this.onBoardingCounter,
    required this.title,
  });
}
