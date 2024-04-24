import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/main.dart';

class otp extends StatelessWidget {
  const otp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Expanded(
          child: Container(
            color: Colors.blueGrey,
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 110, 20, 0),
                    child: Container(
                      color: Colors.transparent,
                      width: 66,
                      height: 66,
                      child: Row(
                        children: [
                          IconButton(onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => MyHomePage() ));
                          }, icon: Icon(Icons.arrow_left_sharp,size: 50,)),
                        ],
                      ),
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('pleas input number ',style: TextStyle(fontSize: 25),),
                      SizedBox(height: 65,),
                      Container(
                        width: 500,
                        height: 200,
                        color: Colors.transparent,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              height: 68,
                              width: 64,
                              child: TextFormField(
                                
                                autofocus: true,
                                onChanged: (value) {
                                  if (value.length == 1) {
                                    FocusScope.of(context).nextFocus();
                                  }
                                },
                                onSaved: (pin1) {},
                                style: Theme.of(context).textTheme.headline6,
                                keyboardType: TextInputType.number,
                                textAlign: TextAlign.center,
                                inputFormatters: [
                                  LengthLimitingTextInputFormatter(1),
                                  FilteringTextInputFormatter.digitsOnly,
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 68,
                              width: 64,
                              child: TextFormField(
                                onSaved: (pin2) {},
                                onChanged: (value) {
                                  if (value.length == 1) {
                                    FocusScope.of(context).nextFocus();
                                  }
                                },
                                style: Theme.of(context).textTheme.headline6,
                                keyboardType: TextInputType.number,
                                textAlign: TextAlign.center,
                                inputFormatters: [
                                  LengthLimitingTextInputFormatter(1),
                                  FilteringTextInputFormatter.digitsOnly,
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 68,
                              width: 64,
                              child: TextFormField(
                                onSaved: (pin3) {},
                                onChanged: (value) {
                                  if (value.length == 1) {
                                    FocusScope.of(context).nextFocus();
                                  }
                                },
                                style: Theme.of(context).textTheme.headline6,
                                keyboardType: TextInputType.number,
                                textAlign: TextAlign.center,
                                inputFormatters: [
                                  LengthLimitingTextInputFormatter(1),
                                  FilteringTextInputFormatter.digitsOnly,
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 68,
                              width: 64,
                              child: TextFormField(
                                onSaved: (pin4) {},
                                onChanged: (value) {
                                  if (value.length == 1) {
                                    FocusScope.of(context).nextFocus();
                                  }
                                },
                                decoration: InputDecoration(hintText: '0'),
                                style: Theme.of(context).textTheme.headline6,
                                keyboardType: TextInputType.number,
                                textAlign: TextAlign.center,
                                inputFormatters: [
                                  LengthLimitingTextInputFormatter(1),
                                  FilteringTextInputFormatter.digitsOnly,
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
