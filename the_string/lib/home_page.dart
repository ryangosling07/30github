import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  final List<Map<String, String>> products = const [
    {"name": "Book A", "price": "\$10"},
    {"name": "Book B", "price": "\$12"},
    {"name": "Book C", "price": "\$15"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home')),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              title: Text(products[index]['name']!),
              subtitle: Text(products[index]['price']!),
              trailing: ElevatedButton(
                onPressed: () {},
                child: const Text("Buy"),
              ),
            ),
          );
        },
      ),
    );
  }
}


