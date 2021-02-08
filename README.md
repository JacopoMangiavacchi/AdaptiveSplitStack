# AdaptiveSplitStack
SwiftUI dynamic horizontal / vertical split view

## 🔷 Requirements

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;✅ macOS 10.15+  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;✅ Xcode 11.0  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;✅ Swift 5+  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;✅ iOS 13+  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;✅ tvOS 13+

## 🔷 Installation

`AdaptiveSplitStack` is available via [Swift Package Manager](https://swift.org/package-manager).

Using Xcode 11, go to `File -> Swift Packages -> Add Package Dependency` and enter [https://github.com/JacopoMangiavacchi/AdaptiveSplitStack](https://github.com/JacopoMangiavacchi/AdaptiveSplitStack)  

## 🔷 Usage

#### ✴️ Basic scenario:

```swift
struct ContentView: View {

    var body: some View {
        AdaptiveSplitStack(
            ratio: 0.5,
            content1: {
                HStack {
                    Spacer()
                    Text("1")
                    Spacer()
                }},
            background1: {Color.red},
            content2: {
                HStack {
                    Spacer()
                    Text("2")
                    Spacer()
                }},
            background2: {Color.orange})
    }
}
```
