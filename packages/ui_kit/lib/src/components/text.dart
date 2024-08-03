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
    TextStyle? Function(AppTypography)? styleBuilder,
  }) : _styleBuilder = styleBuilder;

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
        styleBuilder: (typography) => typography.displayLarge,
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
        styleBuilder: (typography) => typography.displayMedium,
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
        styleBuilder: (typography) => typography.displaySmall,
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
        styleBuilder: (typography) => typography.headlineLarge,
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
        styleBuilder: (typography) => typography.headlineMedium,
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
        styleBuilder: (typography) => typography.headlineSmall,
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
        styleBuilder: (typography) => typography.titleLarge,
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
        styleBuilder: (typography) => typography.titleMedium,
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
        styleBuilder: (typography) => typography.titleSmall,
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
        styleBuilder: (typography) => typography.bodyLarge,
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
        styleBuilder: (typography) => typography.bodyMedium,
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
        styleBuilder: (typography) => typography.bodySmall,
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
        styleBuilder: (typography) => typography.labelLarge,
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
        styleBuilder: (typography) => typography.labelMedium,
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
      style: style.copyWith(color: color ?? palette.onSurface),
    );
  }
}
