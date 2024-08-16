import 'package:ui_kit/ui_kit.dart';

class TextFieldsPreview extends StatefulWidget {
  const TextFieldsPreview({super.key});

  @override
  State<TextFieldsPreview> createState() => _TextFieldsPreviewState();
}

class _TextFieldsPreviewState extends State<TextFieldsPreview> {
  @override
  Widget build(BuildContext context) => const UiCard(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: SizedBox(
            width: 200,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                UiTextField.standard(
                  style: UiTextFieldStyle(
                    hintText: 'Text input',
                  ),
                ),
                SizedBox(height: 16),
                UiTextField.standard(
                  style: UiTextFieldStyle(
                    hintText: 'Text input',
                    helperText: 'Helper',
                  ),
                ),
                SizedBox(height: 16),
                UiTextField.standard(
                  style: UiTextFieldStyle(
                    hintText: 'Text input',
                    errorText: 'Error',
                  ),
                ),
                SizedBox(height: 16),
                UiTextField.standard(
                  showCounter: true,
                  maxLength: 10,
                  style: UiTextFieldStyle(hintText: 'Text input'),
                ),
                SizedBox(height: 16),
                UiTextField.standard(
                  showCounter: true,
                  enabled: false,
                  style: UiTextFieldStyle(
                    hintText: 'Disabled',
                  ),
                ),
              ],
            ),
          ),
        ),
      );
}
