import UIKit
import WebKit

class ViewController: UIViewController {
    private var webView: WKWebView!
    
    override func loadView() {
        webView = WKWebView()
        webView.isOpaque = false
        webView.backgroundColor = UIColor(red: 13/255, green: 17/255, blue: 23/255, alpha: 1)
        webView.scrollView.isScrollEnabled = true
        view = webView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let path = Bundle.main.path(forResource: "index", ofType: "html") {
            let url = URL(fileURLWithPath: path)
            let dir = url.deletingLastPathComponent()
            webView.loadFileURL(url, allowingReadAccessTo: dir)
        }
    }
    
    override var prefersStatusBarHidden: Bool { true }
    override var preferredStatusBarStyle: UIStatusBarStyle { .lightContent }
}
