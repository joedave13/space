import 'package:flutter/material.dart';
import 'package:space/theme.dart';

class ProfileMenuItem extends StatelessWidget {
  final String iconUrl;
  final String title;
  final bool isDarkMode;

  const ProfileMenuItem({
    Key? key,
    required this.iconUrl,
    required this.title,
    this.isDarkMode = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        bottom: 30,
      ),
      child: Row(
        children: [
          Image.asset(
            iconUrl,
            width: 24,
            fit: BoxFit.cover,
            color: isDarkMode ? kWhiteColor : null,
          ),
          SizedBox(
            width: 20,
          ),
          Text(
            title,
            style: blackTextStyle.copyWith(
              fontSize: 18,
              fontWeight: semiBold,
              color: isDarkMode ? kWhiteColor : kBlackColor,
            ),
          ),
          Spacer(),
          Icon(
            Icons.chevron_right,
            color: isDarkMode ? kWhiteColor : kGrayColor,
          ),
        ],
      ),
    );
  }
}
