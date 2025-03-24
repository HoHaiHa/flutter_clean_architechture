import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../base/base_page.dart';
import 'top_bloc.dart';

@RoutePage()
class TopPage extends BasePage<TopBloc, TopEvent, TopState> {
  const TopPage({Key? key}) : super(key: key);

  @override
  void onInitState(BuildContext context) {
    context.read<TopBloc>().add(const TopEvent.loadData());
    super.onInitState(context);
  }

  @override
  Widget builder(BuildContext context) {
    return const SizedBox();
  }
}