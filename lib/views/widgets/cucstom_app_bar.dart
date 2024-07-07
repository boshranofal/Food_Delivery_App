import 'package:flutter/material.dart';
import 'package:food_app/util/app_colors.dart';
import 'package:food_app/views/pages/cart_page.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      actions: [
        Padding(
          padding: const EdgeInsets.all(6.0),
          child: InkWell(
            child: Image.asset(
              'assets/images/cart.png',
              height: 30,
              width: 30,
            ),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (_) {
                return const CartPage();
              }));
            },
          ),
        )
      ],
      centerTitle: true,
      title: const Column(
        children: [
          Text(
            'Current Location',
            style: TextStyle(
              color: AppColors.grey,
              fontSize: 14,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.location_on,
                color: AppColors.green,
              ),
              SizedBox(
                width: 4,
              ),
              Text(
                'Nablus, Palestine',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
