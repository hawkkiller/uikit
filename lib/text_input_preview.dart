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
                UiTextField.outlined(
                  style: const UiTextFieldStyle(hintText: 'Hint'),
                ),
                const SizedBox(height: 16),
                UiTextField.outlined(
                  style: const UiTextFieldStyle(
                    hintText: 'With helper',
                    helperText: 'Helper',
                  ),
                ),
                const SizedBox(height: 16),
                UiTextField.outlined(
                  style: const UiTextFieldStyle(
                    hintText: 'With error',
                    errorText: 'Error',
                  ),
                ),
                const SizedBox(height: 16),
                UiTextField.outlined(
                  showCounter: true,
                  maxLength: 500,
                  style: const UiTextFieldStyle(hintText: 'With counter'),
                ),
                const SizedBox(height: 16),
                UiTextField.outlined(
                  showCounter: true,
                  maxLength: 500,
                  style: const UiTextFieldStyle(
                    hintText: 'With counter and helper',
                    helperText: 'Helper',
                  ),
                ),
                const SizedBox(height: 16),
                UiTextField.outlined(
                  showCounter: true,
                  maxLength: 500,
                  style: const UiTextFieldStyle(
                    labelText: 'With label',
                  ),
                ),
                const SizedBox(height: 16),
                UiTextField.outlined(
                  showCounter: true,
                  enabled: false,
                  maxLength: 500,
                  style: const UiTextFieldStyle(
                    hintText: 'Disabled',
                  ),
                ),
              ],
            ),
          ),
        ),
      );
}
