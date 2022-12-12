import 'package:flutter/material.dart';
import 'package:flutter_multi_select_items/flutter_multi_select_items.dart';
// import 'package:flutter_multi_select_items/flutter_multi_select_items.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_text_style.dart';
import 'categories_card.dart';

class CategoriesRow extends StatelessWidget {
  CategoriesRow({Key? key}) : super(key: key);

  List<Color> cardColors = [
    AppColors.white,
    AppColors.circlePrimary,
    AppColors.circleSecondary,
    AppColors.white,
    AppColors.circlePrimary,
    AppColors.circleSecondary,
    AppColors.white,
    AppColors.circlePrimary,
    AppColors.circleSecondary,
    AppColors.white,
    AppColors.circlePrimary,
    AppColors.circleSecondary,
  ];
  List<Color> textColor = [
    AppColors.circlePrimary,
    AppColors.white,
    AppColors.black,
    AppColors.circlePrimary,
    AppColors.white,
    AppColors.black,
    AppColors.circlePrimary,
    AppColors.white,
    AppColors.black,
    AppColors.circlePrimary,
    AppColors.white,
    AppColors.black,
  ];
  List<CategorieScreen> cards = [
    CategorieScreen(
      text: 'Biography',
      color: Colors.transparent,
      textColor: AppTextStyle.field,
    ),
    CategorieScreen(
      text: 'Adveture fiction',
      color: Colors.transparent,
      textColor: AppTextStyle.field,
    ),
    CategorieScreen(
      text: 'sentific',
      color: Colors.transparent,
      textColor: AppTextStyle.field,
    ),
    CategorieScreen(
      text: 'geology',
      color: Colors.transparent,
      textColor: AppTextStyle.field,
    ),
    CategorieScreen(
      text: 'Art',
      color: Colors.transparent,
      textColor: AppTextStyle.field,
    ),

    CategorieScreen(
      text: 'Autobiography',
      color: Colors.transparent,
      textColor: AppTextStyle.field,
    ),
    CategorieScreen(
      text: 'english',
      color: Colors.transparent,
      textColor: AppTextStyle.field,
    ),
    CategorieScreen(
      text: 'Art',
      color: Colors.transparent,
      textColor: AppTextStyle.field,
    ),
    CategorieScreen(
      text: 'Autobiography',
      color: Colors.transparent,
      textColor: AppTextStyle.field,
    ),
    CategorieScreen(
      text: 'Adveture fiction',
      color: Colors.transparent,
      textColor: AppTextStyle.field,
    ),
    CategorieScreen(
      text: 'english',
      color: Colors.transparent,
      textColor: AppTextStyle.field,
    ),
    CategorieScreen(
      text: 'Autobiography',
      color: Colors.transparent,
      textColor: AppTextStyle.field,
    ),
    CategorieScreen(
      text: 'english',
      color: Colors.transparent,
      textColor: AppTextStyle.field,
    ),
    CategorieScreen(
      text: 'Autobiography',
      color: Colors.transparent,
      textColor: AppTextStyle.field,
    ),
    //
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.background,
      height: 280,
      width: 350,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 7 ,
          shrinkWrap: true,
          itemBuilder: (BuildContext context, int index) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 40.0,bottom: 10 ,left: 2),
                      child: MultiSelectContainer(
                          itemsDecoration: MultiSelectDecorations(
                              decoration: BoxDecoration(
                                border: Border.all(color: AppColors.white),
                                borderRadius: BorderRadius.circular(22),
                              ),
                              selectedDecoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(22),
                                color: cardColors[index + 1],
                              )),
                          textStyles: MultiSelectTextStyles(
                            textStyle: TextStyle(color: AppColors.white),
                            selectedTextStyle:
                            TextStyle(color: textColor[index +1]),
                          ),
                          itemsPadding:
                          const EdgeInsets.only(left: 30, right: 30),
                          items:[
                            MultiSelectCard(
                                value: cards[index],
                                label: cards[index].text),
                          ],
                          onChange: (allSelectedItems, selectedItem) {
                          }),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10,left: 15.0,right:
                      10),
                      child: MultiSelectContainer(
                          itemsDecoration: MultiSelectDecorations(
                            decoration: BoxDecoration(
                              border: Border.all(color: AppColors.white),
                              borderRadius: BorderRadius.circular(22),
                            ),
                            selectedDecoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(22),
                              color: cardColors[index + 2],
                            ),
                          ),
                          textStyles: MultiSelectTextStyles(
                            textStyle: TextStyle(color: AppColors.white),
                            selectedTextStyle:
                            TextStyle(color: textColor[index + 2]),
                          ),
                          itemsPadding:
                          const EdgeInsets.only(left: 30, right: 30),
                          items: [
                            MultiSelectCard(
                                value: cards[index],
                                label: cards[index + 1].text),
                          ],
                          onChange: (allSelectedItems, selectedItem) {
                          }),
                    ),

                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 15.0,right: 10),
                      child: MultiSelectContainer(
                          itemsDecoration: MultiSelectDecorations(
                              decoration: BoxDecoration(
                                border: Border.all(color: AppColors.white),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              selectedDecoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: cardColors[index + 4],
                              )),
                          textStyles: MultiSelectTextStyles(
                            textStyle: TextStyle(color: AppColors.white),
                            selectedTextStyle:
                            TextStyle(color: textColor[index + 1]),
                          ),
                          itemsPadding:
                          const EdgeInsets.only(left: 30, right: 30),
                          items: [
                            MultiSelectCard(
                                margin: const EdgeInsets.only(left: 5),
                                value: cards[index],
                                label: cards[index + 4].text),
                          ],
                          onChange: (allSelectedItems, selectedItem) {
                          }),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 15),
                      child: MultiSelectContainer(
                          itemsDecoration: MultiSelectDecorations(
                              decoration: BoxDecoration(
                                border: Border.all(color: AppColors.white),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              selectedDecoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: cardColors[index],
                              )),
                          textStyles: MultiSelectTextStyles(
                            textStyle: TextStyle(color: AppColors.white),
                            selectedTextStyle:
                            TextStyle(color: textColor[index]),
                          ),
                          itemsPadding:
                          const EdgeInsets.only(left: 30, right: 30),
                          items: [
                            MultiSelectCard(
                                value: cards[index],
                                label: cards[index + 2].text),
                          ],
                          onChange: (allSelectedItems, selectedItem) {
                          }),
                    ),
                  ],
                ),
              ],
            );
          }),
    );
  }
}