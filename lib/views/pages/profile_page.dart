// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

//import 'package:food_app/models/product_model.dart';
import 'package:food_app/models/profile_information.dart';
import 'package:food_app/views/pages/cart_page.dart';
import 'package:food_app/views/pages/orders_page.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({
    Key? key,
  }) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          // InkWell(
          //   child: Image.asset('assets/images/cart.png'),
          //   onTap: () {
          //     Navigator.of(context).push(MaterialPageRoute(builder: (_) {
          //       return const CartPage();
          //     }));
          //   },
          // )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(//crossAxisAlignment: CrossAxisAlignment.center,
              children: [
            Image.asset(
              'assets/images/profile1.png',
              height: 130,
              width: 130,
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Boshra Nofal",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Row(children: [
                  Icon(Icons.person),
                  Text(
                    "Personal Information",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                    ),
                  ),
                ]),
                //SizedBox(width: 24,)
                TextButton(
                    onPressed: () {},
                    child: const Row(
                      children: [
                        Icon(Icons.edit),
                        Text(
                          "Edit",
                          style: TextStyle(),
                        )
                      ],
                    ))
              ],
            ),
            const SizedBox(
              height: 12,
            ),
            ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: profile.length,
                itemBuilder: (context, index) {
                  return Card(
                    child: ListTile(
                      leading: Image.asset(
                        profile[index].imgUrl,
                        height: 30,
                        width: 30,
                      ),
                      title: Text(
                        profile[index].name,
                        style: const TextStyle(fontSize: 12),
                      ),
                      subtitle: Text(profile[index].id),
                    ),
                  );
                }),
            const SizedBox(
              height: 16,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "My Orders!",
                  textAlign: TextAlign.start,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                const SizedBox(
                  height: 8,
                ),
                Card(
                  child: ListTile(
                    title: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.of(context)
                                  .push(MaterialPageRoute(builder: (_) {
                                return const CartPage();
                              }));
                            },
                            child: Text("Cart", textAlign: TextAlign.start),
                            style: ElevatedButton.styleFrom(),
                          ),
                        ),
                        SizedBox(
                            width: double.infinity,
                            child: ElevatedButton(
                                onPressed: () {
                                  Navigator.of(context)
                                      .push(MaterialPageRoute(builder: (_) {
                                    return OrdersPage();
                                  }));
                                },
                                child: const Text("Orders")))
                      ],
                    ),
                  ),
                )
              ],
            )
          ]),
        ),
      ),
    );
  }
}
