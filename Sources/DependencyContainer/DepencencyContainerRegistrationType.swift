//
//  DepencencyContainerRegistrationType.swift
//
//
//  Created by Tanishk Sahni on 12/07/24.
//

import Foundation

public enum DepencencyContainerRegistrationType {
    case singleInstance(AnyObject)
    case closureBased(() -> Any)
}
