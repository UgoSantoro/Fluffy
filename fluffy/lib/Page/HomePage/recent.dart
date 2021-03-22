import 'package:fluffy/Page/PostPage/Detail_page.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

import '../../Model/Constants.dart';
import '../../Model/Comment.dart';

class RecentPage extends StatefulWidget {
  RecentPage({Key key}) : super(key: key);
  @override
  _RecentPageState createState() => _RecentPageState();
}

class _RecentPageState extends State<RecentPage> {
  // Post Owner Profile Picture
  Widget build_posts_profile_image(Text imagelink) {
    return Container(
      width: 30,
      height: 30,
      child: CircleAvatar(
        radius: 100,
        backgroundColor: Constants().border_image,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 25,
              height: 25,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(150),
                child: Image.network(
                  imagelink.data,
                  fit: BoxFit.cover,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  // LIKES, COMMENTS & SHARE
  Widget build_postsdetails(Text itemtext, Icon icon) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.all(5.0),
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.grey,
            width: 1,
          ),
        ),
        child: Row(
          children: [
            Container(
              //User Name
              padding: EdgeInsets.only(left: 5.0),
              child: Row(
                children: <Widget>[
                  icon,
                ],
              ),
            ),
            Container(
              //User Name
              padding: EdgeInsets.only(left: 5.0),
              child: Text(itemtext.data),
            ),
          ],
        ),
      ),
    );
  }

  // INFORMATION OF POST
  Widget build_posts_info(Text nameuser, Text userimage, Text postdesc,
      List<Text> postimages, Text likes, Text comments, Text shares) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              build_posts_profile_image(
                  //User Profile Image
                  Text(userimage.data)),
              Container(
                //User Name
                padding: EdgeInsets.only(left: 5.0),
                child: Text(nameuser.data),
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.only(top: 5.0),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(postdesc.data),
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 5.0),
            child: Align(
                alignment: Alignment.topLeft,
                child: CarouselSlider(
                  options: CarouselOptions(
                    viewportFraction: 1,
                  ),
                  items: postimages
                      .map((item) => Container(
                            child: Center(
                                child:
                                    Image.network(item.data, fit: BoxFit.fill)),
                          ))
                      .toList(),
                )),
          ),
          Container(
            padding: EdgeInsets.only(top: 10.0),
            child: Row(
              children: [
                build_postsdetails(
                  likes,
                  Icon(Icons.favorite,
                      size: 25, color: Constants().icon_photo_profile),
                ),
                build_postsdetails(
                  shares,
                  Icon(Icons.comment,
                      size: 25, color: Constants().icon_photo_profile),
                ),
                build_postsdetails(
                  comments,
                  Icon(Icons.share,
                      size: 25, color: Constants().icon_photo_profile),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // POSTS TEMPLATE
  Widget build_posts(
      Text nameuser,
      Text userimage,
      Text postdesc,
      List<Text> postimages,
      Text likes,
      Text comments,
      Text shares,
      List<Comment> all_comments) {
    return InkWell(
      child: Container(
        padding: EdgeInsets.only(left: 7.0, top: 14.0, right: 7.0),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Constants().posts_color,
          ),
          child: Stack(
            children: <Widget>[
              build_posts_info(nameuser, userimage, postdesc, postimages, likes,
                  comments, shares),
            ],
          ),
        ),
      ),
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => DetailPage(
                      nameuser: nameuser,
                      userimage: userimage,
                      description: postdesc,
                      likes_count: likes,
                      comments_count: comments,
                      share_count: shares,
                      postimage: postimages,
                      comments: all_comments,
                    )));
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: ListView(
            children: <Widget>[
              ///////////////////////////////////////////////////////////
              // EXAMPLE OF POSTS
              build_posts(
                  Text("Billy Mitchel"),
                  Text(
                      "https://interactive-examples.mdn.mozilla.net/media/cc0-images/grapefruit-slice-332-332.jpg"),
                  Text(
                      "dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It"),
                  [
                    Text(
                        "https://static.vecteezy.com/ti/vecteur-libre/p3/246312-mountain-lake-sunset-landscape-vue-a-la-premiere-personne-gratuit-vectoriel.jpg"),
                    Text(
                        "https://images.unsplash.com/photo-1481349518771-20055b2a7b24?ixid=MXwxMjA3fDB8MHxzZWFyY2h8M3x8cmFuZG9tfGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"),
                    Text(
                        "https://www.lense.fr/wp-content/uploads/2020/12/International-Landscape-Photographer-Year-PhotographER-1st-KelvinYuen-2.jpg"),
                  ],
                  Text("215"),
                  Text("4"),
                  Text("10"),
                  [
                    Comment("bernard", "woaw",
                        "https://i.pinimg.com/originals/95/c4/65/95c4654db07456e6b9a3640253cd76a9.jpg"),
                    Comment("Elon", "crazy!!!",
                        "https://www.presse-citron.net/app/uploads/2019/10/elonmusk-e1611101293534.jpg"),
                    Comment("Gaby", "must be cold to be there...",
                        "https://www.nautiljon.com/images/perso/00/22/gaby_braun_19822.jpg"),
                    Comment("Zavala", "Next Vacantion for me x)",
                        "https://media.altchar.com/prod/images/940_530/gm-6ddd714a-81e2-49e0-b2fa-1feac00c4095-zavala.JPG"),
                  ]),
              build_posts(
                  Text("username"),
                  Text(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTdWmYyuXiL768aS-87gaP_QvbFL4AkegqRBw&usqp=CAU"),
                  Text("fdfhbthnjtrnytn,yhnfgndfn"),
                  [
                    Text(
                        "https://static.vecteezy.com/ti/vecteur-libre/p3/246312-mountain-lake-sunset-landscape-vue-a-la-premiere-personne-gratuit-vectoriel.jpg"),
                    Text(
                        "https://images.unsplash.com/photo-1481349518771-20055b2a7b24?ixid=MXwxMjA3fDB8MHxzZWFyY2h8M3x8cmFuZG9tfGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"),
                    Text(
                        "https://www.lense.fr/wp-content/uploads/2020/12/International-Landscape-Photographer-Year-PhotographER-1st-KelvinYuen-2.jpg"),
                  ],
                  Text("3522"),
                  Text("857"),
                  Text("1520"),
                  [
                    Comment("bernard", "woaw",
                        "https://i.pinimg.com/originals/95/c4/65/95c4654db07456e6b9a3640253cd76a9.jpg"),
                    Comment("Elon", "crazy!!!",
                        "https://www.presse-citron.net/app/uploads/2019/10/elonmusk-e1611101293534.jpg"),
                    Comment("Gaby", "must be cold to be there...",
                        "https://www.nautiljon.com/images/perso/00/22/gaby_braun_19822.jpg"),
                    Comment("Zavala", "Next Vacantion for me x)",
                        "https://media.altchar.com/prod/images/940_530/gm-6ddd714a-81e2-49e0-b2fa-1feac00c4095-zavala.JPG"),
                  ]),
              build_posts(
                  Text("username"),
                  Text(
                      "https://interactive-examples.mdn.mozilla.net/media/cc0-images/grapefruit-slice-332-332.jpg"),
                  Text("fdfhbthnjtrnytn,yhnfgndfn"),
                  [
                    Text(
                        "https://static.vecteezy.com/ti/vecteur-libre/p3/246312-mountain-lake-sunset-landscape-vue-a-la-premiere-personne-gratuit-vectoriel.jpg"),
                    Text(
                        "https://images.unsplash.com/photo-1481349518771-20055b2a7b24?ixid=MXwxMjA3fDB8MHxzZWFyY2h8M3x8cmFuZG9tfGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"),
                    Text(
                        "https://www.lense.fr/wp-content/uploads/2020/12/International-Landscape-Photographer-Year-PhotographER-1st-KelvinYuen-2.jpg"),
                  ],
                  Text("25"),
                  Text("9"),
                  Text("10"),
                  [
                    Comment("bernard", "woaw",
                        "https://i.pinimg.com/originals/95/c4/65/95c4654db07456e6b9a3640253cd76a9.jpg"),
                    Comment("Elon", "crazy!!!",
                        "https://www.presse-citron.net/app/uploads/2019/10/elonmusk-e1611101293534.jpg"),
                    Comment("Gaby", "must be cold to be there...",
                        "https://www.nautiljon.com/images/perso/00/22/gaby_braun_19822.jpg"),
                    Comment("Zavala", "Next Vacantion for me x)",
                        "https://media.altchar.com/prod/images/940_530/gm-6ddd714a-81e2-49e0-b2fa-1feac00c4095-zavala.JPG"),
                  ]),
              build_posts(
                  Text("username"),
                  Text(
                      "https://interactive-examples.mdn.mozilla.net/media/cc0-images/grapefruit-slice-332-332.jpg"),
                  Text("fdfhbthnjtrnytn,yhnfgndfn"),
                  [
                    Text(
                        "https://static.vecteezy.com/ti/vecteur-libre/p3/246312-mountain-lake-sunset-landscape-vue-a-la-premiere-personne-gratuit-vectoriel.jpg"),
                    Text(
                        "https://images.unsplash.com/photo-1481349518771-20055b2a7b24?ixid=MXwxMjA3fDB8MHxzZWFyY2h8M3x8cmFuZG9tfGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"),
                    Text(
                        "https://www.lense.fr/wp-content/uploads/2020/12/International-Landscape-Photographer-Year-PhotographER-1st-KelvinYuen-2.jpg"),
                  ],
                  Text("215"),
                  Text("87"),
                  Text("10"),
                  [
                    Comment("bernard", "woaw",
                        "https://i.pinimg.com/originals/95/c4/65/95c4654db07456e6b9a3640253cd76a9.jpg"),
                    Comment("Elon", "crazy!!!",
                        "https://www.presse-citron.net/app/uploads/2019/10/elonmusk-e1611101293534.jpg"),
                    Comment("Gaby", "must be cold to be there...",
                        "https://www.nautiljon.com/images/perso/00/22/gaby_braun_19822.jpg"),
                    Comment("Zavala", "Next Vacantion for me x)",
                        "https://media.altchar.com/prod/images/940_530/gm-6ddd714a-81e2-49e0-b2fa-1feac00c4095-zavala.JPG"),
                  ]),
              build_posts(
                  Text("username"),
                  Text(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTdWmYyuXiL768aS-87gaP_QvbFL4AkegqRBw&usqp=CAU"),
                  Text("fdfhbthnjtrnytn,yhnfgndfn"),
                  [
                    Text(
                        "https://static.vecteezy.com/ti/vecteur-libre/p3/246312-mountain-lake-sunset-landscape-vue-a-la-premiere-personne-gratuit-vectoriel.jpg"),
                    Text(
                        "https://images.unsplash.com/photo-1481349518771-20055b2a7b24?ixid=MXwxMjA3fDB8MHxzZWFyY2h8M3x8cmFuZG9tfGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"),
                    Text(
                        "https://www.lense.fr/wp-content/uploads/2020/12/International-Landscape-Photographer-Year-PhotographER-1st-KelvinYuen-2.jpg"),
                  ],
                  Text("3522"),
                  Text("857"),
                  Text("1520"),
                  [
                    Comment("bernard", "woaw",
                        "https://i.pinimg.com/originals/95/c4/65/95c4654db07456e6b9a3640253cd76a9.jpg"),
                    Comment("Elon", "crazy!!!",
                        "https://www.presse-citron.net/app/uploads/2019/10/elonmusk-e1611101293534.jpg"),
                    Comment("Gaby", "must be cold to be there...",
                        "https://www.nautiljon.com/images/perso/00/22/gaby_braun_19822.jpg"),
                    Comment("Zavala", "Next Vacantion for me x)",
                        "https://media.altchar.com/prod/images/940_530/gm-6ddd714a-81e2-49e0-b2fa-1feac00c4095-zavala.JPG"),
                  ]),
              build_posts(
                  Text("username"),
                  Text(
                      "https://interactive-examples.mdn.mozilla.net/media/cc0-images/grapefruit-slice-332-332.jpg"),
                  Text("fdfhbthnjtrnytn,yhnfgndfn"),
                  [
                    Text(
                        "https://static.vecteezy.com/ti/vecteur-libre/p3/246312-mountain-lake-sunset-landscape-vue-a-la-premiere-personne-gratuit-vectoriel.jpg"),
                    Text(
                        "https://images.unsplash.com/photo-1481349518771-20055b2a7b24?ixid=MXwxMjA3fDB8MHxzZWFyY2h8M3x8cmFuZG9tfGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"),
                    Text(
                        "https://www.lense.fr/wp-content/uploads/2020/12/International-Landscape-Photographer-Year-PhotographER-1st-KelvinYuen-2.jpg"),
                  ],
                  Text("25"),
                  Text("9"),
                  Text("10"),
                  [
                    Comment("bernard", "woaw",
                        "https://i.pinimg.com/originals/95/c4/65/95c4654db07456e6b9a3640253cd76a9.jpg"),
                    Comment("Elon", "crazy!!!",
                        "https://www.presse-citron.net/app/uploads/2019/10/elonmusk-e1611101293534.jpg"),
                    Comment("Gaby", "must be cold to be there...",
                        "https://www.nautiljon.com/images/perso/00/22/gaby_braun_19822.jpg"),
                    Comment("Zavala", "Next Vacantion for me x)",
                        "https://media.altchar.com/prod/images/940_530/gm-6ddd714a-81e2-49e0-b2fa-1feac00c4095-zavala.JPG"),
                  ]),
            ],
          ),
        ),
      ),
    );
  }
}
