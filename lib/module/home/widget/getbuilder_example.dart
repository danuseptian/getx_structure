import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../util/constant.dart';
import '../controller/home_controller.dart';

class GetBuilderExample extends StatelessWidget {
  const GetBuilderExample({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    HomeController controller = Get.find();
    return Container(
      child: Column(
        children: [
          Text(
            'Get Builder',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
          SizedBox(height: 10),
          Text(
            'This is an example of GetBuilder. The purpose of GetBuilder is you can update any widget you like without changing your widget to stateful widget.\n\nWhen you update something to your screen, only widget that wrapped with GetBuilder that changed. Other widget doesn\'t change.\n\nThis implementation makes the app more light and clean.',
            textAlign: TextAlign.justify,
            style: TextStyle(
              fontSize: 16,
            ),
          ),
          SizedBox(height: 20),
          GetBuilder<HomeController>(builder: (_) {
            return Text(
              '${controller.number}',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            );
          }),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  backgroundColor: primaryColor,
                ),
                onPressed: () {
                  controller.decreaseNumber();
                },
                icon: Icon(Icons.remove),
                label: Text('Decrease'),
              ),
              ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  backgroundColor: primaryColor,
                ),
                onPressed: () {
                  controller.resetNumber();
                },
                icon: Icon(Icons.refresh),
                label: Text('Reset'),
              ),
              ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  backgroundColor: primaryColor,
                ),
                onPressed: () {
                  controller.addNumber();
                },
                icon: Icon(Icons.add),
                label: Text('Add'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
