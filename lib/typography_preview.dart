import 'package:ui_kit/ui_kit.dart';

class TypographyPreview extends StatelessWidget {
  const TypographyPreview({super.key});

  @override
  Widget build(BuildContext context) => Card(
        color: Theme.of(context).colorPalette.surface,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              UiKitText.displayLarge('Display Large'),
              const SizedBox(height: 8),
              UiKitText.displayMedium('Display Medium'),
              const SizedBox(height: 8),
              UiKitText.displaySmall('Display Small'),
              const SizedBox(height: 24),
              UiKitText.headlineLarge('Headline Large'),
              const SizedBox(height: 8),
              UiKitText.headlineMedium('Headline Medium'),
              const SizedBox(height: 8),
              UiKitText.headlineSmall('Headline Small'),
              const SizedBox(height: 24),
              UiKitText.titleLarge('Title Large'),
              const SizedBox(height: 8),
              UiKitText.titleMedium('Title Medium'),
              const SizedBox(height: 8),
              UiKitText.titleSmall('Title Small'),
              const SizedBox(height: 24),
              UiKitText.bodyLarge('Body Large'),
              const SizedBox(height: 8),
              UiKitText.bodyMedium('Body Medium'),
              const SizedBox(height: 8),
              UiKitText.bodySmall('Body Small'),
              const SizedBox(height: 24),
              UiKitText.labelLarge('Label Large'),
              const SizedBox(height: 8),
              UiKitText.labelMedium('Label Medium'),
              const SizedBox(height: 8),
              UiKitText.labelSmall('Label Small'),
            ],
          ),
        ),
      );
}
