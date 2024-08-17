import 'package:ui_kit/ui_kit.dart';

final lightColorPalette = generatePaletteForBrightness(Brightness.light);
final darkColorPalette = generatePaletteForBrightness(Brightness.dark);

final AppTypography defaultTypography = AppTypography(
  displayLarge: _material2021.displayLarge!,
  displayMedium: _material2021.displayMedium!,
  displaySmall: _material2021.displaySmall!,
  headlineLarge: _material2021.headlineLarge!,
  headlineMedium: _material2021.headlineMedium!,
  headlineSmall: _material2021.headlineSmall!,
  titleLarge: _material2021.titleLarge!,
  titleMedium: _material2021.titleMedium!,
  titleSmall: _material2021.titleSmall!,
  bodyLarge: _material2021.bodyLarge!,
  bodyMedium: _material2021.bodyMedium!,
  bodySmall: _material2021.bodySmall!,
  labelLarge: _material2021.labelLarge!,
  labelMedium: _material2021.labelMedium!,
  labelSmall: _material2021.labelSmall!,
);

/// Creates a [ThemeData] object based on the provided [ColorPalette] and [AppTypography].
///
/// The [brightness] parameter is used to determine the brightness of the theme.
ThemeData createThemeData({
  required ColorPalette palette,
  required AppTypography typography,
  required Brightness brightness,
}) =>
    ThemeData(
      brightness: brightness,
      extensions: {palette, typography},
    );

ColorPalette generatePaletteForBrightness(Brightness brightness) {
  final materialPalette = ColorScheme.fromSeed(
    seedColor: Colors.transparent,
    dynamicSchemeVariant: DynamicSchemeVariant.monochrome,
    brightness: brightness,
  );

  return ColorPalette(
    background: materialPalette.surface,
    foreground: materialPalette.onSurface,
    muted: materialPalette.onSurface.withOpacity(.12),
    mutedForeground: materialPalette.onSurface.withOpacity(.38),
    border: materialPalette.onSurface.withOpacity(.24),
    primary: materialPalette.primary,
    primaryForeground: materialPalette.onPrimary,
    secondary: materialPalette.secondary,
    secondaryForeground: materialPalette.onSecondary,
    accent: materialPalette.tertiary,
    accentForeground: materialPalette.onTertiary,
    destructive: materialPalette.error,
    destructiveForeground: materialPalette.onError,
    ring: const Color.fromARGB(255, 60, 139, 250),
  );
}

// use default styles from material2021
final _material2021 = Typography.material2021().tall;
