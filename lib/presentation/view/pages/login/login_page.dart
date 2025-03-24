import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_source_base/app_controller.dart';
import 'package:flutter_source_base/app_state.dart';
import 'package:flutter_source_base/presentation/base/base_page.dart';
import 'package:flutter_source_base/presentation/resources/locale_keys.dart';
import 'package:flutter_source_base/presentation/router/router.dart';
import 'package:flutter_source_base/presentation/views/pages/login/login_controller.dart';
import 'package:flutter_source_base/presentation/views/pages/login/login_state.dart';
import 'package:flutter_source_base/presentation/views/widgets/app_button.dart';
import 'package:flutter_source_base/presentation/views/widgets/text_field/app_secure_text_field.dart';
import 'package:flutter_source_base/presentation/views/widgets/text_field/app_text_field.dart';
import 'package:flutter_source_base/shared/common/error_handler.dart';
import 'package:flutter_source_base/shared/extensions/context_extensions.dart';
import 'package:gap/gap.dart';
import 'package:provider/provider.dart';
import 'package:tuple/tuple.dart';

@RoutePage()
class LoginPage extends BasePage<LoginController, LoginState> {
  const LoginPage({super.key});

  @override
  Future<void> onInitState(BuildContext context) async {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      // Show error when init app
      final failureGetInitData = context.read<AppState>().failureGetInitData;
      if (failureGetInitData != null) {
        ErrorHandler.showError(context, failureGetInitData);
        context.read<AppController>().removeErrorInitDataApp();
      }
    });
    super.onInitState(context);
  }

  @override
  Widget builder(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          child: SingleChildScrollView(
            child: _buildLoginForm(context),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Selector<LoginState, bool>(
            selector: (_, state) => state.isEnableLoginButton,
            builder: (_, isEnableLoginButton, __) => AppButton.primary(
              enable: isEnableLoginButton,
              borderRadius: 24,
              onPressed: () async {
                final result = await context.read<LoginController>().login();
                if (context.mounted) {
                  if (result) {
                    context.router.replaceAll([const HomeRoute()]);
                  }
                }
              },
              title: LocaleKeys.login_login_button.tr(),
            ),
          ),
        ),
        const Gap(32),
      ],
    );
  }

  Widget _buildLoginForm(BuildContext context) {
    final passwordKey = GlobalKey();

    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 32,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Gap(32),
          Text(
            LocaleKeys.login_login_title.tr(),
            style: context.themeOwn().textTheme?.xxLargeBold,
          ),
          const Gap(32),
          Selector<LoginState, Tuple2<String, String?>>(
            selector: (_, loginState) =>
                Tuple2(loginState.username, loginState.usernameError),
            builder: (_, data, __) {
              return AppTextField(
                key: passwordKey,
                label: LocaleKeys.login_user_name_label.tr(),
                value: data.item1,
                hint: LocaleKeys.login_user_name_hint.tr(),
                error: data.item2,
                onChanged: context.read<LoginController>().updateUsername,
                textInputAction: TextInputAction.next,
              );
            },
          ),
          const Gap(16),
          Selector<LoginState, Tuple2<String, String?>>(
            selector: (_, loginState) =>
                Tuple2(loginState.password, loginState.passwordError),
            builder: (_, data, __) {
              return AppSecureTextField(
                label: LocaleKeys.login_password_label.tr(),
                value: data.item1,
                hint: LocaleKeys.login_password_hint.tr(),
                error: data.item2,
                onChanged: context.read<LoginController>().updatePassword,
              );
            },
          ),
        ],
      ),
    );
  }
}
