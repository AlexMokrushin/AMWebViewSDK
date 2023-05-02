# WebViewSDK

Package contains SDK to use camera torch from page loaded to WKWebView.

## Installation
Add WebViewSDK using the Package manager in Xcode. Use the URL `https://github.com/Transported-Labs/ios-webview-sdk`
![](images/install.png)

## Usage
1. Add import directive:
```swift
    import WebViewSDK
```
2. Init WebViewController object:
```swift
    let sdkController = WebViewSDK.initWebViewController()
```
3. Present WebViewController object and call it's .navigateTo() method:
```swift
    // URL to your custom html-page with SDK script
    let urlString = "https://www.google.com"
    present(sdkController, animated: true) {
        if let url = URL(string: urlString) {
            do {
                try sdkController.navigateTo(url: url)
            } catch {
                // Error handling when URL is not valid
                sdkController.dismiss(animated: true)
                print(error)
            }
        }
    }
```
