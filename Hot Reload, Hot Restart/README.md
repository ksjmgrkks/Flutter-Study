링크 : https://docs.flutter.dev/tools/hot-reload  
</br>
Flutter의 핫 리로드 기능을 사용하면 쉽고 빠르게 실험하고, UI를 구축하고, 기능을 추가하고, 버그를 수정할 수 있습니다.  
핫 리로드는 업데이트된 소스 코드 파일을 실행 중인 Dart 가상 머신(VM) 에 주입하여 작동합니다.  
VM이 새 버전의 필드 및 함수로 클래스를 업데이트하면 Flutter 프레임워크가 위젯 트리를 자동으로 다시 빌드하여  
변경 사항의 효과를 빠르게 볼 수 있습니다.  

핫 리로드, 핫 리스타트 및 전체 리스타트의 차이점은 무엇입니까?  
</br>

핫 리로드 는 코드 변경 사항을 VM에 로드하고 위젯 트리를 다시 빌드하여 앱 상태를 유지합니다.  
그러나 main()이나 initState()가 다시 실행되지 않습니다.  
( ⌘\Intellij 및 Android Studio, ⌃F5VSCode)  

핫 리스타트는 코드 변경 사항을 VM에 로드하고 Flutter 앱을 다시 시작하여 앱 상태를 잃습니다.  
( ⇧⌘\IntelliJ 및 Android Studio, ⇧⌘F5VSCode)  
</br>

완전히 다시 시작 하면 iOS, Android 또는 웹 앱이 다시 시작됩니다.  
Java/Kotlin/ObjC/Swift 코드도 다시 컴파일하기 때문에 더 오래 걸립니다.  
웹에서는 Dart Development Compiler도 다시 시작합니다.  
이에 대한 특정 키보드 단축키가 없습니다. 실행 구성을 중지하고 시작해야 합니다.    
</br>
Flutter 웹은 현재 핫 리스타트를 지원하지만 핫 리로드는 지원하지 않습니다.
![image](https://github.com/ksjmgrkks/Flutter-Study/assets/76638683/cb792eec-0d76-449d-8abc-0e3968541202)
안드로이드 스튜디오에서 실행, 디버그 실행, 핫 리로드 및 핫 리스타트를 제어합니다.  
</br>
코드 변경은 변경 후 수정된 Dart 코드를 다시 실행하는 경우에만 가시적인 효과가 있습니다.  
특히 핫 리로드를 실행하면 기존의 모든 위젯이 다시 빌드됩니다.  
위젯 재빌드에 관련된 코드만 자동으로 다시 실행됩니다.  
예를 들어, main() 및 initState() 함수는 다시 실행되지 않습니다.  
</br>

### 특수한 경우
다음 섹션에서는 핫 리로드와 관련된 특정 시나리오를 설명합니다.  
경우에 따라 Dart 코드를 약간만 변경해도 앱에 핫 리로드를 계속 사용할 수 있습니다.  
다른 경우에는 핫 재시작 또는 전체 재시작이 필요합니다.  
</br>

### 앱이 종료된 경우
앱이 종료되면 핫 리로드가 중단될 수 있습니다.  
예를 들어 앱이 너무 오랫동안 백그라운드에 있었던 경우입니다.  
</br>

### 컴파일 오류
코드 변경으로 인해 컴파일 오류가 발생하면 핫 리로드는 다음과 유사한 오류 메시지를 생성합니다:
```
Hot reload was rejected:
'/path/to/project/lib/main.dart': warning: line 16 pos 38: unbalanced '{' opens here
  Widget build(BuildContext context) {
                                     ^
'/path/to/project/lib/main.dart': error: line 33 pos 5: unbalanced ')'
    );
    ^
```
이 상황에서는 지정된 Dart 코드 줄의 오류를 수정하기만 하면 핫 리로드를 계속 사용할 수 있습니다.
