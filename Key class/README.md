## Key class
링크: https://api.flutter.dev/flutter/foundation/Key-class.html    
키 는 Widgets , Elements 및 SemanticsNodes 의 식별자입니다.  
새 위젯은 해당 키가 요소와 연결된 현재 위젯의 키와 동일한 경우에만 기존 요소를 업데이트하는 데 사용됩니다.  
[![Video Label](http://img.youtube.com/vi/kn0EOS-ZiIc/0.jpg)](https://youtu.be/kn0EOS-ZiIc)  
각 키는 동일한 부모를 가진 엘리먼트 간에 독립성을 유지해야 합니다.  
Key는 자식 클래스인 LocalKey 또는 GlobalKey로 구현해야합니다.  
</br>  
## Key property
링크: https://api.flutter.dev/flutter/widgets/Widget/key.html  
트리에서 하나의 위젯이 다른 위젯을 대체하는 방법을 제어합니다.  
두 위젯의 런타임 유형과 키 속성이 각각 'operator =='인 경우,  
새 위젯은 기본 요소를 업데이트하여(즉, 새 위젯으로 Element.update를 호출하여) 이전 위젯을 대체합니다.  
</br>

그렇지 않으면 이전 요소가 트리에서 제거되고  
새 위젯이 요소로 인플레이션된 다음 새 요소가 트리에 삽입됩니다.  
또한 위젯의 키로 GlobalKey를 사용하면  
상태를 잃지 않고 트리에서 요소를 이동(부모 변경)할 수 있습니다.  
</br>
새 위젯이 발견되었지만(키와 유형이 같은 위치의 이전 위젯과 일치하지 않음)  
이전 프레임에서 트리의 다른 곳에 동일한 글로벌 키를 가진 위젯이 있는 경우 해당 위젯의 요소가 새 위치로 이동됩니다.  
일반적으로 다른 위젯의 유일한 자식인 위젯은 명시적 키가 필요하지 않습니다.  
