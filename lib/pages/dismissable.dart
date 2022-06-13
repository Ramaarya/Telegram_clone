import 'package:faker/faker.dart';
import 'package:flutter/material.dart';

class DismissablePage extends StatelessWidget {
  DismissablePage({Key? key}) : super(key: key);

  final Faker faker = Faker();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.menu),
        title: const Text('Telekilogram'),
        actions: const [
          Padding(
            padding: EdgeInsets.all(10),
            child: Icon(Icons.search),
          ),
        ],
        backgroundColor: Colors.blueGrey[800],
        elevation: 0,
      ),
      body: ListView.builder(
        itemCount: 100,
        itemBuilder: (context, index) {
          return Dismissible(
            confirmDismiss: (direction) {
              return showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: const Text('Confirm Delete'),
                    content:
                        const Text('Are you sure want to delete this item ?'),
                    actions: [
                      OutlinedButton(
                        onPressed: () {
                          Navigator.of(context).pop(false);
                        },
                        child: const Text('No'),
                      ),
                      OutlinedButton(
                        onPressed: () {
                          Navigator.of(context).pop(true);
                        },
                        child: const Text('Yes'),
                      ),
                    ],
                  );
                },
              );
            },
            key: Key(index.toString()),
            direction: DismissDirection.endToStart,
            background: Container(
              color: Colors.red,
              padding: const EdgeInsets.only(right: 10),
              alignment: Alignment.centerRight,
              child: const Icon(
                Icons.delete,
                color: Colors.white,
                size: 30,
              ),
            ),
            child: ListTile(
              tileColor: Colors.blueGrey[900],
              leading: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://picsum.photos/id/${index + 1}/200/300'),
              ),
              title: Text(
                faker.person.name(),
                style: const TextStyle(color: Colors.white),
              ),
              subtitle: Text(
                faker.lorem.sentence(),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(color: Colors.white54),
              ),
              trailing: Text(
                faker.date.month(),
                style: const TextStyle(
                  color: Colors.white54,
                  fontSize: 12,
                ),
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blueAccent[300],
        onPressed: () {},
        child: const Icon(Icons.chat_rounded),
      ),
    );
  }
}
