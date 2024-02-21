// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:local_auth/local_auth.dart';

import '../home_page.dart';

class FingerPage extends StatefulWidget {
  const FingerPage({super.key});

  @override
  State<FingerPage> createState() => _FingerPageState();
}
class _FingerPageState extends State<FingerPage> {

  final LocalAuthentication auth = LocalAuthentication();

  checkauth()async{
    bool isAvailable;
    isAvailable = await auth.canCheckBiometrics;
    print(isAvailable);
    if(isAvailable){

      bool result = await auth.authenticate(
          localizedReason: 'Scan Your Fingerprint');
      if(result){
        // Get.to(HomePage());
        Navigator.push(
          context as BuildContext,
          MaterialPageRoute(builder: (context)=>HomePage()));
      }else{
        print('Denied!');
      }
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            // ignore: prefer_const_constructors
            Text(
              "Login",
              style: TextStyle(
                  fontSize: 28,
                  fontFamily: 'Roboto-Medium',
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.normal),
            ),
            Image.asset('assets/354.jpg'),
            ElevatedButton(onPressed: () {
              checkauth();

            }, child: Text("Authenticate"))
          ],
        ),
      ),
    );
  }
}
