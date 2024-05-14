import 'package:flutter/material.dart';

const int itemCount = 20;

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: itemCount,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text('Item $index'),
          subtitle: Text('Subtitle $index'),
          leading: const Icon(Icons.account_circle),
          trailing: const Icon(Icons.arrow_forward_ios),
          onTap: () {
            debugPrint('Item $index tapped');
          },
        );
      },
    );
  }
}
