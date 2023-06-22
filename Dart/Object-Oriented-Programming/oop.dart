void main() {
  Idol blackPink = Idol(
    '블랙핑크',
    ['지수', '제니', '리사', '로제'],
  );

  print(blackPink.name); // 블랙핑크
  print(blackPink.members); // [지수, 제니, 리사, 로제]
  blackPink.sayHello(); // 안녕하세요 블랙핑크입니다.
  blackPink.introduce(); // 저희 멤버는 [지수, 제니, 리사, 로제]가 있습니다.

  Idol bts = Idol.fromList(
    [
      ['RM','진','슈가','제이홉','지민','뷔','정국'],
      'BTS',
    ]    
  );

  print(bts.name); // BTS
  print(bts.members); // [RM, 진, 슈가, 제이홉, 지민, 뷔, 정국]
  bts.sayHello(); // 안녕하세요 BTS입니다.
  bts.introduce(); // 저희 멤버는 [RM, 진, 슈가, 제이홉, 지민, 뷔, 정국]가 있습니다.
}

/* Idol class
   name (이름) - 변수
   members(멤버들) - 변수
   sayHello (인사) - 함수
   introduce (멤버소개) - 함수
*/
class Idol {
  String name;
  List<String> members;

  Idol(this.name, this.members);
  /*
  주석 위 생성자가 이 생성자와 같은 의미의 축약 형태임.
  Idol(String name, List<String> members)
      : this.name = name,
        this.members = members;  
  */

  Idol.fromList(List values)
      : this.members = values[0],
        this.name = values[1];

  void sayHello() {
    print('안녕하세요 ${this.name}입니다.');
  }
  
  void introduce() {
    print('저희 멤버는 ${this.members}가 있습니다.');
  }  

}

