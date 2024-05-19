import 'package:flutter/material.dart';
import 'package:myseat/pages/loginpage.dart';

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        top: true,
        bottom: true,
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[

              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF9B51E0),
                    textStyle: TextStyle(
                        fontSize: 26,
                        color: Color(0xFFBB6BD9)
                    ),
                    // side: BorderSide(color: Color(0xFFBB6BD9)),
                    minimumSize: Size(double.infinity, 70),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)
                    )
                ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Loginpage())
                    );
                  },
                  child: Text('Вход',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
              ),

              Padding(padding: EdgeInsets.only(bottom: 20)),

              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF9B51E0),
                    textStyle: TextStyle(
                        fontSize: 26,
                        color: Color(0xFFBB6BD9)
                    ),
                    // side: BorderSide(color: Color(0xFFBB6BD9)),
                    minimumSize: Size(double.infinity, 70),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)
                    )
                ),
                onPressed: () {

                },
                child: Text('Регистрация',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                )
              ),

            ],
          ),
        ),
      ),
    );
  }

}