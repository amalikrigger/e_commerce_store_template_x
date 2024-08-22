import 'package:e_commerce_store_template_x/common/widgets/appbar/appbar.dart';
import 'package:e_commerce_store_template_x/common/widgets/texts/product_price_text.dart';
import 'package:flutter/material.dart';

import '../../../../common/widgets/products/cart/add_remove_cart_button.dart';
import '../../../../common/widgets/products/cart/cart_item.dart';
import '../../../../utils/constants/sizes.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: EAppBar(
        title: Text(
          'Cart',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        showBackArrow: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(ESizes.defaultSpace),
        child: ListView.separated(
          shrinkWrap: true,
          separatorBuilder: (_, __) =>
              const SizedBox(height: ESizes.spaceBtwSections),
          itemCount: 4,
          itemBuilder: (_, index) => const Column(
            children: [
              ECartItem(),
              SizedBox(height: ESizes.spaceBtwItems),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      SizedBox(width: 70),
                      EProductQuantityWithAddRemove(),
                    ],
                  ),
                  EProductPriceText(price: '256'),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(ESizes.defaultSpace),
        child: ElevatedButton(
          onPressed: () {},
          child: const Text('Checkout \$256.0'),
        ),
      ),
    );
  }
}
