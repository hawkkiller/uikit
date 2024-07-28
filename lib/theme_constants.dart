import 'package:ui_kit/ui_kit.dart';

ColorPalette createPaletteFor({
  Brightness brightness = Brightness.light,
}) {
  final materialColorScheme = ColorScheme.fromSeed(
    seedColor: const Color(0xFF9EBC9F),
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

AppTypography createTypographyFor({
  Brightness brightness = Brightness.light,
}) {
  return appTypography;
}

// use default styles from material2021
final material2021 = Typography.material2021().tall;

final AppTypography appTypography = AppTypography(
  displayLarge: material2021.displayLarge!,
  displayMedium: material2021.displayMedium!,
  displaySmall: material2021.displaySmall!,
  headlineLarge: material2021.headlineLarge!,
  headlineMedium: material2021.headlineMedium!,
  headlineSmall: material2021.headlineSmall!,
  titleLarge: material2021.titleLarge!,
  titleMedium: material2021.titleMedium!,
  titleSmall: material2021.titleSmall!,
  bodyLarge: material2021.bodyLarge!,
  bodyMedium: material2021.bodyMedium!,
  bodySmall: material2021.bodySmall!,
  labelLarge: material2021.labelLarge!,
  labelMedium: material2021.labelMedium!,
  labelSmall: material2021.labelSmall!,
);
