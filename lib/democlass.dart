
main(){

  //iteratable
  // var dishes=["cake","apple","candy","parantha"];
  // dishes.forEach((element) {
  //   print(element);
  // });

  //single line comments
  /*
  this is my new code
  i am going now
  multiline comments


  //variables types
  // final int age; //-5,-10,10,5,7,8
  // const pie=3.14;
  // String name='Charan Singh';
  // double marks=90.6;// 2.08,2.32589
  // bool edu=true;//true,false
  // age=30;
  //
  // name="hello";
  // var person=false;
  // person=true;
  // dynamic val=5;
  // val=70;
  //
  // print(person.runtimeType);

  // print("My name is $name and my age is  $age");
  // print("My tenth marks % is $marks");
  // print(" are u educated ? $edu");
  */

  /*
  //null variable/values

  // int? x;
    // x=5;
  // print(x??"no value");
  // print(x??=9);
  // print(x?.isEven);
  // print(x!);

  */
  /*
  //operators + - * / %
  // double x=10.8;
  // double  y=2.5;
  // double res=x/y;
  // // int res=x~/y;
  // var res=84.0+2;
  // var res=(43!=42);

  // var res=10.0;
  // res=res+1;
  // res++; //post increment
  // ++res;  //pre increment
  //  print(++res);
  // res=res+2;
  // res+=-1.5;
  // int x=20,y=20;
// relational operator
//  > <  >=  <=   ==   !=

  //logical opertators
  //  && ||
  // (game=="cricket") || (game>'football')
  // ((gender=="male")  && (age>=21))  || ((gender ==""female) && (age>=18))
  */

  //strings
  /*String fname='Charan';
  String lname="Singh";
  //concatenation
  String fullname=fname+' '+lname;
  //String interpolation
  // print(fname.length);
  print("My first name length is ${fname.length} and fullname $fullname        and last name is      $lname");
// escape sequence  // raw printing
  print(r"sorry i \ can't come ");
*/

  //control statements
  /*
  // if else
  int x=1;
  if(x>0){
    print("x is a positive number");
  }
  else{
    print("x is negative or zero");
  }
  //if else if  ->else if ladder
  int a=5,b=8,c=2;

  if(a>b && a>c){
      print("a");
  }
  else if(b>c){
    print("b");
  }
  else
    {
      print("c");
    }

  // nested conditioning
  if(a>b){
      if(a>c) {
        print("a");
      }
      else{
        print("c");
      }
  }
  else{
     if(b>c){print("b");}
     else {print("c");}
  }

  //switch
  int day=15 % 7;
  switch(day){
    case 0: print("sunday");break;
    case 1:print("mon");break;
    case 2:print("tue");break;
    case 3:print("wed");break;
    case 4:print("thr");break;
    case 5:print("fri");break;
    case 6:print("sat");break;
    default:print("invalid");
  }
  */

  // loops
  // for,while,do while ,for in
/*
  int x=0;
  /*
  * i=1  3<=5  body   inc
  * i=4  4<=5  body   inc
  * i=7  7<=7  body   inc
  * i=7  6<=5 fasle  exit
  * step1 intialization  (once)
  * step2 condition checking
  * step3 body execution
  * step4 incr/dec
  * step 5 condition checking
  *  */
  // for(int i=1;i<=6;i+=3){
  //   x++;
  //   print(x);
  // }
  // int i=1;
  // while(i<=10){
  //   x++;
  //   print(x);
  //   i++;
  // }

  // int i=11;
  // do{
  //   x++;
  //   print(x);
  //   i++;
  // }while(i<=10);
  /*
  *  for-> {init,cond,inc/dec}
  *  while-> init { cond ,inc/dec }
  *  do -> init { cond ,inc/dec }  body at least once exec
  *
  * */
 //  int t=9;
 // for(int i=1;i<=10;i++){
 //   print(" $t x $i => ${t*i} ");
 // }

 // int v=10;
 // while(v>0){
 //   print(v);
 //   v--;
 // }
 int s=3;
 for(int i=5;i>0;i--){

   if(i==s)
     continue;
   //break ->kill loop
   //continue -> ignore next body
   print(i);
 }
*/
  //patterns
  //  int v=0;
  //  for(int x=1;x<=5;x++){
  //    //printing space
  //    for(int z=1;z<=5-x;z++){
  //      stdout.write(" ");
  //    }
  //    //printing star
  //    for(int y=1;y<=x;y++){
  //       stdout.write("*");
  //    }
  //    stdout.writeln();
  //  }

  //     1
  //   1 2 1
  // 1 2 3 2 1
  //
  // int v=0;
  // for(int x=1;x<=5;x++){
  //   //printing space
  //   for(int z=1;z<=5-x;z++){
  //     stdout.write(" ");
  //   }
  //   //printing number
  //   for(int y=1;y<=x;y++){
  //      stdout.write("1 ");
  //   }
  //   stdout.writeln();
  // }

  // int a=40;  //ascii codes  A=65 Z=90  a=97 z=122
  // for(int x=a;x<=122;x++)
  //   stdout.write(String.fromCharCode(x));
  // int v=65;
  //  for(int r=1;r<=4;r++){
  //    for(int c=1;c<=r;c++){
  //      stdout.write(String.fromCharCode(v++)+" ");
  //    }
  //    stdout.writeln();
  //  }

  //lists
  // List<String> mylist=["charan","preet","sahil","ronak"];
  // List<int> nums=[1,2,3,4,5,6];
  // List custom=[1,2,"helo","rahul",10.9,true];
  // print(custom);
  // print(nums);
  // print(mylist);

  //  List<String> l=[];
  // l.add("Hello");
  // l.add("Sachin");
  // l.add("tendulkar");
  //  print(l);
  //  l.insert(3, "finish");
  //  l.insert(0, "start");
  //  print(l);
  //  l.remove("Hello");
  //  print(l);
  //
  //  for(int x=0;x<l.length;x++){
  //    print(l.elementAt(x));
  //  }
  // print("-----------------------");
  //
  //  for(String x in l){
  //    print(x);
  //  }
  //  print("-----------------------");
  //
  //  l.forEach((element) {
  //    print(element);
  //  });
  //
  //  List l1=[1,2,3,4,5];
  //  List l2=[4,5,6,7,8];
  //  List l3=l1+l2;
  //  print(l3);
  //
  //  //set  {1,2,3}
  //  var s=<dynamic>{};
  //  s.add(1);
  //  s.add(2.01);
  //  s.add(2.00);
  //  print(s.contains(2.02));
  //  print(s);
  //
  //  Set s1={1,2,3,4,5};
  //  Set s2={4,5,6,7,8};
  //  Set s3={};
  //  s3=s1.union(s2);
  //  // s3.addAll(l3);
  //  print(s3);

  //functions

  // sabjilao(int r){
  //   return r*r*1.0;
  // }
  //
  // double area;
  // double sqr=sabjilao(6);
  // area=3.14*sqr;  //pie*r*r
  // print(area);

  // printtable(int v){
  //   for(int i=1;i<=10;i++){
  //     print("$v x $i = ${v*i}");
  //   }
  // }

  // area(int l,int w){
  //   return l*w;
  // }

  // area(int l,int w)=>l*w;
  //
  //
  // print(area(6, 11));

  //oops - object oriented programming

  //  int a;
  // // s1 s2    objects
  //  Student s1=Student("Charan",25);
  //  Student s2=Student("Sandeep",30);
  //  // print(s1.marks);
  //  // print(s2.marks);
  //  // print(s1.age>s2.age);
  //
  //  s1.intro();
  //  s2.intro();
  //
  //  Fruit guava=Fruit();
  //  guava.name="Guava";
  //  guava.kg=2;
  //  guava.price=50;
  //
  //
  //  //json - java script object notation- map format  --- json / xml
  //
  //  Map<String,dynamic> m1=Map<String,dynamic>();
  //  m1["name"]="Charan";
  //  m1["age"]="20";
  //  m1.addAll({"marks":"80","Country":"India"});
  //  print(m1.toString());
  //  print(m1["name"]);
  // m1.values.forEach((element) { print(element);});

  // {
  //   name:charan,
  //   age:20,
  // marks:80,
  //   country:india,
  //  fruit:
  // }


  //maps again  declare []  output=> {key:value , key:value } => json
  // Map<key_type,value_type>
  //  Map<String,int> map=Map<String,int>();
  //  map["country"]=91;
  //  map["area"]=1200;
  //  print(map.length);
  //  print(map.keys);
  //  print(map.values); // ( ) => iterative values
  //  map.keys.forEach(
  //    //anonymous function
  //          (element) {
  //            print(element);
  //          }
  //          );
  //  print(map["area"]);
  //  print(map);
  //  map.addAll({"flag":1,"pop":2});
  // map.addAll({"states":29});
  // map.remove("pop");
  //  print(map);

  // 80 >= A
  // 60 >= B
  // else c

  // int score=90;
  //
  // if(score>=80){
  //    print("grade A");
  // }
  // else  if(score>=60){
  //   print("grade B");
  // }
  // else{
  //   print("Fail");
  // }

  // int num=12;  // 1-12 months 0
  // print(num%12); //

  // int a=10;
  // print(++a);
  // print(a);

  scical c1=scical();
  c1.cal();
  c1.dosomework(5, "Charan");

}
abstract class calculator{
  void cal();
  void dosomework(x,y);
}
class scical  implements calculator{
  @override
  void cal() {
    print("new cal");
  }

  @override
  void dosomework(x, y) {
    print("$x $y");
  }




}

class Student{
  String name;
  int age;
  double marks=45;
  //paramterized constructor- memory allocation & initalization
  Student(this.name,this.age);

  intro(){
    print("My name is $name , age is $age and marks are $marks");
  }


}

class Fruit{
  String? name;
  double? price;
  int? kg;
  String? color;
  //default const
  //Fruit();
  getmap(){
    return {"name":name,"price":price,"kg":kg,"color":color};
  }

}

//inheritance
/*
* 1. Single inheritance
* 2. Multiple inheritance
* 3. multilevel
* 4. heirarical
* 5. mesh
*
* //override
*  overiding function of base class
*
* //overloading
*
* //abstract class
*  gives a template not an actual implementation
*
*
* */

// class XUV extends car implements Vehicle {
//   run(){
//     print("XUV runs");
//   }
//
//   @override
//   move() {
//     print("XUV move");
//     return super.move();
//   }
//
//   @override
//   String fuel;
// }

class Car extends Vehicle{
  int? notyres;
  String? color;
  double? value;

  move(){
    print("Basic Car");
    return super.move();
  }
}

class Vehicle{
  String fuel="Petrol";
  move(){
    print("this is vehicle");
  }
}