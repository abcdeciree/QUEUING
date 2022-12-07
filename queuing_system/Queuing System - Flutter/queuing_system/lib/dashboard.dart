import 'package:flutter/material.dart';
import 'accounting.dart';
import 'registrar.dart';

class DashBoard extends StatelessWidget {
  const DashBoard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Container(
            constraints: BoxConstraints.expand(),
            decoration: BoxDecoration(
                    color: Color.fromARGB(255, 206, 141, 223)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CircleAvatar(
                  radius: 70.0,
                  backgroundImage: AssetImage('images/logo.png'),
                ),
                 MaterialButton(
                    padding: EdgeInsets.symmetric(horizontal: 100, vertical: 10),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Registrar()),
                      );
                    },
                    color: Color.fromARGB(255, 149, 34, 202),
                    shape: RoundedRectangleBorder(
                        side: BorderSide(
                          color: Colors.black,
                        ),
                        borderRadius: BorderRadius.circular(50)),
                    child: Text(
                      "REGISTRAR",
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                          color: Color.fromARGB(255, 248, 248, 248)),
                    ),
                  ),
                   MaterialButton(
                   padding: EdgeInsets.symmetric(horizontal: 90, vertical: 10),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Accounting()),
                      );
                    },
                    color: Color.fromARGB(255, 149, 34, 202),
                    shape: RoundedRectangleBorder(
                        side: BorderSide(
                          color: Colors.black,
                        ),
                        borderRadius: BorderRadius.circular(50)),
                    child: Text(
                      "ACCOUNTING",
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                          color: Color.fromARGB(255, 248, 248, 248)),
                    ),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}