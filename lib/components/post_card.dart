import 'package:flutter/material.dart';

class PostCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 35.0),
      child: Card(
        elevation: 5,
        child: Row(
          children: [
            Container(
              height: 150,
              width: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(5),
                    topLeft: Radius.circular(5)),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      'https://scontent.fbfh10-1.fna.fbcdn.net/v/t1.0-9/121536594_4555870304484564_1709208063235095152_n.png?_nc_cat=1&ccb=2&_nc_sid=09cbfe&_nc_ohc=0xOyOfy2I9wAX-g5ZpR&_nc_ht=scontent.fbfh10-1.fna&oh=0b3833e805be7368842c7aa5d7d11940&oe=5FC3EB33'),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              height: 150,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'O Boticário: 25/12/2020',
                    overflow: TextOverflow.ellipsis,
                    maxLines: 3,
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: 240,
                    child: Text(
                        'Além disso, nossos funcionários e familiares receberão kits de proteção. Afinal, o cuidado começa aqui dentro, né?',
                        maxLines: 5,
                        overflow: TextOverflow.ellipsis),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
