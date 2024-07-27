import 'package:ui_kit/ui_kit.dart';

// UiKitText widget to handle different text styles and sizes
class UiKitText extends StatelessWidget {
  const UiKitText._(
    this.content, {
    this.color,
    this.style,
    this.textAlign,
    this.overflow,
    this.maxLines,
    _UiKitTextSize? size,
  }) : _size = size;

  /// Creates a [UiKitText] widget with a large display size.
  factory UiKitText.displayLarge(
    String content, {
    Color? color,
    TextStyle? style,
    TextAlign? textAlign,
    TextOverflow? overflow,
    int? maxLines,
  }) =>
      UiKitText._(
        content,
        color: color,
        style: style,
        textAlign: textAlign,
        overflow: overflow,
        maxLines: maxLines,
        size: _UiKitTextSize.displayLarge,
      );

  /// Creates a [UiKitText] widget with a medium display size.
  factory UiKitText.displayMedium(
    String content, {
    Color? color,
    TextStyle? style,
    TextAlign? textAlign,
    TextOverflow? overflow,
    int? maxLines,
  }) =>
      UiKitText._(
        content,
        color: color,
        style: style,
        textAlign: textAlign,
        overflow: overflow,
        maxLines: maxLines,
        size: _UiKitTextSize.displayMedium,
      );

  /// Creates a [UiKitText] widget with a small display size.
  factory UiKitText.displaySmall(
    String content, {
    Color? color,
    TextStyle? style,
    TextAlign? textAlign,
    TextOverflow? overflow,
    int? maxLines,
  }) =>
      UiKitText._(
        content,
        color: color,
        style: style,
        textAlign: textAlign,
        overflow: overflow,
        maxLines: maxLines,
        size: _UiKitTextSize.displaySmall,
      );

  /// Creates a [UiKitText] widget with a large headline size.
  factory UiKitText.headlineLarge(
    String content, {
    Color? color,
    TextStyle? style,
    TextAlign? textAlign,
    TextOverflow? overflow,
    int? maxLines,
  }) =>
      UiKitText._(
        content,
        color: color,
        style: style,
        textAlign: textAlign,
        overflow: overflow,
        maxLines: maxLines,
        size: _UiKitTextSize.headlineLarge,
      );

  /// Creates a [UiKitText] widget with a medium headline size.
  factory UiKitText.headlineMedium(
    String content, {
    Color? color,
    TextStyle? style,
    TextAlign? textAlign,
    TextOverflow? overflow,
    int? maxLines,
  }) =>
      UiKitText._(
        content,
        color: color,
        style: style,
        textAlign: textAlign,
        overflow: overflow,
        maxLines: maxLines,
        size: _UiKitTextSize.headlineMedium,
      );

  /// Creates a [UiKitText] widget with a small headline size.
  factory UiKitText.headlineSmall(
    String content, {
    Color? color,
    TextStyle? style,
    TextAlign? textAlign,
    TextOverflow? overflow,
    int? maxLines,
  }) =>
      UiKitText._(
        content,
        color: color,
        style: style,
        textAlign: textAlign,
        overflow: overflow,
        maxLines: maxLines,
        size: _UiKitTextSize.headlineSmall,
      );

  /// Creates a [UiKitText] widget with a large title size.
  factory UiKitText.titleLarge(
    String content, {
    Color? color,
    TextStyle? style,
    TextAlign? textAlign,
    TextOverflow? overflow,
    int? maxLines,
  }) =>
      UiKitText._(
        content,
        color: color,
        style: style,
        textAlign: textAlign,
        overflow: overflow,
        maxLines: maxLines,
        size: _UiKitTextSize.titleLarge,
      );

  /// Creates a [UiKitText] widget with a medium title size.
  factory UiKitText.titleMedium(
    String content, {
    Color? color,
    TextStyle? style,
    TextAlign? textAlign,
    TextOverflow? overflow,
    int? maxLines,
  }) =>
      UiKitText._(
        content,
        color: color,
        style: style,
        textAlign: textAlign,
        overflow: overflow,
        maxLines: maxLines,
        size: _UiKitTextSize.titleMedium,
      );

  /// Creates a [UiKitText] widget with a small title size.
  factory UiKitText.titleSmall(
    String content, {
    Color? color,
    TextStyle? style,
    TextAlign? textAlign,
    TextOverflow? overflow,
    int? maxLines,
  }) =>
      UiKitText._(
        content,
        color: color,
        style: style,
        textAlign: textAlign,
        overflow: overflow,
        maxLines: maxLines,
        size: _UiKitTextSize.titleSmall,
      );

  /// Creates a [UiKitText] widget with a large body size.
  factory UiKitText.bodyLarge(
    String content, {
    Color? color,
    TextStyle? style,
    TextAlign? textAlign,
    TextOverflow? overflow,
    int? maxLines,
  }) =>
      UiKitText._(
        content,
        color: color,
        style: style,
        textAlign: textAlign,
        overflow: overflow,
        maxLines: maxLines,
        size: _UiKitTextSize.bodyLarge,
      );

  /// Creates a [UiKitText] widget with a medium body size.
  factory UiKitText.bodyMedium(
    String content, {
    Color? color,
    TextStyle? style,
    TextAlign? textAlign,
    TextOverflow? overflow,
    int? maxLines,
  }) =>
      UiKitText._(
        content,
        color: color,
        style: style,
        textAlign: textAlign,
        overflow: overflow,
        maxLines: maxLines,
        size: _UiKitTextSize.bodyMedium,
      );

  /// Creates a [UiKitText] widget with a small body size.
  factory UiKitText.bodySmall(
    String content, {
    Color? color,
    TextStyle? style,
    TextAlign? textAlign,
    TextOverflow? overflow,
    int? maxLines,
  }) =>
      UiKitText._(
        content,
        color: color,
        style: style,
        textAlign: textAlign,
        overflow: overflow,
        maxLines: maxLines,
        size: _UiKitTextSize.bodySmall,
      );

  /// Creates a [UiKitText] widget with a large label size.
  factory UiKitText.labelLarge(
    String content, {
    Color? color,
    TextStyle? style,
    TextAlign? textAlign,
    TextOverflow? overflow,
    int? maxLines,
  }) =>
      UiKitText._(
        content,
        color: color,
        style: style,
        textAlign: textAlign,
        overflow: overflow,
        maxLines: maxLines,
        size: _UiKitTextSize.labelLarge,
      );

  /// Creates a [UiKitText] widget with a medium label size.
  factory UiKitText.labelMedium(
    String content, {
    Color? color,
    TextStyle? style,
    TextAlign? textAlign,
    TextOverflow? overflow,
    int? maxLines,
  }) =>
      UiKitText._(
        content,
        color: color,
        style: style,
        textAlign: textAlign,
        overflow: overflow,
        maxLines: maxLines,
        size: _UiKitTextSize.labelMedium,
      );

  /// Creates a [UiKitText] widget with a small label size.
  factory UiKitText.labelSmall(
    String content, {
    Color? color,
    TextStyle? style,
    TextAlign? textAlign,
    TextOverflow? overflow,
    int? maxLines,
  }) =>
      UiKitText._(
        content,
        color: color,
        style: style,
        textAlign: textAlign,
        overflow: overflow,
        maxLines: maxLines,
        size: _UiKitTextSize.labelSmall,
      );

  final String content;
  final TextStyle? style;
  final TextAlign? textAlign;
  final TextOverflow? overflow;
  final int? maxLines;
  final Color? color;
  final _UiKitTextSize? _size;

  TextStyle _getTextStyle(AppTypography typography, _UiKitTextSize size) => switch (size) {
        _UiKitTextSize.displayLarge => typography.displayLarge,
        _UiKitTextSize.displayMedium => typography.displayMedium,
        _UiKitTextSize.displaySmall => typography.displaySmall,
        _UiKitTextSize.headlineLarge => typography.headlineLarge,
        _UiKitTextSize.headlineMedium => typography.headlineMedium,
        _UiKitTextSize.headlineSmall => typography.headlineSmall,
        _UiKitTextSize.titleLarge => typography.titleLarge,
        _UiKitTextSize.titleMedium => typography.titleMedium,
        _UiKitTextSize.titleSmall => typography.titleSmall,
        _UiKitTextSize.bodyLarge => typography.bodyLarge,
        _UiKitTextSize.bodyMedium => typography.bodyMedium,
        _UiKitTextSize.bodySmall => typography.bodySmall,
        _UiKitTextSize.labelLarge => typography.labelLarge,
        _UiKitTextSize.labelMedium => typography.labelMedium,
        _UiKitTextSize.labelSmall => typography.labelSmall,
      };

  @override
  Widget build(BuildContext context) {
    final typography = Theme.of(context).appTypography;

    // Get the text style based on the size
    final style =
        _size != null ? _getTextStyle(typography, _size) : this.style ?? typography.bodyLarge;

    return Text(
      content,
      textAlign: textAlign,
      overflow: overflow,
      maxLines: maxLines,
      style: style.copyWith(color: color),
    );
  }
}

// Enum to define different text sizes
enum _UiKitTextSize {
  displayLarge,
  displayMedium,
  displaySmall,
  headlineLarge,
  headlineMedium,
  headlineSmall,
  titleLarge,
  titleMedium,
  titleSmall,
  bodyLarge,
  bodyMedium,
  bodySmall,
  labelLarge,
  labelMedium,
  labelSmall,
}
