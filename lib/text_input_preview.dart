import 'package:ui_kit/ui_kit.dart';

class TextInputPreview extends StatefulWidget {
  const TextInputPreview({super.key});

  @override
  State<TextInputPreview> createState() => _TextInputPreviewState();
}

class _TextInputPreviewState extends State<TextInputPreview> {
  @override
  Widget build(BuildContext context) => UiCard(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: SizedBox(
            width: 200,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                UiTextInput.outlined(
                  style: const UiTextInputStyle(hintText: 'Hint'),
                ),
                const SizedBox(height: 16),
                UiTextInput.outlined(
                  style: const UiTextInputStyle(
                    hintText: 'With helper',
                    helperText: 'Helper',
                  ),
                ),
                const SizedBox(height: 16),
                UiTextInput.outlined(
                  style: const UiTextInputStyle(
                    hintText: 'With error',
                    errorText: 'Error',
                  ),
                ),
                const SizedBox(height: 16),
                UiTextInput.outlined(
                  showCounter: true,
                  maxLength: 500,
                  style: const UiTextInputStyle(hintText: 'With counter'),
                ),
                const SizedBox(height: 16),
                UiTextInput.outlined(
                  showCounter: true,
                  maxLength: 500,
                  style: const UiTextInputStyle(
                    hintText: 'With counter and helper',
                    helperText: 'Helper',
                  ),
                ),
                const SizedBox(height: 16),
                UiTextInput.outlined(
                  showCounter: true,
                  maxLength: 500,
                  style: const UiTextInputStyle(
                    labelText: 'With label',
                  ),
                ),
                const SizedBox(height: 16),
                UiTextInput.outlined(
                  showCounter: true,
                  enabled: false,
                  maxLength: 500,
                  style: const UiTextInputStyle(
                    hintText: 'Disabled',
                  ),
                ),
              ],
            ),
          ),
        ),
      );
}
