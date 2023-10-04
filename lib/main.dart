import 'package:flutter/material.dart';
import 'views/view.dart';

void main() {
  runApp( Portfolio());
}
class Portfolio extends StatelessWidget {
  const Portfolio({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.from(colorScheme: ColorScheme.light()),
      //darkTheme: ThemeData.from(colorScheme: ColorScheme.dark()),
      title: 'Portfolio',
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
   HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedindex = 0;


  void _onitemtapped(int index){
      setState((){
        selectedindex = index;
      });
   }

   static const List<Widget> Widgets = [
     profile(),
     projects(),
     about()
   ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedindex,
        selectedFontSize: 20,
        onTap: _onitemtapped ,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home),
          label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.work),
          label: 'Projects'),
          BottomNavigationBarItem(icon: Icon(Icons.info),
          label: 'About')
        ],

      ),
      body: SafeArea(
        child: Widgets.elementAt(selectedindex),
      ),

    );
  }
}


