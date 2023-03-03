import 'package:didan_pos/pages/menu/add_menu_item.dart';
import 'package:flutter/material.dart';

class MenuList extends StatelessWidget {
  final titles = ["List 1", "List 2", "List 3"];
  final subtitles = [
    "Here is list 1 subtitle",
    "Here is list 2 subtitle",
    "Here is list 3 subtitle"
  ];
  final icons = [Icons.ac_unit, Icons.access_alarm, Icons.access_time];
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
      ),
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
      body: ListView.separated(
          separatorBuilder: (BuildContext context, int index) =>
              const Divider(),
          itemCount: titles.length,
          itemBuilder: (context, index) {
            return Card(
                child: ListTile(
                    title: Text(titles[index]),
                    subtitle: Text(subtitles[index]),
                    leading: CircleAvatar(
                        backgroundImage: NetworkImage(
                            "https://images.unsplash.com/photo-1547721064-da6cfb341d50")),
                    trailing: Icon(icons[index])));
          }),
    );
  }
}
