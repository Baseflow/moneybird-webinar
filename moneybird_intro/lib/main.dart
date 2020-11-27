import 'package:flutter/material.dart';
import 'package:flutter_riverpod/all.dart';

import 'constants/theme.dart';
import 'pages/invoices_page.dart';

void main() {
  runApp(ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Moneybird',
      theme: appTheme,
      home: MyHomePage(title: 'Facturen'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: InvoicesPage(),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: _navItems(),
        // selectedItemColor: Colors.blueAccent,
        // unselectedItemColor: Colors.blueGrey,
      ),
    );
  }

  List<BottomNavigationBarItem> _navItems(){
    return [
      BottomNavigationBarItem(icon: Icon(Icons.receipt), label: 'Facturen'),
      BottomNavigationBarItem(icon: Icon(Icons.drafts), label: 'Inkomend'),
      BottomNavigationBarItem(icon: Icon(Icons.calculate), label: 'Offertes'),
      BottomNavigationBarItem(icon: Icon(Icons.watch_later), label: 'Uren'),
      BottomNavigationBarItem(icon: Icon(Icons.more_horiz), label: 'Meer'),
    ];
  }
}
