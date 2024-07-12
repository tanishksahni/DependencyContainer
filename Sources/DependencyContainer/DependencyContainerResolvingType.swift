//
//  DependencyContainerResolvingType.swift
//
//
//  Created by Tanishk Sahni on 12/07/24.
//

import Foundation

// user must be aware of what type of depencency they need to resolve
public enum DependencyContainerResolvingType {
    case singleInstanace
    case closureBased
}
