import 'package:flutter/material.dart';
import 'package:flutter_application_chess/components/piece.dart';
import 'package:flutter_application_chess/components/square.dart';
import 'package:flutter_application_chess/components/values/colors.dart';

class GameBoard extends StatefulWidget {
  const GameBoard({super.key});

  @override
  State<GameBoard> createState() => _GameBoardState();
}

class _GameBoardState extends State<GameBoard> {

  ChessPiece myPawn = ChessPiece(
    type: ChessPieceType.pawn,
    isWhite: false,
    imagePath: 'lib/chess_images/BPawn.png',
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
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
        return Square(
          isWhite: isWhite,
          piece: myPawn,
          );
      },
    ),
  );
}
}