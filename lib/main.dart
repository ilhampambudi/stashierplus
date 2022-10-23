// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Drawer(),
  ));
}

class DrawerSide extends StatelessWidget {
  const DrawerSide({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ElCashier'),
        centerTitle: true,
        backgroundColor: Colors.greenAccent,
      ),
      body: const Center(child: Text('Yo MOm')),
      drawer: Drawer(
        child: ListView(
          children: const [
            DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.greenAccent,
                ),
                child: UserAccountsDrawerHeader(
                    accountName: Text('accountName'),
                    accountEmail: Text('account@gmail.com')))
          ],
        ),
      ),
    );
  }
}
