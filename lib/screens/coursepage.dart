import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:futuresity/components/courseappbar.dart';
import 'package:futuresity/controller/coursecontroller.dart';
import 'package:get/get.dart';
import 'package:futuresity/widgets/course.dart';

class course extends StatelessWidget {
  final coursecontroller _coursecontroller = Get.put(coursecontroller());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
        
      appBar: courseappBar(),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Top Course",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 16),
                ),
                TextButton(
                    onPressed: () {},
                    child: Container(
                      child: Row(
                        children: [
                          Text(
                            "All Courses",
                            style: TextStyle(
                              fontSize: 14,
                            ),
                          ),
                          Icon(
                            Icons.keyboard_arrow_right_sharp,
                            color: Colors.blue,
                          )
                        ],
                      ),
                    ))
              ],
            ),
          ),
           SizedBox(height: 20,),
                      Obx(
                        () {
                          if (_coursecontroller.isloading.value) {
                            return Center(
                              child: CircularProgressIndicator(),
                            );
                          } else {
                            return Container(
                             
                              height: 200,
                              width: 100,
                              child: ListView.builder(scrollDirection: Axis.horizontal,
                              physics: BouncingScrollPhysics(),
                                itemCount: _coursecontroller.topcourselist.length,
                                itemBuilder: (context, index) {
                                  return topcoursewidget(
                                      _coursecontroller.topcourselist[index]);
                                },
                              ),
                            );
                          }
                        },
                      ),
                  
        ],
      ),
    ));
  }
}
