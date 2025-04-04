import 'package:flutter/material.dart';

import '../statics/key_holders.dart';
import '../statics/data_values.dart';
import '../theme/app_theme.dart';
import '../widgets/text_pairs.dart';
import '../widgets/container_card.dart';
import '../widgets/frame_title.dart';

class MS2AboutMe extends StatelessWidget {
  const MS2AboutMe({Key? key}) : super(key: key);

  Widget bio(BuildContext context) {
    return SizedBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextPairs().type1(
            title: DataValues.aboutMeBiographyTitle,
            description: DataValues.aboutMeBiographyDescription,
          ),
          const SizedBox(height: 30.0),
          TextPairs().type1(
            title: DataValues.aboutMeFullNameTitle,
            description: DataValues.aboutMeFullNameDescription,
          ),
          const SizedBox(height: 30.0),
          TextPairs().type1(
            title: DataValues.aboutMeNwITitle,
            description: DataValues.aboutMeNwIDescription,
          ),
          const SizedBox(height: 30.0),
          TextPairs().type1(
            title: DataValues.aboutMeGenderTitle,
            description: DataValues.aboutMeGenderDescription,
          ),
          const SizedBox(height: 30.0),
          TextPairs().type1(
            title: DataValues.aboutMeDobTitle,
            description: DataValues.aboutMeDobDescription,
          ),
          const SizedBox(height: 30.0),
          TextPairs().type1(
            title: DataValues.aboutMeLanguageTitle,
            description: DataValues.aboutMeLanguageDescription,
          ),
          const SizedBox(height: 30.0),
          TextPairs().type1(
            title: DataValues.aboutMeNationalityTitle,
            description: DataValues.aboutMeNationalityDescription,
          ),
          const SizedBox(height: 30.0),
          TextPairs().type1(
            title: DataValues.aboutMeLocationTitle,
            description: DataValues.aboutMeLocationDescription,
          ),
          const SizedBox(height: 30.0),
          TextPairs().type1(
            title: DataValues.aboutMeHobbiesTitle,
            description: DataValues.aboutMeHobbiesDescription,
          ),
          const SizedBox(height: 30.0),
          TextPairs().type1(
            title: DataValues.aboutMeGoalTitle,
            description: DataValues.aboutMeGoalDescription,
          ),
        ],
      ),
    );
  }

  Widget titles(BuildContext context) {
    return SizedBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ContainerCard().type1(
            title: DataValues.aboutMeStudentTitle,
            description: DataValues.aboutMeStudentDescription,
            image: 'assets/icons/student.png',
            message: DataValues.linkedinURL.toString(),
            url: DataValues.linkedinURL,
          ),
          const SizedBox(height: 20.0),
          ContainerCard().type1(
            title: DataValues.aboutMeDeveloperTitle,
            description: DataValues.aboutMeDeveloperDescription,
            image: 'assets/icons/developer.png',
            message: DataValues.linkedinURL.toString(),
            url: DataValues.linkedinURL,
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      key: KeyHolders.aboutKey,
      color: AppThemeData.backgroundGrey,
      child: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const FrameTitle(
                title: DataValues.aboutMeTitle,
                description: DataValues.aboutMeDescription),
            const SizedBox(height: 40.0),
            bio(context),
            const SizedBox(height: 40.0),
            titles(context),
          ],
        ),
      ),
    );
  }
}
