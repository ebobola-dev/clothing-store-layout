import 'package:clothing_store/assets/colors/colors.dart';
import 'package:clothing_store/screens/detail/widgets/color_item.dart';
import 'package:clothing_store/screens/detail/widgets/size_item.dart';
import 'package:flutter/material.dart';

class ChooseSizeColor extends StatefulWidget {
  const ChooseSizeColor({super.key});

  @override
  State<ChooseSizeColor> createState() => _ChooseSizeColorState();
}

class _ChooseSizeColorState extends State<ChooseSizeColor> {
  final List<String> _sizes = ['S', 'M', 'L', 'XL'];
  final List<Color> _colors = [grey4, grey11, grey10];

  String? _activeSize;
  Color? _activeColor;

  void _changeActiveSize(String newSize) {
    if (newSize == _activeSize) {
      setState(() {
        _activeSize = null;
      });
      return;
    }
    setState(() {
      _activeSize = newSize;
    });
  }

  void _changeActiveColor(Color newColor) {
    if (newColor == _activeColor) {
      setState(() {
        _activeColor = null;
      });
      return;
    }
    setState(() {
      _activeColor = newColor;
    });
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Flexible(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Choose Size',
                style: textTheme.displaySmall,
              ),
              const SizedBox(height: 8.0),
              SizedBox(
                height: 26.0,
                child: ListView.separated(
                  shrinkWrap: true,
                  itemCount: _sizes.length,
                  scrollDirection: Axis.horizontal,
                  separatorBuilder: (context, _) => SizedBox(width: 8.0),
                  itemBuilder: (context, index) => SizeItem(
                    sizeName: _sizes[index],
                    onTap: () => _changeActiveSize(_sizes[index]),
                    isActive: _sizes[index] == _activeSize,
                  ),
                ),
              ),
            ],
          ),
        ),
        Flexible(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Color',
                style: textTheme.displaySmall,
              ),
              const SizedBox(height: 8.0),
              SizedBox(
                height: 26.0,
                child: ListView.separated(
                  shrinkWrap: true,
                  itemCount: _colors.length,
                  scrollDirection: Axis.horizontal,
                  separatorBuilder: (context, _) => SizedBox(width: 8.0),
                  itemBuilder: (context, index) => ColorItem(
                    color: _colors[index],
                    onTap: () => _changeActiveColor(_colors[index]),
                    isActive: _colors[index] == _activeColor,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
