import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';

const List<String> list = <String>[
  'Select Category',
  'Drinks',
  'Choumin',
  'Diner',
  'Salad'
];

class AddMenuItem extends StatefulWidget {
  @override
  _AddMenuItemState createState() => _AddMenuItemState();
}

class _AddMenuItemState extends State<AddMenuItem> {
  String _barcode = '';
  final _nameController = TextEditingController();
  final _priceController = TextEditingController();
  final _qtyController = TextEditingController();
  final _imageController = TextEditingController();
  final _descController = TextEditingController();

  @override
  void dispose() {
    _nameController.dispose();
    _priceController.dispose();
    _qtyController.dispose();
    _imageController.dispose();
    _descController.dispose();
    super.dispose();
  }

  Future<void> _scanBarcode() async {
    String barcode = await FlutterBarcodeScanner.scanBarcode(
      '#ff6666', // color for the scan button
      'Cancel', // text for the cancel button
      true, // show flash icon
      ScanMode.DEFAULT, // scan mode
    );

    setState(() {
      _barcode = barcode;
    });
  }

  String dropdownValue = list.first;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            icon: Icon(Icons.save),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              InputDecorator(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  contentPadding: EdgeInsets.all(5),
                ),
                child: DropdownButtonHideUnderline(
                  child: DropdownButton(
                    value: dropdownValue,
                    icon: const Icon(Icons.arrow_downward),
                    elevation: 16,
                    onChanged: (String? value) {
                      // This is called when the user selects an item.
                      setState(() {
                        dropdownValue = value!;
                      });
                    },
                    items: list.map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                ),
              ),
              TextField(
                controller: _nameController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Item name',
                ),
                keyboardType: TextInputType.text,
              ),
              TextField(
                controller: _priceController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Price',
                ),
                keyboardType: TextInputType.number,
              ),
              TextField(
                controller: _qtyController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Quantity',
                ),
                keyboardType: TextInputType.number,
              ),
              TextField(
                controller: _imageController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Image URL',
                ),
              ),
              TextField(
                controller: _descController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Description',
                ),
                maxLines: null,
              ),
              TextField(
                onChanged: (value) {
                  setState(() {
                    _barcode = value;
                  });
                },
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Barcode',
                  suffixIcon: IconButton(
                    icon: const Icon(Icons.camera_enhance),
                    onPressed: _scanBarcode,
                  ),
                ),
                controller: TextEditingController(text: _barcode),
              ),
            ].insertBetweenAll(SizedBox(height: 10)),
          ),
        ),
      ),
    );
  }
}

// spacing between columns ========================
extension on List<Widget> {
  List<Widget> insertBetweenAll(Widget widget) {
    var result = List<Widget>.empty(growable: true);
    for (int i = 0; i < length; i++) {
      result.add(this[i]);
      if (i != length - 1) {
        result.add(widget);
      }
    }
    return result;
  }
}
