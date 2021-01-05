import 'package:flutter/material.dart';

class GameListHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Titulo",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        Text(
          "Precio",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        Text(
          "Imagen",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        Text(
          "Año",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
