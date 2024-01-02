import 'package:flutter/material.dart';
import 'package:project/core/utils/semantics_hints.dart';

import '../../core/utils/utils.dart';

class AppAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  const AppAppBar({
    super.key,
    required this.title,
  });

  @override
  Size get preferredSize => const Size(double.infinity, 100);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.yellow,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          AppBar(
            toolbarHeight: 0,
            backgroundColor: Colors.white,
          ),
          Expanded(
            child: Container(
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: AppSizes.size_24w,
                      ),
                      child: Semantics(
                        header: true,
                        child: Text(
                          title,
                          style: AppTextStyle.headlineMedium(context),
                        ),
                      ),
                    ),
                  ),
                  Semantics(
                    button: true,
                    onTap: () {},
                    label: SemanticsLabels.settingsIcon,
                    onTapHint: SemanticsHints.showSettingsOnTapHint,
                    child: ExcludeSemantics(
                      child: IconButton(
                        icon: const Icon(
                          Icons.settings,
                        ),
                        onPressed: () {},
                        tooltip: TooltipMessages.settings,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
