import 'package:flutter/material.dart';
import 'package:flutter_application_chess/components/piece.dart';
import 'package:flutter_application_chess/components/values/colors.dart';

class Square extends StatelessWidget {
  final bool isWhite;
  final ChessPiece? piece;
  const Square({
    super.key, 
    required this.isWhite, 
    required this.piece, 
    });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: isWhite ? foregroundColor : backgroundColor,
      child: piece != null 
          ? Image.asset(
              piece!.imagePath,
              color: piece!.isWhite ? Colors.white : Colors.black,
              ) : null,
    );
  }
}