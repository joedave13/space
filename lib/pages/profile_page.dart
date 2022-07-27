import 'package:flutter/material.dart';
import 'package:space/theme.dart';
import 'package:space/widgets/profile_menu_item.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteGrayColor,
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
        child: BottomNavigationBar(
          showUnselectedLabels: false,
          showSelectedLabels: false,
          backgroundColor: kWhiteColor,
          onTap: (value) {
            if (value == 1) {
              Navigator.pushNamed(context, '/wishlist');
            } else if (value == 2) {
              Navigator.pushNamed(context, '/profile');
            } else {
              Navigator.pushNamed(context, '/home');
            }
          },
          items: [
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/icon_home.png',
                width: 24,
              ),
              label: 'home',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/icon_wishlist.png',
                width: 24,
              ),
              label: 'wishlist',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/icon_profile.png',
                width: 24,
                color: kBlueColor,
              ),
              label: 'profile',
            ),
          ],
        ),
      ),
      body: Stack(
        children: [
          Image.asset(
            'assets/image_background.png',
          ),
          ListView(
            children: [
              SizedBox(
                height: 130,
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 30,
                  right: 24,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          'assets/image_profile.png',
                          width: 120,
                          fit: BoxFit.cover,
                        ),
                        SizedBox(
                          height: 32,
                        ),
                        Text(
                          'Theresa Webb',
                          style: blackTextStyle.copyWith(
                            fontSize: 24,
                            fontWeight: medium,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      width: 88,
                      height: 44,
                      padding: EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: kWhiteColor,
                      ),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Image.asset(
                          'assets/icon_switch_dark.png',
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                  top: 50,
                ),
                padding: EdgeInsets.symmetric(
                  horizontal: 24,
                  vertical: 32,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(36),
                  ),
                  color: kWhiteColor,
                ),
                child: Column(
                  children: [
                    ProfileMenuItem(
                      iconUrl: 'assets/icon_profile.png',
                      title: 'My Profile',
                    ),
                    ProfileMenuItem(
                      iconUrl: 'assets/icon_address.png',
                      title: 'My Address',
                    ),
                    ProfileMenuItem(
                      iconUrl: 'assets/icon_order.png',
                      title: 'My Order',
                    ),
                    ProfileMenuItem(
                      iconUrl: 'assets/icon_payment.png',
                      title: 'Payment Method',
                    ),
                    ProfileMenuItem(
                      iconUrl: 'assets/icon_wishlist.png',
                      title: 'My Wishlist',
                    ),
                    ProfileMenuItem(
                      iconUrl: 'assets/icon_faq.png',
                      title: 'Frequently Asked Question',
                    ),
                    ProfileMenuItem(
                      iconUrl: 'assets/icon_cs.png',
                      title: 'Customer Care',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
