import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:project/core/utils/semantics_hints.dart';
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

  void _showAddedToCartMessage() {
    debugPrint('c');
    const snackBar = SnackBar(
      content: Text('Product successfully added to the cart.'),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  void _showAddedToFavMessage() {
    const snackBar = SnackBar(
      content: Text('Product successfully added to the favourite.'),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  void _showRemovedFromFavMessage() {
    const snackBar = SnackBar(
      content: Text('Product successfully removed from the favourite.'),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  void _addOrRemoveFromFav() {
    _isFav = !_isFav;
    setState(() {});

    if (_isFav) {
      _showAddedToFavMessage();
    } else {
      _showRemovedFromFavMessage();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Semantics(
      button: true,
      onTap: () {},
      sortKey: const OrdinalSortKey(0),
      label: SemanticsLabels.product,
      onTapHint: SemanticsHints.viewProductOnTapHint,
      child: Container(
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
              child: Semantics(
                button: true,
                label: _isFav
                    ? SemanticsLabels.removeFromFav(widget.product.title)
                    : SemanticsLabels.addToFav(widget.product.title),
                onTap: () {
                  _addOrRemoveFromFav();
                },
                child: ExcludeSemantics(
                  child: IconButton(
                    icon: Icon(
                      _isFav ? Icons.favorite : Icons.favorite_border_outlined,
                      size: 16,
                      color: _isFav ? Colors.red : Colors.grey,
                    ),
                    onPressed: () {
                      _addOrRemoveFromFav();
                    },
                  ),
                ),
              ),
            ),
          ],
        ),
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
        excludeFromSemantics: true,
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
              Semantics(
                button: true,
                label: SemanticsLabels.addToCart(widget.product.title),
                onTap: () {
                  _showAddedToCartMessage();
                },
                child: CircleAvatar(
                  radius: 12.0,
                  backgroundColor: AppColors.primary,
                  child: ExcludeSemantics(
                    child: Icon(
                      Icons.add,
                      color: AppColors.white,
                      size: 14.0,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
