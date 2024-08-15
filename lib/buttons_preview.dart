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

class _TextButton extends StatelessWidget {
  const _TextButton();

  @override
  Widget build(BuildContext context) => SizedBox(
        width: 200,
        child: Column(
          children: [
            UiText.titleSmall('Text Button'),
            const SizedBox(height: 16),
            UiTextButton(
              onPressed: () {},
              label: const Text('standard'),
            ),
            const SizedBox(height: 8),
            UiTextButton(
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
            UiIconButton.filled(
              onPressed: () {},
              icon: const Icon(Icons.add_rounded),
            ),
            const SizedBox(height: 8),
            UiIconButton.filled(
              onPressed: () {},
              icon: const Icon(Icons.add_rounded),
              enabled: false,
            ),
            const SizedBox(height: 8),
            UiIconButton.outlined(
              onPressed: () {},
              icon: const Icon(Icons.add_rounded),
            ),
            const SizedBox(height: 8),
            UiIconButton.outlined(
              onPressed: () {},
              icon: const Icon(Icons.add_rounded),
              enabled: false,
            ),
            const SizedBox(height: 8),
            UiIconButton.standard(
              onPressed: () {},
              icon: const Icon(Icons.add_rounded),
            ),
            const SizedBox(height: 8),
            UiIconButton.standard(
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
            UiText.titleSmall('Outlined Primary Button'),
            const SizedBox(height: 16),
            UiOutlinedButton.primary(
              onPressed: () {},
              label: const Text('standard'),
            ),
            const SizedBox(height: 8),
            UiOutlinedButton.primary(
              icon: const Icon(Icons.add_rounded),
              onPressed: () {},
              label: const Text('with icon'),
            ),
            const SizedBox(height: 8),
            UiOutlinedButton.primary(
              onPressed: () {},
              enabled: false,
              label: const Text('disabled'),
            ),
            const SizedBox(height: 8),
            UiOutlinedButton.primary(
              onPressed: () {},
              icon: const Icon(Icons.add_rounded),
              enabled: false,
              label: const Text('with icon'),
            ),
            const SizedBox(height: 8),
            UiOutlinedButton.primary(
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

class _OutlinedSecondaryButton extends StatelessWidget {
  const _OutlinedSecondaryButton();

  @override
  Widget build(BuildContext context) => SizedBox(
        width: 200,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            UiText.titleSmall('Outlined Secondary Button'),
            const SizedBox(height: 16),
            UiOutlinedButton.secondary(
              onPressed: () {},
              label: const Text('standard'),
            ),
            const SizedBox(height: 8),
            UiOutlinedButton.secondary(
              icon: const Icon(Icons.add_rounded),
              onPressed: () {},
              label: const Text('with icon'),
            ),
            const SizedBox(height: 8),
            UiOutlinedButton.secondary(
              onPressed: () {},
              enabled: false,
              label: const Text('disabled'),
            ),
            const SizedBox(height: 8),
            UiOutlinedButton.secondary(
              onPressed: () {},
              icon: const Icon(Icons.add_rounded),
              enabled: false,
              label: const Text('with icon'),
            ),
            const SizedBox(height: 8),
            UiOutlinedButton.secondary(
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
            UiFilledButton.secondary(
              onPressed: () {},
              label: const Text('standard'),
            ),
            const SizedBox(height: 8),
            UiFilledButton.secondary(
              icon: const Icon(Icons.add_rounded),
              onPressed: () {},
              label: const Text('with icon'),
            ),
            const SizedBox(height: 8),
            UiFilledButton.secondary(
              onPressed: () {},
              enabled: false,
              label: const Text('disabled'),
            ),
            const SizedBox(height: 8),
            UiFilledButton.secondary(
              onPressed: () {},
              icon: const Icon(Icons.add_rounded),
              enabled: false,
              label: const Text('with icon'),
            ),
            const SizedBox(height: 8),
            UiFilledButton.secondary(
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
            UiFilledButton.primary(
              onPressed: () {},
              label: const Text('standard'),
            ),
            const SizedBox(height: 8),
            UiFilledButton.primary(
              icon: const Icon(Icons.add_rounded),
              onPressed: () {},
              label: const Text('with icon'),
            ),
            const SizedBox(height: 8),
            UiFilledButton.primary(
              onPressed: () {},
              enabled: false,
              label: const Text('disabled'),
            ),
            const SizedBox(height: 8),
            UiFilledButton.primary(
              onPressed: () {},
              icon: const Icon(Icons.add_rounded),
              enabled: false,
              label: const Text('with icon'),
            ),
            const SizedBox(height: 8),
            UiFilledButton.primary(
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
