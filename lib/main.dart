import 'package:ui_kit/ui_kit.dart';
import 'package:uikit/theme_constants.dart';
import 'dart:math' as math;

final themeModeSwitcher = ValueNotifier(ThemeMode.system);

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    final lightPalette = createPaletteFor(brightness: Brightness.light);
    final darkPalette = createPaletteFor(brightness: Brightness.dark);
    final appTypography = createTypographyFor();

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
                child: UiKitText.titleLarge('Buttons'),
              ),
              const SizedBox(height: 8),
              RepaintBoundary(
                child: Center(
                  child: Card(
                    color: Theme.of(context).colorPalette.surface,
                    child: const Padding(
                      padding: EdgeInsets.all(16),
                      child: Wrap(
                        spacing: 16,
                        runSpacing: 16,
                        children: [
                          _FilledPrimaryButton(),
                          _FilledSecondaryButton(),
                          _OutlinedPrimaryButton(),
                          _OutlinedSecondaryButton(),
                          _FilledIconButton(),
                          _OutlinedIconButton(),
                          _StandardIconButton(),
                          _TextButton(),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class _TextButton extends StatelessWidget {
  const _TextButton();

  @override
  Widget build(BuildContext context) => SizedBox(
        width: 200,
        child: Column(
          children: [
            UiKitText.titleSmall('Text Button'),
            const SizedBox(height: 16),
            UiKitTextButton(
              onPressed: () {},
              label: const Text('standard'),
            ),
            const SizedBox(height: 8),
            UiKitTextButton(
              onPressed: () {},
              label: const Text('disabled'),
              enabled: false,
            ),
          ],
        ),
      );
}

class _FilledIconButton extends StatelessWidget {
  const _FilledIconButton();

  @override
  Widget build(BuildContext context) => SizedBox(
        width: 200,
        child: Column(
          children: [
            UiKitText.titleSmall('Filled Icon Button'),
            const SizedBox(height: 16),
            UiKitIconButton.filled(
              onPressed: () {},
              icon: const Icon(Icons.add_rounded),
            ),
            const SizedBox(height: 8),
            UiKitIconButton.filled(
              onPressed: () {},
              icon: const Icon(Icons.add_rounded),
              enabled: false,
            ),
          ],
        ),
      );
}

class _OutlinedIconButton extends StatelessWidget {
  const _OutlinedIconButton();

  @override
  Widget build(BuildContext context) => SizedBox(
        width: 200,
        child: Column(
          children: [
            UiKitText.titleSmall('Outlined Icon Button'),
            const SizedBox(height: 16),
            UiKitIconButton.outlined(
              onPressed: () {},
              icon: const Icon(Icons.add_rounded),
            ),
            const SizedBox(height: 8),
            UiKitIconButton.outlined(
              onPressed: () {},
              icon: const Icon(Icons.add_rounded),
              enabled: false,
            ),
          ],
        ),
      );
}

class _StandardIconButton extends StatelessWidget {
  const _StandardIconButton();

  @override
  Widget build(BuildContext context) => SizedBox(
        width: 200,
        child: Column(
          children: [
            UiKitText.titleSmall('Standard Icon Button'),
            const SizedBox(height: 16),
            UiKitIconButton.standard(
              onPressed: () {},
              icon: const Icon(Icons.add_rounded),
            ),
            const SizedBox(height: 8),
            UiKitIconButton.standard(
              onPressed: () {},
              icon: const Icon(Icons.add_rounded),
              enabled: false,
            ),
          ],
        ),
      );
}

class _OutlinedPrimaryButton extends StatelessWidget {
  const _OutlinedPrimaryButton();

  @override
  Widget build(BuildContext context) => SizedBox(
        width: 200,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            UiKitText.titleSmall('Outlined Primary Button'),
            const SizedBox(height: 16),
            UiKitOutlinedButton.primary(
              onPressed: () {},
              label: const Text('standard'),
            ),
            const SizedBox(height: 8),
            UiKitOutlinedButton.primary(
              icon: const Icon(Icons.add_rounded),
              onPressed: () {},
              label: const Text('with icon'),
            ),
            const SizedBox(height: 8),
            UiKitOutlinedButton.primary(
              onPressed: () {},
              enabled: false,
              label: const Text('disabled'),
            ),
            const SizedBox(height: 8),
            UiKitOutlinedButton.primary(
              onPressed: () {},
              icon: const Icon(Icons.add_rounded),
              enabled: false,
              label: const Text('with icon'),
            ),
            const SizedBox(height: 8),
            UiKitOutlinedButton.primary(
              onPressed: () {},
              enabled: false,
              label: SizedBox.square(
                dimension: 20,
                child: CircularProgressIndicator(
                  strokeWidth: 2,
                  color: Theme.of(context).colorPalette.onSurface.withOpacity(.38),
                ),
              ),
            ),
          ],
        ),
      );
}

class _OutlinedSecondaryButton extends StatelessWidget {
  const _OutlinedSecondaryButton();

  @override
  Widget build(BuildContext context) => SizedBox(
        width: 200,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            UiKitText.titleSmall('Outlined Secondary Button'),
            const SizedBox(height: 16),
            UiKitOutlinedButton.secondary(
              onPressed: () {},
              label: const Text('standard'),
            ),
            const SizedBox(height: 8),
            UiKitOutlinedButton.secondary(
              icon: const Icon(Icons.add_rounded),
              onPressed: () {},
              label: const Text('with icon'),
            ),
            const SizedBox(height: 8),
            UiKitOutlinedButton.secondary(
              onPressed: () {},
              enabled: false,
              label: const Text('disabled'),
            ),
            const SizedBox(height: 8),
            UiKitOutlinedButton.secondary(
              onPressed: () {},
              icon: const Icon(Icons.add_rounded),
              enabled: false,
              label: const Text('with icon'),
            ),
            const SizedBox(height: 8),
            UiKitOutlinedButton.secondary(
              onPressed: () {},
              enabled: false,
              label: SizedBox.square(
                dimension: 20,
                child: CircularProgressIndicator(
                  strokeWidth: 2,
                  color: Theme.of(context).colorPalette.onSurface.withOpacity(.38),
                ),
              ),
            ),
          ],
        ),
      );
}

class _FilledSecondaryButton extends StatelessWidget {
  const _FilledSecondaryButton();

  @override
  Widget build(BuildContext context) => SizedBox(
        width: 200,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            UiKitText.titleSmall('Filled Secondary Button'),
            const SizedBox(height: 16),
            UiKitFilledButton.secondary(
              onPressed: () {},
              label: const Text('standard'),
            ),
            const SizedBox(height: 8),
            UiKitFilledButton.secondary(
              icon: const Icon(Icons.add_rounded),
              onPressed: () {},
              label: const Text('with icon'),
            ),
            const SizedBox(height: 8),
            UiKitFilledButton.secondary(
              onPressed: () {},
              enabled: false,
              label: const Text('disabled'),
            ),
            const SizedBox(height: 8),
            UiKitFilledButton.secondary(
              onPressed: () {},
              icon: const Icon(Icons.add_rounded),
              enabled: false,
              label: const Text('with icon'),
            ),
            const SizedBox(height: 8),
            UiKitFilledButton.secondary(
              onPressed: () {},
              enabled: false,
              label: SizedBox.square(
                dimension: 20,
                child: CircularProgressIndicator(
                  strokeWidth: 2,
                  color: Theme.of(context).colorPalette.onSurface.withOpacity(.38),
                ),
              ),
            ),
          ],
        ),
      );
}

class _FilledPrimaryButton extends StatelessWidget {
  const _FilledPrimaryButton();

  @override
  Widget build(BuildContext context) => SizedBox(
        width: 200,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            UiKitText.titleSmall('Filled Primary Button'),
            const SizedBox(height: 16),
            UiKitFilledButton.primary(
              onPressed: () {},
              label: const Text('standard'),
            ),
            const SizedBox(height: 8),
            UiKitFilledButton.primary(
              icon: const Icon(Icons.add_rounded),
              onPressed: () {},
              label: const Text('with icon'),
            ),
            const SizedBox(height: 8),
            UiKitFilledButton.primary(
              onPressed: () {},
              enabled: false,
              label: const Text('disabled'),
            ),
            const SizedBox(height: 8),
            UiKitFilledButton.primary(
              onPressed: () {},
              icon: const Icon(Icons.add_rounded),
              enabled: false,
              label: const Text('with icon'),
            ),
            const SizedBox(height: 8),
            UiKitFilledButton.primary(
              onPressed: () {},
              enabled: false,
              label: SizedBox.square(
                dimension: 20,
                child: CircularProgressIndicator(
                  strokeWidth: 2,
                  color: Theme.of(context).colorPalette.onSurface.withOpacity(.38),
                ),
              ),
            ),
          ],
        ),
      );
}
