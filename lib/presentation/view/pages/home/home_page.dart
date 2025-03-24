import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_source_base/presentation/base/base_page.dart';
import 'package:flutter_source_base/presentation/resources/colors.dart';
import 'package:flutter_source_base/presentation/resources/locale_keys.dart';
import 'package:flutter_source_base/presentation/router/router.dart';
import 'package:flutter_source_base/presentation/views/pages/home/home_controller.dart';
import 'package:flutter_source_base/presentation/views/pages/home/home_state.dart';
import 'package:flutter_source_base/presentation/views/widgets/app_bottom_navigation_bar.dart';
import 'package:flutter_source_base/shared/extensions/context_extensions.dart';

@RoutePage()
class HomePage extends BasePage<HomeController, HomeState> {
  const HomePage({super.key});

  @override
  Widget builder(BuildContext context) {
    final navigationItems = _getNavigationItems();
    return AutoTabsScaffold(
      routes: navigationItems.map((e) => e.page).toList(),
      bottomNavigationBuilder: (BuildContext context, TabsRouter tabsRouter) {
        return AppBottomNavigationBar(
          selectedTextStyle: context.themeOwn().textTheme?.smallBold?.copyWith(
                color: AppColors.primaryColor,
              ),
          unSelectedTextStyle: context.themeOwn().textTheme?.small,
          currentIndex: tabsRouter.activeIndex,
          onTap: tabsRouter.setActiveIndex,
          items: navigationItems,
        );
      },
    );
  }

  List<AppBottomNavigationItem> _getNavigationItems() {
    return [
      AppBottomNavigationItem(
        label: LocaleKeys.bottom_nav_home.tr(),
        icon: const Icon(
          Icons.home,
          color: AppColors.atlantis,
        ),
        selectedIcon: const Icon(
          Icons.home,
          color: AppColors.primaryColor,
        ),
        page: const HomeTopRoute(),
      ),
      AppBottomNavigationItem(
        label: LocaleKeys.bottom_nav_home.tr(),
        icon: const Icon(
          Icons.home,
          color: AppColors.atlantis,
        ),
        selectedIcon: const Icon(
          Icons.home,
          color: AppColors.primaryColor,
        ),
        page: const HomeTopRoute(),
      ),
      AppBottomNavigationItem(
        label: LocaleKeys.bottom_nav_home.tr(),
        icon: const Icon(
          Icons.home,
          color: AppColors.atlantis,
        ),
        selectedIcon: const Icon(
          Icons.home,
          color: AppColors.primaryColor,
        ),
        page: const HomeTopRoute(),
      ),
      AppBottomNavigationItem(
        label: LocaleKeys.bottom_nav_home.tr(),
        icon: const Icon(
          Icons.home,
          color: AppColors.atlantis,
        ),
        selectedIcon: const Icon(
          Icons.home,
          color: AppColors.primaryColor,
        ),
        page: const HomeTopRoute(),
      ),
    ];
  }
}
