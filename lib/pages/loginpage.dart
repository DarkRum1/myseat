import 'package:flutter/material.dart';

class Loginpage extends StatefulWidget {
  @override
  _LoginpageState createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  final _formKey = GlobalKey<FormState>();
  late String _username;
  late String _password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new_outlined, size: 30),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SafeArea(
        top: true,
        bottom: true,
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[

                TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Логин',
                    hintStyle: TextStyle(color: Color(0xFF979797)),
                    fillColor: Colors.transparent,
                    filled: true,
                      focusedErrorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(color: Color(0xFFEB5757))
                      ),
                      errorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(color: Color(0xFFEB5757))
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(color: Color(0xFFBB6BD9))
                      ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(color: Color(0xFFBB6BD9))
                    )
                  ),
                  validator: (value) {
                    if (value == null) {
                      return 'Введите логин!';
                    }
                    return null;
                  },
                  onSaved: (value) {
                    _username = value!;
                  },
                ),

                Padding(padding: EdgeInsets.only(bottom: 20.0)),

                TextFormField(
                  decoration: InputDecoration(
                      hintText: 'Пароль',
                      hintStyle: TextStyle(color: Color(0xFF979797)),
                      fillColor: Colors.transparent,
                      filled: true,
                      focusedErrorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(color: Color(0xFFEB5757))
                      ),
                      errorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(color: Color(0xFFEB5757))
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(color: Color(0xFFBB6BD9))
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(color: Color(0xFFBB6BD9))
                      )
                  ),
                  obscureText: true,
                  validator: (value) {
                    if (value == null) {
                      return 'Пожалуйста, введите пароль!';
                    } else if (value.length < 6) {
                      return 'Пароль должен быть не менее 6 символов!';
                    }
                    return null;
                  },
                  onSaved: (value) {
                    _password = value!;
                  },
                ),

                Padding(padding: EdgeInsets.only(bottom: 20.0)),

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
                      if (_formKey.currentState?.validate()?? false) {
                        _formKey.currentState?.save();
                        // POST
                        print(_username);
                        print(_password);
                      }
                    },
                    child: Text('Вход',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                    )
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
