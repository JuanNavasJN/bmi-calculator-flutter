import 'package:flutter/material.dart';

class RoundIconButton extends StatefulWidget {
  RoundIconButton({this.icon, @required this.onPress});

  final IconData icon;
  final Function onPress;

  @override
  _RoundIconButtonState createState() => _RoundIconButtonState();
}

class _RoundIconButtonState extends State<RoundIconButton> {
  bool _buttonPressed = false;
  bool _loopActive = false;

  void _increaseCounterWhilePressed() async {
    // make sure that only one loop is active
    if (_loopActive) return;

    _loopActive = true;

    while (_buttonPressed) {
      // do your thing
      widget.onPress();

      // wait a bit
      await Future.delayed(Duration(milliseconds: 100));
    }

    _loopActive = false;
  }

  @override
  Widget build(BuildContext context) {
    return Listener(
      child: RawMaterialButton(
        child: Icon(widget.icon),
        onPressed: () {},
        // elevation: 6.0,
        elevation: 2.0,
        constraints: BoxConstraints.tightFor(width: 56.0, height: 56.0),
        shape: CircleBorder(),
        // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
        fillColor: Color(0xFF4C4F5E),
      ),
      onPointerDown: (details) {
        _buttonPressed = true;
        _increaseCounterWhilePressed();
      },
      onPointerUp: (details) {
        _buttonPressed = false;
        // onPress();
      },
    );
  }
}
