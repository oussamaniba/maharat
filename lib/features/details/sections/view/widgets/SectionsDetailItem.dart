import 'package:flutter/material.dart';
import 'package:maharat/core/extensions/widget_extensions.dart';
import 'package:maharat/features/_commons/data/remote/response/SectionsDataResponse.dart';

class SectionsDetailItem extends StatelessWidget {
  final SectionsDataResponse data;
  final Function(SectionsDataResponse data) onTap;

  const SectionsDetailItem({
    super.key,
    required this.data,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      shape: const CircleBorder(),
      child: Container(
        width: 150,
        height: 170,
        decoration: const BoxDecoration(
          color: Colors.transparent,
        ),
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
                image: DecorationImage(
                  image: NetworkImage(data.avatar!),
                  fit: BoxFit.fitWidth,
                ),
                boxShadow: [
                  BoxShadow(
                    offset: const Offset(0.5, .5),
                    blurRadius: 3,
                    color: Colors.grey[300]!,
                    blurStyle: BlurStyle.outer,
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 0,
              child: LayoutBuilder(
                builder: (BuildContext context, BoxConstraints constraints) {
                  return ClipPath(
                    // clipper: SideCutClipper(),
                    child: Container(
                      height: 30,
                      width: 150,
                      decoration: BoxDecoration(
                        color: const Color(0xE0FD4FD1),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Center(
                        child: Text(
                          data.name!,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 14.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ).clickable(
        onTap: () => onTap(data),
        radius: BorderRadius.circular(140),
        splashColor: Colors.grey[50]?.withOpacity(.3),
        hoverColor: Colors.grey[50]?.withOpacity(.3),
      ),
    );
  }
}

class OvalBottomBorderClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, 0);
    path.lineTo(0, size.height - 40);
    path.quadraticBezierTo(size.width / 4, size.height, size.width / 2, size.height);
    path.quadraticBezierTo(size.width - size.width / 4, size.height, size.width, size.height - 40);
    path.lineTo(size.width, 0);
    path.lineTo(0, 0);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}
