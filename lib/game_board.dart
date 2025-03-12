import 'package:flutter/material.dart';
import 'package:flutter_application_chess/components/square.dart';

class GameBoard extends StatefulWidget {
  const GameBoard({Key? key}) : super(key: key);

  @override
  State<GameBoard> createState() => _GameBoardState();
}

class _GameBoardState extends State<GameBoard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        itemCount: 8*8,
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: 
          const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 8), 
      itemBuilder: (context, index) {
        int x =index ~/ 8;
        int y = index % 8;
        bool isWhite = (x + y) % 2 == 0;
        return Square(isWhite: isWhite);
      },
    ),
  );
}
}