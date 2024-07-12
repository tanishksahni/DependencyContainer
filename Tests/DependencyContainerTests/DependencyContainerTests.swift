import XCTest
@testable import DependencyContainer

protocol SingleInstanceProtocol: AnyObject {
    func sampleMethod()
}

final class SingleInstanceImplementation: SingleInstanceProtocol{
    func sampleMethod() {
        //
    }
}

final class DependencyContainerTests: XCTestCase {
    func test_single_instance_registration_and_resolving() {
        let instance = SingleInstanceImplementation()
        DC.shared.register(type: .singleInstance(instance), for: SingleInstanceProtocol.self)
        
        let resolvedInsatance = DC.shared.resolve(type: .singleInstanace, for: SingleInstanceProtocol.self)
        
        // "===" make sure that the objects are same thing in mamory
        XCTAssert(instance === resolvedInsatance)
        
    }
    
}
