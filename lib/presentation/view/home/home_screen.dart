import 'package:flutter/material.dart';
import 'package:mesho_clone/data/my_data.dart';
import 'package:mesho_clone/utils/extensions.dart';

import 'category_list/category_list.dart';
import 'home_appbar.dart';
import 'home_search.dart';
import 'offer_list/offer_list.dart';
import 'product_list/product_filter.dart';
import 'product_list/product_list.dart';
import 'recent_view_items/recent_view_items.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HomeAppbar(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: HomeSearch(),
            ),
            8.0.spaceY,
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CategoryList(items: MyData.itemsCategories),
                    8.0.spaceY,
                    OfferList1(),
                    8.0.spaceY,
                    RecentViewItems(),
                    8.0.spaceY,
                    ProductFilter(),
                    12.0.spaceY,
                    ProductList(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
