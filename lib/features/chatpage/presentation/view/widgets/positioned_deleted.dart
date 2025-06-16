import 'package:chat_group/core/utils/colorsmanager.dart';
import 'package:flutter/material.dart';

class PositionedDelete extends StatelessWidget {
  const PositionedDelete({super.key, required this.deleteIconAnimation});
  final Animation<double> deleteIconAnimation;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 15,
      top: 0,
      bottom: 0,
      child: AnimatedBuilder(
        animation: deleteIconAnimation,
        builder: (context, child) {
          return Opacity(
            opacity: deleteIconAnimation.value,
            child: Transform.scale(
              scale: deleteIconAnimation.value,
              child: IconButton(
                icon: Icon(Icons.delete, color: Colorsmanager.kred),
                onPressed: () {},
              ),
            ),
          );
        },
      ),
    );
  }
}
