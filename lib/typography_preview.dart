import 'package:ui_kit/ui_kit.dart';

class TypographyPreview extends StatelessWidget {
  const TypographyPreview({super.key});

  @override
  Widget build(BuildContext context) => UiCard(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              UiText.displayLarge('Display Large'),
              const SizedBox(height: 8),
              UiText.displayMedium('Display Medium'),
              const SizedBox(height: 8),
              UiText.displaySmall('Display Small'),
              const SizedBox(height: 24),
              UiText.headlineLarge('Headline Large'),
              const SizedBox(height: 8),
              UiText.headlineMedium('Headline Medium'),
              const SizedBox(height: 8),
              UiText.headlineSmall('Headline Small'),
              const SizedBox(height: 24),
              UiText.titleLarge('Title Large'),
              const SizedBox(height: 8),
              UiText.titleMedium('Title Medium'),
              const SizedBox(height: 8),
              UiText.titleSmall('Title Small'),
              const SizedBox(height: 24),
              UiText.bodyLarge('Body Large'),
              const SizedBox(height: 8),
              UiText.bodyMedium('Body Medium'),
              const SizedBox(height: 8),
              UiText.bodySmall('Body Small'),
              const SizedBox(height: 24),
              UiText.labelLarge('Label Large'),
              const SizedBox(height: 8),
              UiText.labelMedium('Label Medium'),
              const SizedBox(height: 8),
              UiText.labelSmall('Label Small'),
            ],
          ),
        ),
      );
}
