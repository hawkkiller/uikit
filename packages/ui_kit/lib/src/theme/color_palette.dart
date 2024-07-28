import 'package:ui_kit/ui_kit.dart';

/// Color palette for the app.
class ColorPalette {
  /// Creates a color palette.
  const ColorPalette({
    required this.primary,
    required this.onPrimary,
    required this.secondary,
    required this.onSecondary,
    required this.tertiary,
    required this.onTertiary,
    required this.error,
    required this.onError,
    required this.surface,
    required this.onSurface,
    required this.outline,
    required this.focusOutline,
    required this.shadow,
  });

  /// The primary color of the app.
  final Color primary;

  /// The color used for text and icons displayed on top of the primary color.
  final Color onPrimary;

  /// The secondary color of the app.
  final Color secondary;

  /// The color used for text and icons displayed on top of the secondary color.
  final Color onSecondary;

  /// The tertiary color of the app.
  final Color tertiary;

  /// The color used for text and icons displayed on top of the tertiary color.
  final Color onTertiary;

  /// The color used to indicate errors.
  final Color error;

  /// The color used for text and icons displayed on top of the error color.
  final Color onError;

  /// The color of surfaces, such as cards or sheets.
  final Color surface;

  /// The color used for text and icons displayed on top of the surface color.
  final Color onSurface;

  /// The color used for outlines and borders.
  final Color outline;

  /// The color used for focus outlines.
  final Color focusOutline;

  /// The color used for shadows.
  final Color shadow;

  /// Creates a copy of this color palette but with the given fields replaced with the new values.
  ColorPalette copyWith({
      Color? primary,
      Color? onPrimary,
      Color? secondary,
      Color? onSecondary,
      Color? tertiary,
      Color? onTertiary,
      Color? error,
      Color? onError,
      Color? background,
      Color? onBackground,
      Color? surface,
      Color? onSurface,
      Color? outline,
      Color? focusOutline,
      Color? shadow,
  }) {
    return ColorPalette(
      primary: primary ?? this.primary,
      onPrimary: onPrimary ?? this.onPrimary,
      secondary: secondary ?? this.secondary,
      onSecondary: onSecondary ?? this.onSecondary,
      tertiary: tertiary ?? this.tertiary,
      onTertiary: onTertiary ?? this.onTertiary,
      error: error ?? this.error,
      onError: onError ?? this.onError,
      surface: surface ?? this.surface,
      onSurface: onSurface ?? this.onSurface,
      outline: outline ?? this.outline,
      focusOutline: focusOutline ?? this.focusOutline,
      shadow: shadow ?? this.shadow,
    );
  }

  /// Linearly interpolates between two color palettes.
  static ColorPalette lerp(ColorPalette a, ColorPalette b, double t) => ColorPalette(
        primary: Color.lerp(a.primary, b.primary, t)!,
        onPrimary: Color.lerp(a.onPrimary, b.onPrimary, t)!,
        secondary: Color.lerp(a.secondary, b.secondary, t)!,
        onSecondary: Color.lerp(a.onSecondary, b.onSecondary, t)!,
        tertiary: Color.lerp(a.tertiary, b.tertiary, t)!,
        onTertiary: Color.lerp(a.onTertiary, b.onTertiary, t)!,
        error: Color.lerp(a.error, b.error, t)!,
        onError: Color.lerp(a.onError, b.onError, t)!,
        surface: Color.lerp(a.surface, b.surface, t)!,
        onSurface: Color.lerp(a.onSurface, b.onSurface, t)!,
        outline: Color.lerp(a.outline, b.outline, t)!,
        focusOutline: Color.lerp(a.focusOutline, b.focusOutline, t)!,
        shadow: Color.lerp(a.shadow, b.shadow, t)!,
      );
}

@immutable
class EmphasisGroup extends _DelegatingColor {
  const EmphasisGroup({
    required this.high,
    required this.medium,
    required this.disabled,
  }) : super(high);

  /// The high emphasis color
  final Color high;

  /// The high emphasis color
  Color get highEmphasis => high;

  /// The medium emphasis color
  final Color medium;

  /// The medium emphasis color
  Color get mediumEmphasis => medium;

  /// The disabled emphasis color
  final Color disabled;

  /// The disabled emphasis color
  Color get disabledEmphasis => disabled;

  /// Linearly interpolate between two [EmphasisGroup]s.
  static EmphasisGroup? lerp(EmphasisGroup? a, EmphasisGroup? b, double t) {
    if (a == null && b == null) {
      return null;
    }

    return EmphasisGroup(
      high: Color.lerp(a?.high, b?.high, t)!,
      medium: Color.lerp(a?.medium, b?.medium, t)!,
      disabled: Color.lerp(a?.disabled, b?.disabled, t)!,
    );
  }

  /// Returns the [Color]s of the [EmphasisGroup].
  List<Color> get colors => <Color>[high, medium, disabled];
}

/// A color that delegates to another color.
///
/// This is used to make it possible to create const instances of [EmphasisGroup]
/// and [ColorPalette].
class _DelegatingColor implements Color {
  const _DelegatingColor(this.color);

  final Color color;

  @override
  int get alpha => color.alpha;

  @override
  int get blue => color.blue;

  @override
  int get green => color.green;

  @override
  int get red => color.red;

  @override
  double computeLuminance() => color.computeLuminance();

  @override
  double get opacity => color.opacity;

  @override
  int get value => color.value;

  @override
  Color withAlpha(int a) => color.withAlpha(a);

  @override
  Color withBlue(int b) => color.withBlue(b);

  @override
  Color withGreen(int g) => color.withGreen(g);

  @override
  Color withOpacity(double opacity) => color.withOpacity(opacity);

  @override
  Color withRed(int r) => color.withRed(r);
}
