import 'package:alixe_net_analysis/network.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class ResultWidget extends StatefulWidget {
  const ResultWidget({super.key});

  @override
  State<ResultWidget> createState() => _ResultWidgetState();
}

class _ResultWidgetState extends State<ResultWidget> {
  @override
  Widget build(BuildContext context) {
    //network controller
    NetworkController networkController = Get.put(NetworkController());

    return GetBuilder<NetworkController>(builder: (_) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 50,
          ),
          const Center(
            child:
                Text("AliXe Server Analysis:", style: TextStyle(fontWeight: FontWeight.bold)),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            height: 100,
            width: 350,
            margin: const EdgeInsets.all(2.0),
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(30.0),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              //crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  children: [
                    const SizedBox(
                      width: 5,
                    ),
                    const Text("Ailment:"),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(networkController.feedback['ailment'].toString())
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    const SizedBox(
                      width: 5,
                    ),
                    const Text("Score:"),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(networkController.feedback['score'].toString())
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            height: 100,
            width: 350,
            margin: const EdgeInsets.all(2.0),
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(30.0),
            ),
            child: Column(
              children: [
                const SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const SizedBox(
                      width: 15,
                    ),
                    const SizedBox(
                        height: 75,
                        width: 75,
                        child: CircleAvatar(
                          backgroundImage: AssetImage("assets/bar.jpeg"),
                        )),
                    const SizedBox(
                      width: 55,
                    ),
                     Column(
                      children: const[
                        SizedBox(width: 94, child: Text("Book appointment")),
                        //SizedBox(width: 94, child: Text("Browse doctors")),
                      ],
                    ),
                    const SizedBox(width: 12),
                    GestureDetector(
                      onTap: () {
                        
                      },
                      child: Container(
                        height: 34,
                        width: 74,
                        decoration: BoxDecoration(
                            color: Colors.greenAccent,
                            borderRadius: BorderRadius.circular(12.0)),
                        child: const Center(
                          child: Text("Fix Date"),
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
              height: 60,
              width: 350,
              margin: const EdgeInsets.all(2.0),
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(30.0),
              ),
              child: const Center(
                  child: Text("This prediction can be inaccurate."))),
          const SizedBox(height: 16),
        ],
      );
    });
  }
}
