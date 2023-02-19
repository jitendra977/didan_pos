import 'package:didan_pos/pages/cart_page.dart';
import 'package:flutter/material.dart';
import '../models/rest_tables.dart';

class OrderPage extends StatelessWidget {
  const OrderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Order'),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.list),
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
      body: GridView.builder(
          itemCount: tables.length,
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 150,
            crossAxisSpacing: 1,
            mainAxisSpacing: 1,
          ),
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CartPage(
                        resTables: tables[index],
                      ),
                    ),
                  );
                },
                child: Card(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      color: Colors.amber,
                    ),
                    borderRadius: BorderRadius.circular(20.0), //<-- SEE HERE
                  ),
                  child: Container(
                    child: Column(children: [
                      SizedBox(
                        height: 10,
                      ),
                      Text(tables[index].tableName,
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold)),
                      Text(tables[index].status,
                          style: TextStyle(fontSize: 10)),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 25, vertical: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(Icons.print, size: 25),
                            Icon(Icons.share, size: 25),
                          ],
                        ),
                      )
                    ]),
                  ),
                ),
              ),
            );
          }),
    );
  }
}
