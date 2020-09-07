import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:store/utilidades/constantes.dart';

class loginScreen extends StatefulWidget {
  @override
  _loginScreenState createState() => _loginScreenState();
}

class _loginScreenState extends State<loginScreen> {
  bool recuerdame = false;
  Widget _creaEmailTF() {
    return Column(
      children: <Widget>[
        Text(
          'Email',
          style: kLabel,
        ),
        SizedBox(
          height: 10.0,
        ),
        Container(
          alignment: Alignment.centerLeft,
          decoration: kdecoracion,
          height: 60.0,
          child: TextField(
            obscureText: true,
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'OpenSans',
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 14.0),
              prefixIcon: Icon(
                Icons.lock_outline,
                color: Colors.white,
              ),
              hintText: 'Ingresa tu Email',
              hintStyle: ktextoin,
            ),
          ),
        ),
      ],
    );
  }

  Widget _creaPasswordTF() {
    return Column(
      children: <Widget>[
        Text(
          'Contraseña',
          style: kLabel,
        ),
        SizedBox(
          height: 10.0,
        ),
        Container(
          alignment: Alignment.centerLeft,
          decoration: kdecoracion,
          height: 60.0,
          child: TextField(
            obscureText: true,
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'OpenSans',
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 14.0),
              prefixIcon: Icon(
                Icons.lock_outline,
                color: Colors.white,
              ),
              hintText: 'Ingresa tu password',
              hintStyle: ktextoin,
            ),
          ),
        ),
      ],
    );
  }

  Widget _creaRecuerdameCheckbox() {
    return Container(
      height: 20.0,
      child: Row(
        children: <Widget>[
          Theme(
            data: ThemeData(unselectedWidgetColor: Colors.white),
            child: Checkbox(
              value: recuerdame,
              checkColor: Colors.green,
              activeColor: Colors.white,
              onChanged: (value) {
                setState(() {
                  recuerdame = value; //define si esta activo o inacctivo
                });
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _creaLoginBtn() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 25.0),
      width: double.infinity,
      child: RaisedButton(
        elevation: 5.0,
        onPressed: () => print('Login presionado'),
        padding: EdgeInsets.all(15.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
        color: Colors.white,
        child: Text(
          'LOGIN',
          style: TextStyle(
            color: Color(0xFF527DAA),
            letterSpacing: 1.5,
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
            fontFamily: 'OpenSans',
          ),
        ),
      ),
    );
  }

  Widget _creaRegistratetxt() {
    return Column(
      children: <Widget>[
        Text(
          '- - -',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w400,
          ),
        ),
        SizedBox(height: 20.0),
        Text(
          'Registrate',
          style: kLabel,
        ),
      ],
    );
  }

  Widget _creaRegistateBtn() {
    return GestureDetector(
      onTap: () => print('Se presiono boton registrar'),
      child: RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: 'No tienes cuenta?',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18.0,
                fontWeight: FontWeight.w400,
              ),
            ),
            TextSpan(
              text: 'Registrate',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Stack(
            children: <Widget>[
              Container(
                height: double.infinity,
                width: double.infinity,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      //Color(),
                      Color(0xFF478DE0),
                      Color(0xFF398AE5),
                      Color(0xFF293661),
                    ],
                    stops: [0.1, 0.4, 0.7, 0.9],
                  ),
                ),
              ),
              Container(
                height: double.infinity,
                child: SingleChildScrollView(
                  physics: AlwaysScrollableScrollPhysics(),
                  padding: EdgeInsets.symmetric(
                    horizontal: 40.0,
                    vertical: 120.0,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Registrate',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'OpenSans',
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      
                      SizedBox(height: 30.0),
                      _creaEmailTF(),
                      SizedBox(height: 30.0),

                      _creaPasswordTF(),
                      _creaRecuerdameCheckbox(),
                      _creaLoginBtn(),
                      _creaRegistratetxt(),
                      _creaRegistateBtn(),

                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
