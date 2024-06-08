import 'package:ferias_pet/src/core/constants/constants.dart';
import 'package:ferias_pet/src/modules/search/search_result.dart';
import 'package:ferias_pet/src/modules/search/widgets/card_result.dart';
import 'package:flutter/material.dart';

class ListContainerComponent extends StatelessWidget {
  const ListContainerComponent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.only(left: 12, right: 12, top: 10),
        height: 555,
        child: ListView.builder(
            itemCount: ConstantsApp.listMock.length,
            scrollDirection: Axis.vertical,
            padding: const EdgeInsets.all(8),
            itemBuilder: (_, index) {
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SearchResult(
                          modelHotel: ConstantsApp.listMock[index]),
                    ),
                  );
                },
                child: CardResult(
                  modelHotel: ConstantsApp.listMock[index],
                ),
              );
            }));
  }
}
