import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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
  bool hoverclick =false;
  Color textFieldColor=Colors.black;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child:MouseRegion(
  cursor: SystemMouseCursors.click,
  child: TextField(
    decoration: InputDecoration(
      filled: true,
      fillColor: textFieldColor,
      hintText: 'Enter your text',
    ),
    style: TextStyle(
      color: Colors.blueGrey,
    ),
    onChanged: (value) {
    },
    onTap: () {
          setState(() {
        textFieldColor = Colors.redAccent.shade400;
      });
    },
    onSubmitted: (value) {
      
    },
  ),
  onHover: (hover) {
    hoverclick=true;
    if (hoverclick==true) {
      setState(() {
        textFieldColor = Colors.grey.shade400;
      });
    } else {
      setState(() {
        textFieldColor = Colors.white;
      });
    }
  },
  onExit: (event) {
    setState(() {
        textFieldColor = Colors.black;
      });
  },
)

            )
          ],
        ),
      ),
    );
  }
}
