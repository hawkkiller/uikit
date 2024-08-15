import 'package:ui_kit/ui_kit.dart';

// UiText widget to handle different text styles and sizes
class UiText extends StatelessWidget {
  const UiText._(
    this.content, {
    this.color,
    this.style,
    this.textAlign,
    this.overflow,
    this.maxLines,
    TextStyle? Function(AppTypography)? styleBuilder,
  }) : _styleBuilder = styleBuilder;

  /// Creates a [UiText] widget with a large display size.
  factory UiText.displayLarge(
    String content, {
    Color? color,
    TextStyle? style,
    TextAlign? textAlign,
    TextOverflow? overflow,
    int? maxLines,
  }) =>
      UiText._(
        content,
        color: color,
        style: style,
        textAlign: textAlign,
        overflow: overflow,
        maxLines: maxLines,
        styleBuilder: (typography) => typography.displayLarge,
      );

  /// Creates a [UiText] widget with a medium display size.
  factory UiText.displayMedium(
    String content, {
    Color? color,
    TextStyle? style,
    TextAlign? textAlign,
    TextOverflow? overflow,
    int? maxLines,
  }) =>
      UiText._(
        content,
        color: color,
        style: style,
        textAlign: textAlign,
        overflow: overflow,
        maxLines: maxLines,
        styleBuilder: (typography) => typography.displayMedium,
      );

  /// Creates a [UiText] widget with a small display size.
  factory UiText.displaySmall(
    String content, {
    Color? color,
    TextStyle? style,
    TextAlign? textAlign,
    TextOverflow? overflow,
    int? maxLines,
  }) =>
      UiText._(
        content,
        color: color,
        style: style,
        textAlign: textAlign,
        overflow: overflow,
        maxLines: maxLines,
        styleBuilder: (typography) => typography.displaySmall,
      );

  /// Creates a [UiText] widget with a large headline size.
  factory UiText.headlineLarge(
    String content, {
    Color? color,
    TextStyle? style,
    TextAlign? textAlign,
    TextOverflow? overflow,
    int? maxLines,
  }) =>
      UiText._(
        content,
        color: color,
        style: style,
        textAlign: textAlign,
        overflow: overflow,
        maxLines: maxLines,
        styleBuilder: (typography) => typography.headlineLarge,
      );

  /// Creates a [UiText] widget with a medium headline size.
  factory UiText.headlineMedium(
    String content, {
    Color? color,
    TextStyle? style,
    TextAlign? textAlign,
    TextOverflow? overflow,
    int? maxLines,
  }) =>
      UiText._(
        content,
        color: color,
        style: style,
        textAlign: textAlign,
        overflow: overflow,
        maxLines: maxLines,
        styleBuilder: (typography) => typography.headlineMedium,
      );

  /// Creates a [UiText] widget with a small headline size.
  factory UiText.headlineSmall(
    String content, {
    Color? color,
    TextStyle? style,
    TextAlign? textAlign,
    TextOverflow? overflow,
    int? maxLines,
  }) =>
      UiText._(
        content,
        color: color,
        style: style,
        textAlign: textAlign,
        overflow: overflow,
        maxLines: maxLines,
        styleBuilder: (typography) => typography.headlineSmall,
      );

  /// Creates a [UiText] widget with a large title size.
  factory UiText.titleLarge(
    String content, {
    Color? color,
    TextStyle? style,
    TextAlign? textAlign,
    TextOverflow? overflow,
    int? maxLines,
  }) =>
      UiText._(
        content,
        color: color,
        style: style,
        textAlign: textAlign,
        overflow: overflow,
        maxLines: maxLines,
        styleBuilder: (typography) => typography.titleLarge,
      );

  /// Creates a [UiText] widget with a medium title size.
  factory UiText.titleMedium(
    String content, {
    Color? color,
    TextStyle? style,
    TextAlign? textAlign,
    TextOverflow? overflow,
    int? maxLines,
  }) =>
      UiText._(
        content,
        color: color,
        style: style,
        textAlign: textAlign,
        overflow: overflow,
        maxLines: maxLines,
        styleBuilder: (typography) => typography.titleMedium,
      );

  /// Creates a [UiText] widget with a small title size.
  factory UiText.titleSmall(
    String content, {
    Color? color,
    TextStyle? style,
    TextAlign? textAlign,
    TextOverflow? overflow,
    int? maxLines,
  }) =>
      UiText._(
        content,
        color: color,
        style: style,
        textAlign: textAlign,
        overflow: overflow,
        maxLines: maxLines,
        styleBuilder: (typography) => typography.titleSmall,
      );

  /// Creates a [UiText] widget with a large body size.
  factory UiText.bodyLarge(
    String content, {
    Color? color,
    TextStyle? style,
    TextAlign? textAlign,
    TextOverflow? overflow,
    int? maxLines,
  }) =>
      UiText._(
        content,
        color: color,
        style: style,
        textAlign: textAlign,
        overflow: overflow,
        maxLines: maxLines,
        styleBuilder: (typography) => typography.bodyLarge,
      );

  /// Creates a [UiText] widget with a medium body size.
  factory UiText.bodyMedium(
    String content, {
    Color? color,
    TextStyle? style,
    TextAlign? textAlign,
    TextOverflow? overflow,
    int? maxLines,
  }) =>
      UiText._(
        content,
        color: color,
        style: style,
        textAlign: textAlign,
        overflow: overflow,
        maxLines: maxLines,
        styleBuilder: (typography) => typography.bodyMedium,
      );

  /// Creates a [UiText] widget with a small body size.
  factory UiText.bodySmall(
    String content, {
    Color? color,
    TextStyle? style,
    TextAlign? textAlign,
    TextOverflow? overflow,
    int? maxLines,
  }) =>
      UiText._(
        content,
        color: color,
        style: style,
        textAlign: textAlign,
        overflow: overflow,
        maxLines: maxLines,
        styleBuilder: (typography) => typography.bodySmall,
      );

  /// Creates a [UiText] widget with a large label size.
  factory UiText.labelLarge(
    String content, {
    Color? color,
    TextStyle? style,
    TextAlign? textAlign,
    TextOverflow? overflow,
    int? maxLines,
  }) =>
      UiText._(
        content,
        color: color,
        style: style,
        textAlign: textAlign,
        overflow: overflow,
        maxLines: maxLines,
        styleBuilder: (typography) => typography.labelLarge,
      );

  /// Creates a [UiText] widget with a medium label size.
  factory UiText.labelMedium(
    String content, {
    Color? color,
    TextStyle? style,
    TextAlign? textAlign,
    TextOverflow? overflow,
    int? maxLines,
  }) =>
      UiText._(
        content,
        color: color,
        style: style,
        textAlign: textAlign,
        overflow: overflow,
        maxLines: maxLines,
        styleBuilder: (typography) => typography.labelMedium,
      );

  /// Creates a [UiText] widget with a small label size.
  factory UiText.labelSmall(
    String content, {
    Color? color,
    TextStyle? style,
    TextAlign? textAlign,
    TextOverflow? overflow,
    int? maxLines,
  }) =>
      UiText._(
        content,
        color: color,
        style: style,
        textAlign: textAlign,
        overflow: overflow,
        maxLines: maxLines,
        styleBuilder: (typography) => typography.labelSmall,
      );

  final String content;
  final TextStyle? style;
  final TextAlign? textAlign;
  final TextOverflow? overflow;
  final int? maxLines;
  final Color? color;
  final TextStyle? Function(AppTypography)? _styleBuilder;

  @override
  Widget build(BuildContext context) {
    final typography = Theme.of(context).appTypography;
    final palette = Theme.of(context).colorPalette;

    // Get the text style based on the size
    final style = _styleBuilder?.call(typography) ?? typography.bodyLarge;

    return Text(
      content,
      textAlign: textAlign,
      overflow: overflow,
      maxLines: maxLines,
      style: style.copyWith(color: color ?? palette.foreground),
    );
  }
}
