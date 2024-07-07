import 'package:flutter/material.dart';
import 'package:food_app/util/app_colors.dart';

class CouponPage extends StatelessWidget {
  const CouponPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Discount!",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Card(
        margin: const EdgeInsets.all(16),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              const ListTile(
                leading: Icon(
                  Icons.local_offer,
                  size: 50,
                  color: Colors.redAccent,
                ),
                title: Text(
                  "25% OFF",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                subtitle: Text("Valid Until 30 July 2024"),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Get 25% OFF at your next Food Delivery buy",
                      style:
                          TextStyle(fontWeight: FontWeight.w900, fontSize: 15),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Text(
                      '• Redeemable at all KFC restaurants in India.\n'
                      '• Not valid with any other discounts and promotions.\n'
                      '• No cash value.',
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                          color: Colors.black.withOpacity(0.7)),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const Text(
                      'Apply this code when you orderring online',
                      style: TextStyle(color: AppColors.grey),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        "SAVBIG",
                        style: TextStyle(color: Colors.white),
                      ),
                      style: ElevatedButton.styleFrom(
                          backgroundColor:
                              const Color.fromARGB(255, 5, 58, 151),
                          shape: ContinuousRectangleBorder(
                              borderRadius: BorderRadius.circular(16)),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 40, vertical: 8)),
                    ),
                    const SizedBox(height: 16),
                    Container(
                      decoration: const BoxDecoration(
                        border: Border(
                          top: BorderSide(
                              color: Color.fromARGB(255, 143, 132, 132)),
                        ),
                      ),
                      padding: const EdgeInsets.only(top: 16),
                      child: Column(
                        children: [
                          const Text(
                            'Scan this QR code for payment you will get direct offer',
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.grey, fontSize: 12),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Image.asset(
                            "assets/images/QRcode.png",
                            width: 130,
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          const Text("Valid Until 30 July 2024",
                              textAlign: TextAlign.center,
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 12))
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
