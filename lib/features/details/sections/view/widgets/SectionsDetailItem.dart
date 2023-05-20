import 'package:flutter/material.dart';
import 'package:maharat/core/extensions/widget_extensions.dart';
import 'package:maharat/core/utils/sizespec_utils.dart';
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
        padding: const EdgeInsets.all(5),
        margin: const EdgeInsets.all(2),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              offset: const Offset(0.5, .5),
              blurRadius: 3,
              color: Colors.grey[300]!,
              blurStyle: BlurStyle.outer,
            )
          ],
        ),
        child: Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.white,
            image: DecorationImage(
              image: NetworkImage(data.avatar!),
              fit: BoxFit.fill,
            ),
          ),
          child: Align(
            alignment: Alignment.bottomCenter,
            child: ClipPath(
              clipper: OvalBottomBorderClipper(),
              child: Container(
                height: 50,
                width: SizeSpec.of(context).width,
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
                alignment: Alignment.center,
                child: Text(
                  data.name!,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 14.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
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
    path.quadraticBezierTo(
        size.width / 4, size.height, size.width / 2, size.height);
    path.quadraticBezierTo(
        size.width - size.width / 4, size.height, size.width, size.height - 40);
    path.lineTo(size.width, 0);
    path.lineTo(0, 0);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}
