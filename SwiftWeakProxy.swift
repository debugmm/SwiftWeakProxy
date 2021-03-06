//
//  SwiftWeakProxy.swift
//  SwiftABG
//
//  Created by wujungao on 2020/3/19.
//  Copyright © 2020 com.wujungao. All rights reserved.
//

import Foundation

class SwiftWeakProxy: NSObject{
    weak var target:NSObjectProtocol?
    
    init(target:NSObjectProtocol) {
        self.target=target
    }
    
    override func forwardingTarget(for aSelector: Selector!) -> Any? {
        if(self.target?.responds(to: aSelector) ?? false){
            return self.target
        }
        
        return nil
    }
}
