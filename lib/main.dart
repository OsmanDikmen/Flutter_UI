import 'dart:ffi';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    bool isCharge = true;
    int chargePercent = 10;
    String chargePercentString = chargePercent.toString();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color.fromRGBO(0, 0, 0, 0),
        body: Container(
          alignment: Alignment.center,
          child: LayoutBuilder(builder: (context, constraints) {
            if (isCharge) {
              if (chargePercent == 0) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.battery_1_bar,
                      size: 300,
                      color: Colors.green,
                    ),
                    Text(
                      'Şarj Bitti',
                      style: TextStyle(
                        color: Colors.green,
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                      ),
                    ),
                  ],
                );
              } else if (chargePercent <= 15 && 0 < chargePercent) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.battery_1_bar,
                      size: 300,
                      color: Colors.green,
                    ),
                    Text(
                      'Şarj Oluyor... (%' + chargePercentString + ')',
                      style: TextStyle(
                        color: Colors.green,
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                      ),
                    ),
                  ],
                );
              } else if (chargePercent <= 30 && 15 < chargePercent) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.battery_2_bar,
                      size: 300,
                      color: Colors.green,
                    ),
                    Text(
                      'Şarj Oluyor... (%' + chargePercentString + ')',
                      style: TextStyle(
                        color: Colors.green,
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                      ),
                    ),
                  ],
                );
              } else if (chargePercent <= 45 && 30 < chargePercent) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.battery_3_bar,
                      size: 300,
                      color: Colors.green,
                    ),
                    Text(
                      'Şarj Oluyor... (%' + chargePercentString + ')',
                      style: TextStyle(
                        color: Colors.green,
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                      ),
                    ),
                  ],
                );
              } else if (chargePercent <= 60 && 45 < chargePercent) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.battery_4_bar,
                      size: 300,
                      color: Colors.green,
                    ),
                    Text(
                      'Şarj Oluyor... (%' + chargePercentString + ')',
                      style: TextStyle(
                        color: Colors.green,
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                      ),
                    ),
                  ],
                );
              } else if (chargePercent <= 75 && 60 < chargePercent) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.battery_5_bar,
                      size: 300,
                      color: Colors.green,
                    ),
                    Text(
                      'Şarj Oluyor... (%' + chargePercentString + ')',
                      style: TextStyle(
                        color: Colors.green,
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                      ),
                    ),
                  ],
                );
              } else if (chargePercent <= 99 && 75 < chargePercent) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.battery_6_bar,
                      size: 300,
                      color: Colors.green,
                    ),
                    Text(
                      'Şarj Oluyor... (%' + chargePercentString + ')',
                      style: TextStyle(
                        color: Colors.green,
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                      ),
                    ),
                  ],
                );
              } else if (chargePercent == 100) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.battery_charging_full,
                      size: 300,
                      color: Colors.green,
                    ),
                    Text(
                      'Şarj Oldu',
                      style: TextStyle(
                        color: Colors.green,
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                      ),
                    ),
                  ],
                );
              } else {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.battery_alert_rounded,
                      size: 300,
                      color: Colors.red,
                    ),
                    Text(
                      'Şarj bağlantisi ile ilgili bir sorun oluştu',
                      style: TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                      ),
                    ),
                  ],
                );
              }
            } else {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.battery_alert,
                    size: 300,
                    color: Colors.red,
                  ),
                  Text(
                    'Şarj Olmuyor',
                    style: TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                    ),
                  ),
                ],
              );
            }
          }),
        ),
      ),
    );
  }
}
