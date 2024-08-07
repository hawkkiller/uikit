import 'package:ui_kit/ui_kit.dart';

class IconsPreview extends StatelessWidget {
  const IconsPreview({super.key});

  @override
  Widget build(BuildContext context) => UiCard(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Wrap(
                spacing: 16,
                runSpacing: 16,
                children: icons.map((icon) => Icon(icon, size: 32)).toList(),
              )
            ],
          ),
        ),
      );
}

const icons = [
  UiIcons.deployedCodeAccount,
  UiIcons.deployedCodeAlert,
  UiIcons.javascript,
  UiIcons.fullscreen,
  UiIcons.home,
  UiIcons.logout,
  UiIcons.creditCard,
  UiIcons.arrowBack,
  UiIcons.terminal,
  UiIcons.createNewFolder,
  UiIcons.shoppingCart,
  UiIcons.favorite,
  UiIcons.redo,
  UiIcons.css,
  UiIcons.filterList,
  UiIcons.sort,
  UiIcons.payments,
  UiIcons.zoomOut,
];
