import 'package:flutter/material.dart';
import 'views/view.dart';

void main() {
  runApp( Portfolio());
}

class Portfolio extends StatefulWidget {
   Portfolio({super.key});

  @override
  State<Portfolio> createState() => _PortfolioState();
}

class _PortfolioState extends State<Portfolio> {
  bool darkMode = true;

  @override
  Widget build(BuildContext context) {
    final theme = (darkMode
        ? ThemeData.from(colorScheme: ColorScheme.dark())
        : ThemeData.from(colorScheme: ColorScheme.light()));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: theme,
      //darkTheme: ThemeData.from(colorScheme: ColorScheme.dark()),
      title: 'Portfolio',
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                setState(() {
                  darkMode = !darkMode;
                });
              },
              icon: (darkMode ? Icon(Icons.light_mode) : Icon(Icons.dark_mode))),
        ),
        body: HomePage(),
      )
    );
  }
}

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;
  bool darkMode = true;

  void _onitemtapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  static List<Widget> widgets = [
    const profile(),
    projects(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        selectedFontSize: 20,
        onTap: _onitemtapped,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.work), label: 'Projects'),
        ],
      ),
      body: SafeArea(
        child: widgets.elementAt(selectedIndex),
      ),
    );
  }
}
