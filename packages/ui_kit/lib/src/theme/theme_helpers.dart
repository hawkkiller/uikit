import 'package:ui_kit/ui_kit.dart';

final lightPalette = createPaletteFor(brightness: Brightness.light);
final darkPalette = createPaletteFor(brightness: Brightness.dark);
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
      extensions: {
        palette,
        typography,
      },
    );

ColorPalette createPaletteFor({
  Brightness brightness = Brightness.light,
}) {
  final materialColorScheme = ColorScheme.fromSeed(
    seedColor: const Color(0xFF5BC0EB),
    brightness: brightness,
  );

  return ColorPalette(
    primary: materialColorScheme.primary,
    onPrimary: materialColorScheme.onPrimary,
    secondary: materialColorScheme.secondary,
    onSecondary: materialColorScheme.onSecondary,
    tertiary: materialColorScheme.tertiary,
    onTertiary: materialColorScheme.onTertiary,
    error: materialColorScheme.error,
    onError: materialColorScheme.onError,
    surface: materialColorScheme.surface,
    onSurface: materialColorScheme.onSurface,
    outline: materialColorScheme.outline,
    focusOutline: const Color(0xFF0075C4),
    shadow: materialColorScheme.shadow,
  );
}

// use default styles from material2021
final _material2021 = Typography.material2021().tall;
