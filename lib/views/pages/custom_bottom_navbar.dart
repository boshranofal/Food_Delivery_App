import 'package:flutter/material.dart';
import 'package:food_app/util/app_colors.dart';
//import 'package:food_app/views/pages/cart_page.dart';
import 'package:food_app/views/pages/favorite_page.dart';
import 'package:food_app/views/pages/home_page.dart';
import 'package:food_app/views/pages/profile_page.dart';
import 'package:food_app/views/widgets/app_drawer.dart';
import 'package:food_app/views/widgets/cucstom_app_bar.dart';

class CustomBottomNavbar extends StatefulWidget {
  const CustomBottomNavbar({super.key});

  @override
  State<CustomBottomNavbar> createState() => _CustomBottomNavbarState();
}

class _CustomBottomNavbarState extends State<CustomBottomNavbar> {
  int selectedIndex = 0;

  List<Widget> bodyWidgets = [
    const HomePage(),
    const Favoritepage(),
    const ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.grey100,
      drawer: const AppDrawer(),
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(80),
        child: CustomAppBar(),
      ),
      body: SafeArea(
        child: bodyWidgets[selectedIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        selectedItemColor: AppColors.primary,
        onTap: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.favorite,
            ),
            label: 'Favorites',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
            ),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
