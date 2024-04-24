import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/otp.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool hoverclick = false;
  Color textFieldColor = Colors.white;
  Color bordersidecolor = Colors.amber;
  final TextEditingController TextControler = TextEditingController();
  final TextEditingController Edited_TextControler = TextEditingController();

  Color boxShadowcolor = Colors.blueGrey;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blueGrey,
        child: Container(
          color: Colors.red,
          child: Column(
            children: [
              Container(
                  color: Colors.amber,
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 2 - 50,
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'hint text :',
                          style: TextStyle(fontSize: 24),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(5, 0, 0, 0),
                          child: Container(
                            color: Colors.amber,
                            width: 200,
                            height: 35,
                            child: TextField(
                              onChanged: (value) {
                                // Edited_TextControler.text = value;
                              },
                              controller: Edited_TextControler,
                              decoration: InputDecoration(
                                border: UnderlineInputBorder(),
                                hintText: 'Enter a search term',
                                
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  )),
              Container(
                color: Colors.green,
                width: MediaQuery.of(context).size.width,
                height: 50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ElevatedButton(
                        onPressed: () {
                          setState(() {
                            
                            
                            
                          });
                          
                        },
                        child: Text('set edeitted in text fild '))
                  ],
                ),
              ),
              MyTextField(
                editedTextController: Edited_TextControler.text,
              )
            ],
          ),
        ),
      ),
    );
  }
}

class MyTextField extends StatefulWidget {
  final String editedTextController;

  const MyTextField({
    Key? key,
    required this.editedTextController,
  }) : super(key: key);

  @override
  _MyTextFieldState createState() => _MyTextFieldState();
}

class _MyTextFieldState extends State<MyTextField> {
  TextEditingController textController = TextEditingController();
  // String ?editedTextController ;
  Color borderSideColor = Colors.amber;
  Color textFieldColor = Colors.white;
  Color boxShadowColor = Colors.grey;


  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          MouseRegion(
            cursor: SystemMouseCursors.click,
            child: Container(
              width: 350,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: boxShadowColor,
                    spreadRadius: 1,
                    blurRadius: 20,
                    offset: Offset(0, 1),
                  ),
                ],
              ),
              child: TextField(
                
                controller: textController,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: borderSideColor,
                      width: 2,
                    ),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: borderSideColor,
                      width: 2.5,
                    ),
                  ),
                  filled: true,
                  fillColor: textFieldColor,
                  hintText: widget.editedTextController,
                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        textController.clear();
                      });
                    },
                    icon: Icon(Icons.clear_outlined),
                  ),
                ),
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
            onHover: (hover) {
              print('object');
              setState(() {
                borderSideColor = Colors.green;
                textFieldColor = Colors.grey.shade400;
              });
            },
            onExit: (event) {
              setState(() {
                borderSideColor = Colors.amber;
                textFieldColor = Colors.white;
              });
            },
          ),
          SizedBox(
            width: 30,
          ),
          Container(
            width: 280,
            height: 70,
            child: Row(
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => otp()),
                    );
                  },
                  icon: Icon(
                    Icons.arrow_right_sharp,
                    size: 25,
                    color: Colors.black,
                  ),
                ),
                SizedBox(
                  width: 25,
                  height: 25,
                ),
                Text(
                  'Go to next page :)',
                  style: TextStyle(color: Colors.black),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
