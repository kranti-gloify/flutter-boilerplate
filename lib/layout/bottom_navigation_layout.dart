import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/resources/images.dart';
import 'package:flutter_boilerplate/routes/routes.dart';
import 'package:flutter_boilerplate/screens/news/news.dart';
import 'package:flutter_boilerplate/themes/colors.dart';
import 'package:flutter_boilerplate/utils/navigations.dart';
import 'package:flutter_boilerplate/widgets/common/appBar/custom_app_bar.dart';

class BottomNavigationLayout extends StatefulWidget {
  const BottomNavigationLayout({Key? key}) : super(key: key);

  @override
  State<BottomNavigationLayout> createState() => _BottomNavigationLayoutState();
}

class _BottomNavigationLayoutState extends State<BottomNavigationLayout> {
  int currentIndex = 0;
  final screens = [News(), News(), News()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: GestureDetector(
          onTap: () {
            Navigation.pushReplacementNamed(context, Routes.news);
          },
          child: Image.asset(
            Images.SPLASH_LOGO,
            width: 100,
          ),
        ),
        backgroundColor: AppColors.gray,
      ),
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentIndex,
          onTap: (index) {
            setState(
              () => currentIndex = index,
            );
          },
          iconSize: 20,
          selectedLabelStyle: TextStyle(
              height: 1.5,
              fontSize: 10,
              fontWeight: FontWeight.w700,
              color: AppColors.white),
          unselectedLabelStyle: TextStyle(
              height: 1.5,
              fontSize: 10,
              fontWeight: FontWeight.w500,
              color: AppColors.white),
          selectedItemColor: AppColors.black,
          unselectedItemColor: AppColors.white,
          backgroundColor: AppColors.gray,
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home), //SvgPicture.asset(Images.HOME),
              activeIcon:
                  Icon(Icons.home), //SvgPicture.asset(Images.HOME_ACTIVE),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.list), //SvgPicture.asset(Images.HOME),
              activeIcon:
                  Icon(Icons.list), //SvgPicture.asset(Images.HOME_ACTIVE),
              label: "Categories",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person), //SvgPicture.asset(Images.HOME),
              activeIcon:
                  Icon(Icons.person), //SvgPicture.asset(Images.HOME_ACTIVE),
              label: "Account",
            )
          ]),
    );
  }
}
