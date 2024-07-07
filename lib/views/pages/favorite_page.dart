import 'package:flutter/material.dart';
import 'package:food_app/models/product_model.dart';
import 'package:food_app/util/app_colors.dart';

class Favoritepage extends StatefulWidget {
  const Favoritepage({super.key});

  @override
  State<Favoritepage> createState() => _FavoritepageState();
}

class _FavoritepageState extends State<Favoritepage> {
  @override
  Widget build(BuildContext context) {
    return
        // Scaffold(
        //   appBar: AppBar(
        //     title: const Text(
        //       "My Favorite",
        //       style: TextStyle(fontWeight: FontWeight.bold),
        //     ),
        //     centerTitle: true,
        //   ),
        //   body:
        Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image.asset(
                'assets/images/home-banner.jpg',
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: favProducts.length,
              itemBuilder: (context, index) {
                return Card(
                  child: ListTile(
                    title: Padding(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: Text(
                        favProducts[index].name,
                      ),
                    ),
                    subtitle: Row(children: [
                      Text('\$${favProducts[index].price.toStringAsFixed(2)}'),
                      const SizedBox(
                        width: 25,
                      ),
                      Container(
                          decoration: BoxDecoration(
                              color: AppColors.primary,
                              borderRadius: BorderRadius.circular(8)),
                          child: Row(
                            children: [
                              IconButton(
                                  onPressed: favProducts[index].count > 1
                                      ? () {
                                          setState(() {
                                            favProducts[index].count--;
                                          });
                                        }
                                      : null,
                                  icon: const Icon(
                                    Icons.remove,
                                    color: AppColors.white,
                                  )),
                              Text(
                                '${favProducts[index].count}',
                                style: const TextStyle(
                                    fontSize: 16, color: AppColors.white),
                              ),
                              IconButton(
                                  onPressed: () {
                                    setState(() {
                                      favProducts[index].count++;
                                    });
                                  },
                                  icon: const Icon(
                                    Icons.add,
                                    color: AppColors.white,
                                  ))
                            ],
                          ))
                    ]),
                    leading: Image.network(
                      favProducts[index].imgUrl,
                      width: 70,
                      height: 70,
                      fit: BoxFit.fill,
                    ),
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
