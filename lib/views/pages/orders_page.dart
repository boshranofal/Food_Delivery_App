// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:food_app/models/product_model.dart';
import 'package:food_app/util/app_colors.dart';

class OrdersPage extends StatefulWidget {
  OrdersPage({
    Key? key,
  }) : super(key: key);

  @override
  State<OrdersPage> createState() => _OrdersPageState();
}

class _OrdersPageState extends State<OrdersPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 100, 75, 119),
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 100, 75, 119),
          actions: [
            Center(
                child: Padding(
                    padding: const EdgeInsets.only(right: 16),
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.favorite),
                      color: Colors.red,
                    )))
          ],
          title: const Text(
            "Orders",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
        ),
        body: Column(children: [
          Expanded(
            child: ListView.builder(
              itemCount: cartProducts.length,
              itemBuilder: (BuildContext context, int index) {
                double priceproduct =
                    cartProducts[index].price * cartProducts[index].count;
                return Card(
                  margin: const EdgeInsetsDirectional.symmetric(
                      horizontal: 8, vertical: 16),
                  child: ListTile(
                      contentPadding: const EdgeInsets.all(10),
                      leading: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Image.network(cartProducts[index].imgUrl,
                            fit: BoxFit.cover),
                      ),
                      title: Text(
                        cartProducts[index].name,
                        style: const TextStyle(fontSize: 18),
                      ),
                      subtitle: Text('\$${priceproduct.toStringAsFixed(2)}',
                          style: const TextStyle(
                            color: Color.fromARGB(255, 240, 73, 22),
                          )),
                      trailing: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  const Color.fromARGB(255, 145, 114, 169)),
                          onPressed: () {
                            //cartProducts.remove(widget.product);
                          },
                          child: Text(
                            "Remove",
                            style: TextStyle(color: AppColors.grey100),
                          ))),
                );
              },
            ),
          ),
          const SizedBox(
            height: 36,
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Sub Total",
                      style:
                          TextStyle(color: Color.fromARGB(255, 191, 182, 182)),
                    ),
                    Text("",
                        style: TextStyle(
                            color: Color.fromARGB(255, 191, 182, 182)))
                  ],
                ),
                const SizedBox(
                  height: 8,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Delivery",
                        style: TextStyle(
                            color: Color.fromARGB(255, 191, 182, 182))),
                    Text('${8.00}',
                        style: TextStyle(
                            color: Color.fromARGB(255, 191, 182, 182)))
                  ],
                ),
                const SizedBox(
                  height: 18,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'mbc/',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            'BUY NOW',
                            //style: TextStyle(color: AppColors.grey100),
                          ),
                          style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.symmetric(
                                vertical: 12.0, horizontal: 24.0),
                            // primary: AppColors.primary,
                            textStyle: const TextStyle(fontSize: 16),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ]));
  }
}
