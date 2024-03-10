import 'package:app_haikyuu/src/layers/domain/entities/player.dart';
import 'package:app_haikyuu/src/layers/shared/themes/theme.dart';
import 'package:flutter/material.dart';

import '../views/detail_player_view.dart';

class CustomButtonInsideOfCardWidget extends StatelessWidget {
  final Player player;
  final String text;
  const CustomButtonInsideOfCardWidget(
      {super.key, required this.player, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 30,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: themeElevatedButtonMaterial.backgroundColor,
        ),
        onPressed: () {
          // Passa o jogador selecionado para a próxima página
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => DetailView(player: player),
            ),
          );
        },
        child: Text(player.name),
      ),
    );
  }
}
