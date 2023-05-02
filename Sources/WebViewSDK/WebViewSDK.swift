#if canImport(UIKit)
import UIKit
#endif

public enum InvalidUrlError: Error {
    case runtimeError(String)
}

public struct WebViewSDK {
    public private(set) var name = "WebViewSDK"

    public init() {
    }
    
    public static func initWebViewController() -> WebViewController {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        return storyboard.instantiateViewController(withIdentifier: "WebViewController") as! WebViewController
    }
}
