import 'package:chat_group/core/utils/borderradiues.dart';
import 'package:chat_group/core/utils/colorsmanager.dart';
import 'package:chat_group/core/utils/fontsizemanager.dart';
import 'package:chat_group/core/utils/paddingmanager.dart';
import 'package:chat_group/core/utils/widthandhightmanager.dart';
import 'package:chat_group/features/authapp/data/model/data_model.dart';
import 'package:chat_group/features/chatpage/presentation/view/widgets/positioned_deleted.dart';
import 'package:flutter/material.dart';

class ChatHomeItem extends StatefulWidget {
  const ChatHomeItem({super.key, required this.data});
  final DataModel data;

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
      onTap: () => animationController.reverse(),
      child: Stack(
        children: [
          SlideTransition(
            position: slidingAnimation,
            child: Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(
                horizontal: Paddingmanager.p15,
                vertical: Paddingmanager.p10,
              ),
              decoration: BoxDecoration(
                color: Colorsmanager.kTransparent,
              ),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(Borderradiues.bo40),
                    child: Image.asset(
                      height: Hightmanager.h60,
                      width: Widthmanager.w60,
                      widget.data.image,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(width: Widthmanager.w10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.data.name,
                        style: Theme.of(context)
                            .textTheme
                            .titleLarge!
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: Hightmanager.h5),
                      Text(
                        "New Message",
                        style: Theme.of(context)
                            .textTheme
                            .titleSmall!
                            .copyWith(fontSize: Fontsizemanager.font15),
                      ),
                    ],
                  ),
                  const Spacer(),
                  const Text("2.30pm"),
                ],
              ),
            ),
          ),
          PositionedDelete(
            deleteIconAnimation: deleteIconAnimation,
          ),
        ],
      ),
    );
  }
}
