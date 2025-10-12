import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  TextEditingController usernameController = TextEditingController();
  bool checkboxValue = false;
  bool isSwitch = false;
  String? dropdownValue = 'e1';
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: usernameController,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                labelText: 'Username',
              ),
              onEditingComplete: () {},
            ),
          ),
          Text(usernameController.text),
          ElevatedButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text('first snackBar'),
                  behavior: SnackBarBehavior.floating,
                  duration: Duration(seconds: 3),
                ),
              );
            },
            child: (Text('open snackBar')),
          ),
          Divider(color: Colors.blueAccent),
          ElevatedButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: Text('Dialog'),
                    content: Text('Dialog Content'),
                    actions: [
                      FilledButton(
                        onPressed: () => Navigator.pop(context),
                        child: Text('close'),
                      ),
                    ],
                  );
                },
              );
            },
            child: Text('open dialog'),
          ),
          DropdownButton(
            value: dropdownValue,
            items: [
              DropdownMenuItem(value: 'e1', child: Text('Element1')),
              DropdownMenuItem(value: 'e2', child: Text('Element2')),
              DropdownMenuItem(value: 'e3', child: Text('Element3')),
            ],
            onChanged: (String? value) {
              setState(() {
                dropdownValue = value;
              });
            },
          ),
          Checkbox(
            value: checkboxValue,
            onChanged: (bool? value) {
              setState(() {
                checkboxValue = value ?? false;
              });
            },
          ),
          Switch.adaptive(
            value: isSwitch,
            onChanged: (bool? value) {
              setState(() {
                isSwitch = value ?? false;
              });
            },
          ),
          InkWell(
            splashColor: Colors.blue,
            child: Image.asset('assets/images/os.jpeg'),
            onTap: () {
              print('tap');
            },
          ),
          Image.asset('assets/images/os.jpeg'),
          Image.asset('assets/images/os.jpeg'),
        ],
      ),
    );
  }
}
