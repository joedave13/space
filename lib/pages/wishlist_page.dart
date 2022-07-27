import 'package:flutter/material.dart';
import 'package:space/theme.dart';
import 'package:space/widgets/product_grid_item.dart';
import 'package:space/widgets/product_list_item.dart';
import 'package:space/widgets/skeleteon_item.dart';

class WishlistPage extends StatefulWidget {
  const WishlistPage({Key? key}) : super(key: key);

  @override
  State<WishlistPage> createState() => _WishlistPageState();
}

class _WishlistPageState extends State<WishlistPage> {
  bool isLoading = true;
  bool isShowGrid = true;

  @override
  void initState() {
    Future.delayed(Duration(seconds: 2), () {
      setState(() {
        isLoading = false;
      });
    });
    super.initState();
  }

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
                color: kBlueColor,
              ),
              label: 'wishlist',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/icon_profile.png',
                width: 24,
              ),
              label: 'profile',
            ),
          ],
        ),
      ),
      appBar: PreferredSize(
        child: AppBar(
          elevation: 0,
          backgroundColor: kWhiteColor,
          automaticallyImplyLeading: false,
          title: Row(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Icon(
                  Icons.chevron_left,
                  color: kBlackColor,
                ),
              ),
              SizedBox(
                width: 18,
              ),
              Expanded(
                child: Text(
                  'Wishlist',
                  style: blackTextStyle.copyWith(
                    fontSize: 18,
                    fontWeight: semiBold,
                  ),
                ),
              ),
              Image.asset(
                'assets/icon_search.png',
                width: 24,
              ),
            ],
          ),
        ),
        preferredSize: Size(
          double.infinity,
          60,
        ),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 24),
        children: [
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Spacer(),
              GestureDetector(
                onTap: () {
                  setState(() {
                    isShowGrid = !isShowGrid;
                  });
                },
                child: Image.asset(
                  !isShowGrid ? 'assets/icon_grid.png' : 'assets/icon_list.png',
                  width: 24,
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          isLoading ? buildLoading() : (isShowGrid ? buildGrid() : buildList()),
        ],
      ),
    );
  }

  Widget buildLoading() {
    return Wrap(
      crossAxisAlignment: WrapCrossAlignment.center,
      spacing: 18,
      runSpacing: 18,
      children: [
        SkeletonItem(),
        SkeletonItem(),
        SkeletonItem(),
        SkeletonItem(),
        SkeletonItem(),
        SkeletonItem(),
      ],
    );
  }

  Widget buildGrid() {
    return Wrap(
      crossAxisAlignment: WrapCrossAlignment.center,
      spacing: 18,
      runSpacing: 18,
      children: [
        ProductGridItem(
          title: 'Poan Chair',
          imageUrl: 'assets/image_product_grid1.png',
          price: 34,
          isWishlist: false,
        ),
        ProductGridItem(
          title: 'Poan Chair',
          imageUrl: 'assets/image_product_grid2.png',
          price: 34,
          isWishlist: true,
        ),
        ProductGridItem(
          title: 'Poan Chair',
          imageUrl: 'assets/image_product_grid3.png',
          price: 34,
          isWishlist: false,
        ),
        ProductGridItem(
          title: 'Poan Chair',
          imageUrl: 'assets/image_product_grid4.png',
          price: 34,
          isWishlist: false,
        ),
      ],
    );
  }

  Widget buildList() {
    return Column(
      children: [
        ProductListItem(
          title: 'Poan Chair',
          price: 34,
          imageUrl: 'assets/image_product_list1.png',
        ),
        ProductListItem(
          title: 'Poan Chair',
          price: 34,
          imageUrl: 'assets/image_product_list2.png',
        ),
        ProductListItem(
          title: 'Poan Chair',
          price: 34,
          imageUrl: 'assets/image_product_list3.png',
        ),
        ProductListItem(
          title: 'Poan Chair',
          price: 34,
          imageUrl: 'assets/image_product_list4.png',
        ),
      ],
    );
  }
}
