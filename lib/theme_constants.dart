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