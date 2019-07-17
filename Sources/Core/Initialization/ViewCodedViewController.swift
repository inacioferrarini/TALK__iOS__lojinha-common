//
//  ViewCoded.swift
//  CoordinatorTest
//
//  Created by Inácio Ferrarini on 10/07/19.
//  Copyright © 2019 inacio. All rights reserved.
//

import UIKit

public protocol ViewCodedViewController: Instantiable {}

public extension ViewCodedViewController where Self: UIViewController {
    
    public static func instantiate() -> Self? {
        return Self()
    }
    
}

