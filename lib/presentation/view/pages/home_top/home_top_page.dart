import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_source_base/presentation/base/base_page.dart';
import 'package:flutter_source_base/presentation/views/pages/home_top/home_top_controller.dart';
import 'package:flutter_source_base/presentation/views/pages/home_top/home_top_state.dart';

@RoutePage()
class HomeTopPage extends BasePage<HomeTopController, HomeTopState> {
  const HomeTopPage({super.key});

  @override
  Widget builder(BuildContext context) {
    return const Center(child: Text('Hello World'));
  }
}
