// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

    class HomePage extends StatelessWidget {
      const HomePage({super.key});

      @override
      Widget build(BuildContext context) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.red,
            title: Text(
              "Welcome To Home page"
            ),
          ),
          body:  Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(child: Text("Home Page",style: TextStyle(fontSize: 28,fontFamily: 'Roboto-Medium',fontWeight: FontWeight.bold,fontStyle: FontStyle.normal),)),
              Text("Successfully AuthenCating Using Fingerprint!",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 16,fontStyle: FontStyle.italic),)

            ],
          ),
        );
      }
    }
