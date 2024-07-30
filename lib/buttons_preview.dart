import 'package:ui_kit/ui_kit.dart';

class ButtonsPreview extends StatelessWidget {
  const ButtonsPreview({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return RepaintBoundary(
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
              _IconButtons(),
              _TextButton(),
            ],
          ),
        ),
      ),
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

class _IconButtons extends StatelessWidget {
  const _IconButtons();

  @override
  Widget build(BuildContext context) => SizedBox(
        width: 200,
        child: Column(
          children: [
            UiKitText.titleSmall('Icon Buttons'),
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
            const SizedBox(height: 8),
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
            const SizedBox(height: 8),
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
