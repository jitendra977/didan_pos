import 'package:flutter/material.dart';
import '../models/items.dart';
import '../models/rest_tables.dart';

class CartPage extends StatefulWidget {
  final ResTable resTables;

  const CartPage({super.key, required this.resTables});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  List<Item> _items = [];
  

  @override
  void initState() {
    super.initState();
    _loadItems();
  }

  void _loadItems() {
    for (int i = 1; i <= 50; i++) {
      Item item = Item(
        itemName: 'Item $i',
        price: 10.0 * i,
        qty: i,
        image: 'https://example.com/images/item_$i.jpg',
        description:
            'This is item $i, which costs \$${10.0 * i} and has a quantity of $i.',
      );
      _items.add(item);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Cart Page'),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.credit_card),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.save),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.print),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.more_vert),
          ),
        ],
      ),
      body: Column(
        children: <Widget>[
          Container(
              color: Color.fromARGB(255, 85, 66, 4),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      widget.resTables.tableName,
                      style: TextStyle(
                          color: Color.fromARGB(255, 253, 250, 250),
                          fontSize: 20),
                    ),
                    Text(
                      "Rs 370",
                      style: TextStyle(
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontSize: 20),
                    ),
                  ],
                ),
              )),
          Container(
            color: Color.fromARGB(255, 255, 255, 255),
            height: MediaQuery.of(context).size.height / 2.5,
            child: CartTable(),
          ),
          Container(
              color: Color.fromRGBO(128, 12, 12, 1),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Menu",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    MenuIconR(),
                  ],
                ),
              )),
          Expanded(
            child: Container(
                color: Color.fromARGB(255, 255, 255, 255),
                child: Row(
                  children: [
                    Container(
                      color: Colors.red,
                      width: 140,
                      child: ListView(children: [
                        Card(
                          child: ListTile(
                            title: Text("Food"),
                          ),
                        ),
                        Card(
                          child: ListTile(
                            title: Text("Salad"),
                          ),
                        ),
                        Card(
                          child: ListTile(
                            title: Text("Momo"),
                          ),
                        ),
                        Card(
                          child: ListTile(
                            title: Text("Drinks"),
                          ),
                        ),
                      ]),
                    ),
                    Expanded(
                      child: Container(
                        color: Color.fromARGB(255, 171, 141, 139),
                        child: GridView.builder(
                          itemCount: _items.length,
                          gridDelegate:
                              SliverGridDelegateWithMaxCrossAxisExtent(
                                  maxCrossAxisExtent: 100),
                          itemBuilder: (context, index) {
                            return Card(
                              child: Container(
                                child: Column(children: [
                                  Text(
                                    _items[index].itemName,
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15,
                                        color: Colors.black54),
                                  ),
                                  Icon(Icons.lunch_dining),
                                  Text("Rs ${_items[index].price.toString()}"),
                                ]),
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                )),
          ),
        ],
      ),
    );
  }
}

class CartTable extends StatelessWidget {
  const CartTable({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Table(
        columnWidths: {
          0: FlexColumnWidth(2),
          1: FlexColumnWidth(1),
          2: FlexColumnWidth(.5),
          3: FlexColumnWidth(.5),
          4: FlexColumnWidth(1),
          5: FlexColumnWidth(1),
        },
        children: [
          _buildTableRow(['Item', 'Price', 'Qty', 'Edit', 'Add', 'Total']),
          _buildTableRow([
            'Choumin',
            '120',
            '1',
            Icon(Icons.edit),
            Icon(Icons.add),
            '120'
          ]),
          _buildTableRow(
              ['Banda', '250', '1', Icon(Icons.edit), Icon(Icons.add), '250']),
        ],
      ),
    );
  }

  static TableRow _buildTableRow(List<dynamic> data) {
    return TableRow(
      children: data
          .map((cellData) => TableCell(
                child: cellData is Icon
                    ? IconButton(icon: cellData, onPressed: () {})
                    : Text('$cellData'),
              ))
          .toList(),
    );
  }
}

class MenuIconR extends StatelessWidget {
  const MenuIconR({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Wrap(spacing: 15, children: <Widget>[
        Icon(
          Icons.camera_enhance,
          color: Colors.white,
        ),
        Icon(
          Icons.search,
          color: Colors.white,
        ),
        Icon(
          Icons.add,
          color: Colors.white,
        ),
        Icon(
          Icons.info_outline,
          color: Colors.white,
        ),
        Icon(
          Icons.menu,
          color: Colors.white,
        ),
        Icon(
          Icons.close,
          color: Colors.white,
        ),
      ]),
    );
  }
}
