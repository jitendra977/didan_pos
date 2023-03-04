import 'dart:convert';

import 'package:didan_pos/models/items.dart';
import 'package:didan_pos/pages/menu/add_menu_item.dart';
import 'package:flutter/material.dart';

class MenuList extends StatefulWidget {
  @override
  State<MenuList> createState() => _MenuListState();
}

class _MenuListState extends State<MenuList> {
  //==========================LOAD ITEMS FROM JSON==================================
  List<Item> items = [];

  Future<void> loadJsonData() async {
    String jsonString = await DefaultAssetBundle.of(context)
        .loadString('assets/data/items.json');
    List<dynamic> jsonData = jsonDecode(jsonString);
    List<Item> itemList = [];

    for (var item in jsonData) {
      itemList.add(Item.fromJson(item));
    }

    setState(() {
      items = itemList;
    });
  }

  @override
  void initState() {
    super.initState();
    loadJsonData();
  }
//============================================================================

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => AddItemMenu()),
          );
        },
        child: Text(
          "+",
          style: TextStyle(color: Colors.white, fontSize: 50),
        ),
      ),
      appBar: AppBar(
        centerTitle: true,
        title: Text('Menu Items'),
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
      body: ListView.separated(
          separatorBuilder: (BuildContext context, int index) =>
              const Divider(),
          itemCount: items.length,
          itemBuilder: (context, int index) {
            return Card(
                child: ListTile(
                    title: Text(
                      items[index].name.toString(),
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(items[index].desc.toString()),
                    leading: CircleAvatar(
                        backgroundImage:
                            NetworkImage(items[index].image.toString())),
                    trailing: Text(
                      "Rs.${items[index].price.toString()}",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )));
          }),
    );
  }
}
