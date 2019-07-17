//
//  Xibed.swift
//  CoordinatorTest
//
//  Created by Inácio Ferrarini on 10/07/19.
//  Copyright © 2019 inacio. All rights reserved.
//

import UIKit

public protocol XibedViewController: Instantiable {}

public extension XibedViewController where Self: UIViewController {
    
    public static func instantiate() -> Self? {
        let className = String(describing: self)
        let bundle = Bundle(for: Self.self)
        return Self(nibName: className, bundle: bundle)
    }
    
}
