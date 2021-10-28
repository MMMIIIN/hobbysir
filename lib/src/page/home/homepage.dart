import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            customAppBar(context),
            // imageSlide(),
            Container(
              padding: EdgeInsets.all(15),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.25,
              child: GridView.builder(
                shrinkWrap: true,
                itemCount: 8,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10),
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      // Get.to(() => HobbyListPage(hobbyIndex: index));
                    },
                    child: Container(
                      padding: EdgeInsets.all(10),
                      width: 30,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.indigoAccent.withOpacity(0.8),
                        shape: BoxShape.circle,
                      ),
                    ),
                  );
                },
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.all(20),
                  child: Text('내 주변 인기 취미'),
                ),
              ],
            ),
            Container(
              height: context.mediaQuery.size.height * 0.3,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 20),
                      width: context.mediaQuery.size.width * 0.45,
                      height: context.mediaQuery.size.height * 0.3,
                      decoration: BoxDecoration(
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 20),
                      width: context.mediaQuery.size.width * 0.45,
                      height: context.mediaQuery.size.height * 0.3,
                      decoration: BoxDecoration(
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 20),
                      width: context.mediaQuery.size.width * 0.45,
                      height: context.mediaQuery.size.height * 0.3,
                      decoration: BoxDecoration(
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget customAppBar(BuildContext context){
    return Container(
      height: MediaQuery.of(context).size.height * 0.07,
      color: Colors.transparent,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: 70,
          ),
          Text(
            '하비서',
            style: TextStyle(fontSize: 18),
          ),
          SizedBox(
              width: 70,
              child: IconButton(
                  splashRadius: 20,
                  icon: Icon(Icons.search),
                  onPressed: () {}))
        ],
      ),
    );
  }
}
