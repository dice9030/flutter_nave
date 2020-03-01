import 'dart:async';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          children: <Widget>[
            Positioned(
              top: 0,
              left: 0,
              // child: RotationTransition(
              // turns: AlwaysStoppedAnimation(53 / 360),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                color: Colors.black,
                child: Image(
                  image: AssetImage('assets/fondo.jpg'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Positioned(
              top: 300.0,
              left: 200.0,
              child: Image(
                image: AssetImage('assets/rocket.png'),
                width: 40.0,
                height: 40.0,
              ),
            ),
            CirculeContanier(top: 100.0, left: -15.0),
            CirculeContanier(top: 340.0, left: 40.0),
            CirculeContanier(top: 90.0, left: 100.0),
            CirculeContanier(top: 460.0, left: 200.0),
            CirculeContanier(top: 40.0, left: 300.0),
            CirculeContanier(top: 120.0, left: 350.0),
            CirculeContanier(top: 480.0, left: 0.0),
            CirculeContanier(top: 600.0, left: 100.0),
            CirculeContanier(top: 720.0, left: 200.0),
            CirculeContanier(top: 340.0, left: 300.0),
          ],
        ),
      ),
    );
  }
}

class CirculeContanier extends StatefulWidget {
  final double top;
  final double left;
  final double botton;
  CirculeContanier({Key key, this.top, this.left, this.botton = 0})
      : super(key: key);
  @override
  _CirculeContanierState createState() => _CirculeContanierState();
}

class _CirculeContanierState extends State<CirculeContanier> {
  double _width = 70.0;
  double _height = 70.0;
  double _circular = 40.0;

  _animacionSegundos() {
    new Timer(Duration(seconds: 1), () {
      print('object');
      _animar();
      setState(() {
        //  _animar();
      });
    });
  }

  _animar() {
    print(_width);
    if (_width == 70) {
      _width = 100.0;
      _height = 100.0;
      _circular = 50.0;
    } else {
      _width = 70.0;
      _height = 70.0;
      _circular = 40.0;
    }
  }

  @override
  Widget build(BuildContext context) {
    _animacionSegundos();
    return Positioned(
      top: widget.top,
      left: widget.left,
      child: AnimatedContainer(
        duration: Duration(seconds: 1),
        width: _width,
        height: _height,
        child: Image(
          image: AssetImage('assets/meteorite.png'),
        ),
        decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(_circular),
        ),
        curve: Curves.easeInOutSine,
      ),
    );
  }
}
