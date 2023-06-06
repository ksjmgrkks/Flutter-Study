void main(){
  // 리스트(List)
  List<String> language = ['Java','Kotlin','Dart'];
  List<int> numbers = [1,2,3,4,5];
  
  //index
  print(language[0]); // Java
  print(language[1]); // Kotlin
  print(language[2]); // Dart
  
  print(language.length); // 3
  language.add('Swift');
  print(language); // [Java, Kotlin, Dart, Swift]
  language.remove('Swift');
  print(language); // [Java, Kotlin, Dart]
  print(language.indexOf('Dart')); // 2
  
  // 맵(Map) Key / Value
  Map<String, String> dictionary = {
    'Harry Potter' : '해리 포터',
    'Ron Weasley' : '론 위즐리',
    'Hermione Granger' : '헤르미온느 그레인저',
  };
  
  print(dictionary); // {Harry Potter: 해리 포터, Ron Weasley: 론 위즐리, Hermione Granger: 헤르미온느 그레인저}
  print(dictionary['Harry Potter']); // 해리 포터 (조회는 Key를 통해!)
  dictionary.addAll({
    'Severus Snape' : '세베루스 스네이프',
    'Harry Kim': '규성김',
  });
    
  dictionary['Albus Dumbledore'] = '알버스 덤블도어'; // 추가
  dictionary['Harry Kim'] = '김규성'; // 수정
  print(dictionary.keys); // (Harry Potter, Ron Weasley, Hermione Granger, Severus Snape, Harry Kim, Albus Dumbledore)
  print(dictionary.values); // (해리 포터, 론 위즐리, 헤르미온느 그레인저, 세베루스 스네이프, 김규성, 알버스 덤블도어)
  
  // 집합(Set) 중복된 값 저장 불가
  final Set<String> names = {
    'Son',
    'Kane',
    'Eriksen',
    'Son',
  };
  
  print(names); // {Son, Kane, Eriksen}
  names.add('Dele');
  print(names); // {Son, Kane, Eriksen, Dele}
  names.remove('Dele');
  print(names); // {Son, Kane, Eriksen}
  print(names.contains('Son')); // true
  
}
