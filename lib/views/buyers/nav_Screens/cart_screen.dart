import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Your Shopping cart is empty',
          style: TextStyle(
              fontSize: 22, fontWeight: FontWeight.bold, letterSpacing: 5),
        ),
        Container(
          height: 40,
          width: MediaQuery.of(context).size.width - 40,
          decoration: BoxDecoration(
            color: Colors.yellow[700],
            borderRadius: BorderRadius.circular(10),
          ),
          child: Center(
            child: Text(
              'CONTINUE SHOPPING',
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
        )
      ],
    ));
  }
}
