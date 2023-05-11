// ignore_for_file: sized_box_for_whitespace, avoid_unnecessary_containers

import 'package:flutter/material.dart';

class About extends StatelessWidget {
  const About({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      body: Stack(
        children: [
          Image.asset(
            'assets/server_room.jpg',
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
          Column(
            children: [
              const Divider(height: 50),
              Container(
                child: Column(children: [
                 const SizedBox(
                    height: 150,
                  ),
                  Container(
                    height: 350,
                    width: 340,
                    child: Column(children: const [
                      Text(
                        "About",
                        style: TextStyle(
                          color: Colors.green,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      Divider(height: 25),
                      Text("*********************", style: TextStyle(color: Colors.green),),
                      Center(
                        child: Text(
                          """This is a server check application that provides an easy way to monitor the servers' health and performance. It allows to check if the server is online, view running processes, and identify open ports. This tool is invaluable for system administration to keep a close eye on their server. With real-time monitoring and detailed reports, it can quickly detect and address issues before they turn into major problems.I bestow trust on this server check application to ensure alixe servers are running at their optimal performance..""",
                          style: TextStyle(
                            color: Colors.green,
                              wordSpacing: 3,
                              fontSize: 16,
                              fontStyle: FontStyle.italic),
                        ),
                      ),
                    ]),
                  ),
                  const SizedBox(
                    height: 60,
                  ),
                  const Text(
                    "Contributors: ",
                    style: TextStyle(
                        fontStyle: FontStyle.italic, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                  Text("AliXe Team", style: TextStyle(color: Colors.green)),
                  const SizedBox(height: 30),
                ]),
              )
            ],
          ),
        ],
      ),
    );
  }
}
