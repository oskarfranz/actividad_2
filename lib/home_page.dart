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
  bool _roundTip = false;
  var _totalTip;



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
          // Text("Aqui agregar el GRUPO de radio buttons"),
          ListTile(
            title: Text("Amazing 20%"),
            leading: 
              Radio<SingingCharacter>(
                groupValue: _character,
                value: SingingCharacter.amazing,
                onChanged: (SingingCharacter? value) => {
                  setState(() {
                    _character = value;
                  })
                },
              ),
          ),
          ListTile(
            title: Text("Good 18%"),
            leading: 
              Radio<SingingCharacter>(
                groupValue: _character,
                value: SingingCharacter.good,
                onChanged: (SingingCharacter? value) => {
                  setState(() {
                    _character = value;
                  })
                },
              ),
          ),
          ListTile(
            title: Text("Okay 15%"),
            leading: 
              Radio<SingingCharacter>(
                groupValue: _character,
                value: SingingCharacter.okay,
                onChanged: (SingingCharacter? value) => {
                  setState(() {
                    _character = value;
                  })
                },
              ),
          ),
          SwitchListTile(
            secondary: Icon(Icons.credit_card),
            title: Text("Round up tip"),
            value: _roundTip,
            onChanged: (value) => {
              setState((() => {
                _roundTip = !_roundTip
              }))
            },
          ),
          MaterialButton(
            child: Text("CALCULATE"),
            onPressed: _tipCalculation,
            color: Colors.green,
            padding: const EdgeInsets.only(right:10.0, left:10),
          ),
          Text("\t\t\t\tTip amount: \$${_totalTip}"),
        ],
      ),
    );
  }

  void _tipCalculation() {
    if(_total.text == '') _totalTip = 0;
    else if(_character.toString() == 'SingingCharacter.amazing') _totalTip=double.parse(_total.text)*.20;
    else if (_character.toString() == 'SingingCharacter.good') _totalTip=double.parse(_total.text)*.18;
    else _totalTip=double.parse(_total.text)*.15;
    if(_roundTip) _totalTip = _totalTip.ceil().toDouble();

    setState(() {});
  }
}