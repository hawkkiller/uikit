import 'package:ui_kit/ui_kit.dart';
import 'package:uikit/buttons_preview.dart';
import 'package:uikit/color_palette_preview.dart';
import 'package:uikit/theme_constants.dart';
import 'dart:math' as math;

import 'package:uikit/typography_preview.dart';

final themeModeSwitcher = ValueNotifier(ThemeMode.system);

void main() {
  runApp(const MainApp());
}

final lightPalette = createPaletteFor(brightness: Brightness.light);
final darkPalette = createPaletteFor(brightness: Brightness.dark);
final appTypography = createTypographyFor();

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: themeModeSwitcher,
      builder: (context, value, _) => MaterialApp(
        debugShowCheckedModeBanner: false,
        themeMode: value,
        theme: createThemeData(
          brightness: Brightness.light,
          palette: lightPalette,
          typography: appTypography,
        ),
        darkTheme: createThemeData(
          brightness: Brightness.dark,
          palette: darkPalette,
          typography: appTypography,
        ),
        home: const Scaffold(body: UiKitPreview()),
      ),
    );
  }
}

class UiKitPreview extends StatelessWidget {
  const UiKitPreview({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);

    return CustomScrollView(
      slivers: [
        SliverAppBar(
          pinned: true,
          actions: [
            UiKitIconButton.standard(
              icon: themeModeSwitcher.value == ThemeMode.light
                  ? const Icon(Icons.dark_mode_rounded)
                  : const Icon(Icons.light_mode_rounded),
              onPressed: () {
                themeModeSwitcher.value =
                    themeModeSwitcher.value == ThemeMode.light ? ThemeMode.dark : ThemeMode.light;
              },
            ),
          ],
        ),
        SliverPadding(
          padding: EdgeInsets.symmetric(
            horizontal: math.max((size.width - 900) / 2, 16),
            vertical: 24,
          ),
          sliver: SliverList.list(
            children: [
              Align(
                alignment: Alignment.center,
                child: UiKitText.titleLarge('Color Palette'),
              ),
              const SizedBox(height: 8),
              const ColorPalettePreview(),
              const SizedBox(height: 24),
              Align(
                alignment: Alignment.center,
                child: UiKitText.titleLarge('Typography'),
              ),
              const TypographyPreview(),
              const SizedBox(height: 24),
              Align(
                alignment: Alignment.center,
                child: UiKitText.titleLarge('Buttons'),
              ),
              const SizedBox(height: 8),
              const ButtonsPreview(),
            ],
          ),
        ),
      ],
    );
  }
}
