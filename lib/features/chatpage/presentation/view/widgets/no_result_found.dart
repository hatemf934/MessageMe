import 'package:chat_group/core/utils/colorsmanager.dart';
import 'package:chat_group/core/utils/textmanager.dart';
import 'package:chat_group/core/utils/widthandhightmanager.dart';
import 'package:flutter/material.dart';

class NoSearchFound extends StatelessWidget {
  const NoSearchFound({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.search_off,
            size: Widthmanager.w60,
            color: Colorsmanager.kGrey400,
          ),
          SizedBox(height: Hightmanager.h16),
          Text(
            Textmanager.kNoResults,
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  color: Colorsmanager.kGrey600,
                ),
          ),
          SizedBox(height: Hightmanager.h8),
          Text(
            Textmanager.kTrySearch,
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: Colorsmanager.kGrey500,
                ),
          ),
        ],
      ),
    );
  }
}
