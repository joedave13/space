import 'package:flutter/material.dart';
import 'package:space/theme.dart';

class OnboardingItem extends StatelessWidget {
  final String imageUrl;
  final String title;

  const OnboardingItem({
    Key? key,
    required this.imageUrl,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 99,
        ),
        Image.asset(
          imageUrl,
          width: double.infinity,
        ),
        SizedBox(
          height: 127,
        ),
        Text(
          title,
          style: blackTextStyle.copyWith(
            fontSize: 26,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          'Aliqua id fugiat nostrud irure ex duis ea\nquis id quis ad et. Sunt qui esse',
          style: grayTextStyle.copyWith(
            fontSize: 18,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
