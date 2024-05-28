import 'package:flutter/material.dart';

class MyDrawerHeader extends StatelessWidget {
  const MyDrawerHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              width: 72,
              height: 72,
              child: CircleAvatar(
                  backgroundImage: NetworkImage(
                "https://images.unsplash.com/photo-1628563694622-5a76957fd09c?q=80&w=1287&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
              )),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
                padding: const EdgeInsets.symmetric(vertical: 2),
                child: const Text(
                  "Sayanta",
                  style: TextStyle(color: Colors.white, fontSize: 16),
                )),
            Container(
                padding: const EdgeInsets.symmetric(vertical: 2),
                child: const Text(
                  "sayan2702@gmail.com",
                  style: TextStyle(color: Colors.white, fontSize: 16),
                )),
          ],
        ));
  }
}
