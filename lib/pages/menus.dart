import 'package:flutter/material.dart';
import 'menu/menu.dart';

class MainMenu extends StatefulWidget {
  const MainMenu({
    super.key,
  });

  @override
  State<MainMenu> createState() => _MainMenuState();
}

class _MainMenuState extends State<MainMenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Menus'),
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.home),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.person),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.settings),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.logout),
            ),
          ],
        ),
        body: MainMenuHomePage());
  }
}

class MainMenuHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Card(
            child: ListTile(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MenuList()),
            );
          },
          leading: Icon(Icons.list_alt),
          title: Text("Menu"),
        )),
        Card(
            child: ListTile(
          leading: Icon(Icons.list_alt),
          title: Text("Categories"),
        )),
        Card(
            child: ListTile(
          leading: Icon(Icons.list_alt),
          title: Text("Ready order description"),
        )),
      ],
    );
  }
}
