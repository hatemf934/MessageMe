import 'package:chat_group/core/utils/colorsmanager.dart';
import 'package:flutter/material.dart';

class PositionedDelete extends StatelessWidget {
  const PositionedDelete(
      {super.key,
      required this.deleteIconAnimation,
      required this.onPressed,
      required this.onPressedDeleted});
  final Animation<double> deleteIconAnimation;
  final void Function() onPressed;
  final void Function() onPressedDeleted;
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
                onPressed: () {
                  onPressedDeleted();
                  onPressed();
                },
              ),
            ),
          );
        },
      ),
    );
  }
}
