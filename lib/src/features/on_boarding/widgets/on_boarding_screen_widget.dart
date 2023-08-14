import 'package:flutter/material.dart';
import 'package:on_boarding_screen/src/features/on_boarding/models/on_boarding_model.dart';

class OnBoardingScreenWidget extends StatelessWidget {
  const OnBoardingScreenWidget({
    super.key,
    required this.model,
  });

  final OnBoardingModel model;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      color: model.color,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset(model.image, height: size.height * 0.4),
          Column(
            children: [
              Text(
                model.title,
                style: Theme.of(context).textTheme.titleLarge,
              ),
              Text(
                model.description,
                style: Theme.of(context).textTheme.bodyLarge,
                textAlign: TextAlign.center,
              ),
            ],
          ),
          Text(model.onBoardingCounter,
              style: Theme.of(context).textTheme.labelLarge),
        ],
      ),
    );
  }
}
