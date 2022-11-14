import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constants.dart';

class Knowledges extends StatelessWidget {
  const Knowledges({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: defaultPadding),
          child:
              Text('Knowledges', style: Theme.of(context).textTheme.subtitle2),
        ),
        const KnowledgeText(label: "Android"),
        const KnowledgeText(label: "Liferay"),
        const KnowledgeText(label: "Spring"),
        const KnowledgeText(label: "GIT Knowledge"),
      ],
    );
  }
}

class KnowledgeText extends StatelessWidget {
  const KnowledgeText({
    Key? key,
    required this.label,
  }) : super(key: key);

  final String label;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding),
      child: Row(
        children: [
          SvgPicture.asset("assets/icons/check.svg"),
          const SizedBox(
            width: defaultPadding / 2,
          ),
          Text(
            label,
          )
        ],
      ),
    );
  }
}
