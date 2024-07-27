import 'package:ui_kit/ui_kit.dart';
import 'package:uikit/theme_constants.dart';
import 'dart:math' as math;

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: createThemeData(
        brightness: Brightness.light,
        palette: colorPalette,
        typography: appTypography,
      ),
      home: const Scaffold(body: UiKitPreview()),
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
        SliverPadding(
          padding: EdgeInsets.symmetric(
            horizontal: math.max((size.width - 1000) / 2, 16),
            vertical: 24,
          ),
          sliver: SliverList.list(
            children: [
              UiKitText.titleMedium('Buttons'),
              const SizedBox(height: 8),
              const Card(
                child: Padding(
                  padding: EdgeInsets.all(16),
                  child: Wrap(
                    spacing: 16,
                    runSpacing: 16,
                    children: [
                      _FilledPrimaryButton(),
                      _FilledSecondaryButton(),
                    ],
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

class _FilledSecondaryButton extends StatelessWidget {
  const _FilledSecondaryButton();

  @override
  Widget build(BuildContext context) => SizedBox(
        width: 200,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            UiKitText.titleMedium('Filled Secondary Button'),
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
            UiKitText.titleMedium('Filled Primary Button'),
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
