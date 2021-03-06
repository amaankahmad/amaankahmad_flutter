import 'package:flutter/material.dart';
import 'package:flutter_profile/constants.dart';
import 'package:flutter_profile/screens/main/custom_widgets/custom_list_tile.dart';

class Awards extends StatelessWidget {
  const Awards({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: (screenWidth > 450)
          ? const EdgeInsets.only(
              left: defaultPadding * 4,
              right: defaultPadding * 4,
              top: defaultPadding * 2)
          : const EdgeInsets.only(
              left: defaultPaddingSmall * 4,
              right: defaultPaddingSmall * 4,
              top: defaultPaddingSmall * 2),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              "Honours and Awards:",
              style: (screenWidth > 560)
                  ? TextStyle(color: Colors.greenAccent, fontSize: 48)
                  : TextStyle(color: Colors.greenAccent, fontSize: 36),
            ),
          ),
          SizedBox(
            height: (screenWidth > 450)
                ? defaultPadding * 2
                : defaultPaddingSmall * 2,
          ),
          CustomListTile(
            thumbnail: Image.asset("assets/images/raeng/logo.jpeg"),
            title: 'RAEng Engineering Leader\'s Scholarship',
            subtitle:
                " • Awarded by the Royal Academy of Engineering.\n • Celebrates the UK's most outstanding Engineering undergraduates.\n • Selected as an Engineering Leaders Scholar to inspire the next generation of Engineers and undertake an accelerated personal development programme.\n • Awarded £5,000 and mentorship to act on personal development plans over a 5 year period.",
            dates: "Jun. 2021",
          ),
          CustomListTile(
            thumbnail: Image.asset("assets/images/iet/logo.jpeg"),
            title: 'IET Horizons Award',
            subtitle:
                " • Awarded by the Institute of Engineering and Technology.\n • Celebrates young and passionate Engineers early on in their career.\n • Awarded £3,000 to act on personal development.\n • Supported by the Chemring Group Plc.",

            // " • Awarded by the Royal Academy of Engineering.\n • Celebrates young and passionate Engineers early on in their career.\n • Awarded £3,000 to act on personal development.\n • Supported by the Chemring Group Plc.",
            dates: "Dec. 2020",
          ),
          CustomListTile(
            thumbnail: Image.asset("assets/images/southwark/logo.png"),
            title: 'Southwark Scholarship',
            subtitle:
                " • Awarded by Southwark Council • Recipient of a full-tuition scholarship for my Engineering degree at Imperial College London\n • Awarded this competitive scholarship for my academic performance as well as my contribution to enhancing the Southwark Community.",
            dates: "Aug. 2019",
          ),
          CustomListTile(
            thumbnail:
                Image.asset("assets/images/stpauls/SPS_logo_transparent.png"),
            title: 'St. Paul\'s School Bursary',
            subtitle:
                " • Recipient of a competitive full-tuition scholarship for my studies at St Paul’s School for Sixth Form education.",
            dates: "Aug. 2017",
          ),
        ],
      ),
    );
  }
}
