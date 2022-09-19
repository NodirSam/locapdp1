import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  static const String id = "home_page";

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          padding: EdgeInsets.all(30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Expanded(
                child: Center(
                  child: Text('welcome', style: TextStyle(fontSize: 20),).tr(),
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: TextButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
                      ),
                      onPressed: () {
                        context.setLocale(Locale('en', 'US'));
                      },
                      child: Text('English', style: TextStyle(color: Colors.white, fontSize: 15),),
                    ),
                  ),
                  SizedBox(width: 5,),
                  Expanded(
                    child: TextButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
                      ),
                      onPressed: () {
                        context.setLocale(Locale('ru', 'RU'));
                      },
                      child: Text('Russian', style: TextStyle(color: Colors.white, fontSize: 15),),
                    ),
                  ),
                  SizedBox(width: 5,),
                  Expanded(
                    child: TextButton(

                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
                      ),
                      onPressed: () {
                        context.setLocale(Locale('uz', 'UZ'));
                      },
                      child: Text('Uzbek', style: TextStyle(color: Colors.white, fontSize: 15),),
                    ),
                  ),
                  SizedBox(width: 5,),
                  Expanded(
                    child: TextButton(

                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(Colors.orange),
                      ),
                      onPressed: () {
                        context.setLocale(Locale('fr', 'FR'));
                      },
                      child: Text('French', style: TextStyle(color: Colors.white, fontSize: 15),),
                    ),
                  ),
                ],
              )
            ],
          ),
        )
    );
  }
}
