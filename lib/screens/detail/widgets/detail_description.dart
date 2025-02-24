import 'package:clothing_store/assets/resources/resources.dart';
import 'package:clothing_store/common/widgets/bordered_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DetailDescription extends StatefulWidget {
  const DetailDescription({super.key});

  @override
  State<DetailDescription> createState() => _DetailDescriptionState();
}

class _DetailDescriptionState extends State<DetailDescription> {
  int _quantity = 1;

  void _onMinusTap() {
    if (_quantity > 1) {
      setState(() {
        _quantity--;
      });
    }
  }

  void _onAddTap() {
    setState(() {
      _quantity++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Light Dress Bless',
                    style: textTheme.titleLarge,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 4.0),
                  Row(
                    children: [
                      SvgPicture.asset(SvgIcons.star),
                      const SizedBox(width: 8.0),
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: '5.0 ',
                              style: textTheme.bodyMedium,
                            ),
                            TextSpan(
                              text: '(7.932 reviews)',
                              style: textTheme.bodyMedium!
                                  .copyWith(color: Color(0xFF347EFB)),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(width: 4.0),
            Row(
              children: [
                BorderedIconButton(
                  onTap: _onMinusTap,
                  icon: SvgPicture.asset(SvgIcons.minus),
                ),
                const SizedBox(width: 12.0),
                Text(
                  _quantity.toString(),
                  style: textTheme.headlineLarge,
                ),
                const SizedBox(width: 12.0),
                BorderedIconButton(
                  onTap: _onAddTap,
                  icon: SvgPicture.asset(SvgIcons.add),
                ),
              ],
            ),
          ],
        ),
        const SizedBox(height: 16.0),
        RichText(
          maxLines: 3,
          text: TextSpan(
            children: [
              TextSpan(
                text:
                    'Its simple and elegant shape makes it perfect for those of you who like you who want minimalist clothes',
                style: textTheme.bodyMedium,
              ),
              TextSpan(
                text: ' Read More...',
                style: textTheme.titleMedium,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
