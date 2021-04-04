import 'package:flutter/material.dart';
import 'package:my_personal_website/providers/journey_provider.dart';
import 'package:my_personal_website/screen/journey/journey_content.dart';
import 'package:my_personal_website/screen/journey/journey_header.dart';
import 'package:provider/provider.dart';

class JourneyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<JourneyProvider>(
      create: (_) => JourneyProvider(),
      child: Consumer<JourneyProvider>(
        builder: (context, provider, child) => SingleChildScrollView(
          child: Column(
            children: List.generate(provider.years.length, (index) {
              return Column(
                children: [
                  JourneyHeader(
                    isExpanded: provider.isExpanded &&
                        provider.getActiveYearTag == provider.years[index],
                    yearTag: provider.years[index],
                    onClick: () {
                      print(provider.years[index]);
                      provider.setActiveYearTag(provider.years[index]);
                      provider.toggleExpansion(provider.years[index], index);
                    },
                  ),
                  provider.isExpanded &&
                          provider.getActiveYearTag == provider.years[index]
                      ? JourneyContent(yearTag: provider.years[index])
                      : Container(),
                ],
              );
            }),
          ),
        ),
      ),
    );
  }
}
