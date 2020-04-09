import 'package:flutter/material.dart';

class ButtonMenu extends StatelessWidget {
  final IconData icon;
  final String description;
  final Color color;
  final bool wide;

  static const Color FOOD_COLOR = Color.fromRGBO(247, 183, 49, 1);
  static const Color MEDICATION_COLOR = Color.fromRGBO(45, 152, 218, 1);
  static const Color HISTORY_COLOR = Color.fromRGBO(56, 103, 214, 1);
  static const Color TIPS_COLOR = Color.fromRGBO(32, 191, 107, 1);
  static const Color EMERGENCY_COLOR = Color.fromRGBO(235, 59, 90, 1);

  ButtonMenu({
    @required this.description,
    this.color,
    this.icon,
    this.wide = false,
    ze: 32,
  });

  ButtonMenu.wide({
    @required this.description,
    this.color,
    this.icon,
    this.wide = true,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: RaisedButton(
        padding: EdgeInsets.all(8),
        textColor: Colors.white,
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        onPressed: () {},
        color: this.color,
        child: _getChild(),
      ),
    );
  }

  Widget _getChild() {
    if (wide) {
      return Row(
        children: <Widget>[
          Icon(this.icon),
          Text(
            this.description,
            style: TextStyle(fontSize: 24),
          ),
        ],
      );
    }
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Icon(this.icon),
        Text(this.description),
      ],
    );
  }
}
