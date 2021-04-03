import 'package:flutter/material.dart';
import 'package:my_personal_website/providers/journey_provider.dart';
import 'package:my_personal_website/screen/journey/journey_content.dart';
import 'package:my_personal_website/screen/journey/journey_header.dart';
import 'package:my_personal_website/shared/appbar/custom_app_bar.dart';
import 'package:provider/provider.dart';

class JourneyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<JourneyProvider>(
      create: (_) => JourneyProvider(),
      child: Scaffold(
        appBar: CustomAppBar(
          preferredSize: Size(double.infinity, 100.0),
        ),
        body: Consumer<JourneyProvider>(
          builder: (context, provider, child) => SingleChildScrollView(
            child: Column(
              children: [
                //! YEAR 2022
                JourneyHeader(
                  isExpanded: true,
                  yearTag: 2022,
                  onClick: () {
                    provider.setActiveYearTag(2022);
                    provider.toggleExpansion();
                  },
                ),
                provider.isExpanded && provider.getActiveYearTag == 2022
                    ? JourneyContent(yearTag: 2022)
                    : Container(),

                //! YEAR 2021
                JourneyHeader(
                  isExpanded: true,
                  yearTag: 2021,
                  onClick: () {
                    provider.setActiveYearTag(2021);
                    provider.toggleExpansion();
                  },
                ),
                provider.isExpanded && provider.getActiveYearTag == 2021
                    ? JourneyContent(yearTag: 2021)
                    : Container(),

                //! YEAR 2020
                JourneyHeader(
                  isExpanded: true,
                  yearTag: 2020,
                  onClick: () {
                    provider.setActiveYearTag(2020);
                    provider.toggleExpansion();
                  },
                ),
                provider.isExpanded && provider.getActiveYearTag == 2020
                    ? JourneyContent(yearTag: 2020)
                    : Container(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
