import 'package:flutter/material.dart';

import 'button_menu.dart';

class MainMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      padding: EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          ButtonMenu.wide(
            description: "Alimentação",
            icon: Icons.folder_open,
            color: ButtonMenu.FOOD_COLOR,
          ),
          SizedBox(height: 5),
          ButtonMenu.wide(
            description: "Medicação",
            icon: Icons.folder_open,
            color: ButtonMenu.MEDICATION_COLOR,
          ),
          SizedBox(height: 5),
          Container(
            height: 120,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ButtonMenu(
                  description: "Histórico de consultas",
                  icon: Icons.folder_open,
                  color: ButtonMenu.HISTORY_COLOR,
                ),
                SizedBox(width: 5),
                ButtonMenu(
                  description: "Dicas a especialistas",
                  icon: Icons.folder_open,
                  color: ButtonMenu.TIPS_COLOR,
                ),
                SizedBox(width: 5),
                ButtonMenu(
                  description: "Emergência",
                  icon: Icons.folder_open,
                  color: ButtonMenu.EMERGENCY_COLOR,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
