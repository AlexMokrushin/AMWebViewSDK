public enum InvalidUrlError: Error {
    case runtimeError(String)
}

public struct WebViewSDK {
    public private(set) var name = "WebViewSDK"

    public init() {
    }
    
    public static func initWebViewController() -> WebViewController {
        return WebViewController()
    }
}
