import 'dart:developer';

import 'package:clothing_store/assets/colors/colors.dart';
import 'package:clothing_store/assets/resources/resources.dart';
import 'package:clothing_store/common/widgets/square_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: TextFormField(
            onTapOutside: (_) => FocusManager.instance.primaryFocus?.unfocus(),
            style: Theme.of(context).textTheme.bodyLarge,
            maxLines: 1,
            decoration: InputDecoration(
              label: Text('Search clothes...'),
              labelStyle: Theme.of(context).textTheme.bodyLarge,
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.0),
                borderSide: BorderSide(color: grey10),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.0),
                borderSide: BorderSide(color: grey5),
              ),
              contentPadding: const EdgeInsets.symmetric(
                horizontal: 16.0,
                vertical: 14.0,
              ),
              floatingLabelBehavior: FloatingLabelBehavior.never,
              prefixIcon: Padding(
                padding: const EdgeInsets.fromLTRB(12.0, 12.0, 8.0, 12.0),
                child: SvgPicture.asset(
                  SvgIcons.search,
                  colorFilter: ColorFilter.mode(grey6, BlendMode.srcIn),
                ),
              ),
            ),
          ),
        ),
        SizedBox(width: 16.0),
        SquareButton(
          onTap: () => log(
            'Tap on search settings',
            name: 'Home Screen',
          ),
          child: SvgPicture.asset(
            SvgIcons.settings,
            colorFilter: ColorFilter.mode(grey2, BlendMode.srcIn),
          ),
        ),
      ],
    );
  }
}
