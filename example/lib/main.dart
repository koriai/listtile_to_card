import 'dart:developer';

import 'package:flutter/material.dart';
// import 'package:listtile_to_card/listtile_to_card.dart';
import 'listtile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ListTile to Card',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'ListTile to Card'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    log('Width: ${size.width}');
    log('Heigth: ${size.height}');
    log(Theme.of(context).cardTheme.color.toString());
    log(Theme.of(context).cardColor.toString());
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(widget.title),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 60,
              width: 50,
            ),
            ListTileToCard(
              breakWidth: 400,
              axisDirection: AxisDirection.left,
              cardMargin: const EdgeInsets.all(66),
              cardElevation: 6,
              cardShape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              listTile: ListTile(
                leading: const Icon(Icons.start),
                trailing: const Icon(Icons.exit_to_app_outlined),
                title: Text('Width: ${size.width}, Heigth: ${size.height}'),
                onTap: _incrementCounter,
              ),
            ),
            ListTileToCard(
              breakWidth: 600,
              axisDirection: AxisDirection.left,
              cardMargin: const EdgeInsets.all(66),
              cardElevation: 6,
              cardShape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              listTile: ListTile(
                leading: const Icon(Icons.start),
                trailing: const Icon(Icons.exit_to_app_outlined),
                title: Text('Width: ${size.width}, Heigth: ${size.height}'),
                onTap: _incrementCounter,
              ),
            ),
            ListTileToCard(
              breakWidth: 800,
              axisDirection: AxisDirection.left,
              cardMargin: const EdgeInsets.all(66),
              cardElevation: 6,
              cardShape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              listTile: ListTile(
                leading: const Icon(Icons.start),
                trailing: const Icon(Icons.exit_to_app_outlined),
                title: Text('Width: ${size.width}, Heigth: ${size.height}'),
                onTap: _incrementCounter,
              ),
            ),
            ListTileToCard(
              breakWidth: 1000,
              axisDirection: AxisDirection.left,
              cardMargin: const EdgeInsets.all(66),
              cardElevation: 6,
              cardShape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              listTile: ListTile(
                leading: const Icon(Icons.start),
                trailing: const Icon(Icons.exit_to_app_outlined),
                title: Text('Width: ${size.width}, Heigth: ${size.height}'),
                onTap: _incrementCounter,
              ),
            ),
          ],
        ),
      );
    });
  }
}
