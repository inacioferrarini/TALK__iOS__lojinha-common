//
//  Storyboarded.swift
//  CoordinatorTest
//
//  Created by Inácio Ferrarini on 10/07/19.
//  Copyright © 2019 inacio. All rights reserved.
//

import UIKit

public protocol Storyboarded: Instantiable {}

public extension Storyboarded where Self: UIViewController {
    
    public static func instantiate() -> Self? {
        let className = String(describing: self)
        let bundle = Bundle(for: Self.self)
        let storyboard = UIStoryboard(name: className, bundle: bundle)
        return storyboard.instantiateViewController(withIdentifier: className) as? Self
    }
    
}
