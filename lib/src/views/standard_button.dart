import 'package:flutter/material.dart';
import 'package:web_mood_assessor/src/constants/custom_colors.dart';


class StandardButton extends StatefulWidget {
  final String title;
  final Function onPressed;
  Color backgroundColor;
  Color hoverBackgroundColor;

  StandardButton({
    @required title,
    @required onPressed,
    @required backgroundColor,
    @required hoverBackgroundColor,
  }) : this.title = title,
  this.onPressed = onPressed,
  this.backgroundColor = backgroundColor,
  this.hoverBackgroundColor = hoverBackgroundColor;


  @override
  _StandardButtonState createState() => _StandardButtonState();
}

class _StandardButtonState extends State<StandardButton> {
  bool _isPressed = false;

  void _setIsPressed (bool value) {
    setState(() {
      _isPressed = value;
    });
  }

  Color _getBackgroundColor() {
    if (_isPressed) {
      return Color.lerp(widget.backgroundColor, widget.hoverBackgroundColor, 1) ?? CustomColors.main;
    }
    return widget.backgroundColor;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        widget.onPressed!();
      },
      onTapDown: (_) => _setIsPressed(true),
      onTapCancel: () => _setIsPressed(false),
      onTapUp: (_) => _setIsPressed(false),
      child: AnimatedContainer(
        duration: Duration(milliseconds: 100),
        height: 56,
        width: double.infinity,
        decoration: BoxDecoration(
          color: _getBackgroundColor(),
          borderRadius: BorderRadius.all(Radius.circular(16)),
        ),
        child: Center(
          child: Text(
            widget.title ?? '',
          )
        ),
      ),
    );
  }
}