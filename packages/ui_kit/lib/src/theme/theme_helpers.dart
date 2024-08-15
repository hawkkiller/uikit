import 'package:ui_kit/ui_kit.dart';

const lightShadcnPalette = ColorPalette(
  background: Color(0xFFFFFFFF), // HSL: 0 0% 100%
  foreground: Color(0xFF1C1917), // HSL: 222.2 47.4% 11.2%
  muted: Color(0xF1F5F9FF), // HSL: 210 40% 96.1%
  mutedForeground: Color(0xFF64748B), // HSL: 215.4 16.3% 46.9%
  border: Color(0xFFCDD5E1), // HSL: 214.3 31.8% 91.4%
  primary: Color(0xFF1C1917), // HSL: 222.2 47.4% 11.2%
  primaryForeground: Color(0xFFFFFFFF), // HSL: 210 40% 98%
  secondary: Color(0xF1F5F9FF), // HSL: 210 40% 96.1%
  secondaryForeground: Color(0xFF1C1917), // HSL: 222.2 47.4% 11.2%
  accent: Color(0xF1F5F9FF), // HSL: 210 40% 96.1%
  accentForeground: Color(0xFF1C1917), // HSL: 222.2 47.4% 11.2%
  destructive: Color(0xFFFF0000), // HSL: 0 100% 50%
  destructiveForeground: Color(0xFFFFFFFF), // HSL: 210 40% 98%
  ring: Color(0xFF64748B), // HSL: 215 20.2% 65.1%
);

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

// use default styles from material2021
final _material2021 = Typography.material2021().tall;
