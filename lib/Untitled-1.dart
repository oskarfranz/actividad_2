import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

enum SingingCharacter { amazing, good, okay }

class _HomePageState extends State<HomePage> {
  // TODO: completar todo lo necesario

  //Seteando el valor inicial
  SingingCharacter? _character = SingingCharacter.amazing;
  var _total = TextEditingController();



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tip time'),
        backgroundColor: Colors.green,
      ),
      body: ListView(
        children: [
          SizedBox(height: 14),
          ListTile(
            leading: Icon(Icons.room_service),
            title: Padding(
              padding: EdgeInsets.only(right: 24),
              child: TextField(
                controller: _total,
                decoration: InputDecoration(
                  labelText: "Cost of service",
                  border: OutlineInputBorder(
                    borderSide: 
                    BorderSide()
                  ),
                ),
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.dinner_dining),
            title: Text("How was the service?"),
          ),
          // ListTile(
          //   leading: 
          //   RadioListTile<SingingCharacter>(
          //     title: const Text('Lafayette'),
          //     groupValue: _character,
          //     value: SingingCharacter.amazing,
          //     onChanged: (SingingCharacter? value) => {
          //       setState(() {
          //         _character = value;
          //       })
          //     },
          //   ),
          // ),
          Text("Aqui agregar el GRUPO de radio buttons"),
          ListTile(
            leading: Icon(Icons.credit_card),
            title: Text("Round up tip"),
          ),
          MaterialButton(
            child: Text("CALCULATE"),
            onPressed: null,
          ),
          Text("Tip amount: \$20.00"),
        ],
      ),
    );
  }

  void _tipCalculation() {
    // TODO: completar
  }
}