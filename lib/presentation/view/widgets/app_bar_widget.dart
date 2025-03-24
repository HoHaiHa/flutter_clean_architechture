import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/shared/extension/context.dart';

import '../../resources/colors.dart';


class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  const AppBarWidget({
    super.key,
    required this.title,
    this.actions,
    this.leading,
    this.backToHome,
  });

  final String title;
  final List<Widget>? actions;
  final Widget? leading;
  final VoidCallback? backToHome;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: AppColors.black.withAlpha((0.05 * 255).round()),
            blurRadius: 8,
            offset: const Offset(0, 8),
          ),
        ],
      ),
      child: AppBar(
        title: Text(
          title,
          style: context.styleOwn()?.largeSemiBold?.copyWith(height: 24 / 16),
        ),
        centerTitle: true,
        actions: actions,
        leading: leading ??
            IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.arrow_back_ios, size: 18),
            ),
        elevation: 0,
        scrolledUnderElevation: 0,
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
