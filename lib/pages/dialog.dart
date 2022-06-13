import 'package:flutter/material.dart';

class DialogPage extends StatefulWidget {
  const DialogPage({Key? key}) : super(key: key);

  @override
  State<DialogPage> createState() => _DialogPageState();
}

class _DialogPageState extends State<DialogPage> {
  String data = 'Belum ada input';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dialog Message'),
        elevation: 0,
      ),
      body: Center(
        child: Text(
          data,
          style: TextStyle(fontSize: 35),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                title: Text('CONFIRM'),
                content: Text('Are you sure to delete this item ?'),
                actions: [
                  OutlinedButton(
                    onPressed: () {
                      setState(() {
                        data = 'True';
                      });
                      Navigator.of(context).pop();
                    },
                    child: Text('Yes'),
                  ),
                  OutlinedButton(
                    onPressed: () {
                      setState(() {
                        data = 'false';
                      });
                      Navigator.of(context).pop();
                    },
                    child: Text('No'),
                  ),
                ],
              );
            },
          );
        },
        child: Icon(Icons.delete),
        elevation: 0,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
