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

    OutlinedButton;

    return CustomScrollView(
      slivers: [
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
              const RepaintBoundary(
                child: Center(
                  child: Card(
                    child: Padding(
                      padding: EdgeInsets.all(16),
                      child: Wrap(
                        spacing: 16,
                        runSpacing: 16,
                        children: [
                          _FilledPrimaryButton(),
                          _FilledSecondaryButton(),
                          _OutlinedPrimaryButton(),
                          _OutlinedSecondaryButton(),
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
