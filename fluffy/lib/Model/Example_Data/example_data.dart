import 'package:flutter/material.dart';
import '../../Widget/SocialProfile_Template/posts_template.dart';
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
                nameuser: Text("Billy Mitchel"),
                userimage: Text(
                    "https://image.jeuxvideo.com/medias-md/159258/1592580329-9447-card.png"))
            .buildFriends_template(),
        Friends_TMP(
                nameuser: Text("CampanBernard"),
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
                nameuser: Text("Eric Lioacono"),
                userimage: Text(
                    "https://media-exp1.licdn.com/dms/image/C4E03AQGPo1rqDYUPlQ/profile-displayphoto-shrink_200_200/0/1552574596149?e=1617235200&v=beta&t=TpwjiFCzyYPwNfihK-9Y2BOe80d-g9wGpw1aBegMuQ8"))
            .buildFriends_template(),
        Subs_TMP(
                nameuser: Text("Marco"),
                userimage: Text(
                    "https://www.journaldugeek.com/content/uploads/2021/01/dragon-ball-4995675-1280-640x492.jpg"))
            .buildFriends_template(),
      ],
    );
  }

  @override
  Widget build_posts_facebook(BuildContext context) {
    return ListView(
      children: <Widget>[
        Posts_TMP().build_posts_template(
            context,
            Text("Jean"),
            Text(
                "https://media.senscritique.com/media/000007682248/source_big/French_Food_Porn.png"),
            Text("Yummy Breakfast"),
            [
              Text(
                  "https://media-cdn.tripadvisor.com/media/photo-s/17/57/7d/17/2-egg-breakfast.jpg"),
              Text(
                  "https://www.food2vous.com/wp-content/uploads/2018/05/Agence-foodporn-communication.jpg"),
              Text(
                  "https://www.audreycuisine.fr/wp-content/uploads/2020/10/20201008_163700-1.jpg"),
              Text(
                  "https://media-cdn.tripadvisor.com/media/photo-s/16/85/8d/cb/the-breakfast-club.jpg"),
            ],
            Text("215"),
            Text("87"),
            Text("10"),
            [
              Comment("Francois", "Best Food Pictures",
                  "https://www.babelio.com/users/AVT_Francois-Theurel_4092.jpg"),
              Comment("Patrick", "fascinating...!",
                  "https://pbs.twimg.com/profile_images/1227251664496676864/n0U2WsDk_400x400.jpg"),
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
                    "https://www.journaldugeek.com/content/uploads/2021/01/dragon-ball-4995675-1280-640x492.jpg"))
            .buildFriends_template(),
      ],
    );
  }

  @override
  Widget build_posts_insta(BuildContext context) {
    return ListView(
      children: <Widget>[
        Posts_TMP().build_posts_template(
            context,
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
            context,
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
                nameuser: Text("Durendal"),
                userimage: Text(
                    "https://interactive-examples.mdn.mozilla.net/media/cc0-images/grapefruit-slice-332-332.jpg"))
            .buildFriends_template(),
        Friends_TMP(
                nameuser: Text("Dylan"),
                userimage: Text(
                    "https://img-19.ccm2.net/ppaPB1I48R0LInb9Z8QBoUqXqSQ=/480x335/smart/b829396acc244fd484c5ddcdcb2b08f3/ccmcms-commentcamarche/20494859.jpg"))
            .buildFriends_template(),
        Friends_TMP(
                nameuser: Text("Benoit"),
                userimage: Text(
                    "https://www.journaldugeek.com/content/uploads/2021/01/dragon-ball-4995675-1280-640x492.jpg"))
            .buildFriends_template(),
        Friends_TMP(
                nameuser: Text("Quentin"),
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
                nameuser: Text("Benzaie"),
                userimage: Text(
                    "https://static1-fr.millenium.gg/article_old/images/contenu/actus/CoD/top_5_ghosts/benzounet.jpg"))
            .buildFriends_template(),
        Subs_TMP(
                nameuser: Text("Alt"),
                userimage: Text(
                    "https://yt3.ggpht.com/ytc/AAUvwnjh732RmQ3asOvYtJoxUuliVGkki5SpdZiQbML2aw=s900-c-k-c0x00ffffff-no-rj"))
            .buildFriends_template(),
      ],
    );
  }

  @override
  Widget build_posts_twitter(BuildContext context) {
    return ListView(
      children: <Widget>[
        Posts_TMP().build_posts_template(
            context,
            Text("Durendal"),
            Text(
                "https://interactive-examples.mdn.mozilla.net/media/cc0-images/grapefruit-slice-332-332.jpg"),
            Text("Some of ours best film set !!!"),
            [
              Text("https://media.routard.com/image/05/6/skyfall.1374056.jpg"),
              Text(
                  "http://winnetou.fr/highslide/images/lieux_mythiques/wadi_rum_full.jpg"),
              Text(
                  "https://tour-monde.fr/wp-content/uploads/2013/07/8-maison-troglodyte-tunisie.jpg"),
            ],
            Text("215"),
            Text("87"),
            Text("10"),
            [
              Comment("Bernard", "WOOOOAAAAWWWW",
                  "https://i.pinimg.com/originals/95/c4/65/95c4654db07456e6b9a3640253cd76a9.jpg"),
              Comment("Elon", "So wonderfull <3",
                  "https://www.presse-citron.net/app/uploads/2019/10/elonmusk-e1611101293534.jpg"),
              Comment("Zavala", "Next Vacantion for me x)",
                  "https://media.altchar.com/prod/images/940_530/gm-6ddd714a-81e2-49e0-b2fa-1feac00c4095-zavala.JPG"),
            ]),
        Posts_TMP().build_posts_template(
            context,
            Text("Durendal"),
            Text(
                "https://interactive-examples.mdn.mozilla.net/media/cc0-images/grapefruit-slice-332-332.jpg"),
            Text("memories....memories....memories...."),
            [
              Text(
                  "https://www.jeuneafrique.com/medias/2017/07/17/tunisie-by-pixabay-592x296.jpg"),
            ],
            Text("25"),
            Text("9"),
            Text("10"),
            [
              Comment("Benoit", "This is beautiful, where is it ?",
                  "https://scontent-cdg2-1.xx.fbcdn.net/v/t1.0-9/15965282_1119234888198439_3251091215350487655_n.jpg?_nc_cat=108&ccb=1-3&_nc_sid=09cbfe&_nc_ohc=vtU9QvQZNPcAX8jTDrB&_nc_ht=scontent-cdg2-1.xx&oh=da7e1a25efbe44de1a1bbc23b8add355&oe=607F4A90"),
              Comment("Durendal", "It is the cafe des delices in Tunisia",
                  "https://interactive-examples.mdn.mozilla.net/media/cc0-images/grapefruit-slice-332-332.jpg"),
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
                    "https://www.journaldugeek.com/content/uploads/2021/01/dragon-ball-4995675-1280-640x492.jpg"))
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
  Widget build_posts_linkedin(BuildContext context) {
    return ListView(
      children: <Widget>[
        Posts_TMP().build_posts_template(
            context,
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
            context,
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
