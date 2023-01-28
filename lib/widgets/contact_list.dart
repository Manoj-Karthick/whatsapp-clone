import 'package:flutter/material.dart';
import 'package:whatsapp_ui/info.dart';

class ContactList extends StatelessWidget {
  const ContactList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 6.0),
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: info.length,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.only(bottom: 4),
              child: ListTile(
                leading: CircleAvatar(
                  backgroundImage:
                      NetworkImage(info[index]["profilePic"].toString()),
                ),
                title: Text(
                  info[index]["name"].toString(),
                  style: const TextStyle(
                    fontSize: 18,
                  ),
                ),
                subtitle: Text(
                  info[index]["message"].toString(),
                  style: const TextStyle(fontSize: 15),
                ),
                trailing: Text(
                  info[index]["time"].toString(),
                  style: const TextStyle(
                    fontSize: 13,
                    color: Colors.grey,
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
