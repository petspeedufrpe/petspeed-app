import 'package:flutter/material.dart';

class PetCard extends StatelessWidget {
  final String title;
  final String description;

  PetCard({
    this.title,
    this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      height: 250,
      width: 190,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: 120,
            height: 120,
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://lh3.googleusercontent.com/proxy/tbeMmFR1zE3f0gdrLPEoB6NZ_795Y2D7jbPuigMWIfk0KgdWeiTEKVw4OYd5WtfZyF_pn8d5m5nvXehDRLB8iENEK9Yxqsxsq4hZ72mfIbJWelmQ3-xAwihLkVUpey2ZpbS_UAd95TV8iv0"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16.0),
            child: Column(
              children: <Widget>[
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 26,
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  description,
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
          Icon(
            Icons.arrow_drop_down,
            color: Colors.white,
          )
        ],
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Color.fromRGBO(0, 184, 148, 1),
      ),
    );
  }
}
