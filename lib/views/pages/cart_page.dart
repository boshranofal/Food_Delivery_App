import 'package:flutter/material.dart';
import 'package:food_app/models/product_model.dart';
//import 'package:food_app/util/app_colors.dart';
import 'package:food_app/views/pages/orders_page.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});
  @override
  State<CartPage> createState() => _OrdersPageState();
}

class _OrdersPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 100, 75, 119),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 100, 75, 119),
        title: const Text(
          "My Cart",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
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
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(
                            onPressed: cartProducts[index].count > 1
                                ? () {
                                    setState(() {
                                      cartProducts[index].count--;
                                      cartProducts[index].sum =
                                          cartProducts[index].price *
                                                  cartProducts[index].count -
                                              cartProducts[index].sum;
                                    });
                                  }
                                : null,
                            icon: const Icon(
                              Icons.remove,
                            )),
                        Text('${cartProducts[index].count}'),
                        IconButton(
                          icon: const Icon(Icons.add),
                          onPressed: () {
                            setState(() {
                              cartProducts[index].count++;
                              cartProducts[index].sum =
                                  cartProducts[index].sum +
                                      cartProducts[index].price *
                                          cartProducts[index].count;
                            });
                          },
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Padding(
              padding: const EdgeInsets.all(16),
              child: Column(children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 170,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10))),
                          onPressed: () {
                            Navigator.of(context)
                                .push(MaterialPageRoute(builder: (_) {
                              return OrdersPage();
                            }));
                          },
                          child: const Text(
                            "Checkout -->",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold),
                          )),
                    )
                  ],
                ),
              ])),
        ],
      ),
    );
  }
}
