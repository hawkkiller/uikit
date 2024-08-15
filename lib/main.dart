import 'dart:math' as math;

import 'package:ui_kit/ui_kit.dart';
import 'package:uikit/animations_preview.dart';
import 'package:uikit/buttons_preview.dart';
import 'package:uikit/color_palette_preview.dart';
import 'package:uikit/icons_preview.dart';
import 'package:uikit/text_fields_preview.dart';
import 'package:uikit/typography_preview.dart';

final themeModeSwitcher = ValueNotifier(ThemeMode.system);

void main() {
  runApp(const MainApp());
}

final theme = createThemeData(
  brightness: Brightness.light,
  palette: lightShadcnPalette,
  typography: defaultTypography,
);

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) => WindowSizeScope(
        child: ValueListenableBuilder(
          valueListenable: themeModeSwitcher,
          builder: (context, themeMode, _) => MaterialApp(
            debugShowCheckedModeBanner: false,
            themeMode: themeMode,
            theme: theme,
            home: const UiPreview(),
          ),
        ),
      );
}

class UiPreview extends StatelessWidget {
  const UiPreview({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    const animationPreview = AnimationsPreview(key: GlobalObjectKey('AnimationsPreview'));
    final brightness = Theme.of(context).brightness;

    return Scaffold(
      backgroundColor: Theme.of(context).colorPalette.background,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            actions: [
              UiIconButton.standard(
                icon: brightness == Brightness.light
                    ? const Icon(Icons.dark_mode_rounded)
                    : const Icon(Icons.light_mode_rounded),
                onPressed: () => themeModeSwitcher.value =
                    brightness == Brightness.light ? ThemeMode.dark : ThemeMode.light,
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
                  child: UiText.titleLarge('Color Palette'),
                ),
                const SizedBox(height: 8),
                const ColorPalettePreview(),
                const SizedBox(height: 24),
                Align(
                  alignment: Alignment.center,
                  child: UiText.titleLarge('Typography'),
                ),
                const TypographyPreview(),
                const SizedBox(height: 24),
                Align(
                  alignment: Alignment.center,
                  child: UiText.titleLarge('Buttons'),
                ),
                const SizedBox(height: 8),
                const ButtonsPreview(),
                const SizedBox(height: 24),
                Align(
                  alignment: Alignment.center,
                  child: UiText.titleLarge('Text Inputs'),
                ),
                const SizedBox(height: 8),
                const TextFieldsPreview(),
                const SizedBox(height: 24),
                Align(
                  alignment: Alignment.center,
                  child: UiText.titleLarge('Icons'),
                ),
                const SizedBox(height: 8),
                const IconsPreview(),
                const SizedBox(height: 24),
                Align(
                  alignment: Alignment.center,
                  child: UiText.titleLarge('Animations'),
                ),
                const SizedBox(height: 8),
                animationPreview,
              ],
            ),
          ),
        ],
      ),
    );
  }
}
