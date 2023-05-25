import 'package:flutter/material.dart';
import 'package:open_fashion/module/module.dart';
import 'package:open_fashion/res/res.dart';
import 'package:open_fashion/utils/utils.dart';
import 'package:open_fashion/widget/tt_text.p.dart';

class AppFooter extends StatelessWidget {
  final BuildContext pageContext;
  const AppFooter({
    super.key,
    required this.pageContext,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        buildSocial(),
        _buildInfo(),
        _buildMoreNavigate(context),
        _buildCopyright(),
      ],
    );
  }
}

Widget _buildMoreNavigate(BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      TextButton(
        onPressed: () => push(context, createAbout()),
        child: const TText(
          'About',
          style: St.body_L_16_regular,
        ),
      ),
      Padding(
        padding: symmetric(horizontal: 36),
        child: TextButton(
          onPressed: () => push(context, createContact()),
          child: const TText(
            'Contact',
            style: St.body_L_16_regular,
          ),
        ),
      ),
      TextButton(
        onPressed: () => push(context, createBlog()),
        child: const TText(
          'Blog',
          style: St.body_L_16_regular,
        ),
      ),
    ],
  );
}

Widget _buildCopyright() {
  return Container(
    margin: only(top: 23),
    height: 45.25,
    color: Cl.c4c4c4.withOpacity(0.1),
    child: Center(
      child: TText(
        "Copyright© OpenUI All Rights Reserved.",
        style: St.body_S_12_regular.copyWith(color: Cl.label),
      ),
    ),
  );
}

Widget _buildInfo() {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 24),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(Id.devider),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 18),
          child: Text(
            'support@openui.design\n+60 825 876\n08:00 - 22:00 - Everyday',
            style: St.subtitle_16_regular.copyWith(height: 2),
            textAlign: TextAlign.center,
          ),
        ),
        Image.asset(Id.devider),
      ],
    ),
  );
}

Widget buildSocial({
  Function? onTwitterClick,
  Function? onInstagramClick,
  Function? onYoutubeClick,
}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      IconButton(
        onPressed: () => onTwitterClick?.call(),
        icon: Image.asset(Id.twitter),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: IconButton(
          onPressed: () => onInstagramClick?.call(),
          icon: Image.asset(Id.instagram),
        ),
      ),
      IconButton(
        onPressed: () => onYoutubeClick?.call(),
        icon: Image.asset(Id.youtube),
      ),
    ],
  );
}
