import 'package:didan_pos/utils/routes.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Nishana'),
          leading: IconButton(
            onPressed: () {},
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
            Navigator.pushNamed(context, MyRouter.orderRoute);
          },
          leading: Icon(Icons.restaurant),
          title: Text("Order"),
        )),
        Card(
            child: ListTile(
          leading: Icon(Icons.pedal_bike),
          title: Text("Customer Order Take away"),
        )),
        Card(
            child: ListTile(
          leading: Icon(Icons.cookie_outlined),
          title: Text("Kitchen 1"),
        )),
        Card(
            child: ListTile(
          leading: Icon(Icons.food_bank),
          title: Text("Bar"),
        )),
        Card(
            child: ListTile(
          leading: Icon(Icons.cookie_outlined),
          title: Text("Kitchen 2"),
        )),
        Card(
            child: ListTile(
          leading: Icon(Icons.cookie_outlined),
          title: Text("Kitchen 3"),
        )),
        Card(
            child: ListTile(
          leading: Icon(Icons.apps),
          title: Text("Menu"),
        )),
        Card(
            child: ListTile(
          leading: Icon(Icons.settings),
          title: Text("Order Setting"),
        )),
        Card(
            child: ListTile(
          leading: Icon(Icons.print_rounded),
          title: Text("Print Settings"),
        )),
        Card(
            child: ListTile(
          leading: Icon(Icons.person_add),
          title: Text("Restaurant Account"),
        )),
        Card(
            child: ListTile(
          leading: Icon(Icons.help_center),
          title: Text("Help Center"),
        )),
        Card(
            child: ListTile(
          leading: Icon(Icons.list_alt),
          title: Text("Day-End Report"),
        )),
        Card(
            child: ListTile(
          leading: Icon(Icons.list_sharp),
          title: Text("Summary Of the Day"),
        )),
        Card(
            child: ListTile(
          leading: Icon(Icons.list_alt_sharp),
          title: Text("Order List"),
        )),
        Card(
            child: ListTile(
          leading: Icon(Icons.cancel),
          title: Text("Cancelled Order"),
        )),
        Card(
            child: ListTile(
          leading: Icon(Icons.apps),
          title: Text("Invoice List"),
        )),
        Card(
            child: ListTile(
          leading: Icon(Icons.apps),
          title: Text("Order to be delivered"),
        )),
        Card(
            child: ListTile(
          leading: Icon(Icons.bar_chart),
          title: Text("Inventory"),
        )),
        Card(
            child: ListTile(
          leading: Icon(Icons.apps),
          title: Text("Expense"),
        )),
        Card(
            child: ListTile(
          leading: Icon(Icons.apps),
          title: Text("Report"),
        )),
        Card(
            child: ListTile(
          leading: Icon(Icons.apps),
          title: Text("Other"),
        )),
        Card(
            child: ListTile(
          leading: Icon(Icons.manage_accounts),
          title: Text("User Management"),
        )),
      ],
    );
  }
}
