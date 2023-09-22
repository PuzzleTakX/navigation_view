library navigation_view;


import 'package:flutter/material.dart';
import 'package:navigation_view/item_navigation_view.dart';

class NavigationView extends StatefulWidget{
  final Function(int) onChangePage;
  final Color? backgroundColor;
  final Color? borderTopColor;
  final Curve? curve;
  final Color? color;
  final BorderRadiusGeometry? borderRadius;
  final Gradient? gradient;
  final Duration? durationAnimation;
  final List<ItemNavigationView> items;
   const NavigationView({super.key,


    required this.onChangePage,
    required this.items,
     this.durationAnimation,
    this.backgroundColor,
    this.borderRadius,
    this.gradient,
    this.color,
    this.curve,
    this.borderTopColor,


  });

  @override
  State<StatefulWidget> createState()=> _NavigationView();


}

class _NavigationView extends State<NavigationView>{

  final double borderRadius = 11.1;
  late int _currentPage = 0;


  final Color color = Colors.blue;
  Duration durationAnimation =  const Duration(milliseconds: 250);
  @override
  void initState() {
     if(widget.durationAnimation != null) durationAnimation = widget.durationAnimation!;
    _currentPage =  0;
    super.initState();
  }



  @override
  Widget build(BuildContext context) {
    return Container(width: double.maxFinite,color: (widget.backgroundColor != null) ? widget.backgroundColor : Colors.white,height: 55,
        child: Column(
          children: [
            Container(width: double.maxFinite,height: 1,
              color: (widget.borderTopColor != null) ? widget.borderTopColor! : Colors.grey.withAlpha(20)
              ,),
            Expanded(child: LayoutBuilder(
              builder: (p0, constraints){
                return Stack(
                  children: [
                    AnimatedPositioned(
                      curve: (widget.curve != null) ? widget.curve! : Curves.easeInOutQuint,
                      left: (constraints.maxWidth / widget.items.length) * ((widget.items.length - 1) - _currentPage),
                      width:  constraints.maxWidth / widget.items.length,
                      height: constraints.maxHeight,
                      duration: Duration(milliseconds: durationAnimation.inMilliseconds),
                      child: Padding(
                        padding: EdgeInsets.only(top: 5,bottom: 0,left: (45 /widget.items.length),right: (45 /widget.items.length)),
                        child:  InkWell(
                          onTap: (){

                          },

                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.transparent,
                                borderRadius: (widget.borderRadius != null) ? widget.borderRadius : BorderRadius.circular(borderRadius)
                            ),
                            child: Column(
                              children: [
                                Expanded(child: Padding(
                                  padding: const EdgeInsets.only(left: 5,right: 5),
                                  child: AnimatedContainer(
                                    duration: Duration(microseconds: durationAnimation.inMilliseconds ~/ 2.1),
                                    decoration: BoxDecoration(
                                      gradient:  (widget.gradient != null) ? widget.gradient! : LinearGradient(
                                          colors:  [
                                            Colors.white.withAlpha(0),
                                            (widget.color != null) ? widget.color!.withOpacity(0.2)  : color.withOpacity(0.2)
                                          ],


                                          begin: const FractionalOffset(0.0, 0.0),
                                          end: const FractionalOffset(0.0, 1.0),
                                          stops: const [0.0, 1.0],
                                          tileMode: TileMode.clamp),
                                    ),
                                  ),
                                )),
                                Padding(
                                    padding: const EdgeInsets.only(left: 4,right: 4),
                                    child: AnimatedContainer(
                                      duration: Duration(milliseconds: durationAnimation.inMilliseconds ~/ 2),
                                      width: double.maxFinite,height: 4,
                                      decoration: BoxDecoration(
                                          color: (widget.color != null) ? widget.color! :  color,
                                          borderRadius: (widget.borderRadius != null) ? widget.borderRadius! :  const BorderRadius.only(
                                            topLeft: Radius.circular(4),
                                            topRight: Radius.circular(4),
                                            bottomLeft: Radius.circular(0),
                                            bottomRight: Radius.circular(0),
                                          )
                                      ),
                                    ))
                              ],
                            ),

                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: double.maxFinite,
                      height: double.maxFinite,
                      child: Row(
                        textDirection: TextDirection.rtl,
                        children:widget.items.map((e) => Flexible(flex: 1,child: InkWell(
                          onTap: (){

                            setState(() {
                              _currentPage = widget.items.indexOf(e);
                              widget.onChangePage.call(widget.items.indexOf(e));
                            });
                          },
                          child: LayoutBuilder(
                              builder: (BuildContext context, BoxConstraints constraints) {
                                return  Center(

                                    child: AnimatedCrossFade(firstChild: e.childBefore, secondChild: e.childAfter, crossFadeState: (_currentPage == widget.items.indexOf(e)) ? CrossFadeState.showSecond : CrossFadeState.showFirst, duration:  Duration(milliseconds: durationAnimation.inMilliseconds ~/ 2))
                                );
                              }
                          ),
                        ),)).toList() ,
                      ),
                    ),

                  ],
                );
              },
            ),

            )
          ],
        )
    );
  }









}