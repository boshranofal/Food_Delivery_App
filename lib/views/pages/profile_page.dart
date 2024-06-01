import 'package:flutter/material.dart';
import 'package:food_delivery/models/profile_information.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
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
                    },
                  ),
                ])));
  }
}
