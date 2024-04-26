import 'package:flutter/material.dart';
import 'package:news_api/presentation/common/utils/context_extensions.dart';

class Dialogs {
  static void showBottomSheetDialog(BuildContext context, Widget child) {
    showModalBottomSheet(
      context: context,
      showDragHandle: true,
      isScrollControlled: true,
      builder: (BuildContext context) {
        return ConstrainedBox(
          constraints: BoxConstraints(
            maxHeight: context.screenSize.height * 0.8,
          ),
          child: child,
        );
      },
    );
  }
}
