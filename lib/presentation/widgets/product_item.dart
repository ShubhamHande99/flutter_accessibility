import 'package:flutter/material.dart';
import 'package:project/core/utils/utils.dart';
import 'package:project/domain/models/models.dart';

class ProductItem extends StatefulWidget {
  final Product product;

  const ProductItem({
    super.key,
    required this.product,
  });

  @override
  State<ProductItem> createState() => _ProductItemState();
}

class _ProductItemState extends State<ProductItem> {
  bool _isFav = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(8.0),
        border: Border.all(color: AppColors.gray),
      ),
      width: AppSizes.size_155w,
      child: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              _topView(),
              const SizedBox(height: 8.0),
              _colors(),
              _bottomView(),
            ],
          ),
          Positioned(
            top: 0,
            right: 0,
            child: IconButton(
              icon:  Icon(
                _isFav ? Icons.favorite :  Icons.favorite_border_outlined,
                size: 16,
                color: _isFav ? Colors.red : Colors.grey,
              ),
              onPressed: () {
                _isFav = !_isFav;
                setState(() {});
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _topView() {
    return Container(

      padding: const EdgeInsets.only(top: 24.0),
      width: double.infinity,
      child: Image.asset(
        widget.product.image,
        width: double.infinity,
        height: AppSizes.size_130h,
        fit: BoxFit.contain,
        filterQuality: FilterQuality.high,
      ),
    );
  }

  Widget _colors() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: AppSizes.size_16w),
      child: Row(
        children: widget.product.productColors
            .map((e) => Container(
                  margin: const EdgeInsets.only(right: 4.0),
                  child: CircleAvatar(
                    radius: 6.0,
                    backgroundColor: e.color,
                  ),
                ))
            .toList(),
      ),
    );
  }

  Widget _bottomView() {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: AppSizes.size_16w,
        vertical: AppSizes.size_8h,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            widget.product.title,
            style: AppTextStyle.bodyMedium(context)!.copyWith(
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 8.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '₹${widget.product.price.toStringAsFixed(0)}',
                style: AppTextStyle.titleLarge(context)!.copyWith(
                  fontWeight: FontWeight.w600,
                ),
              ),
              CircleAvatar(

                radius: 12.0,
                backgroundColor: AppColors.primary,
                child: Icon(
                  Icons.add,
                  color: AppColors.white,
                  size: 14.0,
                ),

              ),
            ],
          ),
        ],
      ),
    );
  }
}
