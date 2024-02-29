import 'package:flutter/material.dart';


import 'package:google_fonts/google_fonts.dart';


class ContentDetail extends StatefulWidget {

  const ContentDetail({

    Key? key,

  }) : super(key: key);


  @override

  _ContentDetailState createState() => _ContentDetailState();

}


class _ContentDetailState extends State<ContentDetail> {

  bool isExpanded = false;


  @override

  Widget build(BuildContext context) {

    return Container(

      height: 190,

      width: 335,

      padding: const EdgeInsets.all(10),

      child: Column(

        // crossAxisAlignment: CrossAxisAlignment.start,


        children: [

          Row(

            mainAxisAlignment: MainAxisAlignment.spaceBetween,

            children: [

              Text(

                'Coeurdes Alpes',

                style: GoogleFonts.montserrat(

                  textStyle: const TextStyle(

                      color: Colors.black,

                      fontSize: 24,

                      fontWeight: FontWeight.w600),

                ),

              ),

              Text(

                'Show Map',

                style: GoogleFonts.nunito(

                  textStyle: const TextStyle(

                      color: Colors.blue,

                      fontSize: 14,

                      fontWeight: FontWeight.w700),

                ),

              ),

            ],

          ),

          Row(

            children: [

              const Icon(Icons.star, color: Colors.yellow),

              Text(

                '4.9 (124 Reviews)',

                style: GoogleFonts.nunito(

                  textStyle: const TextStyle(

                      color: Colors.grey,

                      fontSize: 12,

                      fontWeight: FontWeight.w400),

                ),

              ),

            ],

          ),

          AnimatedCrossFade(

            duration: const Duration(milliseconds: 100),

            firstChild: Text(

              'Aspen is as close as one can get to a storybook blasjjdo alpine town in America. The choose-your-own-adventure possibilities—skiing, hiking, dining shopping and fafifi',

              maxLines: 2,

              overflow: TextOverflow.ellipsis,

              style: GoogleFonts.nunito(

                textStyle: const TextStyle(

                    color: Colors.black,

                    fontSize: 14,

                    fontWeight: FontWeight.w500),

              ),

            ),

            secondChild: Text(

              'Aspen is as close as one can get to a storybook blasjjdo alpine town in America. The choose-your-own-adventure possibilities—skiing, hiking, dining shopping and fafifi',

              style: GoogleFonts.nunito(

                textStyle: const TextStyle(

                    color: Colors.black,

                    fontSize: 14,

                    fontWeight: FontWeight.w500),

              ),

            ),

            crossFadeState: isExpanded

                ? CrossFadeState.showSecond

                : CrossFadeState.showFirst,

          ),

          const SizedBox(

            height: 5,

          ),

          GestureDetector(

            onTap: () {

              setState(() {

                isExpanded = !isExpanded;

              });

            },

            child: Row(

              children: [

                Text(

                  isExpanded ? 'Read Less' : 'Read More',

                  style: GoogleFonts.nunito(

                    textStyle: const TextStyle(

                        color: Colors.blue,

                        fontSize: 14,

                        fontWeight: FontWeight.w700),

                  ),

                ),

                Icon(

                  isExpanded ? Icons.arrow_drop_up : Icons.arrow_drop_down,

                  size: 15,

                  color: Colors.blue,

                ),

              ],

            ),

          ),

        ],

      ),

    );

  }

}

