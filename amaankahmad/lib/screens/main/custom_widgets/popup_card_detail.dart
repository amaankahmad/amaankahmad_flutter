import 'package:flutter/material.dart';
import 'package:flutter_profile/constants.dart';
import 'package:flutter_profile/responsive.dart';

class CardDetail extends StatelessWidget {
  final String tag;
  final String imagePath;
  final String experienceTitle;
  final String experienceSubtitle;
  final String experienceRole;
  final String experienceDates;
  final List description;
  const CardDetail(
      {Key? key,
      required this.tag,
      required this.imagePath,
      required this.experienceTitle,
      required this.experienceSubtitle,
      required this.experienceRole,
      required this.experienceDates,
      required this.description})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pop();
      },
      child: Container(
        color: Colors.transparent,
        child: Center(
          child: Hero(
            tag: tag,
            child: Container(
              width: (screenWidth > 560)
                  ? ((Responsive.isDesktop(context))
                      ? screenWidth * 0.35
                      : screenWidth * 0.5)
                  : screenWidth * 0.9,
              height: screenHeight * 0.75,
              decoration: BoxDecoration(
                  color: Color(0xFF1A1E36),
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            top: defaultPadding, bottom: defaultPadding / 2),
                        child: Image.asset(
                          imagePath,
                          width: screenWidth * 0.3,
                        ),
                      ),
                    ),
                    Divider(),
                    SizedBox(
                      height: screenWidth * 0.0025,
                    ),
                    Text(
                      experienceTitle,
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.headline6!.copyWith(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                    ),
                    if (experienceSubtitle != "-1")
                      Text(
                        experienceSubtitle,
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.headline6!.copyWith(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                      ),
                    Text(
                      experienceRole,
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.headline6!.copyWith(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                    ),
                    Text(
                      experienceDates,
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.headline6!.copyWith(
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                            color: Colors.white,
                          ),
                    ),
                    SizedBox(
                      height: screenWidth * 0.005,
                    ),
                    Divider(
                      thickness: 1,
                    ),
                    SizedBox(
                      height: screenWidth * 0.005,
                    ),
                    for (int i = 0; i < description.length; i++)
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: defaultPadding * 2, vertical: 4),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            " • " + description[i],
                            style:
                                Theme.of(context).textTheme.headline6!.copyWith(
                                      fontSize: 14,
                                      fontWeight: FontWeight.normal,
                                      color: Colors.white,
                                    ),
                          ),
                        ),
                      ),
                    SizedBox(
                      height: screenHeight * 0.025,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
