import 'package:get/get.dart';
import 'package:flutter/material.dart';

import '../controller/home_controller.dart';

class ObxExample extends StatelessWidget {
  const ObxExample({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    HomeController controller = Get.find();
    return Container(
      child: Column(
        children: [
          Text(
            'Obx',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
          SizedBox(height: 10),
          Text(
            'This is an example of Obx. It has the same function like GetBuilder, but you don\'t need tap or and kind of event to update the widget. Obx will help you change your widget automatically.\n\nBasically, Obx is a streambuilder without boilerplate.',
            textAlign: TextAlign.justify,
            style: TextStyle(
              fontSize: 16,
            ),
          ),
          SizedBox(height: 20),
          Obx(() {
            return Text('${controller.name.value}');
          }),
          SizedBox(height: 20),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            decoration: BoxDecoration(
              color: Colors.grey[200],
            ),
            child: TextField(
              textInputAction: TextInputAction.done,
              onChanged: (value) {
                controller.name.value = value;
              },
              decoration: InputDecoration(
                hintText: 'Change name',
                contentPadding: EdgeInsets.zero,
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
