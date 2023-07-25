https://api.flutter.dev/flutter/widgets/BuildContext-class.html

위젯 트리에서 위젯의 위치에 대한 핸들입니다.  
이 클래스는 StatelessWidget.build 메서드와 State 객체의 메서드에서 사용할 수 있는 메서드 집합을 제공합니다.  
BuildContext 객체는 WidgetBuilder 함수(예: StatelessWidget.build)에 전달되며 State.context 멤버에서 사용할 수 있습니다.  
일부 정적 함수(예: showDialog, Theme.of 등)는 호출하는 위젯을 대신하여 작동하거나  
주어진 컨텍스트에 맞는 데이터를 가져올 수 있도록 빌드 컨텍스트를 받기도 합니다.  
</br>

각 위젯에는 자체 빌드 컨텍스트가 있으며, 이 컨텍스트는 StatelessWidget.build 또는 State.build 함수에 의해 반환된 위젯의 부모가 됩니다.
(마찬가지로 RenderObjectWidgets에 대한 모든 자식의 부모도 마찬가지입니다.)  
특히, 이는 빌드 메서드 내에서 빌드 메서드의 위젯의 빌드 컨텍스트가 해당 빌드 메서드에서 반환된 위젯의 빌드 컨텍스트와 동일하지 않다는 것을 의미합니다.  
이로 인해 몇 가지 까다로운 경우가 발생할 수 있습니다. 예를 들어 Theme.of(context)는 주어진 빌드 컨텍스트의 가장 가까운 테마를 찾습니다.  
위젯 Q의 빌드 메서드에 반환된 위젯 트리에 테마가 포함되어 있고 자체 컨텍스트를 전달하는  
Theme.of를 사용하려고 하면, Q의 빌드 메서드는 해당 테마 객체를 찾지 못합니다.  
</br>

대신 위젯 Q의 조상이었던 테마를 찾습니다.  
반환된 트리의 하위 부분에 대한 빌드 컨텍스트가 필요한 경우 빌더 위젯을 사용할 수 있습니다:  
빌더 콜백에 전달된 빌드 컨텍스트는 빌더 이셀의 컨텍스트가 됩니다.  
예를 들어, 다음 코드조각에서는 빌드 메서드 자체가 생성하는 스캐폴드 위젯에서 ScaffoldState.showBottomSheet 메서드가 호출됩니다.  
빌더가 사용되지 않고 빌드 메서드 자체의 컨텍스트 인수가 사용되었다면 Scaffold를 찾을 수 없었을 것이고, Scaffold.of 함수는 null을 반환했을 것입니다.  
</br>

```dart
@override
Widget build(BuildContext context) {
  // here, Scaffold.of(context) returns null
  return Scaffold(
    appBar: AppBar(title: const Text('Demo')),
    body: Builder(
      builder: (BuildContext context) {
        return TextButton(
          child: const Text('BUTTON'),
          onPressed: () {
            Scaffold.of(context).showBottomSheet<void>(
              (BuildContext context) {
                return Container(
                  alignment: Alignment.center,
                  height: 200,
                  color: Colors.amber,
                  child: Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        const Text('BottomSheet'),
                        ElevatedButton(
                          child: const Text('Close BottomSheet'),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        )
                      ],
                    ),
                  ),
                );
              },
            );
          },
        );
      },
    )
  );
}
```
특정 위젯에 대한 BuildContext는 위젯이 트리에서 이동함에 따라 시간이 지남에 따라 위치가 변경될 수 있습니다.  
따라서 이 클래스의 메서드에서 반환된 값은 단일 동기 함수를 실행하는 것 이상으로 캐시해서는 안 됩니다.  
https://www.youtube.com/watch?v=rIaaH87z1-g  
연관된 위젯이 위젯 트리에서 마운트 해제되면 유효하지 않게 될 수 있으므로 BuildContext 인스턴스를 저장하지 마세요.  
빌드 컨텍스트가 비동기 간격을 두고 사용되는 경우(즉, 비동기 연산을 수행한 후),  
상호작용하기 전에 마운트되었는지 확인하여 컨텍스트가 여전히 유효한지 확인하는 것이 좋습니다:  

```dart
  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () async {
        await Future<void>.delayed(const Duration(seconds: 1));
        if (context.mounted) {
          Navigator.of(context).pop();
        }
      },
      child: const Text('Delayed pop'),
    );
  }
```
