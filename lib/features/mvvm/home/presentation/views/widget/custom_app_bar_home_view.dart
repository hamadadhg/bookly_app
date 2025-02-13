import 'package:bookly_app/core/utils/assets/image_asset.dart';
import 'package:bookly_app/core/utils/components/icon_button_component.dart';
import 'package:bookly_app/core/utils/constant/constant_value_of_type_string.dart';
import 'package:bookly_app/core/utils/helpers/go_router_new_view_helper.dart';
import 'package:flutter/material.dart';

class CustomAppBarHomeView extends StatelessWidget {
  const CustomAppBarHomeView({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: size.width * 0.06,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            ImageAsset.logoImage,
            height: size.height * 0.027,
          ),
          IconButtonComponent(
            iconData: Icons.search,
            size: size.height * 0.048,
            onPressed: () {
              goRouterNewViewHelper(
                context: context,
                view: kSearchViewRouter,
              );
            },
          ),
        ],
      ),
    );
  }
}
