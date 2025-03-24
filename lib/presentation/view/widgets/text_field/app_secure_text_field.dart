import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_clean_architecture/shared/extension/context.dart';

import '../../../../shared/utils/keyboard.dart';
import '../../../resources/colors.dart';

class AppSecureTextField extends StatefulWidget {
  const AppSecureTextField({
    super.key,
    this.label,
    this.required = false,
    this.hint,
    this.value,
    this.error,
    this.enabled = true,
    this.prefixIcon,
    this.textInputAction = TextInputAction.done,
    this.focusNode,
    this.onFieldSubmitted,
    this.onTap,
    this.keyboardType,
    this.maxLength,
    this.inputFormatters,
    this.onChanged,
    this.controller,
    this.disableTextColor,
    this.disableBackgroundColor,
  });

  final String? label;
  final bool required;
  final String? hint;
  final String? value;
  final String? error;
  final bool enabled;
  final Widget? prefixIcon;
  final TextInputAction? textInputAction;
  final FocusNode? focusNode;
  final VoidCallback? onFieldSubmitted;
  final VoidCallback? onTap;
  final TextInputType? keyboardType;
  final int? maxLength;
  final List<TextInputFormatter>? inputFormatters;
  final ValueChanged<String>? onChanged;
  final TextEditingController? controller;
  final Color? disableTextColor;
  final Color? disableBackgroundColor;

  @override
  State<AppSecureTextField> createState() => _AppSecureTextFieldState();
}

class _AppSecureTextFieldState extends State<AppSecureTextField> {
  late TextEditingController _controller;
  var _obscure = true;

  @override
  void initState() {
    _controller =
        widget.controller ?? TextEditingController(text: widget.value ?? '');

    super.initState();
  }

  @override
  void didUpdateWidget(covariant AppSecureTextField oldWidget) {
    if (_controller.text != widget.value) {
      _controller.text = widget.value ?? '';
    }
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = context.styleOwn();
    final colorSchema = context.colorOwn();
    final defaultBorder = OutlineInputBorder(
      borderRadius: BorderRadius.circular(6.0),
      borderSide: BorderSide(
        color: colorSchema?.secondaryStrokeColor ??
            AppColors.secondaryStrokeColor, // Border color
      ),
    );
    final errorBorder = OutlineInputBorder(
      borderRadius: BorderRadius.circular(6.0),
      borderSide: BorderSide(
        color: colorSchema?.warning ?? AppColors.warning, // Border color
      ),
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (widget.label != null)
          Padding(
            padding: const EdgeInsets.only(bottom: 8),
            child: RichText(
              text: TextSpan(
                text: widget.label,
                style: textTheme?.primary?.copyWith(
                  height: 18 / 14,
                  color: colorSchema?.subTextColor,
                ),
                children: [
                  if (widget.required)
                    TextSpan(
                      text: '*',
                      style: textTheme?.primary?.copyWith(
                        height: 18 / 14,
                        color: colorSchema?.warning,
                      ),
                    ),
                ],
              ),
            ),
          ),
        Center(
          child: TextFormField(
            onChanged: widget.onChanged,
            inputFormatters: widget.inputFormatters,
            maxLength: widget.maxLength,
            keyboardType: widget.keyboardType,
            onTap: widget.onTap,
            onTapOutside: (event) {
              hideKeyboard();
            },
            onFieldSubmitted: (value) {
              widget.onFieldSubmitted?.call();
            },
            focusNode: widget.focusNode,
            textInputAction: widget.textInputAction,
            controller: _controller,
            enabled: widget.enabled,
            style: textTheme?.medium?.copyWith(
              height: 20 / 15,
              color: widget.enabled ? null : widget.disableTextColor,
            ),
            decoration: InputDecoration(
              counterText: '',
              suffixIconConstraints: BoxConstraints.tight(const Size(40, 44)),
              suffixIcon: InkWell(
                onTap: () {
                  setState(() {
                    _obscure = !_obscure;
                  });
                },
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(8, 12, 12, 12),
                  child: _obscure
                      ? const Icon(Icons.visibility_off)
                      : const Icon(Icons.visibility),
                ),
              ),
              prefixIconConstraints: BoxConstraints.tight(const Size(40, 44)),
              prefixIcon: (widget.prefixIcon != null)
                  ? Padding(
                      padding: const EdgeInsets.fromLTRB(12, 12, 8, 12),
                      child: widget.prefixIcon,
                    )
                  : null,
              contentPadding: const EdgeInsets.symmetric(
                horizontal: 12,
                vertical: 12,
              ),
              filled: true,
              fillColor: widget.enabled
                  ? AppColors.white
                  : (widget.disableBackgroundColor ?? AppColors.white),
              hintText: widget.hint,
              hintStyle: textTheme?.medium?.copyWith(
                color: colorSchema?.replaceTextColor,
              ),
              enabledBorder: defaultBorder,
              disabledBorder: defaultBorder,
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(6.0),
                borderSide: BorderSide(
                  color: colorSchema?.primary ?? AppColors.primaryColor, //lor
                ),
              ),
              errorBorder: errorBorder,
              focusedErrorBorder: errorBorder,
              error: widget.error != null ? const SizedBox() : null,
            ),
            obscuringCharacter: '*',
            obscureText: _obscure,
          ),
        ),
        if (widget.error!.isNotEmpty)
          Padding(
            padding: const EdgeInsets.only(top: 8),
            child: Text(
              widget.error!,
              style: textTheme?.primary?.copyWith(
                color: colorSchema?.warning,
                height: 18 / 14,
              ),
            ),
          )
      ],
    );
  }
}
