//
//  XibedView.swift
//  CoordinatorTest
//
//  Created by Inácio Ferrarini on 15/07/19.
//  Copyright © 2019 inacio. All rights reserved.
//

import UIKit

public protocol XibedView: Instantiable {}

public extension XibedView where Self: UIView {
    
    public static func instantiate() -> Self? {
        let className = String(describing: self)
        let bundle = Bundle(for: Self.self)
        return bundle.loadNibNamed(className, owner: nil, options: nil)?.first as? Self
    }
    
}

