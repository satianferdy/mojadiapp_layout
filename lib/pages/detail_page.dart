import 'package:flutter/material.dart';
import 'package:mojadiapp_layout/components/deskripsi.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailPages extends StatelessWidget {
  const DetailPages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              height: 350,
              width: 335,
              child: Stack(
                children: [
                  // Gambar
                  Positioned.fill(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: const DecorationImage(
                          image: AssetImage('assets/detail image.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  // Container putih
                  Positioned(
                    top: 10,
                    left: 10,
                    child: Container(
                      height: 30,
                      width: 30,
                      padding: const EdgeInsets.only(left: 5),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      // Ikon arrow back
                      child: const Center(
                        child: Icon(
                          Icons.arrow_back_ios,
                          size: 17,
                        ),
                      ),
                    ),
                  ),
                  // Container love
                  Positioned(
                    bottom: 10,
                    right: 13,
                    child: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: const Icon(
                        Icons.favorite,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const ContentDetail(),
            Container(
              height: 135,
              width: 335,
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Facilities',
                    style: GoogleFonts.montserrat(
                      textStyle: const TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      FacilityItem(icon: Icons.wifi, label: 'Wifi'),
                      FacilityItem(icon: Icons.dining, label: 'Dining'),
                      FacilityItem(icon: Icons.bathtub, label: '1 Bath'),
                      FacilityItem(icon: Icons.pool, label: 'Pool'),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              width: 335,
              height: 70,
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Price',
                        style: GoogleFonts.nunito(
                          textStyle: const TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                      // const SizedBox(height: 5),
                      Text(
                        '\$119',
                        style: GoogleFonts.montserrat(
                          textStyle: const TextStyle(
                              color: Colors.green,
                              fontSize: 20,
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    height: 60,
                    width: 190,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Book Now',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Icon(
                            Icons.arrow_forward_rounded,
                            color: Colors.white,
                            size: 17,
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class FacilityItem extends StatelessWidget {
  final IconData icon;
  final String label;

  const FacilityItem({
    super.key,
    required this.icon,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: 70,
      decoration: BoxDecoration(
        color: const Color.fromARGB(23, 111, 242, 100),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: Colors.grey,
          ),
          Text(
            label,
            style: const TextStyle(color: Colors.grey),
          ),
        ],
      ),
    );
  }
}
