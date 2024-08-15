import 'package:ui_kit/ui_kit.dart';

/// An extension for theme to provide a color palette in context.
class ColorPalette extends ThemeExtension<ColorPalette> {
  const ColorPalette({
    required this.background,
    required this.foreground,
    required this.muted,
    required this.mutedForeground,
    required this.border,
    required this.primary,
    required this.primaryForeground,
    required this.secondary,
    required this.secondaryForeground,
    required this.accent,
    required this.accentForeground,
    required this.destructive,
    required this.destructiveForeground,
    required this.ring,
  });

  /// Default background color
  final Color background;

  /// Default foreground color
  final Color foreground;

  /// Muted backgrounds
  final Color muted;

  /// Color for text on muted backgrounds
  final Color mutedForeground;

  /// Default border color
  final Color border;

  /// Primary colors
  final Color primary;

  /// Color for text on primary colors
  final Color primaryForeground;

  /// Secondary colors
  final Color secondary;

  /// Color for text on secondary colors
  final Color secondaryForeground;

  /// Used for accents such as hover effects
  final Color accent;

  /// Used for accents such as hover effects
  final Color accentForeground;

  /// Used for destructive actions
  final Color destructive;

  /// Color for text on destructive actions
  final Color destructiveForeground;

  /// The ring color of the app, used for focus rings.
  final Color ring;

  @override
  ThemeExtension<ColorPalette> copyWith({
    Color? background,
    Color? foreground,
    Color? muted,
    Color? mutedForeground,
    Color? border,
    Color? primary,
    Color? primaryForeground,
    Color? secondary,
    Color? secondaryForeground,
    Color? accent,
    Color? accentForeground,
    Color? destructive,
    Color? destructiveForeground,
    Color? ring,
  }) =>
      ColorPalette(
        background: background ?? this.background,
        foreground: foreground ?? this.foreground,
        muted: muted ?? this.muted,
        mutedForeground: mutedForeground ?? this.mutedForeground,
        border: border ?? this.border,
        primary: primary ?? this.primary,
        primaryForeground: primaryForeground ?? this.primaryForeground,
        secondary: secondary ?? this.secondary,
        secondaryForeground: secondaryForeground ?? this.secondaryForeground,
        accent: accent ?? this.accent,
        accentForeground: accentForeground ?? this.accentForeground,
        destructive: destructive ?? this.destructive,
        destructiveForeground: destructiveForeground ?? this.destructiveForeground,
        ring: ring ?? this.ring,
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
      background: Color.lerp(background, other.background, t)!,
      foreground: Color.lerp(foreground, other.foreground, t)!,
      muted: Color.lerp(muted, other.muted, t)!,
      mutedForeground: Color.lerp(mutedForeground, other.mutedForeground, t)!,
      border: Color.lerp(border, other.border, t)!,
      primary: Color.lerp(primary, other.primary, t)!,
      primaryForeground: Color.lerp(primaryForeground, other.primaryForeground, t)!,
      secondary: Color.lerp(secondary, other.secondary, t)!,
      secondaryForeground: Color.lerp(secondaryForeground, other.secondaryForeground, t)!,
      accent: Color.lerp(accent, other.accent, t)!,
      accentForeground: Color.lerp(accentForeground, other.accentForeground, t)!,
      destructive: Color.lerp(destructive, other.destructive, t)!,
      destructiveForeground: Color.lerp(destructiveForeground, other.destructiveForeground, t)!,
      ring: Color.lerp(ring, other.ring, t)!,
    );
  }

  Map<String, Color> toMap() => {
        'Background': background,
        'Foreground': foreground,
        'Muted': muted,
        'Muted Foreground': mutedForeground,
        'Border': border,
        'Primary': primary,
        'Primary Foreground': primaryForeground,
        'Secondary': secondary,
        'Secondary Foreground': secondaryForeground,
        'Accent': accent,
        'Accent Foreground': accentForeground,
        'Destructive': destructive,
        'Destructive Foreground': destructiveForeground,
        'Ring': ring,
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
  ColorPalette get colorPalette => extension<ColorPalette>() ?? lightColorPalette;

  /// The typography set for the app.
  AppTypography get appTypography => extension<AppTypography>() ?? defaultTypography;
}
