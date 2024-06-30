import 'package:flutter/material.dart';
import 'package:food_delivery/models/product_model.dart';
import 'package:food_delivery/utils/app_colors.dart';

class OrdersPage extends StatefulWidget {
  const OrdersPage({super.key});

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
              itemCount: favProducts.length,
              itemBuilder: (BuildContext context, int index) {
                var item = favProducts[index];
                double priceproduct =
                    favProducts[index].price * favProducts[index].count;
                return Card(
                  margin: const EdgeInsetsDirectional.symmetric(
                      horizontal: 8, vertical: 16),
                  child: ListTile(
                    leading: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Image.network(favProducts[index].imgUrl,
                          fit: BoxFit.cover),
                    ),
                    title: Text(
                      favProducts[index].name,
                      style: const TextStyle(fontSize: 18),
                    ),
                    subtitle: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('\$${priceproduct.toStringAsFixed(2)}',
                            style: const TextStyle(
                              color: Color.fromARGB(255, 240, 73, 22),
                            )),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            IconButton(
                                onPressed: favProducts[index].count > 1
                                    ? () {
                                        setState(() {
                                          favProducts[index].count--;
                                          favProducts[index].sum =
                                              favProducts[index].sum -
                                                  favProducts[index].price *
                                                      favProducts[index].count;
                                        });
                                      }
                                    : null,
                                icon: const Icon(
                                  Icons.remove,
                                )),
                            Text('${favProducts[index].count}'),
                            IconButton(
                              icon: const Icon(Icons.add),
                              onPressed: () {
                                setState(() {
                                  favProducts[index].count++;
                                  favProducts[index].sum =
                                      favProducts[index].sum +
                                          favProducts[index].price *
                                              favProducts[index].count;
                                });
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
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
                    Text("jjj",
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
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'mbc/',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          'BUY NOW',
                          style: TextStyle(color: AppColors.grey100),
                        ),
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.symmetric(
                              vertical: 12.0, horizontal: 24.0),
                          primary: AppColors.primary,
                          textStyle: TextStyle(fontSize: 16),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ]));
  }
}
