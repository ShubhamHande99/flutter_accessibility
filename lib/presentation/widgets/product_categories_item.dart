import 'package:flutter/material.dart';

import '../../core/utils/utils.dart';

class ProductCategoriesItem extends StatefulWidget {
  final String? title;
  final IconData? iconData;
  final void Function()? onTap;
  final int index;
  final bool isSelected;

  final String tooltip;
  const ProductCategoriesItem({
    super.key,
    this.title,
    this.iconData,
    this.onTap,
    required this.index,
    this.isSelected = false,
    required this.tooltip,
  });

  @override
  State<ProductCategoriesItem> createState() => _ProductCategoriesItemState();
}

class _ProductCategoriesItemState extends State<ProductCategoriesItem> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _text(),
        _icon(),
      ],
    );
  }

  Widget _text() {
    return widget.title != null
        ? GestureDetector(
            onTap: widget.onTap,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                color: widget.isSelected ? AppColors.primary : AppColors.gray,
              ),
              padding: EdgeInsets.symmetric(
                vertical:
                    widget.isSelected ? AppSizes.size_32h : AppSizes.size_16h,
              ),
              width: AppSizes.size_70w,
              child: Center(
                child: Text(
                  widget.title!,
                  style: AppTextStyle.labelLarge(context)!.copyWith(
                    color:
                        widget.isSelected ? AppColors.white : AppColors.black,
                  ),
                ),
              ),
            ),
          )
        : const SizedBox();
  }

  Widget _icon() {
    return widget.iconData != null
        ? GestureDetector(
            onTap: widget.onTap,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                color: widget.isSelected ? AppColors.primary : AppColors.gray,
              ),
              padding: EdgeInsets.symmetric(
                vertical:
                    widget.isSelected ? AppSizes.size_32h : AppSizes.size_16h,
              ),
              width: AppSizes.size_70w,
              child: Icon(
                widget.iconData,
                size: 24,
                color: widget.isSelected ? AppColors.white : AppColors.black,
              ),
            ),
          )
        : const SizedBox();
  }
}
