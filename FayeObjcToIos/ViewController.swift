//
//  ViewController.swift
//  FayeObjcToIos
//
//  Created by uuttff8 on 3/13/20.
//  Copyright © 2020 Anton Kuzmin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let faye = TREventController(delegate: self)
        faye?.logging = false
        
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
