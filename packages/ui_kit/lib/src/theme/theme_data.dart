import 'package:ui_kit/ui_kit.dart';

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
        ColorPaletteExtension(palette: palette),
        AppTypographyExtension(typography: typography),
      },
    );

/// An extension for theme to provide a color palette in context.
class ColorPaletteExtension extends ThemeExtension<ColorPaletteExtension> {
  const ColorPaletteExtension({required this.palette});

  /// The color palette to use for the app.
  final ColorPalette palette;

  @override
  ThemeExtension<ColorPaletteExtension> copyWith({
    Color? primary,
    EmphasisGroup? onPrimary,
    Color? secondary,
    EmphasisGroup? onSecondary,
    Color? tertiary,
    EmphasisGroup? onTertiary,
    Color? error,
    EmphasisGroup? onError,
    Color? background,
    EmphasisGroup? onBackground,
    Color? surface,
    EmphasisGroup? onSurface,
    Color? outline,
  }) =>
      ColorPaletteExtension(
        palette: palette.copyWith(
          primary: primary,
          onPrimary: onPrimary,
          secondary: secondary,
          onSecondary: onSecondary,
          tertiary: tertiary,
          onTertiary: onTertiary,
          error: error,
          onError: onError,
          background: background,
          onBackground: onBackground,
          surface: surface,
          onSurface: onSurface,
          outline: outline,
        ),
      );

  @override
  ThemeExtension<ColorPaletteExtension> lerp(
    covariant ThemeExtension<ColorPaletteExtension>? other,
    double t,
  ) {
    if (other == null || other is! ColorPaletteExtension) {
      return this;
    }

    return ColorPaletteExtension(
      palette: ColorPalette.lerp(palette, other.palette, t),
    );
  }
}

/// An extension for theme to provide typography in context.
class AppTypographyExtension extends ThemeExtension<AppTypographyExtension> {
  const AppTypographyExtension({required this.typography});

  /// The typography to use for the app.
  final AppTypography typography;

  @override
  ThemeExtension<AppTypographyExtension> copyWith({
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
      AppTypographyExtension(
        typography: typography.copyWith(
          displayLarge: displayLarge,
          displayMedium: displayMedium,
          displaySmall: displaySmall,
          headlineLarge: headlineLarge,
          headlineMedium: headlineMedium,
          headlineSmall: headlineSmall,
          titleLarge: titleLarge,
          titleMedium: titleMedium,
          titleSmall: titleSmall,
          bodyLarge: bodyLarge,
          bodyMedium: bodyMedium,
          bodySmall: bodySmall,
          labelLarge: labelLarge,
          labelMedium: labelMedium,
          labelSmall: labelSmall,
        ),
      );

  @override
  ThemeExtension<AppTypographyExtension> lerp(
    covariant ThemeExtension<AppTypographyExtension>? other,
    double t,
  ) {
    if (other == null || other is! AppTypographyExtension) {
      return this;
    }

    return AppTypographyExtension(
      typography: AppTypography.lerp(typography, other.typography, t),
    );
  }
}

/// An extension for theme to get color palette and typography from [BuildContext].
extension ThemeDataExtensions on ThemeData {
  /// The color palette set for the app.
  ColorPalette get colorPalette =>
      extension<ColorPaletteExtension>()?.palette ??
      _throwExtensionNotFound('ColorPaletteExtension');

  /// The typography set for the app.
  AppTypography get appTypography =>
      extension<AppTypographyExtension>()?.typography ??
      _throwExtensionNotFound('AppTypographyExtension');

  Never _throwExtensionNotFound(String extensionName) => throw FlutterError(
        'No $extensionName extension found in the current theme. '
        'Make sure to provide the extension when creating the theme.'
        'If you are using the ui_kit, consider using the createThemeData function.',
      );
}
