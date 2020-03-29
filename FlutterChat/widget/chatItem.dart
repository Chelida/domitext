import 'package:flutter/material.dart';
import 'dart:math'as math;
class ChatItem extends StatelessWidget {
  final String name;
  final String image;
  ChatItem({this.name,this.image});
  @override
  Widget build(BuildContext context) {
    return Container(
              child: Column(
                children: <Widget>[
                  Stack(
                    overflow: Overflow.visible,
                    children: <Widget>[
                       Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          elevation: 12,
                          child: Container(
                            width: 100,
                            height: 100,
                            decoration: BoxDecoration(
                                  border: Border.all(width: 4,color: Color((math.Random().nextDouble()*0XFFFFFF).toInt()<<0).withOpacity(1)),

                                borderRadius: BorderRadius.circular(10),
                                color: Colors.transparent,
                                image: DecorationImage(
                                    image: AssetImage(image),
                                    fit: BoxFit.cover)),
                          ),
                        ),
                      
                      Positioned(
                          left: 32,
                          top: 80,
                          child: CircleAvatar(
                            backgroundImage: AssetImage("images/logo.png"),
                          ))
                    ],
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Text(
                    name,
                    style: TextStyle(color: Colors.black),
                  ),
                ],
              ),
            );
  }
}