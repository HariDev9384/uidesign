import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'package:uidesign/providers/rating_provider.dart';
class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> _scaffoldkey=GlobalKey<ScaffoldState>();
    var height=MediaQuery.of(context).size.height;
    var width=MediaQuery.of(context).size.width;
    return Scaffold(
    
      key: _scaffoldkey,
      appBar: AppBar(
        leading: Icon(Icons.star,size: 42),
        title: Text('Smart Rate App'),
      ),
      body: Container(
        height: height/1,
        width: width/1,
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                onTap: (){
                  RateDialog(context,height,width,_scaffoldkey);
                },
                child: Container(
                  height: height*0.06,
                  width: width*0.4,
                  child: Center(child: Text('Rate',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold
                  ),
                  )),
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(25)
                  ),
                ),
              ),
              InkWell(
                onTap: (){
                  FeedbackDialog(context, height, width, _scaffoldkey);
                },
                child: Container(
                  height: height*0.06,
                  width: width*0.4,
                  child: Center(child: Text('Feedback',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold
                  ),
                  )),
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(25)
                  ),
                ),
              ),
            ],
          ),
        ),
      ),

    );
  }
  
}
FeedbackDialog(context,height,width ,_key){
 var feedbackclr=TextEditingController();
   showfeedback(){
    _key.currentState.showSnackBar(SnackBar(
    
      content: Text('Feedback Sended Successfully'),
    ));
  }
      return showDialog(
        context: context,
        builder: (context) {
        return Consumer<Rating_Provider>(
          builder: (context, rating, child) => 
          AlertDialog(
            content:  SingleChildScrollView(
              child: Container(
                          
                            height: height*0.6,
                            width: width*0.4,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(35)
                            ),
                            child: Column(
                              children: [
                                Container(
                                  
                                  child:Lottie.asset('Assets/FeedBack.json'),
                                  height: height*0.2,
                                  width: width*1,
                                ),
                                SizedBox(height: height*0.02,),
                                Text('Feedback',
                                style: TextStyle(
                                  color: Colors.blue,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold
                                ),
                                ),
                               SizedBox(height: height*0.04,),
                               Container(
                                height: height*0.16,
                                width: width*0.8,
                                //color: Colors.amber,
                                child: TextField(
                                  autofocus: false,
                                  
                                  onChanged: (val){
                                    var k=val;
                                  },
                                  
                                  controller: feedbackclr,
                                  decoration: InputDecoration(
                                    hintText: 'Write your feedback here...',
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10)
                                    )
                                    
                                  ),
                                   maxLines: 8,
                                  minLines: 5,
                                ),
                               ),
                                SizedBox(height: height*0.04,),
            
                               GestureDetector(
                                onTap: (){
                                  Navigator.of(context).pop();
                                  showfeedback();
                                  
                                },
                                 child: Container(
                                  height: height*0.06,
                                  width: width*0.5,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(25),
                                    color: Colors.blue
                                  ),
                                  child: Center(
                                    child: Text('Send',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold
                                    ),
                                    ),
                                  )
                                 ),
                               ),
                                SizedBox(height: height*0.02,),
                                InkWell(
                                  onTap: (){
                                    Navigator.of(context).pop();
                                  },
                                  child: Text('Maybe later',
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold
                                    ),
                                    ),
                                ),
            
                    
                              ],
                            ),
                            
                          ),
            ),
                    
            
          ),
        );      
        } 
      );
  
}
 RateDialog (context,height,width,scaffoldkey){

  void showsnack(){
    scaffoldkey.currentState.showSnackBar(SnackBar(
      content: Text('Rated'),
    ));
  }
      return showDialog(
        context: context,
        builder: (context) {
        return Consumer<Rating_Provider>(
          builder: (context, rating, child) => 
          AlertDialog(
            content:  Container(
                        
                          height: height*0.6,
                          width: width*0.4,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(35)
                          ),
                          child: Column(
                            children: [
                              Container(
                                
                                child:Lottie.asset('Assets/rating.json'),
                                height: height*0.2,
                                width: width*1,
                              ),
                              SizedBox(height: height*0.02,),
                              Text('Rate us 5 star',
                              style: TextStyle(
                                color: Colors.blue,
                                fontSize: 20,
                                fontWeight: FontWeight.bold
                              ),
                              ),
                             SizedBox(height: height*0.04,),
                             Container(
                              height: height*0.1,
                              width: width*0.6,
                              //color: Colors.red,
                               child: Text('Support us by give 5 star and write your review',
                                textAlign: TextAlign.center,
                                ),
                             ),
                             Container(
                              height: height*0.08,
                              width: width*1,
                              
                              child: RatingButton(rating)
                             ),
                            SizedBox(height: height*0.02,),
                             InkWell(
                              onTap: (){
                                  Navigator.of(context).pop();
                                  showsnack();
                              },
                               child: Container(
                                height: height*0.06,
                                width: width*0.5,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(25),
                                  color: Colors.blue
                                ),
                                child: Center(
                                  child: Text('Rate now',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold
                                  ),
                                  ),
                                )
                               ),
                             ),
                              SizedBox(height: height*0.02,),
                              InkWell(
                                onTap: (){
                                  Navigator.of(context).pop();
                                },
                                child: Text('Maybe later',
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold
                                  ),
                                  ),
                              ),

        
                            ],
                          ),
                          
                        ),
                    
            
          ),
        );      
        } 
      );
    }
    RatingButton(rating){
      return Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  InkWell(
                                    onTap: (){
                                      rating.Rate1();
                                    },
                                    child: Icon(Icons.star,color: rating.Star1,size: 40)),
                                  InkWell(
                                    onTap: (){
                                      rating.Rate2();
                                    },
                                    child: Icon(Icons.star,color: rating.Star2,size: 40,)),
                                  InkWell(
                                    onTap: (){
                                      rating.Rate3();
                                    },
                                    child: Icon(Icons.star,color: rating.Star3,size: 40,)),
                                  InkWell(
                                    onTap: (){
                                      rating.Rate4();
                                    },
                                    child: Icon(Icons.star,color: rating.Star4,size: 40,)),
                                  InkWell(
                                    onTap: (){
                                      rating.Rate5();
                                    },
                                    child: Icon(Icons.star,color: rating.Star5,size: 40,))
                                ],
                              );
    }
    
  