import 'package:flutter/material.dart';

void main() {
  runApp(MenusList());
}

class MenusList extends StatelessWidget {
  final List<Map<String, dynamic>> items = [
    {
      'name': 'Apple',
      'type': 'Fruit',
      'price': 1.00,
      'barcode': '123456789',
      'category': 'Produce'
    },
    {
      'name': 'Banana',
      'type': 'Fruit',
      'price': 0.50,
      'barcode': '234567890',
      'category': 'Produce'
    },
    {
      'name': 'Milk',
      'type': 'Dairy',
      'price': 3.50,
      'barcode': '345678901',
      'category': 'Beverage'
    },
    {
      'name': 'Bread',
      'type': 'Grain',
      'price': 2.00,
      'barcode': '456789012',
      'category': 'Bakery'
    },
    {
      'name': 'Eggs',
      'type': 'Protein',
      'price': 2.50,
      'barcode': '567890123',
      'category': 'Dairy'
    },
    {
      'name': 'Carrots',
      'type': 'Vegetable',
      'price': 1.50,
      'barcode': '678901234',
      'category': 'Produce'
    },
    {
      'name': 'Chicken',
      'type': 'Protein',
      'price': 8.00,
      'barcode': '789012345',
      'category': 'Meat'
    },
    {
      'name': 'Pork Chops',
      'type': 'Protein',
      'price': 6.00,
      'barcode': '890123456',
      'category': 'Meat'
    },
    {
      'name': 'Potatoes',
      'type': 'Vegetable',
      'price': 2.00,
      'barcode': '901234567',
      'category': 'Produce'
    },
    {
      'name': 'Orange Juice',
      'type': 'Beverage',
      'price': 4.00,
      'barcode': '012345678',
      'category': 'Beverage'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Item List Example',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Item List'),
        ),
        body: ListView.builder(
          itemCount: items.length,
          itemBuilder: (BuildContext context, int index) {
            final item = items[index];
            return ListTile(
              title: Text(item['name']),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Type: ${item['type']}'),
                  Text('Price: ${item['price']}'),
                  Text('Barcode: ${item['barcode']}'),
                  Text('Category: ${item['category']}'),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
