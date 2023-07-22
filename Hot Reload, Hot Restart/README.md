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
