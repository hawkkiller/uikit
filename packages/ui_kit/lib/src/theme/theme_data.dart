import 'package:ui_kit/ui_kit.dart';

/// An extension for theme to provide a color palette in context.
class ColorPalette extends ThemeExtension<ColorPalette> {
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

  @override
  ThemeExtension<ColorPalette> copyWith({
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
  }) =>
      ColorPalette(
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
        focusOutline: focusOutline,
        shadow: shadow,
      );

  @override
  ThemeExtension<ColorPalette> lerp(
    covariant ThemeExtension<ColorPalette>? other,
    double t,
  ) {
    if (other == null || other is! ColorPalette) {
      return this;
    }

    return ColorPalette(
      primary: Color.lerp(primary, other.primary, t)!,
      onPrimary: Color.lerp(onPrimary, other.onPrimary, t)!,
      secondary: Color.lerp(secondary, other.secondary, t)!,
      onSecondary: Color.lerp(onSecondary, other.onSecondary, t)!,
      tertiary: Color.lerp(tertiary, other.tertiary, t)!,
      onTertiary: Color.lerp(onTertiary, other.onTertiary, t)!,
      error: Color.lerp(error, other.error, t)!,
      onError: Color.lerp(onError, other.onError, t)!,
      surface: Color.lerp(surface, other.surface, t)!,
      onSurface: Color.lerp(onSurface, other.onSurface, t)!,
      outline: Color.lerp(outline, other.outline, t)!,
      focusOutline: Color.lerp(focusOutline, other.focusOutline, t)!,
      shadow: Color.lerp(shadow, other.shadow, t)!,
    );
  }

  Map<String, Color> toMap() => {
        'Primary': primary,
        'On Primary': onPrimary,
        'Secondary': secondary,
        'On Secondary': onSecondary,
        'Tertiary': tertiary,
        'On Tertiary': onTertiary,
        'Error': error,
        'On Error': onError,
        'Surface': surface,
        'On Surface': onSurface,
        'Outline': outline,
        'Focus Outline': focusOutline,
        'Shadow': shadow,
      };
}

/// An extension for theme to provide typography in context.
class AppTypography extends ThemeExtension<AppTypography> {
  const AppTypography({
    required this.displayLarge,
    required this.displayMedium,
    required this.displaySmall,
    required this.headlineLarge,
    required this.headlineMedium,
    required this.headlineSmall,
    required this.titleLarge,
    required this.titleMedium,
    required this.titleSmall,
    required this.bodyLarge,
    required this.bodyMedium,
    required this.bodySmall,
    required this.labelLarge,
    required this.labelMedium,
    required this.labelSmall,
  });

  /// Display large style.
  final TextStyle displayLarge;

  /// Display medium style.
  final TextStyle displayMedium;

  /// Display small style.
  final TextStyle displaySmall;

  /// Headline large style.
  final TextStyle headlineLarge;

  /// Headline medium style.
  final TextStyle headlineMedium;

  /// Headline small style.
  final TextStyle headlineSmall;

  /// Title large style.
  final TextStyle titleLarge;

  /// Title medium style.
  final TextStyle titleMedium;

  /// Title small style.
  final TextStyle titleSmall;

  /// Body large style.
  final TextStyle bodyLarge;

  /// Body medium style.
  final TextStyle bodyMedium;

  /// Body small style.
  final TextStyle bodySmall;

  /// Label large style.
  final TextStyle labelLarge;

  /// Label medium style.
  final TextStyle labelMedium;

  /// Label small style.
  final TextStyle labelSmall;

  @override
  ThemeExtension<AppTypography> copyWith({
    TextStyle? displayLarge,
    TextStyle? displayMedium,
    TextStyle? displaySmall,
    TextStyle? headlineLarge,
    TextStyle? headlineMedium,
    TextStyle? headlineSmall,
    TextStyle? titleLarge,
    TextStyle? titleMedium,
    TextStyle? titleSmall,
    TextStyle? bodyLarge,
    TextStyle? bodyMedium,
    TextStyle? bodySmall,
    TextStyle? labelLarge,
    TextStyle? labelMedium,
    TextStyle? labelSmall,
  }) =>
      AppTypography(
        displayLarge: displayLarge ?? this.displayLarge,
        displayMedium: displayMedium ?? this.displayMedium,
        displaySmall: displaySmall ?? this.displaySmall,
        headlineLarge: headlineLarge ?? this.headlineLarge,
        headlineMedium: headlineMedium ?? this.headlineMedium,
        headlineSmall: headlineSmall ?? this.headlineSmall,
        titleLarge: titleLarge ?? this.titleLarge,
        titleMedium: titleMedium ?? this.titleMedium,
        titleSmall: titleSmall ?? this.titleSmall,
        bodyLarge: bodyLarge ?? this.bodyLarge,
        bodyMedium: bodyMedium ?? this.bodyMedium,
        bodySmall: bodySmall ?? this.bodySmall,
        labelLarge: labelLarge ?? this.labelLarge,
        labelMedium: labelMedium ?? this.labelMedium,
        labelSmall: labelSmall ?? this.labelSmall,
      );

  @override
  ThemeExtension<AppTypography> lerp(
    covariant ThemeExtension<AppTypography>? other,
    double t,
  ) {
    if (other == null || other is! AppTypography) {
      return this;
    }

    return AppTypography(
      displayLarge: TextStyle.lerp(displayLarge, other.displayLarge, t)!,
      displayMedium: TextStyle.lerp(displayMedium, other.displayMedium, t)!,
      displaySmall: TextStyle.lerp(displaySmall, other.displaySmall, t)!,
      headlineLarge: TextStyle.lerp(headlineLarge, other.headlineLarge, t)!,
      headlineMedium: TextStyle.lerp(headlineMedium, other.headlineMedium, t)!,
      headlineSmall: TextStyle.lerp(headlineSmall, other.headlineSmall, t)!,
      titleLarge: TextStyle.lerp(titleLarge, other.titleLarge, t)!,
      titleMedium: TextStyle.lerp(titleMedium, other.titleMedium, t)!,
      titleSmall: TextStyle.lerp(titleSmall, other.titleSmall, t)!,
      bodyLarge: TextStyle.lerp(bodyLarge, other.bodyLarge, t)!,
      bodyMedium: TextStyle.lerp(bodyMedium, other.bodyMedium, t)!,
      bodySmall: TextStyle.lerp(bodySmall, other.bodySmall, t)!,
      labelLarge: TextStyle.lerp(labelLarge, other.labelLarge, t)!,
      labelMedium: TextStyle.lerp(labelMedium, other.labelMedium, t)!,
      labelSmall: TextStyle.lerp(labelSmall, other.labelSmall, t)!,
    );
  }
}

/// An extension for theme to get color palette and typography from [BuildContext].
extension ThemeDataExtensions on ThemeData {
  /// The color palette set for the app.
  ColorPalette get colorPalette => extension<ColorPalette>() ?? lightPalette;

  /// The typography set for the app.
  AppTypography get appTypography => extension<AppTypography>() ?? defaultTypography;
}
