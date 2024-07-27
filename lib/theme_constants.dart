import 'package:ui_kit/ui_kit.dart';

const ColorPalette colorPalette = ColorPalette(
  primary: Color(0xFF212121), // A dark grey color
  onPrimary: Color(0xFFFFFFFF), // White
  secondary: Color(0xFF424242), // A lighter grey
  onSecondary: Color(0xFFFFFFFF), // White
  tertiary: Color(0xFF616161), // An even lighter grey
  onTertiary: Color(0xFFFFFFFF), // White
  error: Color(0xFFB71C1C), // Red for errors
  onError: Color(0xFFFFFFFF), // White
  background: Color(0xFFE0E0E0), // Very light grey
  onBackground: Color(0xFF212121), // Dark grey for text on background
  surface: Color(0xFFBDBDBD), // Light grey
  onSurface: Color(0xFF212121), // Dark grey for text on surfaces
  outline: Color(0xFF9E9E9E), // Light grey for outlines
  focusOutline: Color(0xFF616161), // Lighter grey for focus outlines
  shadow: Color(0xFF212121), // Dark grey for shadows
);

final AppTypography appTypography = AppTypography(
  displayLarge: TextStyle(
    fontSize: 57,
    fontWeight: FontWeight.normal,
    color: colorPalette.onSurface,
  ),
  displayMedium: TextStyle(
    fontSize: 45,
    fontWeight: FontWeight.normal,
    color: colorPalette.onSurface,
  ),
  displaySmall: TextStyle(
    fontSize: 36,
    fontWeight: FontWeight.normal,
    color: colorPalette.onSurface,
  ),
  headlineLarge: TextStyle(
    fontSize: 32,
    fontWeight: FontWeight.w500, // Semi-bold for slight emphasis
    color: colorPalette.onSurface,
  ),
  headlineMedium: TextStyle(
    fontSize: 28,
    fontWeight: FontWeight.w500, // Semi-bold for slight emphasis
    color: colorPalette.onSurface,
  ),
  headlineSmall: TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w500, // Semi-bold for slight emphasis
    color: colorPalette.onSurface,
  ),
  titleLarge: TextStyle(
    fontSize: 22,
    fontWeight: FontWeight.w400, // Normal weight
    color: colorPalette.onSurface,
  ),
  titleMedium: TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w400, // Normal weight
    color: colorPalette.onSurface,
  ),
  titleSmall: TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w400, // Normal weight
    color: colorPalette.onSurface,
  ),
  bodyLarge: TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.normal,
    color: colorPalette.onSurface,
  ),
  bodyMedium: TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.normal,
    color: colorPalette.onSurface,
  ),
  bodySmall: TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.normal,
    color: colorPalette.onSurface,
  ),
  labelLarge: TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w400, // Normal weight
    color: colorPalette.onSurface,
  ),
  labelMedium: TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w400, // Normal weight
    color: colorPalette.onSurface,
  ),
  labelSmall: TextStyle(
    fontSize: 11,
    fontWeight: FontWeight.w400, // Normal weight
    color: colorPalette.onSurface,
  ),
);