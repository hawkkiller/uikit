import 'package:flutter/services.dart';
import 'package:ui_kit/ui_kit.dart';

enum UiTextInputVariant { standard }

class UiTextField extends StatefulWidget {
  const UiTextField.standard({
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
    this.maxLengthEnforcement,
    this.textCapitalization = TextCapitalization.none,
    this.autofocus = false,
    this.expands = false,
    this.obscureText = false,
    this.showCounter = false,
    super.key,
  }) : variant = UiTextInputVariant.standard;

  final UiTextFieldStyle? style;
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
  final MaxLengthEnforcement? maxLengthEnforcement;
  final UiTextInputVariant variant;

  @override
  State<UiTextField> createState() => _UiTextFieldState();
}

class _UiTextFieldState extends State<UiTextField> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final palette = theme.colorPalette;
    final typography = theme.appTypography;

    final variantStyle = switch (widget.variant) {
      UiTextInputVariant.standard => _StandardUiTextFieldStyle(
          palette: palette,
          typography: typography,
        ),
    };

    final style = variantStyle.merge(widget.style);

    return TextField(
      enabled: widget.enabled,
      inputFormatters: widget.inputFormatters,
      keyboardType: widget.keyboardType,
      textCapitalization: widget.textCapitalization,
      maxLength: widget.maxLength,
      obscureText: widget.obscureText,
      restorationId: widget.restorationId,
      onTap: widget.onTap,
      onEditingComplete: widget.onEditingComplete,
      expands: widget.expands,
      focusNode: widget.focusNode,
      autofocus: widget.autofocus,
      controller: widget.controller,
      maxLengthEnforcement: widget.maxLengthEnforcement,
      textInputAction: widget.textInputAction,
      selectionControls: widget.selectionControls,
      cursorColor: style.cursorColor,
      style: style.textStyle,
      decoration: style,
      cursorWidth: style.cursorWidth,
      cursorHeight: style.cursorHeight,
      buildCounter: (
        context, {
        required currentLength,
        required isFocused,
        required maxLength,
      }) {
        if (!widget.showCounter || maxLength == null) return null;

        return Text('$currentLength/$maxLength', style: style.counterStyle);
      },
    );
  }
}

class _StandardUiTextFieldStyle extends UiTextFieldStyle {
  const _StandardUiTextFieldStyle({required this.palette, required this.typography});

  final ColorPalette palette;
  final AppTypography typography;

  @override
  TextStyle? get textStyle => typography.bodyMedium.copyWith(color: palette.foreground);

  @override
  TextStyle? get counterStyle => typography.labelSmall.copyWith(color: palette.foreground.withOpacity(.58));

  @override
  TextStyle? get errorStyle => typography.bodySmall.copyWith(color: palette.destructive);

  @override
  TextStyle? get hintStyle => WidgetStateTextStyle.resolveWith(
        (states) {
          if (states.contains(WidgetState.disabled)) {
            return typography.bodyMedium.copyWith(color: palette.foreground.withOpacity(.38));
          }

          return typography.bodyMedium.copyWith(color: palette.foreground.withOpacity(.58));
        },
      );

  @override
  TextStyle? get helperStyle => typography.bodySmall.copyWith(color: palette.foreground.withOpacity(.58));

  @override
  InputBorder? get focusedBorder => OutlineInputBorder(
        borderRadius: BorderRadius.circular(6),
        borderSide: BorderSide(
          color: palette.primary,
          width: 1,
        ),
      );

  @override
  InputBorder? get focusedErrorBorder => OutlineInputBorder(
        borderRadius: BorderRadius.circular(6),
        borderSide: BorderSide(
          color: palette.destructive,
          width: 1,
        ),
      );

  @override
  InputBorder? get errorBorder => OutlineInputBorder(
        borderRadius: BorderRadius.circular(6),
        borderSide: BorderSide(
          color: palette.destructive,
        ),
      );

  @override
  InputBorder? get enabledBorder => OutlineInputBorder(
        borderRadius: BorderRadius.circular(6),
        borderSide: BorderSide(
          color: palette.border,
        ),
      );

  @override
  InputBorder? get disabledBorder => OutlineInputBorder(
        borderRadius: BorderRadius.circular(6),
        borderSide: BorderSide(
          color: palette.foreground.withOpacity(.08),
        ),
      );

  @override
  EdgeInsetsGeometry? get contentPadding => const EdgeInsets.symmetric(horizontal: 12, vertical: 12);

  @override
  BoxConstraints? get constraints => const BoxConstraints(minHeight: 32);

  @override
  Color? get cursorColor => palette.primary;

  @override
  bool? get isDense => true;
}

class UiTextFieldStyle extends InputDecoration {
  const UiTextFieldStyle({
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
    this.cursorWidth = 1,
    this.cursorHeight,
  });

  /// The style to use for the text being edited.
  final TextStyle? textStyle;

  /// The color to use for the cursor.
  final Color? cursorColor;

  /// The width of the cursor.
  final double cursorWidth;

  /// The height of the cursor.
  final double? cursorHeight;

  /// Merge two [UiTextFieldStyle] objects.
  ///
  /// If a property is not null in [other], it will be used,
  /// otherwise the property from `this` will be used.
  UiTextFieldStyle merge(UiTextFieldStyle? other) {
    if (other == null) return this;
    return UiTextFieldStyle(
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
      cursorWidth: cursorWidth,
      cursorHeight: other.cursorHeight ?? cursorHeight,
    );
  }
}
