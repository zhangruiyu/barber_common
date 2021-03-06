import 'package:barber_common/base/DialogRoute.dart';
import 'package:barber_common/module/loading/animations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

var barLoadingScreen = new BarLoadingScreen().route();

class BarLoadingScreen extends StatefulWidget {
  @override
  _BarLoadingScreenState createState() => new _BarLoadingScreenState();

  DialogRoute route() {
    return DialogRoute(pageBuilder: (BuildContext context,
        Animation<double> animation, Animation<double> secondaryAnimation) {
      return this;
    });
  }
}
/*

class _BarLoadingScreenState extends State<BarLoadingScreen>
    with TickerProviderStateMixin {
  AnimationController _controller;
  Tween<double> tween;

  @override
  initState() {
    super.initState();
    _controller = new AnimationController(
      duration: const Duration(milliseconds: 3000),
      vsync: this,
    );
    tween = new Tween<double>(begin: 0.0, end: 1.00);
    _controller.repeat().orCancel;
  }

  @override
  dispose() {
    _controller?.dispose();
    barLoadingScreen = new BarLoadingScreen().route();
    super.dispose();
  }

  Animation<double> get stepOne => tween.animate(
        new CurvedAnimation(
          parent: _controller,
          curve: new Interval(
            0.0,
            0.125,
            curve: Curves.linear,
          ),
        ),
      );

  Animation<double> get stepTwo => tween.animate(
        new CurvedAnimation(
          parent: _controller,
          curve: new Interval(
            0.125,
            0.26,
            curve: Curves.linear,
          ),
        ),
      );

  Animation<double> get stepThree => tween.animate(
        new CurvedAnimation(
          parent: _controller,
          curve: new Interval(
            0.25,
            0.375,
            curve: Curves.linear,
          ),
        ),
      );

  Animation<double> get stepFour => tween.animate(
        new CurvedAnimation(
          parent: _controller,
          curve: new Interval(
            0.375,
            0.5,
            curve: Curves.linear,
          ),
        ),
      );

  Animation<double> get stepFive => tween.animate(
        new CurvedAnimation(
          parent: _controller,
          curve: new Interval(
            0.5,
            0.625,
            curve: Curves.linear,
          ),
        ),
      );

  Animation<double> get stepSix => tween.animate(
        new CurvedAnimation(
          parent: _controller,
          curve: new Interval(
            0.625,
            0.75,
            curve: Curves.linear,
          ),
        ),
      );

  Animation<double> get stepSeven => tween.animate(
        new CurvedAnimation(
          parent: _controller,
          curve: new Interval(
            0.75,
            0.875,
            curve: Curves.linear,
          ),
        ),
      );

  Animation<double> get stepEight => tween.animate(
        new CurvedAnimation(
          parent: _controller,
          curve: new Interval(
            0.875,
            1.0,
            curve: Curves.linear,
          ),
        ),
      );

  Widget get forwardStaggeredAnimation {
    return new Center(
      child: new Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          new PivotBar(
            alignment: FractionalOffset.centerLeft,
            controller: _controller,
            animations: [
              stepOne,
              stepTwo,
            ],
            marginRight: 0.0,
            marginLeft: 0.0,
            isClockwise: true,
          ),
          new PivotBar(
            controller: _controller,
            animations: [
              stepThree,
              stepEight,
            ],
            marginRight: 0.0,
            marginLeft: 0.0,
            isClockwise: false,
          ),
          new PivotBar(
            controller: _controller,
            animations: [
              stepFour,
              stepSeven,
            ],
            marginRight: 0.0,
            marginLeft: 32.0,
            isClockwise: true,
          ),
          new PivotBar(
            controller: _controller,
            animations: [
              stepFive,
              stepSix,
            ],
            marginRight: 0.0,
            marginLeft: 32.0,
            isClockwise: false,
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Container(child: forwardStaggeredAnimation);
  }
}
*/

class _BarLoadingScreenState extends State<BarLoadingScreen> {
  @override
  Widget build(BuildContext context) {
    return new Container(
        child: SpinKitDoubleBounce(color: Colors.white, size: 50.0));
  }

  @override
  dispose() {
    barLoadingScreen = new BarLoadingScreen().route();
    super.dispose();
  }

}
