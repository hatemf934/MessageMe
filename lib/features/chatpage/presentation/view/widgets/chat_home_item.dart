import 'package:chat_group/features/authapp/data/model/data_model.dart';
import 'package:chat_group/features/chatpage/presentation/view/chatview.dart';
import 'package:chat_group/features/chatpage/presentation/view/widgets/positioned_deleted.dart';
import 'package:chat_group/features/chatpage/presentation/view/widgets/sliding_transtion.dart';
import 'package:flutter/material.dart';

class ChatHomeItem extends StatefulWidget {
  const ChatHomeItem({
    super.key,
    required this.data,
    required this.onPressed,
  });
  final DataModel data;
  final void Function() onPressed;

  @override
  State<ChatHomeItem> createState() => _ChatHomeItemState();
}

class _ChatHomeItemState extends State<ChatHomeItem>
    with SingleTickerProviderStateMixin {
  late Animation<Offset> slidingAnimation;
  late AnimationController animationController;
  late Animation<double> deleteIconAnimation;

  @override
  void initState() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );
    slidingAnimation = Tween<Offset>(
      begin: const Offset(0, 0),
      end: const Offset(0.16, 0),
    ).animate(
      CurvedAnimation(
        parent: animationController,
        curve: Curves.easeOut,
      ),
    );

    deleteIconAnimation = Tween<double>(
      begin: 0,
      end: 1,
    ).animate(
      CurvedAnimation(
        parent: animationController,
        curve: Curves.easeOut,
      ),
    );

    super.initState();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onLongPress: () => animationController.forward(),
      onTap: () {
        if (animationController.isCompleted) {
          animationController.reverse();
        } else {
          Navigator.pushNamed(context, Chatview.id, arguments: widget.data);
        }
      },
      child: Stack(
        children: [
          SlidingTranstion(
              slidingAnimation: slidingAnimation,
              image: widget.data.image,
              name: widget.data.name),
          PositionedDelete(
            deleteIconAnimation: deleteIconAnimation,
            onPressed: widget.onPressed,
            onPressedDeleted: animationController.reverse,
          ),
        ],
      ),
    );
  }
}
