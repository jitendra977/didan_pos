import 'package:flutter/material.dart';

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
    return Container(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Text(
            "+",
            style: TextStyle(fontSize: 20),
          ),
        ),
        appBar: AppBar(
          centerTitle: true,
          title: Text('Menu'),
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.import_export),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.filter_list),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.refresh),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.more_vert),
            ),
          ],
        ),
        body: ListView.builder(
          itemCount: items.length,
          itemBuilder: (BuildContext context, int index) {
            final item = items[index];
            return Card(
              color: Color.fromARGB(255, 227, 246, 229),
              child: ListTile(
                title: Container(
                  child: Text(
                    item['name'],
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontSize: 18),
                  ),
                ),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Price: ${item['price']}'),
                    Text('Type: ${item['type']}'),
                    Text('Category: ${item['category']}'),
                    Text('Barcode: ${item['barcode']}'),
                  ],
                ),
                trailing: Image.network(
                  "https://images.unsplash.com/photo-1546069901-ba9599a7e63c?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=880&q=80",
                  fit: BoxFit.fitHeight,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
