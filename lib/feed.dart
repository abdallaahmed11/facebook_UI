import 'package:flutter/material.dart';
import 'widgets/colors.dart';
import 'widgets/images.dart';

class Feeds extends StatelessWidget {
  static const String routeName = "feed";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(2.0),
          child: CustomScrollView(
            slivers: [
              SliverAppBar(
                floating: true,
                backgroundColor: colors.white,
                title: Text(
                  'Facebook',
                  style: TextStyle(
                      fontSize: 30,
                      color: colors.blue,
                      fontWeight: FontWeight.bold),
                ),
                actions: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.add_circle,
                      size: 30,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.search,
                      size: 30,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.messenger,
                      size: 30,
                    ),
                  )
                ],
                bottom: PreferredSize(
                  preferredSize: Size(100, 40),
                  child: DefaultTabController(
                      length: 6,
                      child: TabBar(
                          indicatorColor: colors.blue,
                          labelColor: colors.blue,
                          unselectedLabelColor: colors.grey,
                          tabs: [
                            IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.home,
                              ),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.movie,
                              ),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.store,
                              ),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.person,
                              ),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.notifications,
                              ),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: CircleAvatar(
                                radius: 15,
                                backgroundImage: AssetImage(images.profile),
                              ),
                            ),
                          ])),
                ),
              ),
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage(images.profile),
                        radius: 24,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(

                          child: Text(
                        'What’s in Your Mind?',
                        style: TextStyle(fontSize: 16),
                      )),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.photo_library,
                            color: Colors.lightGreen,
                          ))
                    ],
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: SizedBox(
                  height: 232,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      if (index == 0) {
                        return SizedBox(
                          width: 140,
                          child: Stack(
                            children: [
                              ClipRect(
                                child: Column(
                                  children: [
                                    Expanded(
                                        flex: 5,
                                        child: Image.asset(images.profile,width: double.infinity,fit: BoxFit.cover,),),
                                    Expanded(
                                        flex:3,
                                        child: Text('Creat a \n Stroy',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600),)),
                                  ],
                                ),
                              ),
                              Column(children: [
                                Row(),
                                Spacer(flex: 3,),
                                Container(
                                  decoration:BoxDecoration(
                                    color: colors.blue,
                                    borderRadius: BorderRadius.circular(1000),
                                    border: Border.all(color: colors.white,
                                    width: 5)

                                  ),
                                  child: Icon(Icons.add,color: colors.white,),),Spacer(flex: 2,)
                              ],)
                            ],
                          ),
                        );
                      } else {
                        return SizedBox(
                          width: 140,
                          child: Stack(
                            children: [
                              ClipRect(
                                child: Image.asset(images.story1,width: double.infinity,fit: BoxFit.cover,),),
                              Container(
                              margin: EdgeInsets.all(8),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(1000),
                                    border: Border.all(width: 2,color: colors.blue)
                                  )
                                  ,child: CircleAvatar(backgroundImage:AssetImage(images.profileroute),))
                            ],
                          ),
                        );
                      }
                    },
                    separatorBuilder: (context, index) => SizedBox(
                      width: 12,
                    ),
                    itemCount: 100,
                  ),
                ),
              ),
              SliverList.separated(
                  itemBuilder: (context, index) => Column(
                    children: [
                      Padding(
                        padding:  EdgeInsets.symmetric(horizontal: 8),
                        child: Row(
                          children: [
                                          CircleAvatar(backgroundImage:AssetImage(images.profileroute,),radius: 28,
                                          ),
                            SizedBox(width: 8,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                              Text("Route",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600),),
                              Row(children: [
                                Text('8h.',style: TextStyle(fontSize: 14,color: colors.grey),),
                                Icon(Icons.language,size: 14,color: colors.grey,),

                              ],)

                            ],),
                            Spacer(),
                            IconButton(onPressed: (){}, icon: Icon(Icons.more_horiz)),
                          ],
                        ),
                      ),
                      Image.asset(images.postroute),
                      Row(
                        children: [
                          IconButton(onPressed: (){}, icon: Icon(Icons.favorite_border,size: 30,)),
                          IconButton(onPressed: (){}, icon: Icon(Icons.message,size: 30,)),
                          IconButton(onPressed: (){}, icon: Icon(Icons.send_outlined,size: 30,)),
                          Spacer(),
                          IconButton(onPressed: (){}, icon: Icon(Icons.bookmark_outline,size: 30,))
                        ],
                      )
                    ],
                    
                  ),
                  separatorBuilder: (context, index) => Divider(),)

            ],
          ),
        ),
      ),
    );
  }
}
