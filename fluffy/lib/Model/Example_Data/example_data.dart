import '../../Model/Constants.dart';
import 'package:flutter/material.dart';
import '../../Widget/SocialProfile_Template/posts_template.dart';
import '../../Widget/SocialProfile_Template/user_profile_template.dart';
import '../../Widget/SocialProfile_Template/friends_template.dart';
import '../../Widget/SocialProfile_Template/subs_template.dart';
import '../../Model/Comment.dart';

class Example_data extends StatelessWidget {
  //////////////////////////////////////////////////////////////////////
  //FACEBOOK
  @override
  Widget build_friends_facebook() {
    return ListView(
      children: <Widget>[
        Friends_TMP(
                nameuser: Text("Test"),
                userimage: Text(
                    "https://interactive-examples.mdn.mozilla.net/media/cc0-images/grapefruit-slice-332-332.jpg"))
            .buildFriends_template(),
        Friends_TMP(
                nameuser: Text("Username"),
                userimage: Text(
                    "https://img-19.ccm2.net/ppaPB1I48R0LInb9Z8QBoUqXqSQ=/480x335/smart/b829396acc244fd484c5ddcdcb2b08f3/ccmcms-commentcamarche/20494859.jpg"))
            .buildFriends_template(),
      ],
    );
  }

  @override
  Widget build_subs_facebook() {
    return ListView(
      children: <Widget>[
        Subs_TMP(
                nameuser: Text("dragon-ball"),
                userimage: Text(
                    "https://www.journaldugeek.com/content/uploads/2021/01/dragon-ball-4995675-1280-640x492.jpg"))
            .buildFriends_template(),
        Subs_TMP(
                nameuser: Text("Sonic"),
                userimage: Text(
                    "https://lh3.googleusercontent.com/proxy/Cb33B8xud63wCzTpUagr_qZTIjs-KJ-83MW5_SysXaWWc5ORkJIAkk96RZVyzly-8ghbud5lPupzfC7zDDP2Ww_W-y8_7DbMVbklSA4XsEfKoSr2bzw"))
            .buildFriends_template(),
      ],
    );
  }

  @override
  Widget build_posts_facebook() {
    return ListView(
      children: <Widget>[
        Posts_TMP().build_posts_template(
            Text("username"),
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
            Text("87"),
            Text("10"),
            [
              Comment("bernard", "woaw",
                  "https://i.pinimg.com/originals/95/c4/65/95c4654db07456e6b9a3640253cd76a9.jpg"),
              Comment("Elon", "such beautiful view",
                  "https://www.presse-citron.net/app/uploads/2019/10/elonmusk-e1611101293534.jpg"),
              Comment("Gaby", "must be cold to be there...",
                  "https://www.nautiljon.com/images/perso/00/22/gaby_braun_19822.jpg"),
              Comment("Zavala", "Next Vacantion for me x)",
                  "https://media.altchar.com/prod/images/940_530/gm-6ddd714a-81e2-49e0-b2fa-1feac00c4095-zavala.JPG"),
            ]),
      ],
    );
  }

  //////////////////////////////////////////////////////////////////////
  //INSTAGRAM
  @override
  Widget build_friends_insta() {
    return ListView(
      children: <Widget>[
        Friends_TMP(
                nameuser: Text("Steenie Álvaro"),
                userimage: Text(
                    "https://images.unsplash.com/photo-1493612276216-ee3925520721?ixid=MXwxMjA3fDB8MHxzZWFyY2h8Mnx8cmFuZG9tfGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"))
            .buildFriends_template(),
        Friends_TMP(
                nameuser: Text("Earth"),
                userimage: Text(
                    "https://img.huffingtonpost.com/asset/5d724df83b0000683fd0abe1.png?cache=pokxgDhxmj&ops=scalefit_630_noupscale"))
            .buildFriends_template(),
      ],
    );
  }

  @override
  Widget build_subs_insta() {
    return ListView(
      children: <Widget>[
        Subs_TMP(
                nameuser: Text("dragon-ball"),
                userimage: Text(
                    "https://www.journaldugeek.com/content/uploads/2021/01/dragon-ball-4995675-1280-640x492.jpg"))
            .buildFriends_template(),
        Subs_TMP(
                nameuser: Text("Sonic"),
                userimage: Text(
                    "https://lh3.googleusercontent.com/proxy/Cb33B8xud63wCzTpUagr_qZTIjs-KJ-83MW5_SysXaWWc5ORkJIAkk96RZVyzly-8ghbud5lPupzfC7zDDP2Ww_W-y8_7DbMVbklSA4XsEfKoSr2bzw"))
            .buildFriends_template(),
      ],
    );
  }

  @override
  Widget build_posts_insta() {
    return ListView(
      children: <Widget>[
        Posts_TMP().build_posts_template(
            Text("username"),
            Text(
                "https://interactive-examples.mdn.mozilla.net/media/cc0-images/grapefruit-slice-332-332.jpg"),
            Text(
                "orem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look"),
            [
              Text(
                  "https://static.vecteezy.com/ti/vecteur-libre/p3/246312-mountain-lake-sunset-landscape-vue-a-la-premiere-personne-gratuit-vectoriel.jpg"),
              Text(
                  "https://images.unsplash.com/photo-1481349518771-20055b2a7b24?ixid=MXwxMjA3fDB8MHxzZWFyY2h8M3x8cmFuZG9tfGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"),
              Text(
                  "https://www.lense.fr/wp-content/uploads/2020/12/International-Landscape-Photographer-Year-PhotographER-1st-KelvinYuen-2.jpg"),
            ],
            Text("582"),
            Text("5"),
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
        Posts_TMP().build_posts_template(
            Text("FFEFsdg"),
            Text(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTdWmYyuXiL768aS-87gaP_QvbFL4AkegqRBw&usqp=CAU"),
            Text("ediufvbrdbrvredbvujrbfvdjbiyhuvuvuyhviv"),
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
      ],
    );
  }

  //////////////////////////////////////////////////////////////////////
  //TWITTER
  @override
  Widget build_friends_twitter() {
    return ListView(
      children: <Widget>[
        Friends_TMP(
                nameuser: Text("Test"),
                userimage: Text(
                    "https://interactive-examples.mdn.mozilla.net/media/cc0-images/grapefruit-slice-332-332.jpg"))
            .buildFriends_template(),
        Friends_TMP(
                nameuser: Text("Username"),
                userimage: Text(
                    "https://img-19.ccm2.net/ppaPB1I48R0LInb9Z8QBoUqXqSQ=/480x335/smart/b829396acc244fd484c5ddcdcb2b08f3/ccmcms-commentcamarche/20494859.jpg"))
            .buildFriends_template(),
        Friends_TMP(
                nameuser: Text("Sonic"),
                userimage: Text(
                    "https://lh3.googleusercontent.com/proxy/Cb33B8xud63wCzTpUagr_qZTIjs-KJ-83MW5_SysXaWWc5ORkJIAkk96RZVyzly-8ghbud5lPupzfC7zDDP2Ww_W-y8_7DbMVbklSA4XsEfKoSr2bzw"))
            .buildFriends_template(),
        Friends_TMP(
                nameuser: Text("Earth"),
                userimage: Text(
                    "https://img.huffingtonpost.com/asset/5d724df83b0000683fd0abe1.png?cache=pokxgDhxmj&ops=scalefit_630_noupscale"))
            .buildFriends_template(),
      ],
    );
  }

  @override
  Widget build_subs_twitter() {
    return ListView(
      children: <Widget>[
        Subs_TMP(
                nameuser: Text("Username"),
                userimage: Text(
                    "https://img-19.ccm2.net/ppaPB1I48R0LInb9Z8QBoUqXqSQ=/480x335/smart/b829396acc244fd484c5ddcdcb2b08f3/ccmcms-commentcamarche/20494859.jpg"))
            .buildFriends_template(),
        Subs_TMP(
                nameuser: Text("dragon-ball"),
                userimage: Text(
                    "https://www.journaldugeek.com/content/uploads/2021/01/dragon-ball-4995675-1280-640x492.jpg"))
            .buildFriends_template(),
        Subs_TMP(
                nameuser: Text("Sonic"),
                userimage: Text(
                    "https://lh3.googleusercontent.com/proxy/Cb33B8xud63wCzTpUagr_qZTIjs-KJ-83MW5_SysXaWWc5ORkJIAkk96RZVyzly-8ghbud5lPupzfC7zDDP2Ww_W-y8_7DbMVbklSA4XsEfKoSr2bzw"))
            .buildFriends_template(),
      ],
    );
  }

  @override
  Widget build_posts_twitter() {
    return ListView(
      children: <Widget>[
        Posts_TMP().build_posts_template(
            Text("y,yu,"),
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
        Posts_TMP().build_posts_template(
            Text("username"),
            Text(
                "https://interactive-examples.mdn.mozilla.net/media/cc0-images/grapefruit-slice-332-332.jpg"),
            Text(
                "fdbgh;iumoàmyhrhrergehrrgrggergergergergregregregregregrgrgregregn rtgregregreregergrere"),
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
    );
  }

  //////////////////////////////////////////////////////////////////////
  //INSTAGRAM
  @override
  Widget build_friends_linkedin() {
    return ListView(
      children: <Widget>[
        Friends_TMP(
                nameuser: Text("Itziar Demostrate"),
                userimage: Text(
                    "https://interactive-examples.mdn.mozilla.net/media/cc0-images/grapefruit-slice-332-332.jpg"))
            .buildFriends_template(),
        Friends_TMP(
                nameuser: Text("Trace Karola"),
                userimage: Text(
                    "https://img-19.ccm2.net/ppaPB1I48R0LInb9Z8QBoUqXqSQ=/480x335/smart/b829396acc244fd484c5ddcdcb2b08f3/ccmcms-commentcamarche/20494859.jpg"))
            .buildFriends_template(),
        Friends_TMP(
                nameuser: Text("Sonic"),
                userimage: Text(
                    "https://lh3.googleusercontent.com/proxy/Cb33B8xud63wCzTpUagr_qZTIjs-KJ-83MW5_SysXaWWc5ORkJIAkk96RZVyzly-8ghbud5lPupzfC7zDDP2Ww_W-y8_7DbMVbklSA4XsEfKoSr2bzw"))
            .buildFriends_template(),
        Friends_TMP(
                nameuser: Text("Kishor Dobromil"),
                userimage: Text(
                    "https://images.unsplash.com/photo-1499244571948-7ccddb3583f1?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MjF8fHJhbmRvbXxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"))
            .buildFriends_template(),
      ],
    );
  }

  @override
  Widget build_subs_linkedin() {
    return ListView(
      children: <Widget>[
        Subs_TMP(
                nameuser: Text("regergre"),
                userimage: Text(
                    "https://img-19.ccm2.net/ppaPB1I48R0LInb9Z8QBoUqXqSQ=/480x335/smart/b829396acc244fd484c5ddcdcb2b08f3/ccmcms-commentcamarche/20494859.jpg"))
            .buildFriends_template(),
        Subs_TMP(
                nameuser: Text("zzzz-ball"),
                userimage: Text(
                    "https://images.unsplash.com/photo-1484100356142-db6ab6244067?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTB8fHJhbmRvbXxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"))
            .buildFriends_template(),
        Subs_TMP(
                nameuser: Text("lemon"),
                userimage: Text(
                    "https://images.unsplash.com/photo-1494253109108-2e30c049369b?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTN8fHJhbmRvbXxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"))
            .buildFriends_template(),
      ],
    );
  }

  @override
  Widget build_posts_linkedin() {
    return ListView(
      children: <Widget>[
        Posts_TMP().build_posts_template(
            Text("y,yu,"),
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
        Posts_TMP().build_posts_template(
            Text("username"),
            Text(
                "https://interactive-examples.mdn.mozilla.net/media/cc0-images/grapefruit-slice-332-332.jpg"),
            Text(
                "fdbgh;iumoàmyhrhrergehrrgrggergergergergregregregregregrgrgregregn rtgregregreregergrere"),
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
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[],
    );
  }
}
