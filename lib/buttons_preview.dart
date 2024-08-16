import 'package:ui_kit/ui_kit.dart';

class ButtonsPreview extends StatelessWidget {
  const ButtonsPreview({
    super.key,
  });

  @override
  Widget build(BuildContext context) => const RepaintBoundary(
        child: UiCard(
          child: Padding(
            padding: EdgeInsets.all(16),
            child: Wrap(
              spacing: 16,
              runSpacing: 16,
              children: [
                _FilledPrimaryButton(),
                _FilledSecondaryButton(),
                _FilledDestructiveButton(),
                _OutlinedButton(),
                _IconButtons(),
                _TextButton(),
              ],
            ),
          ),
        ),
      );
}

class _TextButton extends StatelessWidget {
  const _TextButton();

  @override
  Widget build(BuildContext context) => SizedBox(
        width: 200,
        child: Column(
          children: [
            UiText.titleSmall('Text Button'),
            const SizedBox(height: 16),
            UiButton.text(
              onPressed: () {},
              label: const Text('standard'),
            ),
            const SizedBox(height: 8),
            UiButton.text(
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
            UiText.titleSmall('Icon Buttons'),
            const SizedBox(height: 16),
            UiButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.add_rounded),
            ),
            const SizedBox(height: 8),
            UiButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.add_rounded),
              enabled: false,
            ),
            const SizedBox(height: 8),
            UiButton.iconOutlined(
              onPressed: () {},
              icon: const Icon(Icons.add_rounded),
            ),
            const SizedBox(height: 8),
            UiButton.iconOutlined(
              onPressed: () {},
              icon: const Icon(Icons.add_rounded),
              enabled: false,
            ),
          ],
        ),
      );
}

class _OutlinedButton extends StatelessWidget {
  const _OutlinedButton();

  @override
  Widget build(BuildContext context) => SizedBox(
        width: 200,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            UiText.titleSmall('Outlined Button'),
            const SizedBox(height: 16),
            UiButton.outlined(
              onPressed: () {},
              label: const Text('Outlined'),
            ),
            const SizedBox(height: 8),
            UiButton.outlined(
              icon: const Icon(Icons.add_rounded),
              onPressed: () {},
              label: const Text('Outlined'),
            ),
            const SizedBox(height: 8),
            UiButton.outlined(
              onPressed: () {},
              enabled: false,
              label: const Text('Outlined'),
            ),
            const SizedBox(height: 8),
            UiButton.outlined(
              onPressed: () {},
              icon: const Icon(Icons.add_rounded),
              enabled: false,
              label: const Text('Outlined'),
            ),
            const SizedBox(height: 8),
            UiButton.outlined(
              onPressed: () {},
              enabled: false,
              label: SizedBox.square(
                dimension: 20,
                child: CircularProgressIndicator(
                  strokeWidth: 2,
                  color: Theme.of(context).colorPalette.foreground.withOpacity(.38),
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
            UiText.titleSmall('Filled Secondary Button'),
            const SizedBox(height: 16),
            UiButton.filledSecondary(
              onPressed: () {},
              label: const Text('Secondary'),
            ),
            const SizedBox(height: 8),
            UiButton.filledSecondary(
              icon: const Icon(Icons.add_rounded),
              onPressed: () {},
              label: const Text('Secondary'),
            ),
            const SizedBox(height: 8),
            UiButton.filledSecondary(
              onPressed: () {},
              enabled: false,
              label: const Text('Secondary'),
            ),
            const SizedBox(height: 8),
            UiButton.filledSecondary(
              onPressed: () {},
              icon: const Icon(Icons.add_rounded),
              enabled: false,
              label: const Text('Secondary'),
            ),
            const SizedBox(height: 8),
            UiButton.filledSecondary(
              onPressed: () {},
              enabled: false,
              label: SizedBox.square(
                dimension: 20,
                child: CircularProgressIndicator(
                  strokeWidth: 2,
                  color: Theme.of(context).colorPalette.secondary.withOpacity(.38),
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
            UiText.titleSmall('Filled Primary Button'),
            const SizedBox(height: 16),
            UiButton.filledPrimary(
              onPressed: () {},
              label: const Text('Primary'),
            ),
            const SizedBox(height: 8),
            UiButton.filledPrimary(
              icon: const Icon(Icons.add_rounded),
              onPressed: () {},
              label: const Text('Primary'),
            ),
            const SizedBox(height: 8),
            UiButton.filledPrimary(
              onPressed: () {},
              enabled: false,
              label: const Text('Primary'),
            ),
            const SizedBox(height: 8),
            UiButton.filledPrimary(
              onPressed: () {},
              icon: const Icon(Icons.add_rounded),
              enabled: false,
              label: const Text('Primary'),
            ),
            const SizedBox(height: 8),
            UiButton.filledPrimary(
              onPressed: () {},
              enabled: false,
              label: SizedBox.square(
                dimension: 20,
                child: CircularProgressIndicator(
                  strokeWidth: 2,
                  color: Theme.of(context).colorPalette.primary.withOpacity(.38),
                ),
              ),
            ),
          ],
        ),
      );
}

class _FilledDestructiveButton extends StatelessWidget {
  const _FilledDestructiveButton();

  @override
  Widget build(BuildContext context) => SizedBox(
        width: 200,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            UiText.titleSmall('Filled Destructive Button'),
            const SizedBox(height: 16),
            UiButton.filledDestructive(
              onPressed: () {},
              label: const Text('Destructive'),
            ),
            const SizedBox(height: 8),
            UiButton.filledDestructive(
              icon: const Icon(Icons.add_rounded),
              onPressed: () {},
              label: const Text('Destructive'),
            ),
            const SizedBox(height: 8),
            UiButton.filledDestructive(
              onPressed: () {},
              enabled: false,
              label: const Text('Destructive'),
            ),
            const SizedBox(height: 8),
            UiButton.filledDestructive(
              onPressed: () {},
              icon: const Icon(Icons.add_rounded),
              enabled: false,
              label: const Text('Destructive'),
            ),
            const SizedBox(height: 8),
            UiButton.filledDestructive(
              onPressed: () {},
              enabled: false,
              label: SizedBox.square(
                dimension: 20,
                child: CircularProgressIndicator(
                  strokeWidth: 2,
                  color: Theme.of(context).colorPalette.destructive.withOpacity(.38),
                ),
              ),
            ),
          ],
        ),
      );
}
