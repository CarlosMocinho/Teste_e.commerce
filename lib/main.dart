import 'package:flutter/material.dart';
import 'package:layout_produto/widgets/product_rating.dart.dart';
import 'widgets/product_card.dart.dart';
import 'widgets/custom_button.dart.dart';

void main() {
  runApp(const ecommerce());
}

class ecommerce extends StatelessWidget {
  const ecommerce({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'E-commerce App',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('E-commerce com Widgets Personalizados'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Container(
            width: MediaQuery.of(context).size.width * 0.2,
            height: MediaQuery.of(context).size.width * 0.2,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: const Color.fromARGB(255, 221, 221, 221),
              boxShadow: const [
                BoxShadow(
                  spreadRadius: 2.0,
                  blurRadius: 5.0,
                ),
              ],
            ),
            child: const Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ProductCard(
                    title: 'Tênis Jordan Max Aura 5 Masculino',
                    imageUrl: 'assets/background.png',
                    description:
                        'O jordan dos sonhos, que bota respeito na quadra',
                    price: '\$569.99',
                  ),
                  ProductRating(rating: 4.5),
                  CustomButton(text: 'Adicionar ao carrinho')
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
