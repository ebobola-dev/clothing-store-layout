import 'package:clothing_store/assets/resources/resources.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CardsWidget extends StatelessWidget {
  const CardsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 62.0,
      decoration: BoxDecoration(
        color: Color(0xFFF2F2F2),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(20.0, 16.0, 0.0, 16.0),
            child: Image.asset(Images.card),
          ),
          const SizedBox(width: 12.0),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: '**** **** **** ',
                    style: Theme.of(context)
                        .textTheme
                        .bodyLarge!
                        .copyWith(fontWeight: FontWeight.w600),
                  ),
                  TextSpan(
                    text: '2143',
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                ],
              ),
            ),
          ),
          const Spacer(),
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(SvgIcons.arrowDown),
          ),
          const SizedBox(width: 8.0),
        ],
      ),
    );
  }
}
