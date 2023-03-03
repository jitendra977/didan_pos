import 'package:flutter/material.dart';

class AddItemMenu extends StatelessWidget {
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
      body: Column(
        children: <Widget>[
          TypeRadio(),
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Name',
            ),
          ),
          SizedBox(height: 10),
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Price',
            ),
          ),
          SizedBox(height: 10),
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Tax',
            ),
          ),
          SizedBox(height: 10),
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Barcode',
            ),
          ),
        ],
      ),
    );
  }
}

enum SingingCharacter { menuItem, service, separator }

class TypeRadio extends StatefulWidget {
  const TypeRadio({super.key});

  @override
  State<TypeRadio> createState() => _TypeRadioState();
}

class _TypeRadioState extends State<TypeRadio> {
  SingingCharacter? _character = SingingCharacter.menuItem;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        RadioListTile<SingingCharacter>(
          title: const Text('Menu Item'),
          value: SingingCharacter.menuItem,
          groupValue: _character,
          onChanged: (SingingCharacter? value) {
            setState(() {
              _character = value;
            });
          },
        ),
        RadioListTile<SingingCharacter>(
          title: const Text('separator'),
          value: SingingCharacter.separator,
          groupValue: _character,
          onChanged: (SingingCharacter? value) {
            setState(() {
              _character = value;
            });
          },
        ),
        RadioListTile<SingingCharacter>(
          title: const Text('Services'),
          value: SingingCharacter.service,
          groupValue: _character,
          onChanged: (SingingCharacter? value) {
            setState(() {
              _character = value;
            });
          },
        ),
      ],
    );
  }
}

class DropdownListTutorial extends StatefulWidget {
  const DropdownListTutorial({Key? key}) : super(key: key);

  @override
  _DropdownListTutorialState createState() => _DropdownListTutorialState();
}

class _DropdownListTutorialState extends State<DropdownListTutorial> {
  List<String> items = ["Car", "Bus", "Train", "Aeroplane"];
  String currentItem = "";
  @override
  void initState() {
    currentItem = items[0];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            DropdownButton(
              alignment: Alignment.topCenter,
              borderRadius: BorderRadius.circular(8),
              dropdownColor: Colors.blueAccent,
              value: currentItem,
              items: items
                  .map<DropdownMenuItem<String>>(
                    (e) => DropdownMenuItem(
                      value: e,
                      child: Text(e),
                      alignment: Alignment.center,
                    ),
                  )
                  .toList(),
              onChanged: (String? value) => setState(
                () {
                  if (value != null) currentItem = value;
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
