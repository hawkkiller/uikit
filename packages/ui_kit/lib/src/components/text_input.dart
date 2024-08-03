import 'package:flutter/services.dart';
import 'package:ui_kit/ui_kit.dart';

enum UiKitTextInputVariant { outlined }

class UiKitTextInput extends StatefulWidget {
  const UiKitTextInput({
    required this.variant,
    this.controller,
    this.focusNode,
    this.style,
    this.enabled,
    this.inputFormatters,
    this.keyboardType,
    this.maxLength,
    this.restorationId,
    this.onTap,
    this.onEditingComplete,
    this.textInputAction,
    this.selectionControls,
    this.textCapitalization = TextCapitalization.none,
    this.autofocus = false,
    this.expands = false,
    this.obscureText = false,
    this.showCounter = false,
    super.key,
  });

  factory UiKitTextInput.outlined({
    UiTextInputStyle? style,
    TextEditingController? controller,
    List<TextInputFormatter>? inputFormatters,
    FocusNode? focusNode,
    bool? enabled,
    TextInputType? keyboardType,
    int? maxLength,
    String? restorationId,
    VoidCallback? onTap,
    VoidCallback? onEditingComplete,
    TextInputAction? textInputAction,
    TextSelectionControls? selectionControls,
    Key? key,
    bool showCounter = false,
    bool autofocus = false,
    bool expands = false,
    TextCapitalization textCapitalization = TextCapitalization.none,
    bool obscureText = false,
  }) =>
      UiKitTextInput(
        variant: UiKitTextInputVariant.outlined,
        controller: controller,
        focusNode: focusNode,
        style: style,
        enabled: enabled,
        autofocus: autofocus,
        expands: expands,
        inputFormatters: inputFormatters,
        keyboardType: keyboardType,
        textCapitalization: textCapitalization,
        maxLength: maxLength,
        obscureText: obscureText,
        restorationId: restorationId,
        onTap: onTap,
        onEditingComplete: onEditingComplete,
        textInputAction: textInputAction,
        selectionControls: selectionControls,
        showCounter: showCounter,
        key: key,
      );

  final UiTextInputStyle? style;
  final TextEditingController? controller;
  final FocusNode? focusNode;
  final bool? enabled;
  final List<TextInputFormatter>? inputFormatters;
  final bool expands;
  final bool autofocus;
  final TextCapitalization textCapitalization;
  final TextInputType? keyboardType;
  final int? maxLength;
  final bool showCounter;
  final bool obscureText;
  final String? restorationId;
  final VoidCallback? onTap;
  final VoidCallback? onEditingComplete;
  final TextInputAction? textInputAction;
  final TextSelectionControls? selectionControls;
  final UiKitTextInputVariant variant;

  @override
  State<UiKitTextInput> createState() => _UiKitTextInputState();
}

class _UiKitTextInputState extends State<UiKitTextInput> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final palette = theme.colorPalette;
    final typography = theme.appTypography;

    final variantStyle = switch (widget.variant) {
      UiKitTextInputVariant.outlined => OutlinedUiTextInputStyle(
          palette: palette,
          typography: typography,
        ),
    };

    final style = variantStyle.merge(widget.style);

    return Theme(
      data: ThemeData(),
      child: TextField(
        enabled: widget.enabled,
        inputFormatters: widget.inputFormatters,
        keyboardType: widget.keyboardType,
        textCapitalization: widget.textCapitalization,
        maxLength: widget.maxLength,
        obscureText: widget.obscureText,
        restorationId: widget.restorationId,
        onTap: widget.onTap,
        onEditingComplete: widget.onEditingComplete,
        cursorColor: style.cursorColor,
        expands: widget.expands,
        focusNode: widget.focusNode,
        autofocus: widget.autofocus,
        controller: widget.controller,
        decoration: style,
        buildCounter: (
          context, {
          required currentLength,
          required isFocused,
          required maxLength,
        }) {
          if (!widget.showCounter || maxLength == null) return null;

          return Text('$currentLength/$maxLength', style: style.counterStyle);
        },
        style: style.textStyle,
        textInputAction: widget.textInputAction,
        selectionControls: widget.selectionControls,
      ),
    );
  }
}

class OutlinedUiTextInputStyle extends UiTextInputStyle {
  const OutlinedUiTextInputStyle({required this.palette, required this.typography});

  final ColorPalette palette;
  final AppTypography typography;

  @override
  Color? get fillColor => palette.surface;

  @override
  TextStyle? get counterStyle => typography.labelSmall.copyWith(color: palette.onSurface);

  @override
  TextStyle? get errorStyle => typography.bodySmall.copyWith(color: palette.error);

  @override
  TextStyle? get textStyle => typography.bodyLarge.copyWith(color: palette.onSurface);

  @override
  TextStyle? get hintStyle =>
      typography.bodyLarge.copyWith(color: palette.onSurface.withOpacity(.78));

  @override
  TextStyle? get helperStyle => typography.bodySmall.copyWith(color: palette.onSurface);

  @override
  TextStyle? get labelStyle => WidgetStateTextStyle.resolveWith(
        (states) {
          if (states.contains(WidgetState.error)) {
            return typography.bodyLarge.copyWith(color: palette.error);
          }

          if (states.contains(WidgetState.focused)) {
            return typography.bodyLarge.copyWith(color: palette.error);
          }

          return typography.bodyLarge.copyWith(color: palette.onSurface.withOpacity(.712));
        },
      );

  @override
  TextStyle? get floatingLabelStyle => WidgetStateTextStyle.resolveWith(
        (states) {
          if (states.contains(WidgetState.error)) {
            return typography.labelLarge.copyWith(color: palette.error);
          }

          if (states.contains(WidgetState.focused)) {
            return typography.labelLarge.copyWith(color: palette.primary);
          }

          return typography.labelLarge.copyWith(color: palette.onSurface.withOpacity(.712));
        },
      );

  @override
  InputBorder? get focusedBorder => OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(
          color: palette.primary,
          width: 2,
        ),
      );

  @override
  InputBorder? get focusedErrorBorder => OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(
          color: palette.error,
          width: 2,
        ),
      );

  @override
  InputBorder? get errorBorder => OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(
          color: palette.error,
        ),
      );

  @override
  InputBorder? get enabledBorder => OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(
          color: palette.outline,
        ),
      );

  @override
  InputBorder? get border => OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(color: palette.outline),
      );
}

class UiTextInputStyle extends InputDecoration {
  const UiTextInputStyle({
    super.icon,
    super.iconColor,
    super.label,
    super.labelText,
    super.labelStyle,
    super.floatingLabelStyle,
    super.helper,
    super.helperText,
    super.helperStyle,
    super.helperMaxLines,
    super.hintText,
    super.hintStyle,
    super.hintTextDirection,
    super.hintMaxLines,
    super.hintFadeDuration,
    super.error,
    super.errorText,
    super.errorStyle,
    super.errorMaxLines,
    super.floatingLabelBehavior,
    super.floatingLabelAlignment,
    super.isCollapsed,
    super.isDense,
    super.contentPadding,
    super.prefixIcon,
    super.prefixIconConstraints,
    super.prefix,
    super.prefixText,
    super.prefixStyle,
    super.prefixIconColor,
    super.suffixIcon,
    super.suffix,
    super.suffixText,
    super.suffixStyle,
    super.suffixIconColor,
    super.suffixIconConstraints,
    super.counter,
    super.counterText,
    super.counterStyle,
    super.filled,
    super.fillColor,
    super.focusColor,
    super.hoverColor,
    super.errorBorder,
    super.focusedBorder,
    super.focusedErrorBorder,
    super.disabledBorder,
    super.enabledBorder,
    super.border,
    super.enabled = true,
    super.semanticCounterText,
    super.alignLabelWithHint,
    super.constraints,
    this.textStyle,
    this.cursorColor,
  });

  final TextStyle? textStyle;
  final Color? cursorColor;

  UiTextInputStyle merge(UiTextInputStyle? other) {
    if (other == null) return this;
    return UiTextInputStyle(
      icon: other.icon ?? icon,
      iconColor: other.iconColor ?? iconColor,
      label: other.label ?? label,
      labelText: other.labelText ?? labelText,
      labelStyle: other.labelStyle ?? labelStyle,
      floatingLabelStyle: other.floatingLabelStyle ?? floatingLabelStyle,
      helper: other.helper ?? helper,
      helperText: other.helperText ?? helperText,
      helperStyle: other.helperStyle ?? helperStyle,
      helperMaxLines: other.helperMaxLines ?? helperMaxLines,
      hintText: other.hintText ?? hintText,
      hintStyle: other.hintStyle ?? hintStyle,
      hintTextDirection: other.hintTextDirection ?? hintTextDirection,
      hintMaxLines: other.hintMaxLines ?? hintMaxLines,
      hintFadeDuration: other.hintFadeDuration ?? hintFadeDuration,
      error: other.error ?? error,
      errorText: other.errorText ?? errorText,
      errorStyle: other.errorStyle ?? errorStyle,
      errorMaxLines: other.errorMaxLines ?? errorMaxLines,
      floatingLabelBehavior: other.floatingLabelBehavior ?? floatingLabelBehavior,
      floatingLabelAlignment: other.floatingLabelAlignment ?? floatingLabelAlignment,
      isCollapsed: other.isCollapsed ?? isCollapsed,
      isDense: other.isDense ?? isDense,
      contentPadding: other.contentPadding ?? contentPadding,
      prefixIcon: other.prefixIcon ?? prefixIcon,
      prefixIconConstraints: other.prefixIconConstraints ?? prefixIconConstraints,
      prefix: other.prefix ?? prefix,
      prefixText: other.prefixText ?? prefixText,
      prefixStyle: other.prefixStyle ?? prefixStyle,
      prefixIconColor: other.prefixIconColor ?? prefixIconColor,
      suffixIcon: other.suffixIcon ?? suffixIcon,
      suffix: other.suffix ?? suffix,
      suffixText: other.suffixText ?? suffixText,
      suffixStyle: other.suffixStyle ?? suffixStyle,
      suffixIconColor: other.suffixIconColor ?? suffixIconColor,
      suffixIconConstraints: other.suffixIconConstraints ?? suffixIconConstraints,
      counter: other.counter ?? counter,
      counterText: other.counterText ?? counterText,
      counterStyle: other.counterStyle ?? counterStyle,
      filled: other.filled ?? filled,
      fillColor: other.fillColor ?? fillColor,
      focusColor: other.focusColor ?? focusColor,
      hoverColor: other.hoverColor ?? hoverColor,
      errorBorder: other.errorBorder ?? errorBorder,
      focusedBorder: other.focusedBorder ?? focusedBorder,
      focusedErrorBorder: other.focusedErrorBorder ?? focusedErrorBorder,
      disabledBorder: other.disabledBorder ?? disabledBorder,
      enabledBorder: other.enabledBorder ?? enabledBorder,
      border: other.border ?? border,
      enabled: other.enabled,
      semanticCounterText: other.semanticCounterText ?? semanticCounterText,
      alignLabelWithHint: other.alignLabelWithHint ?? alignLabelWithHint,
      constraints: other.constraints ?? constraints,
      textStyle: other.textStyle ?? textStyle,
      cursorColor: other.cursorColor ?? cursorColor,
    );
  }
}
