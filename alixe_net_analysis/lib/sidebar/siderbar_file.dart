import 'package:alixe_net_analysis/about.dart';
import 'package:flutter/material.dart';

class SideBar extends StatelessWidget {
  const SideBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: 200,
      child: Container(
        color: Colors.blue,
        child: Column(
          children: [
            DrawerHeader(
                child: Container(
              height: 300,
              width: 300,
              decoration: const BoxDecoration(
                color: Colors.blue,
              ),
              child: const CircleAvatar(
                backgroundImage: AssetImage("assets/server_room.jpg"),
              ),
            )),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text("Home"),
              onTap: () {
                Navigator.of(context).pop();
              },
            ),
            
            ListTile(
              title: const Text("About"),
              leading: const Icon(Icons.data_usage),
              onTap: () {
                Navigator.pop(context);
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => const About()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
