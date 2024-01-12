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
  const MyHomePage({required this.title, super.key});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  ///
  int _counter = 0;

  ///
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
    log(_counter.toString());
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    // log('Width: ${size.width}');
    // log('Heigth: ${size.height}');
    // log(Theme.of(context).cardTheme.color.toString());
    // log(Theme.of(context).cardColor.toString());
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Theme.of(context).colorScheme.inversePrimary,
            title: Text(widget.title),
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  height: 60,
                  width: 50,
                ),
                ListTileToCard(
                  cardElevation: 6,
                  cardShape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  cardMargin: const EdgeInsets.fromLTRB(6, 0, 6, 6),
                  mainAxisAlignment: MainAxisAlignment.start,
                  flexes: (
                    titleFlex: 1,
                    leadingFlex: 6,
                    subtitleFlex: 1,
                    trailingFlex: 0,
                  ),
                  boxFit: BoxFit.cover,
                  flexFit: FlexFit.tight,
                  listTile: ListTile(
                    leading: Image.asset(
                      'assets/pexels-efrem-efre-19749458.jpg',
                      fit: BoxFit.cover,
                    ),
                    trailing: const Icon(Icons.exit_to_app_outlined),
                    title: const Text('street'),
                    subtitle:
                        Text('Width: ${size.width}, Heigth: ${size.height}'),
                    onTap: _incrementCounter,
                  ),
                ),
                ListTileToCard(
                  axisDirection: AxisDirection.right,
                  cardMargin: const EdgeInsets.all(6),
                  cardElevation: 6,
                  cardShape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  flexes: (
                    titleFlex: 1,
                    leadingFlex: 0,
                    subtitleFlex: 3,
                    trailingFlex: 1,
                  ),
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  listTile: ListTile(
                    leading: Image.asset(
                      'assets/pexels-marina-zvada-19562918.jpg',
                    ),
                    trailing: const Icon(Icons.exit_to_app_outlined),
                    title: const Text('mountain'),
                    subtitle:
                        Text('Width: ${size.width}, Heigth: ${size.height}'),
                    onTap: _incrementCounter,
                  ),
                  customWidget: Card(
                    child: Container(
                      height: 160,
                      width: 160,
                      color: Colors.blue[200],
                      child: const Center(
                        child: Text('custom'),
                      ),
                    ),
                  ),
                ),
                ListTileToCard(
                  breakWidth: 800,
                  axisDirection: AxisDirection.left,
                  cardMargin: const EdgeInsets.all(6),
                  cardElevation: 6,
                  cardShape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  listTile: ListTile(
                    leading: Image.asset(
                      'assets/pexels-ikbal-alahmad-11182271.jpg',
                    ),
                    trailing: const Icon(Icons.exit_to_app_outlined),
                    title: const Text('tree'),
                    subtitle:
                        Text('Width: ${size.width}, Heigth: ${size.height}'),
                    onTap: _incrementCounter,
                  ),
                ),
                ListTileToCard(
                  breakWidth: 1000,
                  axisDirection: AxisDirection.up,
                  cardMargin: const EdgeInsets.all(6),
                  cardElevation: 6,
                  cardShape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  listTile: ListTile(
                    leading: Image.asset(
                      'assets/pexels-mooodish-18515836.jpg',
                    ),
                    trailing: const Icon(Icons.exit_to_app_outlined),
                    title: const Text('bird'),
                    subtitle:
                        Text('Width: ${size.width}, Heigth: ${size.height}'),
                    onTap: _incrementCounter,
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
