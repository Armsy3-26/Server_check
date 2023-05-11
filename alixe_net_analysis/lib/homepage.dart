import 'package:alixe_net_analysis/about.dart';
import 'package:alixe_net_analysis/network.dart';
import 'package:alixe_net_analysis/noresult.dart';
import 'package:alixe_net_analysis/result.dart';
import 'package:alixe_net_analysis/sidebar/siderbar_file.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final TextEditingController _symptoms = TextEditingController();

  NetworkController networkController = Get.put(NetworkController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     /* appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent.withAlpha(5),
        elevation: 0,
        title: Text(widget.title),
      ),*/
      //drawer: const SideBar(),
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
              const SizedBox(
                height: 10,
              ),
             
              //
              GetBuilder<NetworkController>(builder: (_) {
                return SizedBox(
                    child: networkController.feedback.isEmpty
                        ?const ResultWidget() 
                        : const NoConnection());
              }),
              ElevatedButton(
                onPressed: () {
                  _symptoms.clear();
                  networkController.feedback.clear();
                  setState(() {
                    // Update the count
                  });
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red, // Set the button background color
                  minimumSize: Size(0.6 * MediaQuery.of(context).size.width,
                      50), // Set the button width to 60% of the screen width
                  shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(10.0), // Set the button border radius
                  ),
                ),
                child: const Text(
                  'Refresh',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              /* ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => const About()));
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red, // Set the button background color
                  minimumSize: Size(0.6 * MediaQuery.of(context).size.width,
                      50), // Set the button width to 60% of the screen width
                  shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(10.0), // Set the button border radius
                  ),
                ),
                child: const Text(
                  'About',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )*/
            ],
          ),
        ],
      ),
    );
  }
}
