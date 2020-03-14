# faye-poc-gitter

example 

```swift
class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let faye = TREventController(delegate: self)
        faye?.logging = true
        
    }
}

extension ViewController: TREventControllerDelegate {
    func messageReceived(_ messageDict: [AnyHashable : Any]!, channel: String!) {
        dump(messageDict)
        print(channel)
    }
    
    func snapshotReceived(_ snapshot: Any!, channel: String!) {
        if let snap = snapshot as? Array<AnyObject> {
            print(snap)
        }
        print(channel)
    }
    
    func serverSubscriptionEstablished() {
    }
    
    func serverSubscriptionDisconnected() {
    }
    
    
}
```
