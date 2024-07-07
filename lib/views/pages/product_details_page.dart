//import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:food_app/models/product_model.dart';
import 'package:food_app/util/app_colors.dart';
//import 'package:food_app/utils/app_colors.dart';

class ProductDetailsPage extends StatefulWidget {
  final ProductModel product;
  const ProductDetailsPage({super.key, required this.product});

  @override
  State<ProductDetailsPage> createState() => _ProductDetailsPageState();
}

class _ProductDetailsPageState extends State<ProductDetailsPage> {
  late List<ProductModel> filteredcart;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.favorite_border))
        ],
      ),
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.network(
              widget.product.imgUrl,
              height: 200,
            ),
            const SizedBox(
              height: 16,
            ),
            Row(
              children: [
                Text(widget.product.name,
                    style: const TextStyle(
                        fontSize: 24, fontWeight: FontWeight.bold)),
                const SizedBox(
                  width: 100,
                ),
                Text(
                  "\$ ${widget.product.price}",
                  style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: AppColors.primary),
                )
              ],
            ),
            const SizedBox(
              height: 16,
            ),
            const Row(children: [
              Icon(
                Icons.star,
                color: AppColors.yallow,
              ),
              SizedBox(
                width: 4,
              ),
              Text(
                '5.0(3.5k)',
                style: TextStyle(color: Color.fromARGB(255, 126, 122, 122)),
              )
            ]),
            const SizedBox(
              height: 12,
            ),
            Text(
              widget.product.description,
              style: const TextStyle(
                  color: Color.fromARGB(255, 97, 94, 94), fontSize: 12),
            ),
            const SizedBox(
              height: 40,
            ),
            const Text(
              "Add Extra Ingredients",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
            ),
            const SizedBox(
              height: 8,
            ),
            Center(
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 16),
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 224, 205, 179),
                    borderRadius: BorderRadius.circular(20)),
                child: const Row(
                  children: [
                    SizedBox(
                      width: 16,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Add Cheese",
                          style: TextStyle(
                              color: Color.fromARGB(255, 227, 95, 95)),
                        ),
                        Text(
                          "20g  ${'\$2.0'} ",
                          style: TextStyle(
                              fontSize: 14,
                              color: Color.fromARGB(255, 92, 86, 86)),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Center(
                child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 224, 205, 179),
                        borderRadius: BorderRadius.circular(20)),
                    child: const Row(
                      children: [
                        SizedBox(
                          width: 16,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Add Extra Sauce",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 227, 95, 95)),
                            ),
                            Text(
                              "50g  ${'\$15.75'} ",
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Color.fromARGB(255, 92, 86, 86)),
                            ),
                          ],
                        )
                      ],
                    ))),
            const SizedBox(
              height: 12,
            ),
            Center(
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 235, 57, 116),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 32, vertical: 16),
                    textStyle: const TextStyle(fontSize: 20),
                  ),
                  onPressed: () {
                    !cartProducts.contains(widget.product)
                        ? cartProducts.add(widget.product)
                        : null;
                  },
                  child: const Text(
                    "Add Cart",
                    style: TextStyle(color: Colors.white),
                  )),
            )
          ],
        ),
      )),
    );
  }
}
