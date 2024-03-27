import 'package:flutter/material.dart';

class Active extends StatefulWidget {

  @override
  State<Active> createState() => _ActiveState();
}

class _ActiveState extends State<Active> {
  bool _switchValue = false;

  void _onSwitchChanged(bool value) {
    setState(() {
      _switchValue = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(234, 234, 234, 1),
      appBar:  AppBar(
        backgroundColor: Color.fromRGBO(234, 234, 234, 1),
        title: Align(
          alignment: Alignment.center,
          child: Text(
            'حالة النشاط',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20.0,
            ),),
        ),
      ),
    body: Padding(
    padding: const EdgeInsets.all(16.0),
    child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
    const Text(
    'SwitchListTile Example',
    style: TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 20,
    ),
    ),
    const SizedBox(height: 16),
    SwitchListTile(
    title: const Text('Toggle Switch'),
    value: _switchValue,
    onChanged: _onSwitchChanged,
    activeColor: Colors.green,
    activeTrackColor: Colors.lightGreenAccent,
    inactiveTrackColor: Colors.grey[300],
    contentPadding: const EdgeInsets.symmetric(horizontal: 16),
    secondary: const Icon(Icons.power_settings_new),
    ),
    const SizedBox(height: 16),
    const Divider(thickness: 2),
    const SizedBox(height: 16),
    Text(
    'Switch Value: $_switchValue',
    style: const TextStyle(fontSize: 18),
    ),
    ],
    ),
    )


    );
  }
}