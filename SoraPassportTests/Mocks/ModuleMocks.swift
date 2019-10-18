/**
* Copyright Soramitsu Co., Ltd. All Rights Reserved.
* SPDX-License-Identifier: Apache 2.0
*/

import Cuckoo
@testable import SoraPassport

import UIKit


public class MockEmptyStateDelegate: EmptyStateDelegate, Cuckoo.ProtocolMock {
    
    public typealias MocksType = EmptyStateDelegate
    
    public typealias Stubbing = __StubbingProxy_EmptyStateDelegate
    public typealias Verification = __VerificationProxy_EmptyStateDelegate

    public let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: EmptyStateDelegate?

    public func enableDefaultImplementation(_ stub: EmptyStateDelegate) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    
    
    
    public var shouldDisplayEmptyState: Bool {
        get {
            return cuckoo_manager.getter("shouldDisplayEmptyState",
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.shouldDisplayEmptyState)
        }
        
    }
    

    

    

	public struct __StubbingProxy_EmptyStateDelegate: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	    public init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    var shouldDisplayEmptyState: Cuckoo.ProtocolToBeStubbedReadOnlyProperty<MockEmptyStateDelegate, Bool> {
	        return .init(manager: cuckoo_manager, name: "shouldDisplayEmptyState")
	    }
	    
	    
	}

	public struct __VerificationProxy_EmptyStateDelegate: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	    public init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	    
	    var shouldDisplayEmptyState: Cuckoo.VerifyReadOnlyProperty<Bool> {
	        return .init(manager: cuckoo_manager, name: "shouldDisplayEmptyState", callMatcher: callMatcher, sourceLocation: sourceLocation)
	    }
	    
	
	    
	}
}

public class EmptyStateDelegateStub: EmptyStateDelegate {
    
    
    public var shouldDisplayEmptyState: Bool {
        get {
            return DefaultValueRegistry.defaultValue(for: (Bool).self)
        }
        
    }
    

    

    
}



public class MockEmptyStateDataSource: EmptyStateDataSource, Cuckoo.ProtocolMock {
    
    public typealias MocksType = EmptyStateDataSource
    
    public typealias Stubbing = __StubbingProxy_EmptyStateDataSource
    public typealias Verification = __VerificationProxy_EmptyStateDataSource

    public let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: EmptyStateDataSource?

    public func enableDefaultImplementation(_ stub: EmptyStateDataSource) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    
    
    
    public var viewForEmptyState: UIView? {
        get {
            return cuckoo_manager.getter("viewForEmptyState",
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.viewForEmptyState)
        }
        
    }
    
    
    
    public var imageForEmptyState: UIImage? {
        get {
            return cuckoo_manager.getter("imageForEmptyState",
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.imageForEmptyState)
        }
        
    }
    
    
    
    public var titleForEmptyState: String? {
        get {
            return cuckoo_manager.getter("titleForEmptyState",
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.titleForEmptyState)
        }
        
    }
    
    
    
    public var titleColorForEmptyState: UIColor? {
        get {
            return cuckoo_manager.getter("titleColorForEmptyState",
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.titleColorForEmptyState)
        }
        
    }
    
    
    
    public var titleFontForEmptyState: UIFont? {
        get {
            return cuckoo_manager.getter("titleFontForEmptyState",
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.titleFontForEmptyState)
        }
        
    }
    
    
    
    public var verticalSpacingForEmptyState: CGFloat? {
        get {
            return cuckoo_manager.getter("verticalSpacingForEmptyState",
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.verticalSpacingForEmptyState)
        }
        
    }
    
    
    
    public var trimStrategyForEmptyState: EmptyStateView.TrimStrategy {
        get {
            return cuckoo_manager.getter("trimStrategyForEmptyState",
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.trimStrategyForEmptyState)
        }
        
    }
    

    

    

	public struct __StubbingProxy_EmptyStateDataSource: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	    public init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    var viewForEmptyState: Cuckoo.ProtocolToBeStubbedReadOnlyProperty<MockEmptyStateDataSource, UIView?> {
	        return .init(manager: cuckoo_manager, name: "viewForEmptyState")
	    }
	    
	    
	    var imageForEmptyState: Cuckoo.ProtocolToBeStubbedReadOnlyProperty<MockEmptyStateDataSource, UIImage?> {
	        return .init(manager: cuckoo_manager, name: "imageForEmptyState")
	    }
	    
	    
	    var titleForEmptyState: Cuckoo.ProtocolToBeStubbedReadOnlyProperty<MockEmptyStateDataSource, String?> {
	        return .init(manager: cuckoo_manager, name: "titleForEmptyState")
	    }
	    
	    
	    var titleColorForEmptyState: Cuckoo.ProtocolToBeStubbedReadOnlyProperty<MockEmptyStateDataSource, UIColor?> {
	        return .init(manager: cuckoo_manager, name: "titleColorForEmptyState")
	    }
	    
	    
	    var titleFontForEmptyState: Cuckoo.ProtocolToBeStubbedReadOnlyProperty<MockEmptyStateDataSource, UIFont?> {
	        return .init(manager: cuckoo_manager, name: "titleFontForEmptyState")
	    }
	    
	    
	    var verticalSpacingForEmptyState: Cuckoo.ProtocolToBeStubbedReadOnlyProperty<MockEmptyStateDataSource, CGFloat?> {
	        return .init(manager: cuckoo_manager, name: "verticalSpacingForEmptyState")
	    }
	    
	    
	    var trimStrategyForEmptyState: Cuckoo.ProtocolToBeStubbedReadOnlyProperty<MockEmptyStateDataSource, EmptyStateView.TrimStrategy> {
	        return .init(manager: cuckoo_manager, name: "trimStrategyForEmptyState")
	    }
	    
	    
	}

	public struct __VerificationProxy_EmptyStateDataSource: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	    public init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	    
	    var viewForEmptyState: Cuckoo.VerifyReadOnlyProperty<UIView?> {
	        return .init(manager: cuckoo_manager, name: "viewForEmptyState", callMatcher: callMatcher, sourceLocation: sourceLocation)
	    }
	    
	    
	    var imageForEmptyState: Cuckoo.VerifyReadOnlyProperty<UIImage?> {
	        return .init(manager: cuckoo_manager, name: "imageForEmptyState", callMatcher: callMatcher, sourceLocation: sourceLocation)
	    }
	    
	    
	    var titleForEmptyState: Cuckoo.VerifyReadOnlyProperty<String?> {
	        return .init(manager: cuckoo_manager, name: "titleForEmptyState", callMatcher: callMatcher, sourceLocation: sourceLocation)
	    }
	    
	    
	    var titleColorForEmptyState: Cuckoo.VerifyReadOnlyProperty<UIColor?> {
	        return .init(manager: cuckoo_manager, name: "titleColorForEmptyState", callMatcher: callMatcher, sourceLocation: sourceLocation)
	    }
	    
	    
	    var titleFontForEmptyState: Cuckoo.VerifyReadOnlyProperty<UIFont?> {
	        return .init(manager: cuckoo_manager, name: "titleFontForEmptyState", callMatcher: callMatcher, sourceLocation: sourceLocation)
	    }
	    
	    
	    var verticalSpacingForEmptyState: Cuckoo.VerifyReadOnlyProperty<CGFloat?> {
	        return .init(manager: cuckoo_manager, name: "verticalSpacingForEmptyState", callMatcher: callMatcher, sourceLocation: sourceLocation)
	    }
	    
	    
	    var trimStrategyForEmptyState: Cuckoo.VerifyReadOnlyProperty<EmptyStateView.TrimStrategy> {
	        return .init(manager: cuckoo_manager, name: "trimStrategyForEmptyState", callMatcher: callMatcher, sourceLocation: sourceLocation)
	    }
	    
	
	    
	}
}

public class EmptyStateDataSourceStub: EmptyStateDataSource {
    
    
    public var viewForEmptyState: UIView? {
        get {
            return DefaultValueRegistry.defaultValue(for: (UIView?).self)
        }
        
    }
    
    
    public var imageForEmptyState: UIImage? {
        get {
            return DefaultValueRegistry.defaultValue(for: (UIImage?).self)
        }
        
    }
    
    
    public var titleForEmptyState: String? {
        get {
            return DefaultValueRegistry.defaultValue(for: (String?).self)
        }
        
    }
    
    
    public var titleColorForEmptyState: UIColor? {
        get {
            return DefaultValueRegistry.defaultValue(for: (UIColor?).self)
        }
        
    }
    
    
    public var titleFontForEmptyState: UIFont? {
        get {
            return DefaultValueRegistry.defaultValue(for: (UIFont?).self)
        }
        
    }
    
    
    public var verticalSpacingForEmptyState: CGFloat? {
        get {
            return DefaultValueRegistry.defaultValue(for: (CGFloat?).self)
        }
        
    }
    
    
    public var trimStrategyForEmptyState: EmptyStateView.TrimStrategy {
        get {
            return DefaultValueRegistry.defaultValue(for: (EmptyStateView.TrimStrategy).self)
        }
        
    }
    

    

    
}



public class MockEmptyStateViewOwnerProtocol: EmptyStateViewOwnerProtocol, Cuckoo.ProtocolMock {
    
    public typealias MocksType = EmptyStateViewOwnerProtocol
    
    public typealias Stubbing = __StubbingProxy_EmptyStateViewOwnerProtocol
    public typealias Verification = __VerificationProxy_EmptyStateViewOwnerProtocol

    public let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: EmptyStateViewOwnerProtocol?

    public func enableDefaultImplementation(_ stub: EmptyStateViewOwnerProtocol) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    
    
    
    public var emptyStateDelegate: EmptyStateDelegate {
        get {
            return cuckoo_manager.getter("emptyStateDelegate",
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.emptyStateDelegate)
        }
        
    }
    
    
    
    public var emptyStateDataSource: EmptyStateDataSource {
        get {
            return cuckoo_manager.getter("emptyStateDataSource",
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.emptyStateDataSource)
        }
        
    }
    
    
    
    public var contentViewForEmptyState: UIView {
        get {
            return cuckoo_manager.getter("contentViewForEmptyState",
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.contentViewForEmptyState)
        }
        
    }
    
    
    
    public var displayInsetsForEmptyState: UIEdgeInsets {
        get {
            return cuckoo_manager.getter("displayInsetsForEmptyState",
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.displayInsetsForEmptyState)
        }
        
    }
    
    
    
    public var appearanceAnimatorForEmptyState: ViewAnimatorProtocol? {
        get {
            return cuckoo_manager.getter("appearanceAnimatorForEmptyState",
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.appearanceAnimatorForEmptyState)
        }
        
    }
    
    
    
    public var dismissAnimatorForEmptyState: ViewAnimatorProtocol? {
        get {
            return cuckoo_manager.getter("dismissAnimatorForEmptyState",
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.dismissAnimatorForEmptyState)
        }
        
    }
    

    

    
    
    
    public func reloadEmptyState(animated: Bool)  {
        
    return cuckoo_manager.call("reloadEmptyState(animated: Bool)",
            parameters: (animated),
            escapingParameters: (animated),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.reloadEmptyState(animated: animated))
        
    }
    
    
    
    public func updateEmptyState(animated: Bool)  {
        
    return cuckoo_manager.call("updateEmptyState(animated: Bool)",
            parameters: (animated),
            escapingParameters: (animated),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.updateEmptyState(animated: animated))
        
    }
    
    
    
    public func updateEmptyStateInsets()  {
        
    return cuckoo_manager.call("updateEmptyStateInsets()",
            parameters: (),
            escapingParameters: (),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.updateEmptyStateInsets())
        
    }
    

	public struct __StubbingProxy_EmptyStateViewOwnerProtocol: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	    public init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    var emptyStateDelegate: Cuckoo.ProtocolToBeStubbedReadOnlyProperty<MockEmptyStateViewOwnerProtocol, EmptyStateDelegate> {
	        return .init(manager: cuckoo_manager, name: "emptyStateDelegate")
	    }
	    
	    
	    var emptyStateDataSource: Cuckoo.ProtocolToBeStubbedReadOnlyProperty<MockEmptyStateViewOwnerProtocol, EmptyStateDataSource> {
	        return .init(manager: cuckoo_manager, name: "emptyStateDataSource")
	    }
	    
	    
	    var contentViewForEmptyState: Cuckoo.ProtocolToBeStubbedReadOnlyProperty<MockEmptyStateViewOwnerProtocol, UIView> {
	        return .init(manager: cuckoo_manager, name: "contentViewForEmptyState")
	    }
	    
	    
	    var displayInsetsForEmptyState: Cuckoo.ProtocolToBeStubbedReadOnlyProperty<MockEmptyStateViewOwnerProtocol, UIEdgeInsets> {
	        return .init(manager: cuckoo_manager, name: "displayInsetsForEmptyState")
	    }
	    
	    
	    var appearanceAnimatorForEmptyState: Cuckoo.ProtocolToBeStubbedReadOnlyProperty<MockEmptyStateViewOwnerProtocol, ViewAnimatorProtocol?> {
	        return .init(manager: cuckoo_manager, name: "appearanceAnimatorForEmptyState")
	    }
	    
	    
	    var dismissAnimatorForEmptyState: Cuckoo.ProtocolToBeStubbedReadOnlyProperty<MockEmptyStateViewOwnerProtocol, ViewAnimatorProtocol?> {
	        return .init(manager: cuckoo_manager, name: "dismissAnimatorForEmptyState")
	    }
	    
	    
	    func reloadEmptyState<M1: Cuckoo.Matchable>(animated: M1) -> Cuckoo.ProtocolStubNoReturnFunction<(Bool)> where M1.MatchedType == Bool {
	        let matchers: [Cuckoo.ParameterMatcher<(Bool)>] = [wrap(matchable: animated) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockEmptyStateViewOwnerProtocol.self, method: "reloadEmptyState(animated: Bool)", parameterMatchers: matchers))
	    }
	    
	    func updateEmptyState<M1: Cuckoo.Matchable>(animated: M1) -> Cuckoo.ProtocolStubNoReturnFunction<(Bool)> where M1.MatchedType == Bool {
	        let matchers: [Cuckoo.ParameterMatcher<(Bool)>] = [wrap(matchable: animated) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockEmptyStateViewOwnerProtocol.self, method: "updateEmptyState(animated: Bool)", parameterMatchers: matchers))
	    }
	    
	    func updateEmptyStateInsets() -> Cuckoo.ProtocolStubNoReturnFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockEmptyStateViewOwnerProtocol.self, method: "updateEmptyStateInsets()", parameterMatchers: matchers))
	    }
	    
	}

	public struct __VerificationProxy_EmptyStateViewOwnerProtocol: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	    public init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	    
	    var emptyStateDelegate: Cuckoo.VerifyReadOnlyProperty<EmptyStateDelegate> {
	        return .init(manager: cuckoo_manager, name: "emptyStateDelegate", callMatcher: callMatcher, sourceLocation: sourceLocation)
	    }
	    
	    
	    var emptyStateDataSource: Cuckoo.VerifyReadOnlyProperty<EmptyStateDataSource> {
	        return .init(manager: cuckoo_manager, name: "emptyStateDataSource", callMatcher: callMatcher, sourceLocation: sourceLocation)
	    }
	    
	    
	    var contentViewForEmptyState: Cuckoo.VerifyReadOnlyProperty<UIView> {
	        return .init(manager: cuckoo_manager, name: "contentViewForEmptyState", callMatcher: callMatcher, sourceLocation: sourceLocation)
	    }
	    
	    
	    var displayInsetsForEmptyState: Cuckoo.VerifyReadOnlyProperty<UIEdgeInsets> {
	        return .init(manager: cuckoo_manager, name: "displayInsetsForEmptyState", callMatcher: callMatcher, sourceLocation: sourceLocation)
	    }
	    
	    
	    var appearanceAnimatorForEmptyState: Cuckoo.VerifyReadOnlyProperty<ViewAnimatorProtocol?> {
	        return .init(manager: cuckoo_manager, name: "appearanceAnimatorForEmptyState", callMatcher: callMatcher, sourceLocation: sourceLocation)
	    }
	    
	    
	    var dismissAnimatorForEmptyState: Cuckoo.VerifyReadOnlyProperty<ViewAnimatorProtocol?> {
	        return .init(manager: cuckoo_manager, name: "dismissAnimatorForEmptyState", callMatcher: callMatcher, sourceLocation: sourceLocation)
	    }
	    
	
	    
	    @discardableResult
	    func reloadEmptyState<M1: Cuckoo.Matchable>(animated: M1) -> Cuckoo.__DoNotUse<(Bool), Void> where M1.MatchedType == Bool {
	        let matchers: [Cuckoo.ParameterMatcher<(Bool)>] = [wrap(matchable: animated) { $0 }]
	        return cuckoo_manager.verify("reloadEmptyState(animated: Bool)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func updateEmptyState<M1: Cuckoo.Matchable>(animated: M1) -> Cuckoo.__DoNotUse<(Bool), Void> where M1.MatchedType == Bool {
	        let matchers: [Cuckoo.ParameterMatcher<(Bool)>] = [wrap(matchable: animated) { $0 }]
	        return cuckoo_manager.verify("updateEmptyState(animated: Bool)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func updateEmptyStateInsets() -> Cuckoo.__DoNotUse<(), Void> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("updateEmptyStateInsets()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

public class EmptyStateViewOwnerProtocolStub: EmptyStateViewOwnerProtocol {
    
    
    public var emptyStateDelegate: EmptyStateDelegate {
        get {
            return DefaultValueRegistry.defaultValue(for: (EmptyStateDelegate).self)
        }
        
    }
    
    
    public var emptyStateDataSource: EmptyStateDataSource {
        get {
            return DefaultValueRegistry.defaultValue(for: (EmptyStateDataSource).self)
        }
        
    }
    
    
    public var contentViewForEmptyState: UIView {
        get {
            return DefaultValueRegistry.defaultValue(for: (UIView).self)
        }
        
    }
    
    
    public var displayInsetsForEmptyState: UIEdgeInsets {
        get {
            return DefaultValueRegistry.defaultValue(for: (UIEdgeInsets).self)
        }
        
    }
    
    
    public var appearanceAnimatorForEmptyState: ViewAnimatorProtocol? {
        get {
            return DefaultValueRegistry.defaultValue(for: (ViewAnimatorProtocol?).self)
        }
        
    }
    
    
    public var dismissAnimatorForEmptyState: ViewAnimatorProtocol? {
        get {
            return DefaultValueRegistry.defaultValue(for: (ViewAnimatorProtocol?).self)
        }
        
    }
    

    

    
    public func reloadEmptyState(animated: Bool)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
    public func updateEmptyState(animated: Bool)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
    public func updateEmptyStateInsets()   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
}



public class MockEmptyStateListViewModelProtocol: EmptyStateListViewModelProtocol, Cuckoo.ProtocolMock {
    
    public typealias MocksType = EmptyStateListViewModelProtocol
    
    public typealias Stubbing = __StubbingProxy_EmptyStateListViewModelProtocol
    public typealias Verification = __VerificationProxy_EmptyStateListViewModelProtocol

    public let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: EmptyStateListViewModelProtocol?

    public func enableDefaultImplementation(_ stub: EmptyStateListViewModelProtocol) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    
    
    
    public var emptyStateView: UIView {
        get {
            return cuckoo_manager.getter("emptyStateView",
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.emptyStateView)
        }
        
    }
    
    
    
    public var displayInsetsForEmptyState: UIEdgeInsets {
        get {
            return cuckoo_manager.getter("displayInsetsForEmptyState",
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.displayInsetsForEmptyState)
        }
        
    }
    

    

    

	public struct __StubbingProxy_EmptyStateListViewModelProtocol: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	    public init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    var emptyStateView: Cuckoo.ProtocolToBeStubbedReadOnlyProperty<MockEmptyStateListViewModelProtocol, UIView> {
	        return .init(manager: cuckoo_manager, name: "emptyStateView")
	    }
	    
	    
	    var displayInsetsForEmptyState: Cuckoo.ProtocolToBeStubbedReadOnlyProperty<MockEmptyStateListViewModelProtocol, UIEdgeInsets> {
	        return .init(manager: cuckoo_manager, name: "displayInsetsForEmptyState")
	    }
	    
	    
	}

	public struct __VerificationProxy_EmptyStateListViewModelProtocol: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	    public init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	    
	    var emptyStateView: Cuckoo.VerifyReadOnlyProperty<UIView> {
	        return .init(manager: cuckoo_manager, name: "emptyStateView", callMatcher: callMatcher, sourceLocation: sourceLocation)
	    }
	    
	    
	    var displayInsetsForEmptyState: Cuckoo.VerifyReadOnlyProperty<UIEdgeInsets> {
	        return .init(manager: cuckoo_manager, name: "displayInsetsForEmptyState", callMatcher: callMatcher, sourceLocation: sourceLocation)
	    }
	    
	
	    
	}
}

public class EmptyStateListViewModelProtocolStub: EmptyStateListViewModelProtocol {
    
    
    public var emptyStateView: UIView {
        get {
            return DefaultValueRegistry.defaultValue(for: (UIView).self)
        }
        
    }
    
    
    public var displayInsetsForEmptyState: UIEdgeInsets {
        get {
            return DefaultValueRegistry.defaultValue(for: (UIEdgeInsets).self)
        }
        
    }
    

    

    
}


import Cuckoo
@testable import SoraPassport

import UIKit


 class MockDeepLinkNavigatorProtocol: DeepLinkNavigatorProtocol, Cuckoo.ProtocolMock {
    
     typealias MocksType = DeepLinkNavigatorProtocol
    
     typealias Stubbing = __StubbingProxy_DeepLinkNavigatorProtocol
     typealias Verification = __VerificationProxy_DeepLinkNavigatorProtocol

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: DeepLinkNavigatorProtocol?

     func enableDefaultImplementation(_ stub: DeepLinkNavigatorProtocol) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    

    

    
    
    
     func navigate(to invitation: InvitationDeepLink) -> Bool {
        
    return cuckoo_manager.call("navigate(to: InvitationDeepLink) -> Bool",
            parameters: (invitation),
            escapingParameters: (invitation),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.navigate(to: invitation))
        
    }
    

	 struct __StubbingProxy_DeepLinkNavigatorProtocol: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func navigate<M1: Cuckoo.Matchable>(to invitation: M1) -> Cuckoo.ProtocolStubFunction<(InvitationDeepLink), Bool> where M1.MatchedType == InvitationDeepLink {
	        let matchers: [Cuckoo.ParameterMatcher<(InvitationDeepLink)>] = [wrap(matchable: invitation) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockDeepLinkNavigatorProtocol.self, method: "navigate(to: InvitationDeepLink) -> Bool", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_DeepLinkNavigatorProtocol: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func navigate<M1: Cuckoo.Matchable>(to invitation: M1) -> Cuckoo.__DoNotUse<(InvitationDeepLink), Bool> where M1.MatchedType == InvitationDeepLink {
	        let matchers: [Cuckoo.ParameterMatcher<(InvitationDeepLink)>] = [wrap(matchable: invitation) { $0 }]
	        return cuckoo_manager.verify("navigate(to: InvitationDeepLink) -> Bool", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

 class DeepLinkNavigatorProtocolStub: DeepLinkNavigatorProtocol {
    

    

    
     func navigate(to invitation: InvitationDeepLink) -> Bool  {
        return DefaultValueRegistry.defaultValue(for: (Bool).self)
    }
    
}



 class MockDeepLinkProtocol: DeepLinkProtocol, Cuckoo.ProtocolMock {
    
     typealias MocksType = DeepLinkProtocol
    
     typealias Stubbing = __StubbingProxy_DeepLinkProtocol
     typealias Verification = __VerificationProxy_DeepLinkProtocol

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: DeepLinkProtocol?

     func enableDefaultImplementation(_ stub: DeepLinkProtocol) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    

    

    
    
    
     func accept(navigator: DeepLinkNavigatorProtocol) -> Bool {
        
    return cuckoo_manager.call("accept(navigator: DeepLinkNavigatorProtocol) -> Bool",
            parameters: (navigator),
            escapingParameters: (navigator),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.accept(navigator: navigator))
        
    }
    

	 struct __StubbingProxy_DeepLinkProtocol: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func accept<M1: Cuckoo.Matchable>(navigator: M1) -> Cuckoo.ProtocolStubFunction<(DeepLinkNavigatorProtocol), Bool> where M1.MatchedType == DeepLinkNavigatorProtocol {
	        let matchers: [Cuckoo.ParameterMatcher<(DeepLinkNavigatorProtocol)>] = [wrap(matchable: navigator) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockDeepLinkProtocol.self, method: "accept(navigator: DeepLinkNavigatorProtocol) -> Bool", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_DeepLinkProtocol: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func accept<M1: Cuckoo.Matchable>(navigator: M1) -> Cuckoo.__DoNotUse<(DeepLinkNavigatorProtocol), Bool> where M1.MatchedType == DeepLinkNavigatorProtocol {
	        let matchers: [Cuckoo.ParameterMatcher<(DeepLinkNavigatorProtocol)>] = [wrap(matchable: navigator) { $0 }]
	        return cuckoo_manager.verify("accept(navigator: DeepLinkNavigatorProtocol) -> Bool", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

 class DeepLinkProtocolStub: DeepLinkProtocol {
    

    

    
     func accept(navigator: DeepLinkNavigatorProtocol) -> Bool  {
        return DefaultValueRegistry.defaultValue(for: (Bool).self)
    }
    
}


import Cuckoo
@testable import SoraPassport

import Foundation


 class MockEventProtocol: EventProtocol, Cuckoo.ProtocolMock {
    
     typealias MocksType = EventProtocol
    
     typealias Stubbing = __StubbingProxy_EventProtocol
     typealias Verification = __VerificationProxy_EventProtocol

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: EventProtocol?

     func enableDefaultImplementation(_ stub: EventProtocol) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    

    

    
    
    
     func accept(visitor: EventVisitorProtocol)  {
        
    return cuckoo_manager.call("accept(visitor: EventVisitorProtocol)",
            parameters: (visitor),
            escapingParameters: (visitor),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.accept(visitor: visitor))
        
    }
    

	 struct __StubbingProxy_EventProtocol: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func accept<M1: Cuckoo.Matchable>(visitor: M1) -> Cuckoo.ProtocolStubNoReturnFunction<(EventVisitorProtocol)> where M1.MatchedType == EventVisitorProtocol {
	        let matchers: [Cuckoo.ParameterMatcher<(EventVisitorProtocol)>] = [wrap(matchable: visitor) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockEventProtocol.self, method: "accept(visitor: EventVisitorProtocol)", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_EventProtocol: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func accept<M1: Cuckoo.Matchable>(visitor: M1) -> Cuckoo.__DoNotUse<(EventVisitorProtocol), Void> where M1.MatchedType == EventVisitorProtocol {
	        let matchers: [Cuckoo.ParameterMatcher<(EventVisitorProtocol)>] = [wrap(matchable: visitor) { $0 }]
	        return cuckoo_manager.verify("accept(visitor: EventVisitorProtocol)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

 class EventProtocolStub: EventProtocol {
    

    

    
     func accept(visitor: EventVisitorProtocol)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
}



 class MockEventCenterProtocol: EventCenterProtocol, Cuckoo.ProtocolMock {
    
     typealias MocksType = EventCenterProtocol
    
     typealias Stubbing = __StubbingProxy_EventCenterProtocol
     typealias Verification = __VerificationProxy_EventCenterProtocol

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: EventCenterProtocol?

     func enableDefaultImplementation(_ stub: EventCenterProtocol) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    

    

    
    
    
     func notify(with event: EventProtocol)  {
        
    return cuckoo_manager.call("notify(with: EventProtocol)",
            parameters: (event),
            escapingParameters: (event),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.notify(with: event))
        
    }
    
    
    
     func add(observer: EventVisitorProtocol, dispatchIn queue: DispatchQueue?)  {
        
    return cuckoo_manager.call("add(observer: EventVisitorProtocol, dispatchIn: DispatchQueue?)",
            parameters: (observer, queue),
            escapingParameters: (observer, queue),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.add(observer: observer, dispatchIn: queue))
        
    }
    
    
    
     func remove(observer: EventVisitorProtocol)  {
        
    return cuckoo_manager.call("remove(observer: EventVisitorProtocol)",
            parameters: (observer),
            escapingParameters: (observer),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.remove(observer: observer))
        
    }
    

	 struct __StubbingProxy_EventCenterProtocol: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func notify<M1: Cuckoo.Matchable>(with event: M1) -> Cuckoo.ProtocolStubNoReturnFunction<(EventProtocol)> where M1.MatchedType == EventProtocol {
	        let matchers: [Cuckoo.ParameterMatcher<(EventProtocol)>] = [wrap(matchable: event) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockEventCenterProtocol.self, method: "notify(with: EventProtocol)", parameterMatchers: matchers))
	    }
	    
	    func add<M1: Cuckoo.Matchable, M2: Cuckoo.OptionalMatchable>(observer: M1, dispatchIn queue: M2) -> Cuckoo.ProtocolStubNoReturnFunction<(EventVisitorProtocol, DispatchQueue?)> where M1.MatchedType == EventVisitorProtocol, M2.OptionalMatchedType == DispatchQueue {
	        let matchers: [Cuckoo.ParameterMatcher<(EventVisitorProtocol, DispatchQueue?)>] = [wrap(matchable: observer) { $0.0 }, wrap(matchable: queue) { $0.1 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockEventCenterProtocol.self, method: "add(observer: EventVisitorProtocol, dispatchIn: DispatchQueue?)", parameterMatchers: matchers))
	    }
	    
	    func remove<M1: Cuckoo.Matchable>(observer: M1) -> Cuckoo.ProtocolStubNoReturnFunction<(EventVisitorProtocol)> where M1.MatchedType == EventVisitorProtocol {
	        let matchers: [Cuckoo.ParameterMatcher<(EventVisitorProtocol)>] = [wrap(matchable: observer) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockEventCenterProtocol.self, method: "remove(observer: EventVisitorProtocol)", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_EventCenterProtocol: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func notify<M1: Cuckoo.Matchable>(with event: M1) -> Cuckoo.__DoNotUse<(EventProtocol), Void> where M1.MatchedType == EventProtocol {
	        let matchers: [Cuckoo.ParameterMatcher<(EventProtocol)>] = [wrap(matchable: event) { $0 }]
	        return cuckoo_manager.verify("notify(with: EventProtocol)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func add<M1: Cuckoo.Matchable, M2: Cuckoo.OptionalMatchable>(observer: M1, dispatchIn queue: M2) -> Cuckoo.__DoNotUse<(EventVisitorProtocol, DispatchQueue?), Void> where M1.MatchedType == EventVisitorProtocol, M2.OptionalMatchedType == DispatchQueue {
	        let matchers: [Cuckoo.ParameterMatcher<(EventVisitorProtocol, DispatchQueue?)>] = [wrap(matchable: observer) { $0.0 }, wrap(matchable: queue) { $0.1 }]
	        return cuckoo_manager.verify("add(observer: EventVisitorProtocol, dispatchIn: DispatchQueue?)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func remove<M1: Cuckoo.Matchable>(observer: M1) -> Cuckoo.__DoNotUse<(EventVisitorProtocol), Void> where M1.MatchedType == EventVisitorProtocol {
	        let matchers: [Cuckoo.ParameterMatcher<(EventVisitorProtocol)>] = [wrap(matchable: observer) { $0 }]
	        return cuckoo_manager.verify("remove(observer: EventVisitorProtocol)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

 class EventCenterProtocolStub: EventCenterProtocol {
    

    

    
     func notify(with event: EventProtocol)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func add(observer: EventVisitorProtocol, dispatchIn queue: DispatchQueue?)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func remove(observer: EventVisitorProtocol)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
}


import Cuckoo
@testable import SoraPassport

import Foundation


 class MockEventVisitorProtocol: EventVisitorProtocol, Cuckoo.ProtocolMock {
    
     typealias MocksType = EventVisitorProtocol
    
     typealias Stubbing = __StubbingProxy_EventVisitorProtocol
     typealias Verification = __VerificationProxy_EventVisitorProtocol

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: EventVisitorProtocol?

     func enableDefaultImplementation(_ stub: EventVisitorProtocol) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    

    

    
    
    
     func processPushNotification(event: PushNotificationEvent)  {
        
    return cuckoo_manager.call("processPushNotification(event: PushNotificationEvent)",
            parameters: (event),
            escapingParameters: (event),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.processPushNotification(event: event))
        
    }
    
    
    
     func processProjectVote(event: ProjectVoteEvent)  {
        
    return cuckoo_manager.call("processProjectVote(event: ProjectVoteEvent)",
            parameters: (event),
            escapingParameters: (event),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.processProjectVote(event: event))
        
    }
    
    
    
     func processProjectFavoriteToggle(event: ProjectFavoriteToggleEvent)  {
        
    return cuckoo_manager.call("processProjectFavoriteToggle(event: ProjectFavoriteToggleEvent)",
            parameters: (event),
            escapingParameters: (event),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.processProjectFavoriteToggle(event: event))
        
    }
    
    
    
     func processProjectView(event: ProjectViewEvent)  {
        
    return cuckoo_manager.call("processProjectView(event: ProjectViewEvent)",
            parameters: (event),
            escapingParameters: (event),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.processProjectView(event: event))
        
    }
    

	 struct __StubbingProxy_EventVisitorProtocol: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func processPushNotification<M1: Cuckoo.Matchable>(event: M1) -> Cuckoo.ProtocolStubNoReturnFunction<(PushNotificationEvent)> where M1.MatchedType == PushNotificationEvent {
	        let matchers: [Cuckoo.ParameterMatcher<(PushNotificationEvent)>] = [wrap(matchable: event) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockEventVisitorProtocol.self, method: "processPushNotification(event: PushNotificationEvent)", parameterMatchers: matchers))
	    }
	    
	    func processProjectVote<M1: Cuckoo.Matchable>(event: M1) -> Cuckoo.ProtocolStubNoReturnFunction<(ProjectVoteEvent)> where M1.MatchedType == ProjectVoteEvent {
	        let matchers: [Cuckoo.ParameterMatcher<(ProjectVoteEvent)>] = [wrap(matchable: event) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockEventVisitorProtocol.self, method: "processProjectVote(event: ProjectVoteEvent)", parameterMatchers: matchers))
	    }
	    
	    func processProjectFavoriteToggle<M1: Cuckoo.Matchable>(event: M1) -> Cuckoo.ProtocolStubNoReturnFunction<(ProjectFavoriteToggleEvent)> where M1.MatchedType == ProjectFavoriteToggleEvent {
	        let matchers: [Cuckoo.ParameterMatcher<(ProjectFavoriteToggleEvent)>] = [wrap(matchable: event) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockEventVisitorProtocol.self, method: "processProjectFavoriteToggle(event: ProjectFavoriteToggleEvent)", parameterMatchers: matchers))
	    }
	    
	    func processProjectView<M1: Cuckoo.Matchable>(event: M1) -> Cuckoo.ProtocolStubNoReturnFunction<(ProjectViewEvent)> where M1.MatchedType == ProjectViewEvent {
	        let matchers: [Cuckoo.ParameterMatcher<(ProjectViewEvent)>] = [wrap(matchable: event) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockEventVisitorProtocol.self, method: "processProjectView(event: ProjectViewEvent)", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_EventVisitorProtocol: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func processPushNotification<M1: Cuckoo.Matchable>(event: M1) -> Cuckoo.__DoNotUse<(PushNotificationEvent), Void> where M1.MatchedType == PushNotificationEvent {
	        let matchers: [Cuckoo.ParameterMatcher<(PushNotificationEvent)>] = [wrap(matchable: event) { $0 }]
	        return cuckoo_manager.verify("processPushNotification(event: PushNotificationEvent)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func processProjectVote<M1: Cuckoo.Matchable>(event: M1) -> Cuckoo.__DoNotUse<(ProjectVoteEvent), Void> where M1.MatchedType == ProjectVoteEvent {
	        let matchers: [Cuckoo.ParameterMatcher<(ProjectVoteEvent)>] = [wrap(matchable: event) { $0 }]
	        return cuckoo_manager.verify("processProjectVote(event: ProjectVoteEvent)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func processProjectFavoriteToggle<M1: Cuckoo.Matchable>(event: M1) -> Cuckoo.__DoNotUse<(ProjectFavoriteToggleEvent), Void> where M1.MatchedType == ProjectFavoriteToggleEvent {
	        let matchers: [Cuckoo.ParameterMatcher<(ProjectFavoriteToggleEvent)>] = [wrap(matchable: event) { $0 }]
	        return cuckoo_manager.verify("processProjectFavoriteToggle(event: ProjectFavoriteToggleEvent)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func processProjectView<M1: Cuckoo.Matchable>(event: M1) -> Cuckoo.__DoNotUse<(ProjectViewEvent), Void> where M1.MatchedType == ProjectViewEvent {
	        let matchers: [Cuckoo.ParameterMatcher<(ProjectViewEvent)>] = [wrap(matchable: event) { $0 }]
	        return cuckoo_manager.verify("processProjectView(event: ProjectViewEvent)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

 class EventVisitorProtocolStub: EventVisitorProtocol {
    

    

    
     func processPushNotification(event: PushNotificationEvent)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func processProjectVote(event: ProjectVoteEvent)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func processProjectFavoriteToggle(event: ProjectFavoriteToggleEvent)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func processProjectView(event: ProjectViewEvent)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
}


import Cuckoo
@testable import SoraPassport

import UIKit


 class MockAlertPresentable: AlertPresentable, Cuckoo.ProtocolMock {
    
     typealias MocksType = AlertPresentable
    
     typealias Stubbing = __StubbingProxy_AlertPresentable
     typealias Verification = __VerificationProxy_AlertPresentable

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: AlertPresentable?

     func enableDefaultImplementation(_ stub: AlertPresentable) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    

    

    
    
    
     func present(message: String?, title: String?, closeAction: String?, from view: ControllerBackedProtocol?)  {
        
    return cuckoo_manager.call("present(message: String?, title: String?, closeAction: String?, from: ControllerBackedProtocol?)",
            parameters: (message, title, closeAction, view),
            escapingParameters: (message, title, closeAction, view),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.present(message: message, title: title, closeAction: closeAction, from: view))
        
    }
    
    
    
     func present(message: String?, title: String?, actions: [AlertPresentableAction], from view: ControllerBackedProtocol?)  {
        
    return cuckoo_manager.call("present(message: String?, title: String?, actions: [AlertPresentableAction], from: ControllerBackedProtocol?)",
            parameters: (message, title, actions, view),
            escapingParameters: (message, title, actions, view),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.present(message: message, title: title, actions: actions, from: view))
        
    }
    

	 struct __StubbingProxy_AlertPresentable: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func present<M1: Cuckoo.OptionalMatchable, M2: Cuckoo.OptionalMatchable, M3: Cuckoo.OptionalMatchable, M4: Cuckoo.OptionalMatchable>(message: M1, title: M2, closeAction: M3, from view: M4) -> Cuckoo.ProtocolStubNoReturnFunction<(String?, String?, String?, ControllerBackedProtocol?)> where M1.OptionalMatchedType == String, M2.OptionalMatchedType == String, M3.OptionalMatchedType == String, M4.OptionalMatchedType == ControllerBackedProtocol {
	        let matchers: [Cuckoo.ParameterMatcher<(String?, String?, String?, ControllerBackedProtocol?)>] = [wrap(matchable: message) { $0.0 }, wrap(matchable: title) { $0.1 }, wrap(matchable: closeAction) { $0.2 }, wrap(matchable: view) { $0.3 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockAlertPresentable.self, method: "present(message: String?, title: String?, closeAction: String?, from: ControllerBackedProtocol?)", parameterMatchers: matchers))
	    }
	    
	    func present<M1: Cuckoo.OptionalMatchable, M2: Cuckoo.OptionalMatchable, M3: Cuckoo.Matchable, M4: Cuckoo.OptionalMatchable>(message: M1, title: M2, actions: M3, from view: M4) -> Cuckoo.ProtocolStubNoReturnFunction<(String?, String?, [AlertPresentableAction], ControllerBackedProtocol?)> where M1.OptionalMatchedType == String, M2.OptionalMatchedType == String, M3.MatchedType == [AlertPresentableAction], M4.OptionalMatchedType == ControllerBackedProtocol {
	        let matchers: [Cuckoo.ParameterMatcher<(String?, String?, [AlertPresentableAction], ControllerBackedProtocol?)>] = [wrap(matchable: message) { $0.0 }, wrap(matchable: title) { $0.1 }, wrap(matchable: actions) { $0.2 }, wrap(matchable: view) { $0.3 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockAlertPresentable.self, method: "present(message: String?, title: String?, actions: [AlertPresentableAction], from: ControllerBackedProtocol?)", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_AlertPresentable: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func present<M1: Cuckoo.OptionalMatchable, M2: Cuckoo.OptionalMatchable, M3: Cuckoo.OptionalMatchable, M4: Cuckoo.OptionalMatchable>(message: M1, title: M2, closeAction: M3, from view: M4) -> Cuckoo.__DoNotUse<(String?, String?, String?, ControllerBackedProtocol?), Void> where M1.OptionalMatchedType == String, M2.OptionalMatchedType == String, M3.OptionalMatchedType == String, M4.OptionalMatchedType == ControllerBackedProtocol {
	        let matchers: [Cuckoo.ParameterMatcher<(String?, String?, String?, ControllerBackedProtocol?)>] = [wrap(matchable: message) { $0.0 }, wrap(matchable: title) { $0.1 }, wrap(matchable: closeAction) { $0.2 }, wrap(matchable: view) { $0.3 }]
	        return cuckoo_manager.verify("present(message: String?, title: String?, closeAction: String?, from: ControllerBackedProtocol?)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func present<M1: Cuckoo.OptionalMatchable, M2: Cuckoo.OptionalMatchable, M3: Cuckoo.Matchable, M4: Cuckoo.OptionalMatchable>(message: M1, title: M2, actions: M3, from view: M4) -> Cuckoo.__DoNotUse<(String?, String?, [AlertPresentableAction], ControllerBackedProtocol?), Void> where M1.OptionalMatchedType == String, M2.OptionalMatchedType == String, M3.MatchedType == [AlertPresentableAction], M4.OptionalMatchedType == ControllerBackedProtocol {
	        let matchers: [Cuckoo.ParameterMatcher<(String?, String?, [AlertPresentableAction], ControllerBackedProtocol?)>] = [wrap(matchable: message) { $0.0 }, wrap(matchable: title) { $0.1 }, wrap(matchable: actions) { $0.2 }, wrap(matchable: view) { $0.3 }]
	        return cuckoo_manager.verify("present(message: String?, title: String?, actions: [AlertPresentableAction], from: ControllerBackedProtocol?)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

 class AlertPresentableStub: AlertPresentable {
    

    

    
     func present(message: String?, title: String?, closeAction: String?, from view: ControllerBackedProtocol?)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func present(message: String?, title: String?, actions: [AlertPresentableAction], from view: ControllerBackedProtocol?)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
}


import Cuckoo
@testable import SoraPassport

import UIKit


 class MockControllerBackedProtocol: ControllerBackedProtocol, Cuckoo.ProtocolMock {
    
     typealias MocksType = ControllerBackedProtocol
    
     typealias Stubbing = __StubbingProxy_ControllerBackedProtocol
     typealias Verification = __VerificationProxy_ControllerBackedProtocol

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: ControllerBackedProtocol?

     func enableDefaultImplementation(_ stub: ControllerBackedProtocol) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    
    
    
     var controller: UIViewController {
        get {
            return cuckoo_manager.getter("controller",
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.controller)
        }
        
    }
    

    

    

	 struct __StubbingProxy_ControllerBackedProtocol: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    var controller: Cuckoo.ProtocolToBeStubbedReadOnlyProperty<MockControllerBackedProtocol, UIViewController> {
	        return .init(manager: cuckoo_manager, name: "controller")
	    }
	    
	    
	}

	 struct __VerificationProxy_ControllerBackedProtocol: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	    
	    var controller: Cuckoo.VerifyReadOnlyProperty<UIViewController> {
	        return .init(manager: cuckoo_manager, name: "controller", callMatcher: callMatcher, sourceLocation: sourceLocation)
	    }
	    
	
	    
	}
}

 class ControllerBackedProtocolStub: ControllerBackedProtocol {
    
    
     var controller: UIViewController {
        get {
            return DefaultValueRegistry.defaultValue(for: (UIViewController).self)
        }
        
    }
    

    

    
}


import Cuckoo
@testable import SoraPassport

import Foundation


 class MockErrorPresentable: ErrorPresentable, Cuckoo.ProtocolMock {
    
     typealias MocksType = ErrorPresentable
    
     typealias Stubbing = __StubbingProxy_ErrorPresentable
     typealias Verification = __VerificationProxy_ErrorPresentable

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: ErrorPresentable?

     func enableDefaultImplementation(_ stub: ErrorPresentable) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    

    

    
    
    
     func present(error: Error, from view: ControllerBackedProtocol?) -> Bool {
        
    return cuckoo_manager.call("present(error: Error, from: ControllerBackedProtocol?) -> Bool",
            parameters: (error, view),
            escapingParameters: (error, view),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.present(error: error, from: view))
        
    }
    

	 struct __StubbingProxy_ErrorPresentable: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func present<M1: Cuckoo.Matchable, M2: Cuckoo.OptionalMatchable>(error: M1, from view: M2) -> Cuckoo.ProtocolStubFunction<(Error, ControllerBackedProtocol?), Bool> where M1.MatchedType == Error, M2.OptionalMatchedType == ControllerBackedProtocol {
	        let matchers: [Cuckoo.ParameterMatcher<(Error, ControllerBackedProtocol?)>] = [wrap(matchable: error) { $0.0 }, wrap(matchable: view) { $0.1 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockErrorPresentable.self, method: "present(error: Error, from: ControllerBackedProtocol?) -> Bool", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_ErrorPresentable: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func present<M1: Cuckoo.Matchable, M2: Cuckoo.OptionalMatchable>(error: M1, from view: M2) -> Cuckoo.__DoNotUse<(Error, ControllerBackedProtocol?), Bool> where M1.MatchedType == Error, M2.OptionalMatchedType == ControllerBackedProtocol {
	        let matchers: [Cuckoo.ParameterMatcher<(Error, ControllerBackedProtocol?)>] = [wrap(matchable: error) { $0.0 }, wrap(matchable: view) { $0.1 }]
	        return cuckoo_manager.verify("present(error: Error, from: ControllerBackedProtocol?) -> Bool", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

 class ErrorPresentableStub: ErrorPresentable {
    

    

    
     func present(error: Error, from view: ControllerBackedProtocol?) -> Bool  {
        return DefaultValueRegistry.defaultValue(for: (Bool).self)
    }
    
}


import Cuckoo
@testable import SoraPassport

import SoraUI
import UIKit


 class MockLoadableViewProtocol: LoadableViewProtocol, Cuckoo.ProtocolMock {
    
     typealias MocksType = LoadableViewProtocol
    
     typealias Stubbing = __StubbingProxy_LoadableViewProtocol
     typealias Verification = __VerificationProxy_LoadableViewProtocol

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: LoadableViewProtocol?

     func enableDefaultImplementation(_ stub: LoadableViewProtocol) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    
    
    
     var loadableContentView: UIView! {
        get {
            return cuckoo_manager.getter("loadableContentView",
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.loadableContentView)
        }
        
    }
    
    
    
     var shouldDisableInteractionWhenLoading: Bool {
        get {
            return cuckoo_manager.getter("shouldDisableInteractionWhenLoading",
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.shouldDisableInteractionWhenLoading)
        }
        
    }
    

    

    
    
    
     func didStartLoading()  {
        
    return cuckoo_manager.call("didStartLoading()",
            parameters: (),
            escapingParameters: (),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.didStartLoading())
        
    }
    
    
    
     func didStopLoading()  {
        
    return cuckoo_manager.call("didStopLoading()",
            parameters: (),
            escapingParameters: (),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.didStopLoading())
        
    }
    

	 struct __StubbingProxy_LoadableViewProtocol: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    var loadableContentView: Cuckoo.ProtocolToBeStubbedReadOnlyProperty<MockLoadableViewProtocol, UIView?> {
	        return .init(manager: cuckoo_manager, name: "loadableContentView")
	    }
	    
	    
	    var shouldDisableInteractionWhenLoading: Cuckoo.ProtocolToBeStubbedReadOnlyProperty<MockLoadableViewProtocol, Bool> {
	        return .init(manager: cuckoo_manager, name: "shouldDisableInteractionWhenLoading")
	    }
	    
	    
	    func didStartLoading() -> Cuckoo.ProtocolStubNoReturnFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockLoadableViewProtocol.self, method: "didStartLoading()", parameterMatchers: matchers))
	    }
	    
	    func didStopLoading() -> Cuckoo.ProtocolStubNoReturnFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockLoadableViewProtocol.self, method: "didStopLoading()", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_LoadableViewProtocol: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	    
	    var loadableContentView: Cuckoo.VerifyReadOnlyProperty<UIView?> {
	        return .init(manager: cuckoo_manager, name: "loadableContentView", callMatcher: callMatcher, sourceLocation: sourceLocation)
	    }
	    
	    
	    var shouldDisableInteractionWhenLoading: Cuckoo.VerifyReadOnlyProperty<Bool> {
	        return .init(manager: cuckoo_manager, name: "shouldDisableInteractionWhenLoading", callMatcher: callMatcher, sourceLocation: sourceLocation)
	    }
	    
	
	    
	    @discardableResult
	    func didStartLoading() -> Cuckoo.__DoNotUse<(), Void> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("didStartLoading()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func didStopLoading() -> Cuckoo.__DoNotUse<(), Void> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("didStopLoading()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

 class LoadableViewProtocolStub: LoadableViewProtocol {
    
    
     var loadableContentView: UIView! {
        get {
            return DefaultValueRegistry.defaultValue(for: (UIView?).self)
        }
        
    }
    
    
     var shouldDisableInteractionWhenLoading: Bool {
        get {
            return DefaultValueRegistry.defaultValue(for: (Bool).self)
        }
        
    }
    

    

    
     func didStartLoading()   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func didStopLoading()   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
}


import Cuckoo
@testable import SoraPassport

import SoraUI
import UIKit


 class MockApplicationStatusPresentable: ApplicationStatusPresentable, Cuckoo.ProtocolMock {
    
     typealias MocksType = ApplicationStatusPresentable
    
     typealias Stubbing = __StubbingProxy_ApplicationStatusPresentable
     typealias Verification = __VerificationProxy_ApplicationStatusPresentable

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: ApplicationStatusPresentable?

     func enableDefaultImplementation(_ stub: ApplicationStatusPresentable) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    

    

    
    
    
     func presentStatus(title: String, style: ApplicationStatusStyle, animated: Bool)  {
        
    return cuckoo_manager.call("presentStatus(title: String, style: ApplicationStatusStyle, animated: Bool)",
            parameters: (title, style, animated),
            escapingParameters: (title, style, animated),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.presentStatus(title: title, style: style, animated: animated))
        
    }
    
    
    
     func dismissStatus(title: String?, style: ApplicationStatusStyle?, animated: Bool)  {
        
    return cuckoo_manager.call("dismissStatus(title: String?, style: ApplicationStatusStyle?, animated: Bool)",
            parameters: (title, style, animated),
            escapingParameters: (title, style, animated),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.dismissStatus(title: title, style: style, animated: animated))
        
    }
    

	 struct __StubbingProxy_ApplicationStatusPresentable: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func presentStatus<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable, M3: Cuckoo.Matchable>(title: M1, style: M2, animated: M3) -> Cuckoo.ProtocolStubNoReturnFunction<(String, ApplicationStatusStyle, Bool)> where M1.MatchedType == String, M2.MatchedType == ApplicationStatusStyle, M3.MatchedType == Bool {
	        let matchers: [Cuckoo.ParameterMatcher<(String, ApplicationStatusStyle, Bool)>] = [wrap(matchable: title) { $0.0 }, wrap(matchable: style) { $0.1 }, wrap(matchable: animated) { $0.2 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockApplicationStatusPresentable.self, method: "presentStatus(title: String, style: ApplicationStatusStyle, animated: Bool)", parameterMatchers: matchers))
	    }
	    
	    func dismissStatus<M1: Cuckoo.OptionalMatchable, M2: Cuckoo.OptionalMatchable, M3: Cuckoo.Matchable>(title: M1, style: M2, animated: M3) -> Cuckoo.ProtocolStubNoReturnFunction<(String?, ApplicationStatusStyle?, Bool)> where M1.OptionalMatchedType == String, M2.OptionalMatchedType == ApplicationStatusStyle, M3.MatchedType == Bool {
	        let matchers: [Cuckoo.ParameterMatcher<(String?, ApplicationStatusStyle?, Bool)>] = [wrap(matchable: title) { $0.0 }, wrap(matchable: style) { $0.1 }, wrap(matchable: animated) { $0.2 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockApplicationStatusPresentable.self, method: "dismissStatus(title: String?, style: ApplicationStatusStyle?, animated: Bool)", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_ApplicationStatusPresentable: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func presentStatus<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable, M3: Cuckoo.Matchable>(title: M1, style: M2, animated: M3) -> Cuckoo.__DoNotUse<(String, ApplicationStatusStyle, Bool), Void> where M1.MatchedType == String, M2.MatchedType == ApplicationStatusStyle, M3.MatchedType == Bool {
	        let matchers: [Cuckoo.ParameterMatcher<(String, ApplicationStatusStyle, Bool)>] = [wrap(matchable: title) { $0.0 }, wrap(matchable: style) { $0.1 }, wrap(matchable: animated) { $0.2 }]
	        return cuckoo_manager.verify("presentStatus(title: String, style: ApplicationStatusStyle, animated: Bool)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func dismissStatus<M1: Cuckoo.OptionalMatchable, M2: Cuckoo.OptionalMatchable, M3: Cuckoo.Matchable>(title: M1, style: M2, animated: M3) -> Cuckoo.__DoNotUse<(String?, ApplicationStatusStyle?, Bool), Void> where M1.OptionalMatchedType == String, M2.OptionalMatchedType == ApplicationStatusStyle, M3.MatchedType == Bool {
	        let matchers: [Cuckoo.ParameterMatcher<(String?, ApplicationStatusStyle?, Bool)>] = [wrap(matchable: title) { $0.0 }, wrap(matchable: style) { $0.1 }, wrap(matchable: animated) { $0.2 }]
	        return cuckoo_manager.verify("dismissStatus(title: String?, style: ApplicationStatusStyle?, animated: Bool)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

 class ApplicationStatusPresentableStub: ApplicationStatusPresentable {
    

    

    
     func presentStatus(title: String, style: ApplicationStatusStyle, animated: Bool)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func dismissStatus(title: String?, style: ApplicationStatusStyle?, animated: Bool)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
}


import Cuckoo
@testable import SoraPassport

import SoraUI
import UIKit


 class MockUnsupportedVersionPresentable: UnsupportedVersionPresentable, Cuckoo.ProtocolMock {
    
     typealias MocksType = UnsupportedVersionPresentable
    
     typealias Stubbing = __StubbingProxy_UnsupportedVersionPresentable
     typealias Verification = __VerificationProxy_UnsupportedVersionPresentable

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: UnsupportedVersionPresentable?

     func enableDefaultImplementation(_ stub: UnsupportedVersionPresentable) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    

    

    
    
    
     func presentUnsupportedVersion(for data: SupportedVersionData, on window: UIWindow?, animated: Bool)  {
        
    return cuckoo_manager.call("presentUnsupportedVersion(for: SupportedVersionData, on: UIWindow?, animated: Bool)",
            parameters: (data, window, animated),
            escapingParameters: (data, window, animated),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.presentUnsupportedVersion(for: data, on: window, animated: animated))
        
    }
    

	 struct __StubbingProxy_UnsupportedVersionPresentable: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func presentUnsupportedVersion<M1: Cuckoo.Matchable, M2: Cuckoo.OptionalMatchable, M3: Cuckoo.Matchable>(for data: M1, on window: M2, animated: M3) -> Cuckoo.ProtocolStubNoReturnFunction<(SupportedVersionData, UIWindow?, Bool)> where M1.MatchedType == SupportedVersionData, M2.OptionalMatchedType == UIWindow, M3.MatchedType == Bool {
	        let matchers: [Cuckoo.ParameterMatcher<(SupportedVersionData, UIWindow?, Bool)>] = [wrap(matchable: data) { $0.0 }, wrap(matchable: window) { $0.1 }, wrap(matchable: animated) { $0.2 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockUnsupportedVersionPresentable.self, method: "presentUnsupportedVersion(for: SupportedVersionData, on: UIWindow?, animated: Bool)", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_UnsupportedVersionPresentable: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func presentUnsupportedVersion<M1: Cuckoo.Matchable, M2: Cuckoo.OptionalMatchable, M3: Cuckoo.Matchable>(for data: M1, on window: M2, animated: M3) -> Cuckoo.__DoNotUse<(SupportedVersionData, UIWindow?, Bool), Void> where M1.MatchedType == SupportedVersionData, M2.OptionalMatchedType == UIWindow, M3.MatchedType == Bool {
	        let matchers: [Cuckoo.ParameterMatcher<(SupportedVersionData, UIWindow?, Bool)>] = [wrap(matchable: data) { $0.0 }, wrap(matchable: window) { $0.1 }, wrap(matchable: animated) { $0.2 }]
	        return cuckoo_manager.verify("presentUnsupportedVersion(for: SupportedVersionData, on: UIWindow?, animated: Bool)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

 class UnsupportedVersionPresentableStub: UnsupportedVersionPresentable {
    

    

    
     func presentUnsupportedVersion(for data: SupportedVersionData, on window: UIWindow?, animated: Bool)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
}


import Cuckoo
@testable import SoraPassport

import Foundation
import SafariServices
import UIKit


 class MockWebPresentable: WebPresentable, Cuckoo.ProtocolMock {
    
     typealias MocksType = WebPresentable
    
     typealias Stubbing = __StubbingProxy_WebPresentable
     typealias Verification = __VerificationProxy_WebPresentable

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: WebPresentable?

     func enableDefaultImplementation(_ stub: WebPresentable) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    

    

    
    
    
     func showWeb(url: URL, from view: ControllerBackedProtocol, style: WebPresentableStyle)  {
        
    return cuckoo_manager.call("showWeb(url: URL, from: ControllerBackedProtocol, style: WebPresentableStyle)",
            parameters: (url, view, style),
            escapingParameters: (url, view, style),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.showWeb(url: url, from: view, style: style))
        
    }
    

	 struct __StubbingProxy_WebPresentable: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func showWeb<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable, M3: Cuckoo.Matchable>(url: M1, from view: M2, style: M3) -> Cuckoo.ProtocolStubNoReturnFunction<(URL, ControllerBackedProtocol, WebPresentableStyle)> where M1.MatchedType == URL, M2.MatchedType == ControllerBackedProtocol, M3.MatchedType == WebPresentableStyle {
	        let matchers: [Cuckoo.ParameterMatcher<(URL, ControllerBackedProtocol, WebPresentableStyle)>] = [wrap(matchable: url) { $0.0 }, wrap(matchable: view) { $0.1 }, wrap(matchable: style) { $0.2 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockWebPresentable.self, method: "showWeb(url: URL, from: ControllerBackedProtocol, style: WebPresentableStyle)", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_WebPresentable: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func showWeb<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable, M3: Cuckoo.Matchable>(url: M1, from view: M2, style: M3) -> Cuckoo.__DoNotUse<(URL, ControllerBackedProtocol, WebPresentableStyle), Void> where M1.MatchedType == URL, M2.MatchedType == ControllerBackedProtocol, M3.MatchedType == WebPresentableStyle {
	        let matchers: [Cuckoo.ParameterMatcher<(URL, ControllerBackedProtocol, WebPresentableStyle)>] = [wrap(matchable: url) { $0.0 }, wrap(matchable: view) { $0.1 }, wrap(matchable: style) { $0.2 }]
	        return cuckoo_manager.verify("showWeb(url: URL, from: ControllerBackedProtocol, style: WebPresentableStyle)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

 class WebPresentableStub: WebPresentable {
    

    

    
     func showWeb(url: URL, from view: ControllerBackedProtocol, style: WebPresentableStyle)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
}


import Cuckoo
@testable import SoraPassport

import Foundation


 class MockSelectionListViewProtocol: SelectionListViewProtocol, Cuckoo.ProtocolMock {
    
     typealias MocksType = SelectionListViewProtocol
    
     typealias Stubbing = __StubbingProxy_SelectionListViewProtocol
     typealias Verification = __VerificationProxy_SelectionListViewProtocol

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: SelectionListViewProtocol?

     func enableDefaultImplementation(_ stub: SelectionListViewProtocol) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    
    
    
     var controller: UIViewController {
        get {
            return cuckoo_manager.getter("controller",
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.controller)
        }
        
    }
    

    

    
    
    
     func didReload()  {
        
    return cuckoo_manager.call("didReload()",
            parameters: (),
            escapingParameters: (),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.didReload())
        
    }
    

	 struct __StubbingProxy_SelectionListViewProtocol: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    var controller: Cuckoo.ProtocolToBeStubbedReadOnlyProperty<MockSelectionListViewProtocol, UIViewController> {
	        return .init(manager: cuckoo_manager, name: "controller")
	    }
	    
	    
	    func didReload() -> Cuckoo.ProtocolStubNoReturnFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockSelectionListViewProtocol.self, method: "didReload()", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_SelectionListViewProtocol: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	    
	    var controller: Cuckoo.VerifyReadOnlyProperty<UIViewController> {
	        return .init(manager: cuckoo_manager, name: "controller", callMatcher: callMatcher, sourceLocation: sourceLocation)
	    }
	    
	
	    
	    @discardableResult
	    func didReload() -> Cuckoo.__DoNotUse<(), Void> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("didReload()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

 class SelectionListViewProtocolStub: SelectionListViewProtocol {
    
    
     var controller: UIViewController {
        get {
            return DefaultValueRegistry.defaultValue(for: (UIViewController).self)
        }
        
    }
    

    

    
     func didReload()   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
}



 class MockSelectionListPresenterProtocol: SelectionListPresenterProtocol, Cuckoo.ProtocolMock {
    
     typealias MocksType = SelectionListPresenterProtocol
    
     typealias Stubbing = __StubbingProxy_SelectionListPresenterProtocol
     typealias Verification = __VerificationProxy_SelectionListPresenterProtocol

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: SelectionListPresenterProtocol?

     func enableDefaultImplementation(_ stub: SelectionListPresenterProtocol) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    
    
    
     var numberOfItems: Int {
        get {
            return cuckoo_manager.getter("numberOfItems",
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.numberOfItems)
        }
        
    }
    

    

    
    
    
     func item(at index: Int) -> SelectionListViewModelProtocol {
        
    return cuckoo_manager.call("item(at: Int) -> SelectionListViewModelProtocol",
            parameters: (index),
            escapingParameters: (index),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.item(at: index))
        
    }
    
    
    
     func selectItem(at index: Int)  {
        
    return cuckoo_manager.call("selectItem(at: Int)",
            parameters: (index),
            escapingParameters: (index),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.selectItem(at: index))
        
    }
    

	 struct __StubbingProxy_SelectionListPresenterProtocol: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    var numberOfItems: Cuckoo.ProtocolToBeStubbedReadOnlyProperty<MockSelectionListPresenterProtocol, Int> {
	        return .init(manager: cuckoo_manager, name: "numberOfItems")
	    }
	    
	    
	    func item<M1: Cuckoo.Matchable>(at index: M1) -> Cuckoo.ProtocolStubFunction<(Int), SelectionListViewModelProtocol> where M1.MatchedType == Int {
	        let matchers: [Cuckoo.ParameterMatcher<(Int)>] = [wrap(matchable: index) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockSelectionListPresenterProtocol.self, method: "item(at: Int) -> SelectionListViewModelProtocol", parameterMatchers: matchers))
	    }
	    
	    func selectItem<M1: Cuckoo.Matchable>(at index: M1) -> Cuckoo.ProtocolStubNoReturnFunction<(Int)> where M1.MatchedType == Int {
	        let matchers: [Cuckoo.ParameterMatcher<(Int)>] = [wrap(matchable: index) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockSelectionListPresenterProtocol.self, method: "selectItem(at: Int)", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_SelectionListPresenterProtocol: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	    
	    var numberOfItems: Cuckoo.VerifyReadOnlyProperty<Int> {
	        return .init(manager: cuckoo_manager, name: "numberOfItems", callMatcher: callMatcher, sourceLocation: sourceLocation)
	    }
	    
	
	    
	    @discardableResult
	    func item<M1: Cuckoo.Matchable>(at index: M1) -> Cuckoo.__DoNotUse<(Int), SelectionListViewModelProtocol> where M1.MatchedType == Int {
	        let matchers: [Cuckoo.ParameterMatcher<(Int)>] = [wrap(matchable: index) { $0 }]
	        return cuckoo_manager.verify("item(at: Int) -> SelectionListViewModelProtocol", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func selectItem<M1: Cuckoo.Matchable>(at index: M1) -> Cuckoo.__DoNotUse<(Int), Void> where M1.MatchedType == Int {
	        let matchers: [Cuckoo.ParameterMatcher<(Int)>] = [wrap(matchable: index) { $0 }]
	        return cuckoo_manager.verify("selectItem(at: Int)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

 class SelectionListPresenterProtocolStub: SelectionListPresenterProtocol {
    
    
     var numberOfItems: Int {
        get {
            return DefaultValueRegistry.defaultValue(for: (Int).self)
        }
        
    }
    

    

    
     func item(at index: Int) -> SelectionListViewModelProtocol  {
        return DefaultValueRegistry.defaultValue(for: (SelectionListViewModelProtocol).self)
    }
    
     func selectItem(at index: Int)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
}


import Cuckoo
@testable import SoraPassport

import Foundation


 class MockWebPresentingViewProtocol: WebPresentingViewProtocol, Cuckoo.ProtocolMock {
    
     typealias MocksType = WebPresentingViewProtocol
    
     typealias Stubbing = __StubbingProxy_WebPresentingViewProtocol
     typealias Verification = __VerificationProxy_WebPresentingViewProtocol

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: WebPresentingViewProtocol?

     func enableDefaultImplementation(_ stub: WebPresentingViewProtocol) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    
    
    
     var controller: UIViewController {
        get {
            return cuckoo_manager.getter("controller",
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.controller)
        }
        
    }
    
    
    
     var loadableContentView: UIView! {
        get {
            return cuckoo_manager.getter("loadableContentView",
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.loadableContentView)
        }
        
    }
    
    
    
     var shouldDisableInteractionWhenLoading: Bool {
        get {
            return cuckoo_manager.getter("shouldDisableInteractionWhenLoading",
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.shouldDisableInteractionWhenLoading)
        }
        
    }
    

    

    
    
    
     func didStartLoading()  {
        
    return cuckoo_manager.call("didStartLoading()",
            parameters: (),
            escapingParameters: (),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.didStartLoading())
        
    }
    
    
    
     func didStopLoading()  {
        
    return cuckoo_manager.call("didStopLoading()",
            parameters: (),
            escapingParameters: (),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.didStopLoading())
        
    }
    

	 struct __StubbingProxy_WebPresentingViewProtocol: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    var controller: Cuckoo.ProtocolToBeStubbedReadOnlyProperty<MockWebPresentingViewProtocol, UIViewController> {
	        return .init(manager: cuckoo_manager, name: "controller")
	    }
	    
	    
	    var loadableContentView: Cuckoo.ProtocolToBeStubbedReadOnlyProperty<MockWebPresentingViewProtocol, UIView?> {
	        return .init(manager: cuckoo_manager, name: "loadableContentView")
	    }
	    
	    
	    var shouldDisableInteractionWhenLoading: Cuckoo.ProtocolToBeStubbedReadOnlyProperty<MockWebPresentingViewProtocol, Bool> {
	        return .init(manager: cuckoo_manager, name: "shouldDisableInteractionWhenLoading")
	    }
	    
	    
	    func didStartLoading() -> Cuckoo.ProtocolStubNoReturnFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockWebPresentingViewProtocol.self, method: "didStartLoading()", parameterMatchers: matchers))
	    }
	    
	    func didStopLoading() -> Cuckoo.ProtocolStubNoReturnFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockWebPresentingViewProtocol.self, method: "didStopLoading()", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_WebPresentingViewProtocol: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	    
	    var controller: Cuckoo.VerifyReadOnlyProperty<UIViewController> {
	        return .init(manager: cuckoo_manager, name: "controller", callMatcher: callMatcher, sourceLocation: sourceLocation)
	    }
	    
	    
	    var loadableContentView: Cuckoo.VerifyReadOnlyProperty<UIView?> {
	        return .init(manager: cuckoo_manager, name: "loadableContentView", callMatcher: callMatcher, sourceLocation: sourceLocation)
	    }
	    
	    
	    var shouldDisableInteractionWhenLoading: Cuckoo.VerifyReadOnlyProperty<Bool> {
	        return .init(manager: cuckoo_manager, name: "shouldDisableInteractionWhenLoading", callMatcher: callMatcher, sourceLocation: sourceLocation)
	    }
	    
	
	    
	    @discardableResult
	    func didStartLoading() -> Cuckoo.__DoNotUse<(), Void> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("didStartLoading()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func didStopLoading() -> Cuckoo.__DoNotUse<(), Void> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("didStopLoading()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

 class WebPresentingViewProtocolStub: WebPresentingViewProtocol {
    
    
     var controller: UIViewController {
        get {
            return DefaultValueRegistry.defaultValue(for: (UIViewController).self)
        }
        
    }
    
    
     var loadableContentView: UIView! {
        get {
            return DefaultValueRegistry.defaultValue(for: (UIView?).self)
        }
        
    }
    
    
     var shouldDisableInteractionWhenLoading: Bool {
        get {
            return DefaultValueRegistry.defaultValue(for: (Bool).self)
        }
        
    }
    

    

    
     func didStartLoading()   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func didStopLoading()   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
}


import Cuckoo
@testable import SoraPassport


 class MockAboutViewProtocol: AboutViewProtocol, Cuckoo.ProtocolMock {
    
     typealias MocksType = AboutViewProtocol
    
     typealias Stubbing = __StubbingProxy_AboutViewProtocol
     typealias Verification = __VerificationProxy_AboutViewProtocol

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: AboutViewProtocol?

     func enableDefaultImplementation(_ stub: AboutViewProtocol) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    
    
    
     var controller: UIViewController {
        get {
            return cuckoo_manager.getter("controller",
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.controller)
        }
        
    }
    

    

    
    
    
     func didReceive(version: String)  {
        
    return cuckoo_manager.call("didReceive(version: String)",
            parameters: (version),
            escapingParameters: (version),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.didReceive(version: version))
        
    }
    

	 struct __StubbingProxy_AboutViewProtocol: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    var controller: Cuckoo.ProtocolToBeStubbedReadOnlyProperty<MockAboutViewProtocol, UIViewController> {
	        return .init(manager: cuckoo_manager, name: "controller")
	    }
	    
	    
	    func didReceive<M1: Cuckoo.Matchable>(version: M1) -> Cuckoo.ProtocolStubNoReturnFunction<(String)> where M1.MatchedType == String {
	        let matchers: [Cuckoo.ParameterMatcher<(String)>] = [wrap(matchable: version) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockAboutViewProtocol.self, method: "didReceive(version: String)", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_AboutViewProtocol: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	    
	    var controller: Cuckoo.VerifyReadOnlyProperty<UIViewController> {
	        return .init(manager: cuckoo_manager, name: "controller", callMatcher: callMatcher, sourceLocation: sourceLocation)
	    }
	    
	
	    
	    @discardableResult
	    func didReceive<M1: Cuckoo.Matchable>(version: M1) -> Cuckoo.__DoNotUse<(String), Void> where M1.MatchedType == String {
	        let matchers: [Cuckoo.ParameterMatcher<(String)>] = [wrap(matchable: version) { $0 }]
	        return cuckoo_manager.verify("didReceive(version: String)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

 class AboutViewProtocolStub: AboutViewProtocol {
    
    
     var controller: UIViewController {
        get {
            return DefaultValueRegistry.defaultValue(for: (UIViewController).self)
        }
        
    }
    

    

    
     func didReceive(version: String)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
}



 class MockAboutPresenterProtocol: AboutPresenterProtocol, Cuckoo.ProtocolMock {
    
     typealias MocksType = AboutPresenterProtocol
    
     typealias Stubbing = __StubbingProxy_AboutPresenterProtocol
     typealias Verification = __VerificationProxy_AboutPresenterProtocol

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: AboutPresenterProtocol?

     func enableDefaultImplementation(_ stub: AboutPresenterProtocol) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    

    

    
    
    
     func setup()  {
        
    return cuckoo_manager.call("setup()",
            parameters: (),
            escapingParameters: (),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.setup())
        
    }
    
    
    
     func activateOpensource()  {
        
    return cuckoo_manager.call("activateOpensource()",
            parameters: (),
            escapingParameters: (),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.activateOpensource())
        
    }
    
    
    
     func activateTerms()  {
        
    return cuckoo_manager.call("activateTerms()",
            parameters: (),
            escapingParameters: (),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.activateTerms())
        
    }
    
    
    
     func activatePrivacyPolicy()  {
        
    return cuckoo_manager.call("activatePrivacyPolicy()",
            parameters: (),
            escapingParameters: (),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.activatePrivacyPolicy())
        
    }
    
    
    
     func activateWriteUs()  {
        
    return cuckoo_manager.call("activateWriteUs()",
            parameters: (),
            escapingParameters: (),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.activateWriteUs())
        
    }
    

	 struct __StubbingProxy_AboutPresenterProtocol: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func setup() -> Cuckoo.ProtocolStubNoReturnFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockAboutPresenterProtocol.self, method: "setup()", parameterMatchers: matchers))
	    }
	    
	    func activateOpensource() -> Cuckoo.ProtocolStubNoReturnFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockAboutPresenterProtocol.self, method: "activateOpensource()", parameterMatchers: matchers))
	    }
	    
	    func activateTerms() -> Cuckoo.ProtocolStubNoReturnFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockAboutPresenterProtocol.self, method: "activateTerms()", parameterMatchers: matchers))
	    }
	    
	    func activatePrivacyPolicy() -> Cuckoo.ProtocolStubNoReturnFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockAboutPresenterProtocol.self, method: "activatePrivacyPolicy()", parameterMatchers: matchers))
	    }
	    
	    func activateWriteUs() -> Cuckoo.ProtocolStubNoReturnFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockAboutPresenterProtocol.self, method: "activateWriteUs()", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_AboutPresenterProtocol: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func setup() -> Cuckoo.__DoNotUse<(), Void> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("setup()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func activateOpensource() -> Cuckoo.__DoNotUse<(), Void> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("activateOpensource()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func activateTerms() -> Cuckoo.__DoNotUse<(), Void> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("activateTerms()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func activatePrivacyPolicy() -> Cuckoo.__DoNotUse<(), Void> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("activatePrivacyPolicy()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func activateWriteUs() -> Cuckoo.__DoNotUse<(), Void> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("activateWriteUs()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

 class AboutPresenterProtocolStub: AboutPresenterProtocol {
    

    

    
     func setup()   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func activateOpensource()   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func activateTerms()   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func activatePrivacyPolicy()   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func activateWriteUs()   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
}



 class MockAboutWireframeProtocol: AboutWireframeProtocol, Cuckoo.ProtocolMock {
    
     typealias MocksType = AboutWireframeProtocol
    
     typealias Stubbing = __StubbingProxy_AboutWireframeProtocol
     typealias Verification = __VerificationProxy_AboutWireframeProtocol

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: AboutWireframeProtocol?

     func enableDefaultImplementation(_ stub: AboutWireframeProtocol) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    

    

    
    
    
     func showWeb(url: URL, from view: ControllerBackedProtocol, style: WebPresentableStyle)  {
        
    return cuckoo_manager.call("showWeb(url: URL, from: ControllerBackedProtocol, style: WebPresentableStyle)",
            parameters: (url, view, style),
            escapingParameters: (url, view, style),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.showWeb(url: url, from: view, style: style))
        
    }
    

	 struct __StubbingProxy_AboutWireframeProtocol: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func showWeb<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable, M3: Cuckoo.Matchable>(url: M1, from view: M2, style: M3) -> Cuckoo.ProtocolStubNoReturnFunction<(URL, ControllerBackedProtocol, WebPresentableStyle)> where M1.MatchedType == URL, M2.MatchedType == ControllerBackedProtocol, M3.MatchedType == WebPresentableStyle {
	        let matchers: [Cuckoo.ParameterMatcher<(URL, ControllerBackedProtocol, WebPresentableStyle)>] = [wrap(matchable: url) { $0.0 }, wrap(matchable: view) { $0.1 }, wrap(matchable: style) { $0.2 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockAboutWireframeProtocol.self, method: "showWeb(url: URL, from: ControllerBackedProtocol, style: WebPresentableStyle)", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_AboutWireframeProtocol: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func showWeb<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable, M3: Cuckoo.Matchable>(url: M1, from view: M2, style: M3) -> Cuckoo.__DoNotUse<(URL, ControllerBackedProtocol, WebPresentableStyle), Void> where M1.MatchedType == URL, M2.MatchedType == ControllerBackedProtocol, M3.MatchedType == WebPresentableStyle {
	        let matchers: [Cuckoo.ParameterMatcher<(URL, ControllerBackedProtocol, WebPresentableStyle)>] = [wrap(matchable: url) { $0.0 }, wrap(matchable: view) { $0.1 }, wrap(matchable: style) { $0.2 }]
	        return cuckoo_manager.verify("showWeb(url: URL, from: ControllerBackedProtocol, style: WebPresentableStyle)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

 class AboutWireframeProtocolStub: AboutWireframeProtocol {
    

    

    
     func showWeb(url: URL, from view: ControllerBackedProtocol, style: WebPresentableStyle)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
}


import Cuckoo
@testable import SoraPassport

import Foundation


 class MockAccessBackupViewProtocol: AccessBackupViewProtocol, Cuckoo.ProtocolMock {
    
     typealias MocksType = AccessBackupViewProtocol
    
     typealias Stubbing = __StubbingProxy_AccessBackupViewProtocol
     typealias Verification = __VerificationProxy_AccessBackupViewProtocol

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: AccessBackupViewProtocol?

     func enableDefaultImplementation(_ stub: AccessBackupViewProtocol) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    
    
    
     var controller: UIViewController {
        get {
            return cuckoo_manager.getter("controller",
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.controller)
        }
        
    }
    

    

    
    
    
     func didReceiveBackup(phrase: String)  {
        
    return cuckoo_manager.call("didReceiveBackup(phrase: String)",
            parameters: (phrase),
            escapingParameters: (phrase),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.didReceiveBackup(phrase: phrase))
        
    }
    

	 struct __StubbingProxy_AccessBackupViewProtocol: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    var controller: Cuckoo.ProtocolToBeStubbedReadOnlyProperty<MockAccessBackupViewProtocol, UIViewController> {
	        return .init(manager: cuckoo_manager, name: "controller")
	    }
	    
	    
	    func didReceiveBackup<M1: Cuckoo.Matchable>(phrase: M1) -> Cuckoo.ProtocolStubNoReturnFunction<(String)> where M1.MatchedType == String {
	        let matchers: [Cuckoo.ParameterMatcher<(String)>] = [wrap(matchable: phrase) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockAccessBackupViewProtocol.self, method: "didReceiveBackup(phrase: String)", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_AccessBackupViewProtocol: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	    
	    var controller: Cuckoo.VerifyReadOnlyProperty<UIViewController> {
	        return .init(manager: cuckoo_manager, name: "controller", callMatcher: callMatcher, sourceLocation: sourceLocation)
	    }
	    
	
	    
	    @discardableResult
	    func didReceiveBackup<M1: Cuckoo.Matchable>(phrase: M1) -> Cuckoo.__DoNotUse<(String), Void> where M1.MatchedType == String {
	        let matchers: [Cuckoo.ParameterMatcher<(String)>] = [wrap(matchable: phrase) { $0 }]
	        return cuckoo_manager.verify("didReceiveBackup(phrase: String)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

 class AccessBackupViewProtocolStub: AccessBackupViewProtocol {
    
    
     var controller: UIViewController {
        get {
            return DefaultValueRegistry.defaultValue(for: (UIViewController).self)
        }
        
    }
    

    

    
     func didReceiveBackup(phrase: String)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
}



 class MockAccessBackupPresenterProtocol: AccessBackupPresenterProtocol, Cuckoo.ProtocolMock {
    
     typealias MocksType = AccessBackupPresenterProtocol
    
     typealias Stubbing = __StubbingProxy_AccessBackupPresenterProtocol
     typealias Verification = __VerificationProxy_AccessBackupPresenterProtocol

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: AccessBackupPresenterProtocol?

     func enableDefaultImplementation(_ stub: AccessBackupPresenterProtocol) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    

    

    
    
    
     func viewIsReady()  {
        
    return cuckoo_manager.call("viewIsReady()",
            parameters: (),
            escapingParameters: (),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.viewIsReady())
        
    }
    
    
    
     func activateSharing()  {
        
    return cuckoo_manager.call("activateSharing()",
            parameters: (),
            escapingParameters: (),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.activateSharing())
        
    }
    
    
    
     func activateNext()  {
        
    return cuckoo_manager.call("activateNext()",
            parameters: (),
            escapingParameters: (),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.activateNext())
        
    }
    

	 struct __StubbingProxy_AccessBackupPresenterProtocol: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func viewIsReady() -> Cuckoo.ProtocolStubNoReturnFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockAccessBackupPresenterProtocol.self, method: "viewIsReady()", parameterMatchers: matchers))
	    }
	    
	    func activateSharing() -> Cuckoo.ProtocolStubNoReturnFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockAccessBackupPresenterProtocol.self, method: "activateSharing()", parameterMatchers: matchers))
	    }
	    
	    func activateNext() -> Cuckoo.ProtocolStubNoReturnFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockAccessBackupPresenterProtocol.self, method: "activateNext()", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_AccessBackupPresenterProtocol: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func viewIsReady() -> Cuckoo.__DoNotUse<(), Void> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("viewIsReady()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func activateSharing() -> Cuckoo.__DoNotUse<(), Void> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("activateSharing()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func activateNext() -> Cuckoo.__DoNotUse<(), Void> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("activateNext()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

 class AccessBackupPresenterProtocolStub: AccessBackupPresenterProtocol {
    

    

    
     func viewIsReady()   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func activateSharing()   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func activateNext()   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
}



 class MockAccessBackupInteractorInputProtocol: AccessBackupInteractorInputProtocol, Cuckoo.ProtocolMock {
    
     typealias MocksType = AccessBackupInteractorInputProtocol
    
     typealias Stubbing = __StubbingProxy_AccessBackupInteractorInputProtocol
     typealias Verification = __VerificationProxy_AccessBackupInteractorInputProtocol

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: AccessBackupInteractorInputProtocol?

     func enableDefaultImplementation(_ stub: AccessBackupInteractorInputProtocol) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    

    

    
    
    
     func load()  {
        
    return cuckoo_manager.call("load()",
            parameters: (),
            escapingParameters: (),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.load())
        
    }
    

	 struct __StubbingProxy_AccessBackupInteractorInputProtocol: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func load() -> Cuckoo.ProtocolStubNoReturnFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockAccessBackupInteractorInputProtocol.self, method: "load()", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_AccessBackupInteractorInputProtocol: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func load() -> Cuckoo.__DoNotUse<(), Void> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("load()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

 class AccessBackupInteractorInputProtocolStub: AccessBackupInteractorInputProtocol {
    

    

    
     func load()   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
}



 class MockAccessBackupInteractorOutputProtocol: AccessBackupInteractorOutputProtocol, Cuckoo.ProtocolMock {
    
     typealias MocksType = AccessBackupInteractorOutputProtocol
    
     typealias Stubbing = __StubbingProxy_AccessBackupInteractorOutputProtocol
     typealias Verification = __VerificationProxy_AccessBackupInteractorOutputProtocol

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: AccessBackupInteractorOutputProtocol?

     func enableDefaultImplementation(_ stub: AccessBackupInteractorOutputProtocol) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    

    

    
    
    
     func didLoad(mnemonicPhrase: String)  {
        
    return cuckoo_manager.call("didLoad(mnemonicPhrase: String)",
            parameters: (mnemonicPhrase),
            escapingParameters: (mnemonicPhrase),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.didLoad(mnemonicPhrase: mnemonicPhrase))
        
    }
    
    
    
     func didReceive(error: Error)  {
        
    return cuckoo_manager.call("didReceive(error: Error)",
            parameters: (error),
            escapingParameters: (error),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.didReceive(error: error))
        
    }
    

	 struct __StubbingProxy_AccessBackupInteractorOutputProtocol: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func didLoad<M1: Cuckoo.Matchable>(mnemonicPhrase: M1) -> Cuckoo.ProtocolStubNoReturnFunction<(String)> where M1.MatchedType == String {
	        let matchers: [Cuckoo.ParameterMatcher<(String)>] = [wrap(matchable: mnemonicPhrase) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockAccessBackupInteractorOutputProtocol.self, method: "didLoad(mnemonicPhrase: String)", parameterMatchers: matchers))
	    }
	    
	    func didReceive<M1: Cuckoo.Matchable>(error: M1) -> Cuckoo.ProtocolStubNoReturnFunction<(Error)> where M1.MatchedType == Error {
	        let matchers: [Cuckoo.ParameterMatcher<(Error)>] = [wrap(matchable: error) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockAccessBackupInteractorOutputProtocol.self, method: "didReceive(error: Error)", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_AccessBackupInteractorOutputProtocol: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func didLoad<M1: Cuckoo.Matchable>(mnemonicPhrase: M1) -> Cuckoo.__DoNotUse<(String), Void> where M1.MatchedType == String {
	        let matchers: [Cuckoo.ParameterMatcher<(String)>] = [wrap(matchable: mnemonicPhrase) { $0 }]
	        return cuckoo_manager.verify("didLoad(mnemonicPhrase: String)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func didReceive<M1: Cuckoo.Matchable>(error: M1) -> Cuckoo.__DoNotUse<(Error), Void> where M1.MatchedType == Error {
	        let matchers: [Cuckoo.ParameterMatcher<(Error)>] = [wrap(matchable: error) { $0 }]
	        return cuckoo_manager.verify("didReceive(error: Error)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

 class AccessBackupInteractorOutputProtocolStub: AccessBackupInteractorOutputProtocol {
    

    

    
     func didLoad(mnemonicPhrase: String)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func didReceive(error: Error)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
}



 class MockAccessBackupWireframeProtocol: AccessBackupWireframeProtocol, Cuckoo.ProtocolMock {
    
     typealias MocksType = AccessBackupWireframeProtocol
    
     typealias Stubbing = __StubbingProxy_AccessBackupWireframeProtocol
     typealias Verification = __VerificationProxy_AccessBackupWireframeProtocol

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: AccessBackupWireframeProtocol?

     func enableDefaultImplementation(_ stub: AccessBackupWireframeProtocol) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    

    

    
    
    
     func showNext(from view: AccessBackupViewProtocol?)  {
        
    return cuckoo_manager.call("showNext(from: AccessBackupViewProtocol?)",
            parameters: (view),
            escapingParameters: (view),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.showNext(from: view))
        
    }
    
    
    
     func present(message: String?, title: String?, closeAction: String?, from view: ControllerBackedProtocol?)  {
        
    return cuckoo_manager.call("present(message: String?, title: String?, closeAction: String?, from: ControllerBackedProtocol?)",
            parameters: (message, title, closeAction, view),
            escapingParameters: (message, title, closeAction, view),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.present(message: message, title: title, closeAction: closeAction, from: view))
        
    }
    
    
    
     func present(message: String?, title: String?, actions: [AlertPresentableAction], from view: ControllerBackedProtocol?)  {
        
    return cuckoo_manager.call("present(message: String?, title: String?, actions: [AlertPresentableAction], from: ControllerBackedProtocol?)",
            parameters: (message, title, actions, view),
            escapingParameters: (message, title, actions, view),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.present(message: message, title: title, actions: actions, from: view))
        
    }
    
    
    
     func present(error: Error, from view: ControllerBackedProtocol?) -> Bool {
        
    return cuckoo_manager.call("present(error: Error, from: ControllerBackedProtocol?) -> Bool",
            parameters: (error, view),
            escapingParameters: (error, view),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.present(error: error, from: view))
        
    }
    

	 struct __StubbingProxy_AccessBackupWireframeProtocol: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func showNext<M1: Cuckoo.OptionalMatchable>(from view: M1) -> Cuckoo.ProtocolStubNoReturnFunction<(AccessBackupViewProtocol?)> where M1.OptionalMatchedType == AccessBackupViewProtocol {
	        let matchers: [Cuckoo.ParameterMatcher<(AccessBackupViewProtocol?)>] = [wrap(matchable: view) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockAccessBackupWireframeProtocol.self, method: "showNext(from: AccessBackupViewProtocol?)", parameterMatchers: matchers))
	    }
	    
	    func present<M1: Cuckoo.OptionalMatchable, M2: Cuckoo.OptionalMatchable, M3: Cuckoo.OptionalMatchable, M4: Cuckoo.OptionalMatchable>(message: M1, title: M2, closeAction: M3, from view: M4) -> Cuckoo.ProtocolStubNoReturnFunction<(String?, String?, String?, ControllerBackedProtocol?)> where M1.OptionalMatchedType == String, M2.OptionalMatchedType == String, M3.OptionalMatchedType == String, M4.OptionalMatchedType == ControllerBackedProtocol {
	        let matchers: [Cuckoo.ParameterMatcher<(String?, String?, String?, ControllerBackedProtocol?)>] = [wrap(matchable: message) { $0.0 }, wrap(matchable: title) { $0.1 }, wrap(matchable: closeAction) { $0.2 }, wrap(matchable: view) { $0.3 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockAccessBackupWireframeProtocol.self, method: "present(message: String?, title: String?, closeAction: String?, from: ControllerBackedProtocol?)", parameterMatchers: matchers))
	    }
	    
	    func present<M1: Cuckoo.OptionalMatchable, M2: Cuckoo.OptionalMatchable, M3: Cuckoo.Matchable, M4: Cuckoo.OptionalMatchable>(message: M1, title: M2, actions: M3, from view: M4) -> Cuckoo.ProtocolStubNoReturnFunction<(String?, String?, [AlertPresentableAction], ControllerBackedProtocol?)> where M1.OptionalMatchedType == String, M2.OptionalMatchedType == String, M3.MatchedType == [AlertPresentableAction], M4.OptionalMatchedType == ControllerBackedProtocol {
	        let matchers: [Cuckoo.ParameterMatcher<(String?, String?, [AlertPresentableAction], ControllerBackedProtocol?)>] = [wrap(matchable: message) { $0.0 }, wrap(matchable: title) { $0.1 }, wrap(matchable: actions) { $0.2 }, wrap(matchable: view) { $0.3 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockAccessBackupWireframeProtocol.self, method: "present(message: String?, title: String?, actions: [AlertPresentableAction], from: ControllerBackedProtocol?)", parameterMatchers: matchers))
	    }
	    
	    func present<M1: Cuckoo.Matchable, M2: Cuckoo.OptionalMatchable>(error: M1, from view: M2) -> Cuckoo.ProtocolStubFunction<(Error, ControllerBackedProtocol?), Bool> where M1.MatchedType == Error, M2.OptionalMatchedType == ControllerBackedProtocol {
	        let matchers: [Cuckoo.ParameterMatcher<(Error, ControllerBackedProtocol?)>] = [wrap(matchable: error) { $0.0 }, wrap(matchable: view) { $0.1 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockAccessBackupWireframeProtocol.self, method: "present(error: Error, from: ControllerBackedProtocol?) -> Bool", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_AccessBackupWireframeProtocol: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func showNext<M1: Cuckoo.OptionalMatchable>(from view: M1) -> Cuckoo.__DoNotUse<(AccessBackupViewProtocol?), Void> where M1.OptionalMatchedType == AccessBackupViewProtocol {
	        let matchers: [Cuckoo.ParameterMatcher<(AccessBackupViewProtocol?)>] = [wrap(matchable: view) { $0 }]
	        return cuckoo_manager.verify("showNext(from: AccessBackupViewProtocol?)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func present<M1: Cuckoo.OptionalMatchable, M2: Cuckoo.OptionalMatchable, M3: Cuckoo.OptionalMatchable, M4: Cuckoo.OptionalMatchable>(message: M1, title: M2, closeAction: M3, from view: M4) -> Cuckoo.__DoNotUse<(String?, String?, String?, ControllerBackedProtocol?), Void> where M1.OptionalMatchedType == String, M2.OptionalMatchedType == String, M3.OptionalMatchedType == String, M4.OptionalMatchedType == ControllerBackedProtocol {
	        let matchers: [Cuckoo.ParameterMatcher<(String?, String?, String?, ControllerBackedProtocol?)>] = [wrap(matchable: message) { $0.0 }, wrap(matchable: title) { $0.1 }, wrap(matchable: closeAction) { $0.2 }, wrap(matchable: view) { $0.3 }]
	        return cuckoo_manager.verify("present(message: String?, title: String?, closeAction: String?, from: ControllerBackedProtocol?)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func present<M1: Cuckoo.OptionalMatchable, M2: Cuckoo.OptionalMatchable, M3: Cuckoo.Matchable, M4: Cuckoo.OptionalMatchable>(message: M1, title: M2, actions: M3, from view: M4) -> Cuckoo.__DoNotUse<(String?, String?, [AlertPresentableAction], ControllerBackedProtocol?), Void> where M1.OptionalMatchedType == String, M2.OptionalMatchedType == String, M3.MatchedType == [AlertPresentableAction], M4.OptionalMatchedType == ControllerBackedProtocol {
	        let matchers: [Cuckoo.ParameterMatcher<(String?, String?, [AlertPresentableAction], ControllerBackedProtocol?)>] = [wrap(matchable: message) { $0.0 }, wrap(matchable: title) { $0.1 }, wrap(matchable: actions) { $0.2 }, wrap(matchable: view) { $0.3 }]
	        return cuckoo_manager.verify("present(message: String?, title: String?, actions: [AlertPresentableAction], from: ControllerBackedProtocol?)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func present<M1: Cuckoo.Matchable, M2: Cuckoo.OptionalMatchable>(error: M1, from view: M2) -> Cuckoo.__DoNotUse<(Error, ControllerBackedProtocol?), Bool> where M1.MatchedType == Error, M2.OptionalMatchedType == ControllerBackedProtocol {
	        let matchers: [Cuckoo.ParameterMatcher<(Error, ControllerBackedProtocol?)>] = [wrap(matchable: error) { $0.0 }, wrap(matchable: view) { $0.1 }]
	        return cuckoo_manager.verify("present(error: Error, from: ControllerBackedProtocol?) -> Bool", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

 class AccessBackupWireframeProtocolStub: AccessBackupWireframeProtocol {
    

    

    
     func showNext(from view: AccessBackupViewProtocol?)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func present(message: String?, title: String?, closeAction: String?, from view: ControllerBackedProtocol?)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func present(message: String?, title: String?, actions: [AlertPresentableAction], from view: ControllerBackedProtocol?)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func present(error: Error, from view: ControllerBackedProtocol?) -> Bool  {
        return DefaultValueRegistry.defaultValue(for: (Bool).self)
    }
    
}


import Cuckoo
@testable import SoraPassport

import Foundation


 class MockAccessRestoreViewProtocol: AccessRestoreViewProtocol, Cuckoo.ProtocolMock {
    
     typealias MocksType = AccessRestoreViewProtocol
    
     typealias Stubbing = __StubbingProxy_AccessRestoreViewProtocol
     typealias Verification = __VerificationProxy_AccessRestoreViewProtocol

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: AccessRestoreViewProtocol?

     func enableDefaultImplementation(_ stub: AccessRestoreViewProtocol) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    
    
    
     var controller: UIViewController {
        get {
            return cuckoo_manager.getter("controller",
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.controller)
        }
        
    }
    
    
    
     var loadableContentView: UIView! {
        get {
            return cuckoo_manager.getter("loadableContentView",
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.loadableContentView)
        }
        
    }
    
    
    
     var shouldDisableInteractionWhenLoading: Bool {
        get {
            return cuckoo_manager.getter("shouldDisableInteractionWhenLoading",
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.shouldDisableInteractionWhenLoading)
        }
        
    }
    

    

    
    
    
     func didReceiveView(model: AccessRestoreViewModelProtocol)  {
        
    return cuckoo_manager.call("didReceiveView(model: AccessRestoreViewModelProtocol)",
            parameters: (model),
            escapingParameters: (model),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.didReceiveView(model: model))
        
    }
    
    
    
     func didStartLoading()  {
        
    return cuckoo_manager.call("didStartLoading()",
            parameters: (),
            escapingParameters: (),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.didStartLoading())
        
    }
    
    
    
     func didStopLoading()  {
        
    return cuckoo_manager.call("didStopLoading()",
            parameters: (),
            escapingParameters: (),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.didStopLoading())
        
    }
    

	 struct __StubbingProxy_AccessRestoreViewProtocol: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    var controller: Cuckoo.ProtocolToBeStubbedReadOnlyProperty<MockAccessRestoreViewProtocol, UIViewController> {
	        return .init(manager: cuckoo_manager, name: "controller")
	    }
	    
	    
	    var loadableContentView: Cuckoo.ProtocolToBeStubbedReadOnlyProperty<MockAccessRestoreViewProtocol, UIView?> {
	        return .init(manager: cuckoo_manager, name: "loadableContentView")
	    }
	    
	    
	    var shouldDisableInteractionWhenLoading: Cuckoo.ProtocolToBeStubbedReadOnlyProperty<MockAccessRestoreViewProtocol, Bool> {
	        return .init(manager: cuckoo_manager, name: "shouldDisableInteractionWhenLoading")
	    }
	    
	    
	    func didReceiveView<M1: Cuckoo.Matchable>(model: M1) -> Cuckoo.ProtocolStubNoReturnFunction<(AccessRestoreViewModelProtocol)> where M1.MatchedType == AccessRestoreViewModelProtocol {
	        let matchers: [Cuckoo.ParameterMatcher<(AccessRestoreViewModelProtocol)>] = [wrap(matchable: model) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockAccessRestoreViewProtocol.self, method: "didReceiveView(model: AccessRestoreViewModelProtocol)", parameterMatchers: matchers))
	    }
	    
	    func didStartLoading() -> Cuckoo.ProtocolStubNoReturnFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockAccessRestoreViewProtocol.self, method: "didStartLoading()", parameterMatchers: matchers))
	    }
	    
	    func didStopLoading() -> Cuckoo.ProtocolStubNoReturnFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockAccessRestoreViewProtocol.self, method: "didStopLoading()", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_AccessRestoreViewProtocol: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	    
	    var controller: Cuckoo.VerifyReadOnlyProperty<UIViewController> {
	        return .init(manager: cuckoo_manager, name: "controller", callMatcher: callMatcher, sourceLocation: sourceLocation)
	    }
	    
	    
	    var loadableContentView: Cuckoo.VerifyReadOnlyProperty<UIView?> {
	        return .init(manager: cuckoo_manager, name: "loadableContentView", callMatcher: callMatcher, sourceLocation: sourceLocation)
	    }
	    
	    
	    var shouldDisableInteractionWhenLoading: Cuckoo.VerifyReadOnlyProperty<Bool> {
	        return .init(manager: cuckoo_manager, name: "shouldDisableInteractionWhenLoading", callMatcher: callMatcher, sourceLocation: sourceLocation)
	    }
	    
	
	    
	    @discardableResult
	    func didReceiveView<M1: Cuckoo.Matchable>(model: M1) -> Cuckoo.__DoNotUse<(AccessRestoreViewModelProtocol), Void> where M1.MatchedType == AccessRestoreViewModelProtocol {
	        let matchers: [Cuckoo.ParameterMatcher<(AccessRestoreViewModelProtocol)>] = [wrap(matchable: model) { $0 }]
	        return cuckoo_manager.verify("didReceiveView(model: AccessRestoreViewModelProtocol)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func didStartLoading() -> Cuckoo.__DoNotUse<(), Void> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("didStartLoading()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func didStopLoading() -> Cuckoo.__DoNotUse<(), Void> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("didStopLoading()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

 class AccessRestoreViewProtocolStub: AccessRestoreViewProtocol {
    
    
     var controller: UIViewController {
        get {
            return DefaultValueRegistry.defaultValue(for: (UIViewController).self)
        }
        
    }
    
    
     var loadableContentView: UIView! {
        get {
            return DefaultValueRegistry.defaultValue(for: (UIView?).self)
        }
        
    }
    
    
     var shouldDisableInteractionWhenLoading: Bool {
        get {
            return DefaultValueRegistry.defaultValue(for: (Bool).self)
        }
        
    }
    

    

    
     func didReceiveView(model: AccessRestoreViewModelProtocol)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func didStartLoading()   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func didStopLoading()   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
}



 class MockAccessRestorePresenterProtocol: AccessRestorePresenterProtocol, Cuckoo.ProtocolMock {
    
     typealias MocksType = AccessRestorePresenterProtocol
    
     typealias Stubbing = __StubbingProxy_AccessRestorePresenterProtocol
     typealias Verification = __VerificationProxy_AccessRestorePresenterProtocol

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: AccessRestorePresenterProtocol?

     func enableDefaultImplementation(_ stub: AccessRestorePresenterProtocol) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    

    

    
    
    
     func load()  {
        
    return cuckoo_manager.call("load()",
            parameters: (),
            escapingParameters: (),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.load())
        
    }
    
    
    
     func activateAccessRestoration()  {
        
    return cuckoo_manager.call("activateAccessRestoration()",
            parameters: (),
            escapingParameters: (),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.activateAccessRestoration())
        
    }
    

	 struct __StubbingProxy_AccessRestorePresenterProtocol: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func load() -> Cuckoo.ProtocolStubNoReturnFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockAccessRestorePresenterProtocol.self, method: "load()", parameterMatchers: matchers))
	    }
	    
	    func activateAccessRestoration() -> Cuckoo.ProtocolStubNoReturnFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockAccessRestorePresenterProtocol.self, method: "activateAccessRestoration()", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_AccessRestorePresenterProtocol: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func load() -> Cuckoo.__DoNotUse<(), Void> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("load()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func activateAccessRestoration() -> Cuckoo.__DoNotUse<(), Void> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("activateAccessRestoration()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

 class AccessRestorePresenterProtocolStub: AccessRestorePresenterProtocol {
    

    

    
     func load()   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func activateAccessRestoration()   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
}



 class MockAccessRestoreInteractorInputProtocol: AccessRestoreInteractorInputProtocol, Cuckoo.ProtocolMock {
    
     typealias MocksType = AccessRestoreInteractorInputProtocol
    
     typealias Stubbing = __StubbingProxy_AccessRestoreInteractorInputProtocol
     typealias Verification = __VerificationProxy_AccessRestoreInteractorInputProtocol

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: AccessRestoreInteractorInputProtocol?

     func enableDefaultImplementation(_ stub: AccessRestoreInteractorInputProtocol) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    

    

    
    
    
     func restoreAccess(phrase: [String])  {
        
    return cuckoo_manager.call("restoreAccess(phrase: [String])",
            parameters: (phrase),
            escapingParameters: (phrase),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.restoreAccess(phrase: phrase))
        
    }
    

	 struct __StubbingProxy_AccessRestoreInteractorInputProtocol: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func restoreAccess<M1: Cuckoo.Matchable>(phrase: M1) -> Cuckoo.ProtocolStubNoReturnFunction<([String])> where M1.MatchedType == [String] {
	        let matchers: [Cuckoo.ParameterMatcher<([String])>] = [wrap(matchable: phrase) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockAccessRestoreInteractorInputProtocol.self, method: "restoreAccess(phrase: [String])", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_AccessRestoreInteractorInputProtocol: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func restoreAccess<M1: Cuckoo.Matchable>(phrase: M1) -> Cuckoo.__DoNotUse<([String]), Void> where M1.MatchedType == [String] {
	        let matchers: [Cuckoo.ParameterMatcher<([String])>] = [wrap(matchable: phrase) { $0 }]
	        return cuckoo_manager.verify("restoreAccess(phrase: [String])", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

 class AccessRestoreInteractorInputProtocolStub: AccessRestoreInteractorInputProtocol {
    

    

    
     func restoreAccess(phrase: [String])   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
}



 class MockAccessRestoreInteractorOutputProtocol: AccessRestoreInteractorOutputProtocol, Cuckoo.ProtocolMock {
    
     typealias MocksType = AccessRestoreInteractorOutputProtocol
    
     typealias Stubbing = __StubbingProxy_AccessRestoreInteractorOutputProtocol
     typealias Verification = __VerificationProxy_AccessRestoreInteractorOutputProtocol

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: AccessRestoreInteractorOutputProtocol?

     func enableDefaultImplementation(_ stub: AccessRestoreInteractorOutputProtocol) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    

    

    
    
    
     func didRestoreAccess(from phrase: [String])  {
        
    return cuckoo_manager.call("didRestoreAccess(from: [String])",
            parameters: (phrase),
            escapingParameters: (phrase),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.didRestoreAccess(from: phrase))
        
    }
    
    
    
     func didReceiveRestoreAccess(error: Error)  {
        
    return cuckoo_manager.call("didReceiveRestoreAccess(error: Error)",
            parameters: (error),
            escapingParameters: (error),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.didReceiveRestoreAccess(error: error))
        
    }
    

	 struct __StubbingProxy_AccessRestoreInteractorOutputProtocol: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func didRestoreAccess<M1: Cuckoo.Matchable>(from phrase: M1) -> Cuckoo.ProtocolStubNoReturnFunction<([String])> where M1.MatchedType == [String] {
	        let matchers: [Cuckoo.ParameterMatcher<([String])>] = [wrap(matchable: phrase) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockAccessRestoreInteractorOutputProtocol.self, method: "didRestoreAccess(from: [String])", parameterMatchers: matchers))
	    }
	    
	    func didReceiveRestoreAccess<M1: Cuckoo.Matchable>(error: M1) -> Cuckoo.ProtocolStubNoReturnFunction<(Error)> where M1.MatchedType == Error {
	        let matchers: [Cuckoo.ParameterMatcher<(Error)>] = [wrap(matchable: error) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockAccessRestoreInteractorOutputProtocol.self, method: "didReceiveRestoreAccess(error: Error)", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_AccessRestoreInteractorOutputProtocol: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func didRestoreAccess<M1: Cuckoo.Matchable>(from phrase: M1) -> Cuckoo.__DoNotUse<([String]), Void> where M1.MatchedType == [String] {
	        let matchers: [Cuckoo.ParameterMatcher<([String])>] = [wrap(matchable: phrase) { $0 }]
	        return cuckoo_manager.verify("didRestoreAccess(from: [String])", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func didReceiveRestoreAccess<M1: Cuckoo.Matchable>(error: M1) -> Cuckoo.__DoNotUse<(Error), Void> where M1.MatchedType == Error {
	        let matchers: [Cuckoo.ParameterMatcher<(Error)>] = [wrap(matchable: error) { $0 }]
	        return cuckoo_manager.verify("didReceiveRestoreAccess(error: Error)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

 class AccessRestoreInteractorOutputProtocolStub: AccessRestoreInteractorOutputProtocol {
    

    

    
     func didRestoreAccess(from phrase: [String])   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func didReceiveRestoreAccess(error: Error)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
}



 class MockAccessRestoreWireframeProtocol: AccessRestoreWireframeProtocol, Cuckoo.ProtocolMock {
    
     typealias MocksType = AccessRestoreWireframeProtocol
    
     typealias Stubbing = __StubbingProxy_AccessRestoreWireframeProtocol
     typealias Verification = __VerificationProxy_AccessRestoreWireframeProtocol

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: AccessRestoreWireframeProtocol?

     func enableDefaultImplementation(_ stub: AccessRestoreWireframeProtocol) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    

    

    
    
    
     func showNext(from view: AccessRestoreViewProtocol?)  {
        
    return cuckoo_manager.call("showNext(from: AccessRestoreViewProtocol?)",
            parameters: (view),
            escapingParameters: (view),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.showNext(from: view))
        
    }
    
    
    
     func present(message: String?, title: String?, closeAction: String?, from view: ControllerBackedProtocol?)  {
        
    return cuckoo_manager.call("present(message: String?, title: String?, closeAction: String?, from: ControllerBackedProtocol?)",
            parameters: (message, title, closeAction, view),
            escapingParameters: (message, title, closeAction, view),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.present(message: message, title: title, closeAction: closeAction, from: view))
        
    }
    
    
    
     func present(message: String?, title: String?, actions: [AlertPresentableAction], from view: ControllerBackedProtocol?)  {
        
    return cuckoo_manager.call("present(message: String?, title: String?, actions: [AlertPresentableAction], from: ControllerBackedProtocol?)",
            parameters: (message, title, actions, view),
            escapingParameters: (message, title, actions, view),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.present(message: message, title: title, actions: actions, from: view))
        
    }
    
    
    
     func present(error: Error, from view: ControllerBackedProtocol?) -> Bool {
        
    return cuckoo_manager.call("present(error: Error, from: ControllerBackedProtocol?) -> Bool",
            parameters: (error, view),
            escapingParameters: (error, view),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.present(error: error, from: view))
        
    }
    

	 struct __StubbingProxy_AccessRestoreWireframeProtocol: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func showNext<M1: Cuckoo.OptionalMatchable>(from view: M1) -> Cuckoo.ProtocolStubNoReturnFunction<(AccessRestoreViewProtocol?)> where M1.OptionalMatchedType == AccessRestoreViewProtocol {
	        let matchers: [Cuckoo.ParameterMatcher<(AccessRestoreViewProtocol?)>] = [wrap(matchable: view) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockAccessRestoreWireframeProtocol.self, method: "showNext(from: AccessRestoreViewProtocol?)", parameterMatchers: matchers))
	    }
	    
	    func present<M1: Cuckoo.OptionalMatchable, M2: Cuckoo.OptionalMatchable, M3: Cuckoo.OptionalMatchable, M4: Cuckoo.OptionalMatchable>(message: M1, title: M2, closeAction: M3, from view: M4) -> Cuckoo.ProtocolStubNoReturnFunction<(String?, String?, String?, ControllerBackedProtocol?)> where M1.OptionalMatchedType == String, M2.OptionalMatchedType == String, M3.OptionalMatchedType == String, M4.OptionalMatchedType == ControllerBackedProtocol {
	        let matchers: [Cuckoo.ParameterMatcher<(String?, String?, String?, ControllerBackedProtocol?)>] = [wrap(matchable: message) { $0.0 }, wrap(matchable: title) { $0.1 }, wrap(matchable: closeAction) { $0.2 }, wrap(matchable: view) { $0.3 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockAccessRestoreWireframeProtocol.self, method: "present(message: String?, title: String?, closeAction: String?, from: ControllerBackedProtocol?)", parameterMatchers: matchers))
	    }
	    
	    func present<M1: Cuckoo.OptionalMatchable, M2: Cuckoo.OptionalMatchable, M3: Cuckoo.Matchable, M4: Cuckoo.OptionalMatchable>(message: M1, title: M2, actions: M3, from view: M4) -> Cuckoo.ProtocolStubNoReturnFunction<(String?, String?, [AlertPresentableAction], ControllerBackedProtocol?)> where M1.OptionalMatchedType == String, M2.OptionalMatchedType == String, M3.MatchedType == [AlertPresentableAction], M4.OptionalMatchedType == ControllerBackedProtocol {
	        let matchers: [Cuckoo.ParameterMatcher<(String?, String?, [AlertPresentableAction], ControllerBackedProtocol?)>] = [wrap(matchable: message) { $0.0 }, wrap(matchable: title) { $0.1 }, wrap(matchable: actions) { $0.2 }, wrap(matchable: view) { $0.3 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockAccessRestoreWireframeProtocol.self, method: "present(message: String?, title: String?, actions: [AlertPresentableAction], from: ControllerBackedProtocol?)", parameterMatchers: matchers))
	    }
	    
	    func present<M1: Cuckoo.Matchable, M2: Cuckoo.OptionalMatchable>(error: M1, from view: M2) -> Cuckoo.ProtocolStubFunction<(Error, ControllerBackedProtocol?), Bool> where M1.MatchedType == Error, M2.OptionalMatchedType == ControllerBackedProtocol {
	        let matchers: [Cuckoo.ParameterMatcher<(Error, ControllerBackedProtocol?)>] = [wrap(matchable: error) { $0.0 }, wrap(matchable: view) { $0.1 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockAccessRestoreWireframeProtocol.self, method: "present(error: Error, from: ControllerBackedProtocol?) -> Bool", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_AccessRestoreWireframeProtocol: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func showNext<M1: Cuckoo.OptionalMatchable>(from view: M1) -> Cuckoo.__DoNotUse<(AccessRestoreViewProtocol?), Void> where M1.OptionalMatchedType == AccessRestoreViewProtocol {
	        let matchers: [Cuckoo.ParameterMatcher<(AccessRestoreViewProtocol?)>] = [wrap(matchable: view) { $0 }]
	        return cuckoo_manager.verify("showNext(from: AccessRestoreViewProtocol?)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func present<M1: Cuckoo.OptionalMatchable, M2: Cuckoo.OptionalMatchable, M3: Cuckoo.OptionalMatchable, M4: Cuckoo.OptionalMatchable>(message: M1, title: M2, closeAction: M3, from view: M4) -> Cuckoo.__DoNotUse<(String?, String?, String?, ControllerBackedProtocol?), Void> where M1.OptionalMatchedType == String, M2.OptionalMatchedType == String, M3.OptionalMatchedType == String, M4.OptionalMatchedType == ControllerBackedProtocol {
	        let matchers: [Cuckoo.ParameterMatcher<(String?, String?, String?, ControllerBackedProtocol?)>] = [wrap(matchable: message) { $0.0 }, wrap(matchable: title) { $0.1 }, wrap(matchable: closeAction) { $0.2 }, wrap(matchable: view) { $0.3 }]
	        return cuckoo_manager.verify("present(message: String?, title: String?, closeAction: String?, from: ControllerBackedProtocol?)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func present<M1: Cuckoo.OptionalMatchable, M2: Cuckoo.OptionalMatchable, M3: Cuckoo.Matchable, M4: Cuckoo.OptionalMatchable>(message: M1, title: M2, actions: M3, from view: M4) -> Cuckoo.__DoNotUse<(String?, String?, [AlertPresentableAction], ControllerBackedProtocol?), Void> where M1.OptionalMatchedType == String, M2.OptionalMatchedType == String, M3.MatchedType == [AlertPresentableAction], M4.OptionalMatchedType == ControllerBackedProtocol {
	        let matchers: [Cuckoo.ParameterMatcher<(String?, String?, [AlertPresentableAction], ControllerBackedProtocol?)>] = [wrap(matchable: message) { $0.0 }, wrap(matchable: title) { $0.1 }, wrap(matchable: actions) { $0.2 }, wrap(matchable: view) { $0.3 }]
	        return cuckoo_manager.verify("present(message: String?, title: String?, actions: [AlertPresentableAction], from: ControllerBackedProtocol?)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func present<M1: Cuckoo.Matchable, M2: Cuckoo.OptionalMatchable>(error: M1, from view: M2) -> Cuckoo.__DoNotUse<(Error, ControllerBackedProtocol?), Bool> where M1.MatchedType == Error, M2.OptionalMatchedType == ControllerBackedProtocol {
	        let matchers: [Cuckoo.ParameterMatcher<(Error, ControllerBackedProtocol?)>] = [wrap(matchable: error) { $0.0 }, wrap(matchable: view) { $0.1 }]
	        return cuckoo_manager.verify("present(error: Error, from: ControllerBackedProtocol?) -> Bool", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

 class AccessRestoreWireframeProtocolStub: AccessRestoreWireframeProtocol {
    

    

    
     func showNext(from view: AccessRestoreViewProtocol?)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func present(message: String?, title: String?, closeAction: String?, from view: ControllerBackedProtocol?)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func present(message: String?, title: String?, actions: [AlertPresentableAction], from view: ControllerBackedProtocol?)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func present(error: Error, from view: ControllerBackedProtocol?) -> Bool  {
        return DefaultValueRegistry.defaultValue(for: (Bool).self)
    }
    
}



 class MockAccessRestoreViewModelProtocol: AccessRestoreViewModelProtocol, Cuckoo.ProtocolMock {
    
     typealias MocksType = AccessRestoreViewModelProtocol
    
     typealias Stubbing = __StubbingProxy_AccessRestoreViewModelProtocol
     typealias Verification = __VerificationProxy_AccessRestoreViewModelProtocol

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: AccessRestoreViewModelProtocol?

     func enableDefaultImplementation(_ stub: AccessRestoreViewModelProtocol) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    
    
    
     var phrase: String {
        get {
            return cuckoo_manager.getter("phrase",
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.phrase)
        }
        
    }
    

    

    
    
    
     func didReceiveReplacement(_ string: String, for range: NSRange) -> Bool {
        
    return cuckoo_manager.call("didReceiveReplacement(_: String, for: NSRange) -> Bool",
            parameters: (string, range),
            escapingParameters: (string, range),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.didReceiveReplacement(string, for: range))
        
    }
    

	 struct __StubbingProxy_AccessRestoreViewModelProtocol: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    var phrase: Cuckoo.ProtocolToBeStubbedReadOnlyProperty<MockAccessRestoreViewModelProtocol, String> {
	        return .init(manager: cuckoo_manager, name: "phrase")
	    }
	    
	    
	    func didReceiveReplacement<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(_ string: M1, for range: M2) -> Cuckoo.ProtocolStubFunction<(String, NSRange), Bool> where M1.MatchedType == String, M2.MatchedType == NSRange {
	        let matchers: [Cuckoo.ParameterMatcher<(String, NSRange)>] = [wrap(matchable: string) { $0.0 }, wrap(matchable: range) { $0.1 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockAccessRestoreViewModelProtocol.self, method: "didReceiveReplacement(_: String, for: NSRange) -> Bool", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_AccessRestoreViewModelProtocol: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	    
	    var phrase: Cuckoo.VerifyReadOnlyProperty<String> {
	        return .init(manager: cuckoo_manager, name: "phrase", callMatcher: callMatcher, sourceLocation: sourceLocation)
	    }
	    
	
	    
	    @discardableResult
	    func didReceiveReplacement<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(_ string: M1, for range: M2) -> Cuckoo.__DoNotUse<(String, NSRange), Bool> where M1.MatchedType == String, M2.MatchedType == NSRange {
	        let matchers: [Cuckoo.ParameterMatcher<(String, NSRange)>] = [wrap(matchable: string) { $0.0 }, wrap(matchable: range) { $0.1 }]
	        return cuckoo_manager.verify("didReceiveReplacement(_: String, for: NSRange) -> Bool", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

 class AccessRestoreViewModelProtocolStub: AccessRestoreViewModelProtocol {
    
    
     var phrase: String {
        get {
            return DefaultValueRegistry.defaultValue(for: (String).self)
        }
        
    }
    

    

    
     func didReceiveReplacement(_ string: String, for range: NSRange) -> Bool  {
        return DefaultValueRegistry.defaultValue(for: (Bool).self)
    }
    
}


import Cuckoo
@testable import SoraPassport

import Foundation
import RobinHood
import SoraUI


 class MockActivityFeedViewProtocol: ActivityFeedViewProtocol, Cuckoo.ProtocolMock {
    
     typealias MocksType = ActivityFeedViewProtocol
    
     typealias Stubbing = __StubbingProxy_ActivityFeedViewProtocol
     typealias Verification = __VerificationProxy_ActivityFeedViewProtocol

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: ActivityFeedViewProtocol?

     func enableDefaultImplementation(_ stub: ActivityFeedViewProtocol) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    
    
    
     var itemLayoutMetadataContainer: ActivityFeedLayoutMetadataContainer {
        get {
            return cuckoo_manager.getter("itemLayoutMetadataContainer",
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.itemLayoutMetadataContainer)
        }
        
    }
    
    
    
     var announcementLayoutMetadata: AnnouncementItemLayoutMetadata {
        get {
            return cuckoo_manager.getter("announcementLayoutMetadata",
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.announcementLayoutMetadata)
        }
        
    }
    
    
    
     var controller: UIViewController {
        get {
            return cuckoo_manager.getter("controller",
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.controller)
        }
        
    }
    

    

    
    
    
     func didReceive(using viewModelChangeBlock: @escaping () -> [ActivityFeedViewModelChange])  {
        
    return cuckoo_manager.call("didReceive(using: @escaping () -> [ActivityFeedViewModelChange])",
            parameters: (viewModelChangeBlock),
            escapingParameters: (viewModelChangeBlock),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.didReceive(using: viewModelChangeBlock))
        
    }
    
    
    
     func didReload(announcement: AnnouncementItemViewModelProtocol?)  {
        
    return cuckoo_manager.call("didReload(announcement: AnnouncementItemViewModelProtocol?)",
            parameters: (announcement),
            escapingParameters: (announcement),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.didReload(announcement: announcement))
        
    }
    

	 struct __StubbingProxy_ActivityFeedViewProtocol: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    var itemLayoutMetadataContainer: Cuckoo.ProtocolToBeStubbedReadOnlyProperty<MockActivityFeedViewProtocol, ActivityFeedLayoutMetadataContainer> {
	        return .init(manager: cuckoo_manager, name: "itemLayoutMetadataContainer")
	    }
	    
	    
	    var announcementLayoutMetadata: Cuckoo.ProtocolToBeStubbedReadOnlyProperty<MockActivityFeedViewProtocol, AnnouncementItemLayoutMetadata> {
	        return .init(manager: cuckoo_manager, name: "announcementLayoutMetadata")
	    }
	    
	    
	    var controller: Cuckoo.ProtocolToBeStubbedReadOnlyProperty<MockActivityFeedViewProtocol, UIViewController> {
	        return .init(manager: cuckoo_manager, name: "controller")
	    }
	    
	    
	    func didReceive<M1: Cuckoo.Matchable>(using viewModelChangeBlock: M1) -> Cuckoo.ProtocolStubNoReturnFunction<(() -> [ActivityFeedViewModelChange])> where M1.MatchedType == () -> [ActivityFeedViewModelChange] {
	        let matchers: [Cuckoo.ParameterMatcher<(() -> [ActivityFeedViewModelChange])>] = [wrap(matchable: viewModelChangeBlock) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockActivityFeedViewProtocol.self, method: "didReceive(using: @escaping () -> [ActivityFeedViewModelChange])", parameterMatchers: matchers))
	    }
	    
	    func didReload<M1: Cuckoo.OptionalMatchable>(announcement: M1) -> Cuckoo.ProtocolStubNoReturnFunction<(AnnouncementItemViewModelProtocol?)> where M1.OptionalMatchedType == AnnouncementItemViewModelProtocol {
	        let matchers: [Cuckoo.ParameterMatcher<(AnnouncementItemViewModelProtocol?)>] = [wrap(matchable: announcement) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockActivityFeedViewProtocol.self, method: "didReload(announcement: AnnouncementItemViewModelProtocol?)", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_ActivityFeedViewProtocol: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	    
	    var itemLayoutMetadataContainer: Cuckoo.VerifyReadOnlyProperty<ActivityFeedLayoutMetadataContainer> {
	        return .init(manager: cuckoo_manager, name: "itemLayoutMetadataContainer", callMatcher: callMatcher, sourceLocation: sourceLocation)
	    }
	    
	    
	    var announcementLayoutMetadata: Cuckoo.VerifyReadOnlyProperty<AnnouncementItemLayoutMetadata> {
	        return .init(manager: cuckoo_manager, name: "announcementLayoutMetadata", callMatcher: callMatcher, sourceLocation: sourceLocation)
	    }
	    
	    
	    var controller: Cuckoo.VerifyReadOnlyProperty<UIViewController> {
	        return .init(manager: cuckoo_manager, name: "controller", callMatcher: callMatcher, sourceLocation: sourceLocation)
	    }
	    
	
	    
	    @discardableResult
	    func didReceive<M1: Cuckoo.Matchable>(using viewModelChangeBlock: M1) -> Cuckoo.__DoNotUse<(() -> [ActivityFeedViewModelChange]), Void> where M1.MatchedType == () -> [ActivityFeedViewModelChange] {
	        let matchers: [Cuckoo.ParameterMatcher<(() -> [ActivityFeedViewModelChange])>] = [wrap(matchable: viewModelChangeBlock) { $0 }]
	        return cuckoo_manager.verify("didReceive(using: @escaping () -> [ActivityFeedViewModelChange])", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func didReload<M1: Cuckoo.OptionalMatchable>(announcement: M1) -> Cuckoo.__DoNotUse<(AnnouncementItemViewModelProtocol?), Void> where M1.OptionalMatchedType == AnnouncementItemViewModelProtocol {
	        let matchers: [Cuckoo.ParameterMatcher<(AnnouncementItemViewModelProtocol?)>] = [wrap(matchable: announcement) { $0 }]
	        return cuckoo_manager.verify("didReload(announcement: AnnouncementItemViewModelProtocol?)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

 class ActivityFeedViewProtocolStub: ActivityFeedViewProtocol {
    
    
     var itemLayoutMetadataContainer: ActivityFeedLayoutMetadataContainer {
        get {
            return DefaultValueRegistry.defaultValue(for: (ActivityFeedLayoutMetadataContainer).self)
        }
        
    }
    
    
     var announcementLayoutMetadata: AnnouncementItemLayoutMetadata {
        get {
            return DefaultValueRegistry.defaultValue(for: (AnnouncementItemLayoutMetadata).self)
        }
        
    }
    
    
     var controller: UIViewController {
        get {
            return DefaultValueRegistry.defaultValue(for: (UIViewController).self)
        }
        
    }
    

    

    
     func didReceive(using viewModelChangeBlock: @escaping () -> [ActivityFeedViewModelChange])   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func didReload(announcement: AnnouncementItemViewModelProtocol?)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
}



 class MockActivityFeedPresenterProtocol: ActivityFeedPresenterProtocol, Cuckoo.ProtocolMock {
    
     typealias MocksType = ActivityFeedPresenterProtocol
    
     typealias Stubbing = __StubbingProxy_ActivityFeedPresenterProtocol
     typealias Verification = __VerificationProxy_ActivityFeedPresenterProtocol

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: ActivityFeedPresenterProtocol?

     func enableDefaultImplementation(_ stub: ActivityFeedPresenterProtocol) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    
    
    
    public var shouldDisplayEmptyState: Bool {
        get {
            return cuckoo_manager.getter("shouldDisplayEmptyState",
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.shouldDisplayEmptyState)
        }
        
    }
    

    

    
    
    
     func viewIsReady()  {
        
    return cuckoo_manager.call("viewIsReady()",
            parameters: (),
            escapingParameters: (),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.viewIsReady())
        
    }
    
    
    
     func viewDidAppear()  {
        
    return cuckoo_manager.call("viewDidAppear()",
            parameters: (),
            escapingParameters: (),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.viewDidAppear())
        
    }
    
    
    
     func reload() -> Bool {
        
    return cuckoo_manager.call("reload() -> Bool",
            parameters: (),
            escapingParameters: (),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.reload())
        
    }
    
    
    
     func loadNext() -> Bool {
        
    return cuckoo_manager.call("loadNext() -> Bool",
            parameters: (),
            escapingParameters: (),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.loadNext())
        
    }
    
    
    
     func numberOfSections() -> Int {
        
    return cuckoo_manager.call("numberOfSections() -> Int",
            parameters: (),
            escapingParameters: (),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.numberOfSections())
        
    }
    
    
    
     func sectionModel(at index: Int) -> ActivityFeedSectionViewModelProtocol {
        
    return cuckoo_manager.call("sectionModel(at: Int) -> ActivityFeedSectionViewModelProtocol",
            parameters: (index),
            escapingParameters: (index),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.sectionModel(at: index))
        
    }
    
    
    
     func activateHelp()  {
        
    return cuckoo_manager.call("activateHelp()",
            parameters: (),
            escapingParameters: (),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.activateHelp())
        
    }
    

	 struct __StubbingProxy_ActivityFeedPresenterProtocol: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    var shouldDisplayEmptyState: Cuckoo.ProtocolToBeStubbedReadOnlyProperty<MockActivityFeedPresenterProtocol, Bool> {
	        return .init(manager: cuckoo_manager, name: "shouldDisplayEmptyState")
	    }
	    
	    
	    func viewIsReady() -> Cuckoo.ProtocolStubNoReturnFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockActivityFeedPresenterProtocol.self, method: "viewIsReady()", parameterMatchers: matchers))
	    }
	    
	    func viewDidAppear() -> Cuckoo.ProtocolStubNoReturnFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockActivityFeedPresenterProtocol.self, method: "viewDidAppear()", parameterMatchers: matchers))
	    }
	    
	    func reload() -> Cuckoo.ProtocolStubFunction<(), Bool> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockActivityFeedPresenterProtocol.self, method: "reload() -> Bool", parameterMatchers: matchers))
	    }
	    
	    func loadNext() -> Cuckoo.ProtocolStubFunction<(), Bool> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockActivityFeedPresenterProtocol.self, method: "loadNext() -> Bool", parameterMatchers: matchers))
	    }
	    
	    func numberOfSections() -> Cuckoo.ProtocolStubFunction<(), Int> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockActivityFeedPresenterProtocol.self, method: "numberOfSections() -> Int", parameterMatchers: matchers))
	    }
	    
	    func sectionModel<M1: Cuckoo.Matchable>(at index: M1) -> Cuckoo.ProtocolStubFunction<(Int), ActivityFeedSectionViewModelProtocol> where M1.MatchedType == Int {
	        let matchers: [Cuckoo.ParameterMatcher<(Int)>] = [wrap(matchable: index) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockActivityFeedPresenterProtocol.self, method: "sectionModel(at: Int) -> ActivityFeedSectionViewModelProtocol", parameterMatchers: matchers))
	    }
	    
	    func activateHelp() -> Cuckoo.ProtocolStubNoReturnFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockActivityFeedPresenterProtocol.self, method: "activateHelp()", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_ActivityFeedPresenterProtocol: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	    
	    var shouldDisplayEmptyState: Cuckoo.VerifyReadOnlyProperty<Bool> {
	        return .init(manager: cuckoo_manager, name: "shouldDisplayEmptyState", callMatcher: callMatcher, sourceLocation: sourceLocation)
	    }
	    
	
	    
	    @discardableResult
	    func viewIsReady() -> Cuckoo.__DoNotUse<(), Void> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("viewIsReady()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func viewDidAppear() -> Cuckoo.__DoNotUse<(), Void> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("viewDidAppear()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func reload() -> Cuckoo.__DoNotUse<(), Bool> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("reload() -> Bool", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func loadNext() -> Cuckoo.__DoNotUse<(), Bool> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("loadNext() -> Bool", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func numberOfSections() -> Cuckoo.__DoNotUse<(), Int> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("numberOfSections() -> Int", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func sectionModel<M1: Cuckoo.Matchable>(at index: M1) -> Cuckoo.__DoNotUse<(Int), ActivityFeedSectionViewModelProtocol> where M1.MatchedType == Int {
	        let matchers: [Cuckoo.ParameterMatcher<(Int)>] = [wrap(matchable: index) { $0 }]
	        return cuckoo_manager.verify("sectionModel(at: Int) -> ActivityFeedSectionViewModelProtocol", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func activateHelp() -> Cuckoo.__DoNotUse<(), Void> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("activateHelp()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

 class ActivityFeedPresenterProtocolStub: ActivityFeedPresenterProtocol {
    
    
    public var shouldDisplayEmptyState: Bool {
        get {
            return DefaultValueRegistry.defaultValue(for: (Bool).self)
        }
        
    }
    

    

    
     func viewIsReady()   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func viewDidAppear()   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func reload() -> Bool  {
        return DefaultValueRegistry.defaultValue(for: (Bool).self)
    }
    
     func loadNext() -> Bool  {
        return DefaultValueRegistry.defaultValue(for: (Bool).self)
    }
    
     func numberOfSections() -> Int  {
        return DefaultValueRegistry.defaultValue(for: (Int).self)
    }
    
     func sectionModel(at index: Int) -> ActivityFeedSectionViewModelProtocol  {
        return DefaultValueRegistry.defaultValue(for: (ActivityFeedSectionViewModelProtocol).self)
    }
    
     func activateHelp()   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
}



 class MockActivityFeedInteractorInputProtocol: ActivityFeedInteractorInputProtocol, Cuckoo.ProtocolMock {
    
     typealias MocksType = ActivityFeedInteractorInputProtocol
    
     typealias Stubbing = __StubbingProxy_ActivityFeedInteractorInputProtocol
     typealias Verification = __VerificationProxy_ActivityFeedInteractorInputProtocol

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: ActivityFeedInteractorInputProtocol?

     func enableDefaultImplementation(_ stub: ActivityFeedInteractorInputProtocol) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    

    

    
    
    
     func setup()  {
        
    return cuckoo_manager.call("setup()",
            parameters: (),
            escapingParameters: (),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.setup())
        
    }
    
    
    
     func reload()  {
        
    return cuckoo_manager.call("reload()",
            parameters: (),
            escapingParameters: (),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.reload())
        
    }
    
    
    
     func loadNext(page: Pagination)  {
        
    return cuckoo_manager.call("loadNext(page: Pagination)",
            parameters: (page),
            escapingParameters: (page),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.loadNext(page: page))
        
    }
    

	 struct __StubbingProxy_ActivityFeedInteractorInputProtocol: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func setup() -> Cuckoo.ProtocolStubNoReturnFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockActivityFeedInteractorInputProtocol.self, method: "setup()", parameterMatchers: matchers))
	    }
	    
	    func reload() -> Cuckoo.ProtocolStubNoReturnFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockActivityFeedInteractorInputProtocol.self, method: "reload()", parameterMatchers: matchers))
	    }
	    
	    func loadNext<M1: Cuckoo.Matchable>(page: M1) -> Cuckoo.ProtocolStubNoReturnFunction<(Pagination)> where M1.MatchedType == Pagination {
	        let matchers: [Cuckoo.ParameterMatcher<(Pagination)>] = [wrap(matchable: page) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockActivityFeedInteractorInputProtocol.self, method: "loadNext(page: Pagination)", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_ActivityFeedInteractorInputProtocol: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func setup() -> Cuckoo.__DoNotUse<(), Void> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("setup()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func reload() -> Cuckoo.__DoNotUse<(), Void> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("reload()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func loadNext<M1: Cuckoo.Matchable>(page: M1) -> Cuckoo.__DoNotUse<(Pagination), Void> where M1.MatchedType == Pagination {
	        let matchers: [Cuckoo.ParameterMatcher<(Pagination)>] = [wrap(matchable: page) { $0 }]
	        return cuckoo_manager.verify("loadNext(page: Pagination)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

 class ActivityFeedInteractorInputProtocolStub: ActivityFeedInteractorInputProtocol {
    

    

    
     func setup()   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func reload()   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func loadNext(page: Pagination)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
}



 class MockActivityFeedInteractorOutputProtocol: ActivityFeedInteractorOutputProtocol, Cuckoo.ProtocolMock {
    
     typealias MocksType = ActivityFeedInteractorOutputProtocol
    
     typealias Stubbing = __StubbingProxy_ActivityFeedInteractorOutputProtocol
     typealias Verification = __VerificationProxy_ActivityFeedInteractorOutputProtocol

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: ActivityFeedInteractorOutputProtocol?

     func enableDefaultImplementation(_ stub: ActivityFeedInteractorOutputProtocol) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    

    

    
    
    
     func didReload(activity: ActivityData?)  {
        
    return cuckoo_manager.call("didReload(activity: ActivityData?)",
            parameters: (activity),
            escapingParameters: (activity),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.didReload(activity: activity))
        
    }
    
    
    
     func didReceiveActivityFeedDataProvider(error: Error)  {
        
    return cuckoo_manager.call("didReceiveActivityFeedDataProvider(error: Error)",
            parameters: (error),
            escapingParameters: (error),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.didReceiveActivityFeedDataProvider(error: error))
        
    }
    
    
    
     func didLoadNext(activity: ActivityData, for page: Pagination)  {
        
    return cuckoo_manager.call("didLoadNext(activity: ActivityData, for: Pagination)",
            parameters: (activity, page),
            escapingParameters: (activity, page),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.didLoadNext(activity: activity, for: page))
        
    }
    
    
    
     func didReceiveLoadNext(error: Error, for page: Pagination)  {
        
    return cuckoo_manager.call("didReceiveLoadNext(error: Error, for: Pagination)",
            parameters: (error, page),
            escapingParameters: (error, page),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.didReceiveLoadNext(error: error, for: page))
        
    }
    
    
    
     func didReload(announcement: AnnouncementData?)  {
        
    return cuckoo_manager.call("didReload(announcement: AnnouncementData?)",
            parameters: (announcement),
            escapingParameters: (announcement),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.didReload(announcement: announcement))
        
    }
    
    
    
     func didReceiveAnnouncementDataProvider(error: Error)  {
        
    return cuckoo_manager.call("didReceiveAnnouncementDataProvider(error: Error)",
            parameters: (error),
            escapingParameters: (error),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.didReceiveAnnouncementDataProvider(error: error))
        
    }
    

	 struct __StubbingProxy_ActivityFeedInteractorOutputProtocol: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func didReload<M1: Cuckoo.OptionalMatchable>(activity: M1) -> Cuckoo.ProtocolStubNoReturnFunction<(ActivityData?)> where M1.OptionalMatchedType == ActivityData {
	        let matchers: [Cuckoo.ParameterMatcher<(ActivityData?)>] = [wrap(matchable: activity) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockActivityFeedInteractorOutputProtocol.self, method: "didReload(activity: ActivityData?)", parameterMatchers: matchers))
	    }
	    
	    func didReceiveActivityFeedDataProvider<M1: Cuckoo.Matchable>(error: M1) -> Cuckoo.ProtocolStubNoReturnFunction<(Error)> where M1.MatchedType == Error {
	        let matchers: [Cuckoo.ParameterMatcher<(Error)>] = [wrap(matchable: error) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockActivityFeedInteractorOutputProtocol.self, method: "didReceiveActivityFeedDataProvider(error: Error)", parameterMatchers: matchers))
	    }
	    
	    func didLoadNext<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(activity: M1, for page: M2) -> Cuckoo.ProtocolStubNoReturnFunction<(ActivityData, Pagination)> where M1.MatchedType == ActivityData, M2.MatchedType == Pagination {
	        let matchers: [Cuckoo.ParameterMatcher<(ActivityData, Pagination)>] = [wrap(matchable: activity) { $0.0 }, wrap(matchable: page) { $0.1 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockActivityFeedInteractorOutputProtocol.self, method: "didLoadNext(activity: ActivityData, for: Pagination)", parameterMatchers: matchers))
	    }
	    
	    func didReceiveLoadNext<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(error: M1, for page: M2) -> Cuckoo.ProtocolStubNoReturnFunction<(Error, Pagination)> where M1.MatchedType == Error, M2.MatchedType == Pagination {
	        let matchers: [Cuckoo.ParameterMatcher<(Error, Pagination)>] = [wrap(matchable: error) { $0.0 }, wrap(matchable: page) { $0.1 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockActivityFeedInteractorOutputProtocol.self, method: "didReceiveLoadNext(error: Error, for: Pagination)", parameterMatchers: matchers))
	    }
	    
	    func didReload<M1: Cuckoo.OptionalMatchable>(announcement: M1) -> Cuckoo.ProtocolStubNoReturnFunction<(AnnouncementData?)> where M1.OptionalMatchedType == AnnouncementData {
	        let matchers: [Cuckoo.ParameterMatcher<(AnnouncementData?)>] = [wrap(matchable: announcement) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockActivityFeedInteractorOutputProtocol.self, method: "didReload(announcement: AnnouncementData?)", parameterMatchers: matchers))
	    }
	    
	    func didReceiveAnnouncementDataProvider<M1: Cuckoo.Matchable>(error: M1) -> Cuckoo.ProtocolStubNoReturnFunction<(Error)> where M1.MatchedType == Error {
	        let matchers: [Cuckoo.ParameterMatcher<(Error)>] = [wrap(matchable: error) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockActivityFeedInteractorOutputProtocol.self, method: "didReceiveAnnouncementDataProvider(error: Error)", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_ActivityFeedInteractorOutputProtocol: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func didReload<M1: Cuckoo.OptionalMatchable>(activity: M1) -> Cuckoo.__DoNotUse<(ActivityData?), Void> where M1.OptionalMatchedType == ActivityData {
	        let matchers: [Cuckoo.ParameterMatcher<(ActivityData?)>] = [wrap(matchable: activity) { $0 }]
	        return cuckoo_manager.verify("didReload(activity: ActivityData?)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func didReceiveActivityFeedDataProvider<M1: Cuckoo.Matchable>(error: M1) -> Cuckoo.__DoNotUse<(Error), Void> where M1.MatchedType == Error {
	        let matchers: [Cuckoo.ParameterMatcher<(Error)>] = [wrap(matchable: error) { $0 }]
	        return cuckoo_manager.verify("didReceiveActivityFeedDataProvider(error: Error)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func didLoadNext<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(activity: M1, for page: M2) -> Cuckoo.__DoNotUse<(ActivityData, Pagination), Void> where M1.MatchedType == ActivityData, M2.MatchedType == Pagination {
	        let matchers: [Cuckoo.ParameterMatcher<(ActivityData, Pagination)>] = [wrap(matchable: activity) { $0.0 }, wrap(matchable: page) { $0.1 }]
	        return cuckoo_manager.verify("didLoadNext(activity: ActivityData, for: Pagination)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func didReceiveLoadNext<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(error: M1, for page: M2) -> Cuckoo.__DoNotUse<(Error, Pagination), Void> where M1.MatchedType == Error, M2.MatchedType == Pagination {
	        let matchers: [Cuckoo.ParameterMatcher<(Error, Pagination)>] = [wrap(matchable: error) { $0.0 }, wrap(matchable: page) { $0.1 }]
	        return cuckoo_manager.verify("didReceiveLoadNext(error: Error, for: Pagination)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func didReload<M1: Cuckoo.OptionalMatchable>(announcement: M1) -> Cuckoo.__DoNotUse<(AnnouncementData?), Void> where M1.OptionalMatchedType == AnnouncementData {
	        let matchers: [Cuckoo.ParameterMatcher<(AnnouncementData?)>] = [wrap(matchable: announcement) { $0 }]
	        return cuckoo_manager.verify("didReload(announcement: AnnouncementData?)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func didReceiveAnnouncementDataProvider<M1: Cuckoo.Matchable>(error: M1) -> Cuckoo.__DoNotUse<(Error), Void> where M1.MatchedType == Error {
	        let matchers: [Cuckoo.ParameterMatcher<(Error)>] = [wrap(matchable: error) { $0 }]
	        return cuckoo_manager.verify("didReceiveAnnouncementDataProvider(error: Error)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

 class ActivityFeedInteractorOutputProtocolStub: ActivityFeedInteractorOutputProtocol {
    

    

    
     func didReload(activity: ActivityData?)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func didReceiveActivityFeedDataProvider(error: Error)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func didLoadNext(activity: ActivityData, for page: Pagination)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func didReceiveLoadNext(error: Error, for page: Pagination)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func didReload(announcement: AnnouncementData?)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func didReceiveAnnouncementDataProvider(error: Error)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
}



 class MockActivityFeedWireframeProtocol: ActivityFeedWireframeProtocol, Cuckoo.ProtocolMock {
    
     typealias MocksType = ActivityFeedWireframeProtocol
    
     typealias Stubbing = __StubbingProxy_ActivityFeedWireframeProtocol
     typealias Verification = __VerificationProxy_ActivityFeedWireframeProtocol

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: ActivityFeedWireframeProtocol?

     func enableDefaultImplementation(_ stub: ActivityFeedWireframeProtocol) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    

    

    
    
    
     func present(error: Error, from view: ControllerBackedProtocol?) -> Bool {
        
    return cuckoo_manager.call("present(error: Error, from: ControllerBackedProtocol?) -> Bool",
            parameters: (error, view),
            escapingParameters: (error, view),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.present(error: error, from: view))
        
    }
    
    
    
     func present(message: String?, title: String?, closeAction: String?, from view: ControllerBackedProtocol?)  {
        
    return cuckoo_manager.call("present(message: String?, title: String?, closeAction: String?, from: ControllerBackedProtocol?)",
            parameters: (message, title, closeAction, view),
            escapingParameters: (message, title, closeAction, view),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.present(message: message, title: title, closeAction: closeAction, from: view))
        
    }
    
    
    
     func present(message: String?, title: String?, actions: [AlertPresentableAction], from view: ControllerBackedProtocol?)  {
        
    return cuckoo_manager.call("present(message: String?, title: String?, actions: [AlertPresentableAction], from: ControllerBackedProtocol?)",
            parameters: (message, title, actions, view),
            escapingParameters: (message, title, actions, view),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.present(message: message, title: title, actions: actions, from: view))
        
    }
    

	 struct __StubbingProxy_ActivityFeedWireframeProtocol: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func present<M1: Cuckoo.Matchable, M2: Cuckoo.OptionalMatchable>(error: M1, from view: M2) -> Cuckoo.ProtocolStubFunction<(Error, ControllerBackedProtocol?), Bool> where M1.MatchedType == Error, M2.OptionalMatchedType == ControllerBackedProtocol {
	        let matchers: [Cuckoo.ParameterMatcher<(Error, ControllerBackedProtocol?)>] = [wrap(matchable: error) { $0.0 }, wrap(matchable: view) { $0.1 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockActivityFeedWireframeProtocol.self, method: "present(error: Error, from: ControllerBackedProtocol?) -> Bool", parameterMatchers: matchers))
	    }
	    
	    func present<M1: Cuckoo.OptionalMatchable, M2: Cuckoo.OptionalMatchable, M3: Cuckoo.OptionalMatchable, M4: Cuckoo.OptionalMatchable>(message: M1, title: M2, closeAction: M3, from view: M4) -> Cuckoo.ProtocolStubNoReturnFunction<(String?, String?, String?, ControllerBackedProtocol?)> where M1.OptionalMatchedType == String, M2.OptionalMatchedType == String, M3.OptionalMatchedType == String, M4.OptionalMatchedType == ControllerBackedProtocol {
	        let matchers: [Cuckoo.ParameterMatcher<(String?, String?, String?, ControllerBackedProtocol?)>] = [wrap(matchable: message) { $0.0 }, wrap(matchable: title) { $0.1 }, wrap(matchable: closeAction) { $0.2 }, wrap(matchable: view) { $0.3 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockActivityFeedWireframeProtocol.self, method: "present(message: String?, title: String?, closeAction: String?, from: ControllerBackedProtocol?)", parameterMatchers: matchers))
	    }
	    
	    func present<M1: Cuckoo.OptionalMatchable, M2: Cuckoo.OptionalMatchable, M3: Cuckoo.Matchable, M4: Cuckoo.OptionalMatchable>(message: M1, title: M2, actions: M3, from view: M4) -> Cuckoo.ProtocolStubNoReturnFunction<(String?, String?, [AlertPresentableAction], ControllerBackedProtocol?)> where M1.OptionalMatchedType == String, M2.OptionalMatchedType == String, M3.MatchedType == [AlertPresentableAction], M4.OptionalMatchedType == ControllerBackedProtocol {
	        let matchers: [Cuckoo.ParameterMatcher<(String?, String?, [AlertPresentableAction], ControllerBackedProtocol?)>] = [wrap(matchable: message) { $0.0 }, wrap(matchable: title) { $0.1 }, wrap(matchable: actions) { $0.2 }, wrap(matchable: view) { $0.3 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockActivityFeedWireframeProtocol.self, method: "present(message: String?, title: String?, actions: [AlertPresentableAction], from: ControllerBackedProtocol?)", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_ActivityFeedWireframeProtocol: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func present<M1: Cuckoo.Matchable, M2: Cuckoo.OptionalMatchable>(error: M1, from view: M2) -> Cuckoo.__DoNotUse<(Error, ControllerBackedProtocol?), Bool> where M1.MatchedType == Error, M2.OptionalMatchedType == ControllerBackedProtocol {
	        let matchers: [Cuckoo.ParameterMatcher<(Error, ControllerBackedProtocol?)>] = [wrap(matchable: error) { $0.0 }, wrap(matchable: view) { $0.1 }]
	        return cuckoo_manager.verify("present(error: Error, from: ControllerBackedProtocol?) -> Bool", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func present<M1: Cuckoo.OptionalMatchable, M2: Cuckoo.OptionalMatchable, M3: Cuckoo.OptionalMatchable, M4: Cuckoo.OptionalMatchable>(message: M1, title: M2, closeAction: M3, from view: M4) -> Cuckoo.__DoNotUse<(String?, String?, String?, ControllerBackedProtocol?), Void> where M1.OptionalMatchedType == String, M2.OptionalMatchedType == String, M3.OptionalMatchedType == String, M4.OptionalMatchedType == ControllerBackedProtocol {
	        let matchers: [Cuckoo.ParameterMatcher<(String?, String?, String?, ControllerBackedProtocol?)>] = [wrap(matchable: message) { $0.0 }, wrap(matchable: title) { $0.1 }, wrap(matchable: closeAction) { $0.2 }, wrap(matchable: view) { $0.3 }]
	        return cuckoo_manager.verify("present(message: String?, title: String?, closeAction: String?, from: ControllerBackedProtocol?)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func present<M1: Cuckoo.OptionalMatchable, M2: Cuckoo.OptionalMatchable, M3: Cuckoo.Matchable, M4: Cuckoo.OptionalMatchable>(message: M1, title: M2, actions: M3, from view: M4) -> Cuckoo.__DoNotUse<(String?, String?, [AlertPresentableAction], ControllerBackedProtocol?), Void> where M1.OptionalMatchedType == String, M2.OptionalMatchedType == String, M3.MatchedType == [AlertPresentableAction], M4.OptionalMatchedType == ControllerBackedProtocol {
	        let matchers: [Cuckoo.ParameterMatcher<(String?, String?, [AlertPresentableAction], ControllerBackedProtocol?)>] = [wrap(matchable: message) { $0.0 }, wrap(matchable: title) { $0.1 }, wrap(matchable: actions) { $0.2 }, wrap(matchable: view) { $0.3 }]
	        return cuckoo_manager.verify("present(message: String?, title: String?, actions: [AlertPresentableAction], from: ControllerBackedProtocol?)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

 class ActivityFeedWireframeProtocolStub: ActivityFeedWireframeProtocol {
    

    

    
     func present(error: Error, from view: ControllerBackedProtocol?) -> Bool  {
        return DefaultValueRegistry.defaultValue(for: (Bool).self)
    }
    
     func present(message: String?, title: String?, closeAction: String?, from view: ControllerBackedProtocol?)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func present(message: String?, title: String?, actions: [AlertPresentableAction], from view: ControllerBackedProtocol?)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
}


import Cuckoo
@testable import SoraPassport

import Foundation


 class MockCurrencyViewProtocol: CurrencyViewProtocol, Cuckoo.ProtocolMock {
    
     typealias MocksType = CurrencyViewProtocol
    
     typealias Stubbing = __StubbingProxy_CurrencyViewProtocol
     typealias Verification = __VerificationProxy_CurrencyViewProtocol

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: CurrencyViewProtocol?

     func enableDefaultImplementation(_ stub: CurrencyViewProtocol) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    
    
    
     var controller: UIViewController {
        get {
            return cuckoo_manager.getter("controller",
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.controller)
        }
        
    }
    

    

    
    
    
     func didReload()  {
        
    return cuckoo_manager.call("didReload()",
            parameters: (),
            escapingParameters: (),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.didReload())
        
    }
    

	 struct __StubbingProxy_CurrencyViewProtocol: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    var controller: Cuckoo.ProtocolToBeStubbedReadOnlyProperty<MockCurrencyViewProtocol, UIViewController> {
	        return .init(manager: cuckoo_manager, name: "controller")
	    }
	    
	    
	    func didReload() -> Cuckoo.ProtocolStubNoReturnFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockCurrencyViewProtocol.self, method: "didReload()", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_CurrencyViewProtocol: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	    
	    var controller: Cuckoo.VerifyReadOnlyProperty<UIViewController> {
	        return .init(manager: cuckoo_manager, name: "controller", callMatcher: callMatcher, sourceLocation: sourceLocation)
	    }
	    
	
	    
	    @discardableResult
	    func didReload() -> Cuckoo.__DoNotUse<(), Void> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("didReload()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

 class CurrencyViewProtocolStub: CurrencyViewProtocol {
    
    
     var controller: UIViewController {
        get {
            return DefaultValueRegistry.defaultValue(for: (UIViewController).self)
        }
        
    }
    

    

    
     func didReload()   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
}



 class MockCurrencyPresenterProtocol: CurrencyPresenterProtocol, Cuckoo.ProtocolMock {
    
     typealias MocksType = CurrencyPresenterProtocol
    
     typealias Stubbing = __StubbingProxy_CurrencyPresenterProtocol
     typealias Verification = __VerificationProxy_CurrencyPresenterProtocol

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: CurrencyPresenterProtocol?

     func enableDefaultImplementation(_ stub: CurrencyPresenterProtocol) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    
    
    
     var numberOfItems: Int {
        get {
            return cuckoo_manager.getter("numberOfItems",
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.numberOfItems)
        }
        
    }
    

    

    
    
    
     func viewIsReady()  {
        
    return cuckoo_manager.call("viewIsReady()",
            parameters: (),
            escapingParameters: (),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.viewIsReady())
        
    }
    
    
    
     func item(at index: Int) -> SelectionListViewModelProtocol {
        
    return cuckoo_manager.call("item(at: Int) -> SelectionListViewModelProtocol",
            parameters: (index),
            escapingParameters: (index),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.item(at: index))
        
    }
    
    
    
     func selectItem(at index: Int)  {
        
    return cuckoo_manager.call("selectItem(at: Int)",
            parameters: (index),
            escapingParameters: (index),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.selectItem(at: index))
        
    }
    

	 struct __StubbingProxy_CurrencyPresenterProtocol: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    var numberOfItems: Cuckoo.ProtocolToBeStubbedReadOnlyProperty<MockCurrencyPresenterProtocol, Int> {
	        return .init(manager: cuckoo_manager, name: "numberOfItems")
	    }
	    
	    
	    func viewIsReady() -> Cuckoo.ProtocolStubNoReturnFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockCurrencyPresenterProtocol.self, method: "viewIsReady()", parameterMatchers: matchers))
	    }
	    
	    func item<M1: Cuckoo.Matchable>(at index: M1) -> Cuckoo.ProtocolStubFunction<(Int), SelectionListViewModelProtocol> where M1.MatchedType == Int {
	        let matchers: [Cuckoo.ParameterMatcher<(Int)>] = [wrap(matchable: index) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockCurrencyPresenterProtocol.self, method: "item(at: Int) -> SelectionListViewModelProtocol", parameterMatchers: matchers))
	    }
	    
	    func selectItem<M1: Cuckoo.Matchable>(at index: M1) -> Cuckoo.ProtocolStubNoReturnFunction<(Int)> where M1.MatchedType == Int {
	        let matchers: [Cuckoo.ParameterMatcher<(Int)>] = [wrap(matchable: index) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockCurrencyPresenterProtocol.self, method: "selectItem(at: Int)", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_CurrencyPresenterProtocol: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	    
	    var numberOfItems: Cuckoo.VerifyReadOnlyProperty<Int> {
	        return .init(manager: cuckoo_manager, name: "numberOfItems", callMatcher: callMatcher, sourceLocation: sourceLocation)
	    }
	    
	
	    
	    @discardableResult
	    func viewIsReady() -> Cuckoo.__DoNotUse<(), Void> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("viewIsReady()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func item<M1: Cuckoo.Matchable>(at index: M1) -> Cuckoo.__DoNotUse<(Int), SelectionListViewModelProtocol> where M1.MatchedType == Int {
	        let matchers: [Cuckoo.ParameterMatcher<(Int)>] = [wrap(matchable: index) { $0 }]
	        return cuckoo_manager.verify("item(at: Int) -> SelectionListViewModelProtocol", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func selectItem<M1: Cuckoo.Matchable>(at index: M1) -> Cuckoo.__DoNotUse<(Int), Void> where M1.MatchedType == Int {
	        let matchers: [Cuckoo.ParameterMatcher<(Int)>] = [wrap(matchable: index) { $0 }]
	        return cuckoo_manager.verify("selectItem(at: Int)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

 class CurrencyPresenterProtocolStub: CurrencyPresenterProtocol {
    
    
     var numberOfItems: Int {
        get {
            return DefaultValueRegistry.defaultValue(for: (Int).self)
        }
        
    }
    

    

    
     func viewIsReady()   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func item(at index: Int) -> SelectionListViewModelProtocol  {
        return DefaultValueRegistry.defaultValue(for: (SelectionListViewModelProtocol).self)
    }
    
     func selectItem(at index: Int)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
}



 class MockCurrencyInteractorInputProtocol: CurrencyInteractorInputProtocol, Cuckoo.ProtocolMock {
    
     typealias MocksType = CurrencyInteractorInputProtocol
    
     typealias Stubbing = __StubbingProxy_CurrencyInteractorInputProtocol
     typealias Verification = __VerificationProxy_CurrencyInteractorInputProtocol

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: CurrencyInteractorInputProtocol?

     func enableDefaultImplementation(_ stub: CurrencyInteractorInputProtocol) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    

    

    
    
    
     func setup()  {
        
    return cuckoo_manager.call("setup()",
            parameters: (),
            escapingParameters: (),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.setup())
        
    }
    
    
    
     func replace(selectedCurrency: CurrencyItemData)  {
        
    return cuckoo_manager.call("replace(selectedCurrency: CurrencyItemData)",
            parameters: (selectedCurrency),
            escapingParameters: (selectedCurrency),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.replace(selectedCurrency: selectedCurrency))
        
    }
    

	 struct __StubbingProxy_CurrencyInteractorInputProtocol: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func setup() -> Cuckoo.ProtocolStubNoReturnFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockCurrencyInteractorInputProtocol.self, method: "setup()", parameterMatchers: matchers))
	    }
	    
	    func replace<M1: Cuckoo.Matchable>(selectedCurrency: M1) -> Cuckoo.ProtocolStubNoReturnFunction<(CurrencyItemData)> where M1.MatchedType == CurrencyItemData {
	        let matchers: [Cuckoo.ParameterMatcher<(CurrencyItemData)>] = [wrap(matchable: selectedCurrency) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockCurrencyInteractorInputProtocol.self, method: "replace(selectedCurrency: CurrencyItemData)", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_CurrencyInteractorInputProtocol: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func setup() -> Cuckoo.__DoNotUse<(), Void> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("setup()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func replace<M1: Cuckoo.Matchable>(selectedCurrency: M1) -> Cuckoo.__DoNotUse<(CurrencyItemData), Void> where M1.MatchedType == CurrencyItemData {
	        let matchers: [Cuckoo.ParameterMatcher<(CurrencyItemData)>] = [wrap(matchable: selectedCurrency) { $0 }]
	        return cuckoo_manager.verify("replace(selectedCurrency: CurrencyItemData)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

 class CurrencyInteractorInputProtocolStub: CurrencyInteractorInputProtocol {
    

    

    
     func setup()   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func replace(selectedCurrency: CurrencyItemData)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
}



 class MockCurrencyInteractorOutputProtocol: CurrencyInteractorOutputProtocol, Cuckoo.ProtocolMock {
    
     typealias MocksType = CurrencyInteractorOutputProtocol
    
     typealias Stubbing = __StubbingProxy_CurrencyInteractorOutputProtocol
     typealias Verification = __VerificationProxy_CurrencyInteractorOutputProtocol

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: CurrencyInteractorOutputProtocol?

     func enableDefaultImplementation(_ stub: CurrencyInteractorOutputProtocol) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    

    

    
    
    
     func didLoad(currencies: [CurrencyItemData])  {
        
    return cuckoo_manager.call("didLoad(currencies: [CurrencyItemData])",
            parameters: (currencies),
            escapingParameters: (currencies),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.didLoad(currencies: currencies))
        
    }
    
    
    
     func didReceiveCurrencyDataProvider(error: Error)  {
        
    return cuckoo_manager.call("didReceiveCurrencyDataProvider(error: Error)",
            parameters: (error),
            escapingParameters: (error),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.didReceiveCurrencyDataProvider(error: error))
        
    }
    
    
    
     func didLoad(selectedCurrency: CurrencyItemData)  {
        
    return cuckoo_manager.call("didLoad(selectedCurrency: CurrencyItemData)",
            parameters: (selectedCurrency),
            escapingParameters: (selectedCurrency),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.didLoad(selectedCurrency: selectedCurrency))
        
    }
    
    
    
     func didReceiveSelectedCurrencyDataProvider(error: Error)  {
        
    return cuckoo_manager.call("didReceiveSelectedCurrencyDataProvider(error: Error)",
            parameters: (error),
            escapingParameters: (error),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.didReceiveSelectedCurrencyDataProvider(error: error))
        
    }
    

	 struct __StubbingProxy_CurrencyInteractorOutputProtocol: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func didLoad<M1: Cuckoo.Matchable>(currencies: M1) -> Cuckoo.ProtocolStubNoReturnFunction<([CurrencyItemData])> where M1.MatchedType == [CurrencyItemData] {
	        let matchers: [Cuckoo.ParameterMatcher<([CurrencyItemData])>] = [wrap(matchable: currencies) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockCurrencyInteractorOutputProtocol.self, method: "didLoad(currencies: [CurrencyItemData])", parameterMatchers: matchers))
	    }
	    
	    func didReceiveCurrencyDataProvider<M1: Cuckoo.Matchable>(error: M1) -> Cuckoo.ProtocolStubNoReturnFunction<(Error)> where M1.MatchedType == Error {
	        let matchers: [Cuckoo.ParameterMatcher<(Error)>] = [wrap(matchable: error) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockCurrencyInteractorOutputProtocol.self, method: "didReceiveCurrencyDataProvider(error: Error)", parameterMatchers: matchers))
	    }
	    
	    func didLoad<M1: Cuckoo.Matchable>(selectedCurrency: M1) -> Cuckoo.ProtocolStubNoReturnFunction<(CurrencyItemData)> where M1.MatchedType == CurrencyItemData {
	        let matchers: [Cuckoo.ParameterMatcher<(CurrencyItemData)>] = [wrap(matchable: selectedCurrency) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockCurrencyInteractorOutputProtocol.self, method: "didLoad(selectedCurrency: CurrencyItemData)", parameterMatchers: matchers))
	    }
	    
	    func didReceiveSelectedCurrencyDataProvider<M1: Cuckoo.Matchable>(error: M1) -> Cuckoo.ProtocolStubNoReturnFunction<(Error)> where M1.MatchedType == Error {
	        let matchers: [Cuckoo.ParameterMatcher<(Error)>] = [wrap(matchable: error) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockCurrencyInteractorOutputProtocol.self, method: "didReceiveSelectedCurrencyDataProvider(error: Error)", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_CurrencyInteractorOutputProtocol: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func didLoad<M1: Cuckoo.Matchable>(currencies: M1) -> Cuckoo.__DoNotUse<([CurrencyItemData]), Void> where M1.MatchedType == [CurrencyItemData] {
	        let matchers: [Cuckoo.ParameterMatcher<([CurrencyItemData])>] = [wrap(matchable: currencies) { $0 }]
	        return cuckoo_manager.verify("didLoad(currencies: [CurrencyItemData])", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func didReceiveCurrencyDataProvider<M1: Cuckoo.Matchable>(error: M1) -> Cuckoo.__DoNotUse<(Error), Void> where M1.MatchedType == Error {
	        let matchers: [Cuckoo.ParameterMatcher<(Error)>] = [wrap(matchable: error) { $0 }]
	        return cuckoo_manager.verify("didReceiveCurrencyDataProvider(error: Error)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func didLoad<M1: Cuckoo.Matchable>(selectedCurrency: M1) -> Cuckoo.__DoNotUse<(CurrencyItemData), Void> where M1.MatchedType == CurrencyItemData {
	        let matchers: [Cuckoo.ParameterMatcher<(CurrencyItemData)>] = [wrap(matchable: selectedCurrency) { $0 }]
	        return cuckoo_manager.verify("didLoad(selectedCurrency: CurrencyItemData)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func didReceiveSelectedCurrencyDataProvider<M1: Cuckoo.Matchable>(error: M1) -> Cuckoo.__DoNotUse<(Error), Void> where M1.MatchedType == Error {
	        let matchers: [Cuckoo.ParameterMatcher<(Error)>] = [wrap(matchable: error) { $0 }]
	        return cuckoo_manager.verify("didReceiveSelectedCurrencyDataProvider(error: Error)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

 class CurrencyInteractorOutputProtocolStub: CurrencyInteractorOutputProtocol {
    

    

    
     func didLoad(currencies: [CurrencyItemData])   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func didReceiveCurrencyDataProvider(error: Error)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func didLoad(selectedCurrency: CurrencyItemData)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func didReceiveSelectedCurrencyDataProvider(error: Error)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
}



 class MockCurrencyWireframeProtocol: CurrencyWireframeProtocol, Cuckoo.ProtocolMock {
    
     typealias MocksType = CurrencyWireframeProtocol
    
     typealias Stubbing = __StubbingProxy_CurrencyWireframeProtocol
     typealias Verification = __VerificationProxy_CurrencyWireframeProtocol

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: CurrencyWireframeProtocol?

     func enableDefaultImplementation(_ stub: CurrencyWireframeProtocol) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    

    

    
    
    
     func present(message: String?, title: String?, closeAction: String?, from view: ControllerBackedProtocol?)  {
        
    return cuckoo_manager.call("present(message: String?, title: String?, closeAction: String?, from: ControllerBackedProtocol?)",
            parameters: (message, title, closeAction, view),
            escapingParameters: (message, title, closeAction, view),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.present(message: message, title: title, closeAction: closeAction, from: view))
        
    }
    
    
    
     func present(message: String?, title: String?, actions: [AlertPresentableAction], from view: ControllerBackedProtocol?)  {
        
    return cuckoo_manager.call("present(message: String?, title: String?, actions: [AlertPresentableAction], from: ControllerBackedProtocol?)",
            parameters: (message, title, actions, view),
            escapingParameters: (message, title, actions, view),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.present(message: message, title: title, actions: actions, from: view))
        
    }
    
    
    
     func present(error: Error, from view: ControllerBackedProtocol?) -> Bool {
        
    return cuckoo_manager.call("present(error: Error, from: ControllerBackedProtocol?) -> Bool",
            parameters: (error, view),
            escapingParameters: (error, view),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.present(error: error, from: view))
        
    }
    

	 struct __StubbingProxy_CurrencyWireframeProtocol: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func present<M1: Cuckoo.OptionalMatchable, M2: Cuckoo.OptionalMatchable, M3: Cuckoo.OptionalMatchable, M4: Cuckoo.OptionalMatchable>(message: M1, title: M2, closeAction: M3, from view: M4) -> Cuckoo.ProtocolStubNoReturnFunction<(String?, String?, String?, ControllerBackedProtocol?)> where M1.OptionalMatchedType == String, M2.OptionalMatchedType == String, M3.OptionalMatchedType == String, M4.OptionalMatchedType == ControllerBackedProtocol {
	        let matchers: [Cuckoo.ParameterMatcher<(String?, String?, String?, ControllerBackedProtocol?)>] = [wrap(matchable: message) { $0.0 }, wrap(matchable: title) { $0.1 }, wrap(matchable: closeAction) { $0.2 }, wrap(matchable: view) { $0.3 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockCurrencyWireframeProtocol.self, method: "present(message: String?, title: String?, closeAction: String?, from: ControllerBackedProtocol?)", parameterMatchers: matchers))
	    }
	    
	    func present<M1: Cuckoo.OptionalMatchable, M2: Cuckoo.OptionalMatchable, M3: Cuckoo.Matchable, M4: Cuckoo.OptionalMatchable>(message: M1, title: M2, actions: M3, from view: M4) -> Cuckoo.ProtocolStubNoReturnFunction<(String?, String?, [AlertPresentableAction], ControllerBackedProtocol?)> where M1.OptionalMatchedType == String, M2.OptionalMatchedType == String, M3.MatchedType == [AlertPresentableAction], M4.OptionalMatchedType == ControllerBackedProtocol {
	        let matchers: [Cuckoo.ParameterMatcher<(String?, String?, [AlertPresentableAction], ControllerBackedProtocol?)>] = [wrap(matchable: message) { $0.0 }, wrap(matchable: title) { $0.1 }, wrap(matchable: actions) { $0.2 }, wrap(matchable: view) { $0.3 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockCurrencyWireframeProtocol.self, method: "present(message: String?, title: String?, actions: [AlertPresentableAction], from: ControllerBackedProtocol?)", parameterMatchers: matchers))
	    }
	    
	    func present<M1: Cuckoo.Matchable, M2: Cuckoo.OptionalMatchable>(error: M1, from view: M2) -> Cuckoo.ProtocolStubFunction<(Error, ControllerBackedProtocol?), Bool> where M1.MatchedType == Error, M2.OptionalMatchedType == ControllerBackedProtocol {
	        let matchers: [Cuckoo.ParameterMatcher<(Error, ControllerBackedProtocol?)>] = [wrap(matchable: error) { $0.0 }, wrap(matchable: view) { $0.1 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockCurrencyWireframeProtocol.self, method: "present(error: Error, from: ControllerBackedProtocol?) -> Bool", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_CurrencyWireframeProtocol: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func present<M1: Cuckoo.OptionalMatchable, M2: Cuckoo.OptionalMatchable, M3: Cuckoo.OptionalMatchable, M4: Cuckoo.OptionalMatchable>(message: M1, title: M2, closeAction: M3, from view: M4) -> Cuckoo.__DoNotUse<(String?, String?, String?, ControllerBackedProtocol?), Void> where M1.OptionalMatchedType == String, M2.OptionalMatchedType == String, M3.OptionalMatchedType == String, M4.OptionalMatchedType == ControllerBackedProtocol {
	        let matchers: [Cuckoo.ParameterMatcher<(String?, String?, String?, ControllerBackedProtocol?)>] = [wrap(matchable: message) { $0.0 }, wrap(matchable: title) { $0.1 }, wrap(matchable: closeAction) { $0.2 }, wrap(matchable: view) { $0.3 }]
	        return cuckoo_manager.verify("present(message: String?, title: String?, closeAction: String?, from: ControllerBackedProtocol?)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func present<M1: Cuckoo.OptionalMatchable, M2: Cuckoo.OptionalMatchable, M3: Cuckoo.Matchable, M4: Cuckoo.OptionalMatchable>(message: M1, title: M2, actions: M3, from view: M4) -> Cuckoo.__DoNotUse<(String?, String?, [AlertPresentableAction], ControllerBackedProtocol?), Void> where M1.OptionalMatchedType == String, M2.OptionalMatchedType == String, M3.MatchedType == [AlertPresentableAction], M4.OptionalMatchedType == ControllerBackedProtocol {
	        let matchers: [Cuckoo.ParameterMatcher<(String?, String?, [AlertPresentableAction], ControllerBackedProtocol?)>] = [wrap(matchable: message) { $0.0 }, wrap(matchable: title) { $0.1 }, wrap(matchable: actions) { $0.2 }, wrap(matchable: view) { $0.3 }]
	        return cuckoo_manager.verify("present(message: String?, title: String?, actions: [AlertPresentableAction], from: ControllerBackedProtocol?)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func present<M1: Cuckoo.Matchable, M2: Cuckoo.OptionalMatchable>(error: M1, from view: M2) -> Cuckoo.__DoNotUse<(Error, ControllerBackedProtocol?), Bool> where M1.MatchedType == Error, M2.OptionalMatchedType == ControllerBackedProtocol {
	        let matchers: [Cuckoo.ParameterMatcher<(Error, ControllerBackedProtocol?)>] = [wrap(matchable: error) { $0.0 }, wrap(matchable: view) { $0.1 }]
	        return cuckoo_manager.verify("present(error: Error, from: ControllerBackedProtocol?) -> Bool", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

 class CurrencyWireframeProtocolStub: CurrencyWireframeProtocol {
    

    

    
     func present(message: String?, title: String?, closeAction: String?, from view: ControllerBackedProtocol?)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func present(message: String?, title: String?, actions: [AlertPresentableAction], from view: ControllerBackedProtocol?)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func present(error: Error, from view: ControllerBackedProtocol?) -> Bool  {
        return DefaultValueRegistry.defaultValue(for: (Bool).self)
    }
    
}


import Cuckoo
@testable import SoraPassport

import UIKit


 class MockMainTabBarViewProtocol: MainTabBarViewProtocol, Cuckoo.ProtocolMock {
    
     typealias MocksType = MainTabBarViewProtocol
    
     typealias Stubbing = __StubbingProxy_MainTabBarViewProtocol
     typealias Verification = __VerificationProxy_MainTabBarViewProtocol

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: MainTabBarViewProtocol?

     func enableDefaultImplementation(_ stub: MainTabBarViewProtocol) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    
    
    
     var controller: UIViewController {
        get {
            return cuckoo_manager.getter("controller",
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.controller)
        }
        
    }
    

    

    
    
    
     func didReplaceView(for newView: UIViewController, for index: Int)  {
        
    return cuckoo_manager.call("didReplaceView(for: UIViewController, for: Int)",
            parameters: (newView, index),
            escapingParameters: (newView, index),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.didReplaceView(for: newView, for: index))
        
    }
    

	 struct __StubbingProxy_MainTabBarViewProtocol: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    var controller: Cuckoo.ProtocolToBeStubbedReadOnlyProperty<MockMainTabBarViewProtocol, UIViewController> {
	        return .init(manager: cuckoo_manager, name: "controller")
	    }
	    
	    
	    func didReplaceView<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(for newView: M1, for index: M2) -> Cuckoo.ProtocolStubNoReturnFunction<(UIViewController, Int)> where M1.MatchedType == UIViewController, M2.MatchedType == Int {
	        let matchers: [Cuckoo.ParameterMatcher<(UIViewController, Int)>] = [wrap(matchable: newView) { $0.0 }, wrap(matchable: index) { $0.1 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockMainTabBarViewProtocol.self, method: "didReplaceView(for: UIViewController, for: Int)", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_MainTabBarViewProtocol: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	    
	    var controller: Cuckoo.VerifyReadOnlyProperty<UIViewController> {
	        return .init(manager: cuckoo_manager, name: "controller", callMatcher: callMatcher, sourceLocation: sourceLocation)
	    }
	    
	
	    
	    @discardableResult
	    func didReplaceView<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(for newView: M1, for index: M2) -> Cuckoo.__DoNotUse<(UIViewController, Int), Void> where M1.MatchedType == UIViewController, M2.MatchedType == Int {
	        let matchers: [Cuckoo.ParameterMatcher<(UIViewController, Int)>] = [wrap(matchable: newView) { $0.0 }, wrap(matchable: index) { $0.1 }]
	        return cuckoo_manager.verify("didReplaceView(for: UIViewController, for: Int)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

 class MainTabBarViewProtocolStub: MainTabBarViewProtocol {
    
    
     var controller: UIViewController {
        get {
            return DefaultValueRegistry.defaultValue(for: (UIViewController).self)
        }
        
    }
    

    

    
     func didReplaceView(for newView: UIViewController, for index: Int)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
}



 class MockMainTabBarPresenterProtocol: MainTabBarPresenterProtocol, Cuckoo.ProtocolMock {
    
     typealias MocksType = MainTabBarPresenterProtocol
    
     typealias Stubbing = __StubbingProxy_MainTabBarPresenterProtocol
     typealias Verification = __VerificationProxy_MainTabBarPresenterProtocol

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: MainTabBarPresenterProtocol?

     func enableDefaultImplementation(_ stub: MainTabBarPresenterProtocol) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    

    

    
    
    
     func viewIsReady()  {
        
    return cuckoo_manager.call("viewIsReady()",
            parameters: (),
            escapingParameters: (),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.viewIsReady())
        
    }
    
    
    
     func viewDidAppear()  {
        
    return cuckoo_manager.call("viewDidAppear()",
            parameters: (),
            escapingParameters: (),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.viewDidAppear())
        
    }
    

	 struct __StubbingProxy_MainTabBarPresenterProtocol: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func viewIsReady() -> Cuckoo.ProtocolStubNoReturnFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockMainTabBarPresenterProtocol.self, method: "viewIsReady()", parameterMatchers: matchers))
	    }
	    
	    func viewDidAppear() -> Cuckoo.ProtocolStubNoReturnFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockMainTabBarPresenterProtocol.self, method: "viewDidAppear()", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_MainTabBarPresenterProtocol: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func viewIsReady() -> Cuckoo.__DoNotUse<(), Void> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("viewIsReady()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func viewDidAppear() -> Cuckoo.__DoNotUse<(), Void> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("viewDidAppear()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

 class MainTabBarPresenterProtocolStub: MainTabBarPresenterProtocol {
    

    

    
     func viewIsReady()   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func viewDidAppear()   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
}



 class MockMainTabBarInteractorInputProtocol: MainTabBarInteractorInputProtocol, Cuckoo.ProtocolMock {
    
     typealias MocksType = MainTabBarInteractorInputProtocol
    
     typealias Stubbing = __StubbingProxy_MainTabBarInteractorInputProtocol
     typealias Verification = __VerificationProxy_MainTabBarInteractorInputProtocol

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: MainTabBarInteractorInputProtocol?

     func enableDefaultImplementation(_ stub: MainTabBarInteractorInputProtocol) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    

    

    
    
    
     func configureNotifications()  {
        
    return cuckoo_manager.call("configureNotifications()",
            parameters: (),
            escapingParameters: (),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.configureNotifications())
        
    }
    
    
    
     func configureDeepLink()  {
        
    return cuckoo_manager.call("configureDeepLink()",
            parameters: (),
            escapingParameters: (),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.configureDeepLink())
        
    }
    
    
    
     func searchPendingDeepLink()  {
        
    return cuckoo_manager.call("searchPendingDeepLink()",
            parameters: (),
            escapingParameters: (),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.searchPendingDeepLink())
        
    }
    
    
    
     func resolvePendingDeepLink()  {
        
    return cuckoo_manager.call("resolvePendingDeepLink()",
            parameters: (),
            escapingParameters: (),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.resolvePendingDeepLink())
        
    }
    

	 struct __StubbingProxy_MainTabBarInteractorInputProtocol: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func configureNotifications() -> Cuckoo.ProtocolStubNoReturnFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockMainTabBarInteractorInputProtocol.self, method: "configureNotifications()", parameterMatchers: matchers))
	    }
	    
	    func configureDeepLink() -> Cuckoo.ProtocolStubNoReturnFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockMainTabBarInteractorInputProtocol.self, method: "configureDeepLink()", parameterMatchers: matchers))
	    }
	    
	    func searchPendingDeepLink() -> Cuckoo.ProtocolStubNoReturnFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockMainTabBarInteractorInputProtocol.self, method: "searchPendingDeepLink()", parameterMatchers: matchers))
	    }
	    
	    func resolvePendingDeepLink() -> Cuckoo.ProtocolStubNoReturnFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockMainTabBarInteractorInputProtocol.self, method: "resolvePendingDeepLink()", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_MainTabBarInteractorInputProtocol: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func configureNotifications() -> Cuckoo.__DoNotUse<(), Void> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("configureNotifications()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func configureDeepLink() -> Cuckoo.__DoNotUse<(), Void> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("configureDeepLink()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func searchPendingDeepLink() -> Cuckoo.__DoNotUse<(), Void> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("searchPendingDeepLink()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func resolvePendingDeepLink() -> Cuckoo.__DoNotUse<(), Void> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("resolvePendingDeepLink()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

 class MainTabBarInteractorInputProtocolStub: MainTabBarInteractorInputProtocol {
    

    

    
     func configureNotifications()   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func configureDeepLink()   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func searchPendingDeepLink()   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func resolvePendingDeepLink()   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
}



 class MockMainTabBarInteractorOutputProtocol: MainTabBarInteractorOutputProtocol, Cuckoo.ProtocolMock {
    
     typealias MocksType = MainTabBarInteractorOutputProtocol
    
     typealias Stubbing = __StubbingProxy_MainTabBarInteractorOutputProtocol
     typealias Verification = __VerificationProxy_MainTabBarInteractorOutputProtocol

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: MainTabBarInteractorOutputProtocol?

     func enableDefaultImplementation(_ stub: MainTabBarInteractorOutputProtocol) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    

    

    
    
    
     func didReceive(deepLink: DeepLinkProtocol)  {
        
    return cuckoo_manager.call("didReceive(deepLink: DeepLinkProtocol)",
            parameters: (deepLink),
            escapingParameters: (deepLink),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.didReceive(deepLink: deepLink))
        
    }
    

	 struct __StubbingProxy_MainTabBarInteractorOutputProtocol: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func didReceive<M1: Cuckoo.Matchable>(deepLink: M1) -> Cuckoo.ProtocolStubNoReturnFunction<(DeepLinkProtocol)> where M1.MatchedType == DeepLinkProtocol {
	        let matchers: [Cuckoo.ParameterMatcher<(DeepLinkProtocol)>] = [wrap(matchable: deepLink) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockMainTabBarInteractorOutputProtocol.self, method: "didReceive(deepLink: DeepLinkProtocol)", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_MainTabBarInteractorOutputProtocol: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func didReceive<M1: Cuckoo.Matchable>(deepLink: M1) -> Cuckoo.__DoNotUse<(DeepLinkProtocol), Void> where M1.MatchedType == DeepLinkProtocol {
	        let matchers: [Cuckoo.ParameterMatcher<(DeepLinkProtocol)>] = [wrap(matchable: deepLink) { $0 }]
	        return cuckoo_manager.verify("didReceive(deepLink: DeepLinkProtocol)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

 class MainTabBarInteractorOutputProtocolStub: MainTabBarInteractorOutputProtocol {
    

    

    
     func didReceive(deepLink: DeepLinkProtocol)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
}



 class MockMainTabBarWireframeProtocol: MainTabBarWireframeProtocol, Cuckoo.ProtocolMock {
    
     typealias MocksType = MainTabBarWireframeProtocol
    
     typealias Stubbing = __StubbingProxy_MainTabBarWireframeProtocol
     typealias Verification = __VerificationProxy_MainTabBarWireframeProtocol

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: MainTabBarWireframeProtocol?

     func enableDefaultImplementation(_ stub: MainTabBarWireframeProtocol) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    

    

    
    
    
     func present(message: String?, title: String?, closeAction: String?, from view: ControllerBackedProtocol?)  {
        
    return cuckoo_manager.call("present(message: String?, title: String?, closeAction: String?, from: ControllerBackedProtocol?)",
            parameters: (message, title, closeAction, view),
            escapingParameters: (message, title, closeAction, view),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.present(message: message, title: title, closeAction: closeAction, from: view))
        
    }
    
    
    
     func present(message: String?, title: String?, actions: [AlertPresentableAction], from view: ControllerBackedProtocol?)  {
        
    return cuckoo_manager.call("present(message: String?, title: String?, actions: [AlertPresentableAction], from: ControllerBackedProtocol?)",
            parameters: (message, title, actions, view),
            escapingParameters: (message, title, actions, view),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.present(message: message, title: title, actions: actions, from: view))
        
    }
    
    
    
     func navigate(to invitation: InvitationDeepLink) -> Bool {
        
    return cuckoo_manager.call("navigate(to: InvitationDeepLink) -> Bool",
            parameters: (invitation),
            escapingParameters: (invitation),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.navigate(to: invitation))
        
    }
    

	 struct __StubbingProxy_MainTabBarWireframeProtocol: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func present<M1: Cuckoo.OptionalMatchable, M2: Cuckoo.OptionalMatchable, M3: Cuckoo.OptionalMatchable, M4: Cuckoo.OptionalMatchable>(message: M1, title: M2, closeAction: M3, from view: M4) -> Cuckoo.ProtocolStubNoReturnFunction<(String?, String?, String?, ControllerBackedProtocol?)> where M1.OptionalMatchedType == String, M2.OptionalMatchedType == String, M3.OptionalMatchedType == String, M4.OptionalMatchedType == ControllerBackedProtocol {
	        let matchers: [Cuckoo.ParameterMatcher<(String?, String?, String?, ControllerBackedProtocol?)>] = [wrap(matchable: message) { $0.0 }, wrap(matchable: title) { $0.1 }, wrap(matchable: closeAction) { $0.2 }, wrap(matchable: view) { $0.3 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockMainTabBarWireframeProtocol.self, method: "present(message: String?, title: String?, closeAction: String?, from: ControllerBackedProtocol?)", parameterMatchers: matchers))
	    }
	    
	    func present<M1: Cuckoo.OptionalMatchable, M2: Cuckoo.OptionalMatchable, M3: Cuckoo.Matchable, M4: Cuckoo.OptionalMatchable>(message: M1, title: M2, actions: M3, from view: M4) -> Cuckoo.ProtocolStubNoReturnFunction<(String?, String?, [AlertPresentableAction], ControllerBackedProtocol?)> where M1.OptionalMatchedType == String, M2.OptionalMatchedType == String, M3.MatchedType == [AlertPresentableAction], M4.OptionalMatchedType == ControllerBackedProtocol {
	        let matchers: [Cuckoo.ParameterMatcher<(String?, String?, [AlertPresentableAction], ControllerBackedProtocol?)>] = [wrap(matchable: message) { $0.0 }, wrap(matchable: title) { $0.1 }, wrap(matchable: actions) { $0.2 }, wrap(matchable: view) { $0.3 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockMainTabBarWireframeProtocol.self, method: "present(message: String?, title: String?, actions: [AlertPresentableAction], from: ControllerBackedProtocol?)", parameterMatchers: matchers))
	    }
	    
	    func navigate<M1: Cuckoo.Matchable>(to invitation: M1) -> Cuckoo.ProtocolStubFunction<(InvitationDeepLink), Bool> where M1.MatchedType == InvitationDeepLink {
	        let matchers: [Cuckoo.ParameterMatcher<(InvitationDeepLink)>] = [wrap(matchable: invitation) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockMainTabBarWireframeProtocol.self, method: "navigate(to: InvitationDeepLink) -> Bool", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_MainTabBarWireframeProtocol: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func present<M1: Cuckoo.OptionalMatchable, M2: Cuckoo.OptionalMatchable, M3: Cuckoo.OptionalMatchable, M4: Cuckoo.OptionalMatchable>(message: M1, title: M2, closeAction: M3, from view: M4) -> Cuckoo.__DoNotUse<(String?, String?, String?, ControllerBackedProtocol?), Void> where M1.OptionalMatchedType == String, M2.OptionalMatchedType == String, M3.OptionalMatchedType == String, M4.OptionalMatchedType == ControllerBackedProtocol {
	        let matchers: [Cuckoo.ParameterMatcher<(String?, String?, String?, ControllerBackedProtocol?)>] = [wrap(matchable: message) { $0.0 }, wrap(matchable: title) { $0.1 }, wrap(matchable: closeAction) { $0.2 }, wrap(matchable: view) { $0.3 }]
	        return cuckoo_manager.verify("present(message: String?, title: String?, closeAction: String?, from: ControllerBackedProtocol?)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func present<M1: Cuckoo.OptionalMatchable, M2: Cuckoo.OptionalMatchable, M3: Cuckoo.Matchable, M4: Cuckoo.OptionalMatchable>(message: M1, title: M2, actions: M3, from view: M4) -> Cuckoo.__DoNotUse<(String?, String?, [AlertPresentableAction], ControllerBackedProtocol?), Void> where M1.OptionalMatchedType == String, M2.OptionalMatchedType == String, M3.MatchedType == [AlertPresentableAction], M4.OptionalMatchedType == ControllerBackedProtocol {
	        let matchers: [Cuckoo.ParameterMatcher<(String?, String?, [AlertPresentableAction], ControllerBackedProtocol?)>] = [wrap(matchable: message) { $0.0 }, wrap(matchable: title) { $0.1 }, wrap(matchable: actions) { $0.2 }, wrap(matchable: view) { $0.3 }]
	        return cuckoo_manager.verify("present(message: String?, title: String?, actions: [AlertPresentableAction], from: ControllerBackedProtocol?)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func navigate<M1: Cuckoo.Matchable>(to invitation: M1) -> Cuckoo.__DoNotUse<(InvitationDeepLink), Bool> where M1.MatchedType == InvitationDeepLink {
	        let matchers: [Cuckoo.ParameterMatcher<(InvitationDeepLink)>] = [wrap(matchable: invitation) { $0 }]
	        return cuckoo_manager.verify("navigate(to: InvitationDeepLink) -> Bool", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

 class MainTabBarWireframeProtocolStub: MainTabBarWireframeProtocol {
    

    

    
     func present(message: String?, title: String?, closeAction: String?, from view: ControllerBackedProtocol?)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func present(message: String?, title: String?, actions: [AlertPresentableAction], from view: ControllerBackedProtocol?)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func navigate(to invitation: InvitationDeepLink) -> Bool  {
        return DefaultValueRegistry.defaultValue(for: (Bool).self)
    }
    
}


import Cuckoo
@testable import SoraPassport


 class MockNetworkAvailabilityLayerInteractorInputProtocol: NetworkAvailabilityLayerInteractorInputProtocol, Cuckoo.ProtocolMock {
    
     typealias MocksType = NetworkAvailabilityLayerInteractorInputProtocol
    
     typealias Stubbing = __StubbingProxy_NetworkAvailabilityLayerInteractorInputProtocol
     typealias Verification = __VerificationProxy_NetworkAvailabilityLayerInteractorInputProtocol

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: NetworkAvailabilityLayerInteractorInputProtocol?

     func enableDefaultImplementation(_ stub: NetworkAvailabilityLayerInteractorInputProtocol) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    

    

    
    
    
     func setup()  {
        
    return cuckoo_manager.call("setup()",
            parameters: (),
            escapingParameters: (),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.setup())
        
    }
    

	 struct __StubbingProxy_NetworkAvailabilityLayerInteractorInputProtocol: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func setup() -> Cuckoo.ProtocolStubNoReturnFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockNetworkAvailabilityLayerInteractorInputProtocol.self, method: "setup()", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_NetworkAvailabilityLayerInteractorInputProtocol: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func setup() -> Cuckoo.__DoNotUse<(), Void> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("setup()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

 class NetworkAvailabilityLayerInteractorInputProtocolStub: NetworkAvailabilityLayerInteractorInputProtocol {
    

    

    
     func setup()   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
}



 class MockNetworkAvailabilityLayerInteractorOutputProtocol: NetworkAvailabilityLayerInteractorOutputProtocol, Cuckoo.ProtocolMock {
    
     typealias MocksType = NetworkAvailabilityLayerInteractorOutputProtocol
    
     typealias Stubbing = __StubbingProxy_NetworkAvailabilityLayerInteractorOutputProtocol
     typealias Verification = __VerificationProxy_NetworkAvailabilityLayerInteractorOutputProtocol

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: NetworkAvailabilityLayerInteractorOutputProtocol?

     func enableDefaultImplementation(_ stub: NetworkAvailabilityLayerInteractorOutputProtocol) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    

    

    
    
    
     func didDecideUnreachableStatusPresentation()  {
        
    return cuckoo_manager.call("didDecideUnreachableStatusPresentation()",
            parameters: (),
            escapingParameters: (),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.didDecideUnreachableStatusPresentation())
        
    }
    
    
    
     func didDecideReachableStatusPresentation()  {
        
    return cuckoo_manager.call("didDecideReachableStatusPresentation()",
            parameters: (),
            escapingParameters: (),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.didDecideReachableStatusPresentation())
        
    }
    

	 struct __StubbingProxy_NetworkAvailabilityLayerInteractorOutputProtocol: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func didDecideUnreachableStatusPresentation() -> Cuckoo.ProtocolStubNoReturnFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockNetworkAvailabilityLayerInteractorOutputProtocol.self, method: "didDecideUnreachableStatusPresentation()", parameterMatchers: matchers))
	    }
	    
	    func didDecideReachableStatusPresentation() -> Cuckoo.ProtocolStubNoReturnFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockNetworkAvailabilityLayerInteractorOutputProtocol.self, method: "didDecideReachableStatusPresentation()", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_NetworkAvailabilityLayerInteractorOutputProtocol: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func didDecideUnreachableStatusPresentation() -> Cuckoo.__DoNotUse<(), Void> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("didDecideUnreachableStatusPresentation()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func didDecideReachableStatusPresentation() -> Cuckoo.__DoNotUse<(), Void> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("didDecideReachableStatusPresentation()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

 class NetworkAvailabilityLayerInteractorOutputProtocolStub: NetworkAvailabilityLayerInteractorOutputProtocol {
    

    

    
     func didDecideUnreachableStatusPresentation()   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func didDecideReachableStatusPresentation()   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
}


import Cuckoo
@testable import SoraPassport

import UIKit


 class MockNotificationsPresenterProtocol: NotificationsPresenterProtocol, Cuckoo.ProtocolMock {
    
     typealias MocksType = NotificationsPresenterProtocol
    
     typealias Stubbing = __StubbingProxy_NotificationsPresenterProtocol
     typealias Verification = __VerificationProxy_NotificationsPresenterProtocol

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: NotificationsPresenterProtocol?

     func enableDefaultImplementation(_ stub: NotificationsPresenterProtocol) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    

    

    

	 struct __StubbingProxy_NotificationsPresenterProtocol: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	}

	 struct __VerificationProxy_NotificationsPresenterProtocol: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	}
}

 class NotificationsPresenterProtocolStub: NotificationsPresenterProtocol {
    

    

    
}



 class MockNotificationsWireframeProtocol: NotificationsWireframeProtocol, Cuckoo.ProtocolMock {
    
     typealias MocksType = NotificationsWireframeProtocol
    
     typealias Stubbing = __StubbingProxy_NotificationsWireframeProtocol
     typealias Verification = __VerificationProxy_NotificationsWireframeProtocol

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: NotificationsWireframeProtocol?

     func enableDefaultImplementation(_ stub: NotificationsWireframeProtocol) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    

    

    

	 struct __StubbingProxy_NotificationsWireframeProtocol: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	}

	 struct __VerificationProxy_NotificationsWireframeProtocol: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	}
}

 class NotificationsWireframeProtocolStub: NotificationsWireframeProtocol {
    

    

    
}



 class MockNotificationsInteractorInputProtocol: NotificationsInteractorInputProtocol, Cuckoo.ProtocolMock {
    
     typealias MocksType = NotificationsInteractorInputProtocol
    
     typealias Stubbing = __StubbingProxy_NotificationsInteractorInputProtocol
     typealias Verification = __VerificationProxy_NotificationsInteractorInputProtocol

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: NotificationsInteractorInputProtocol?

     func enableDefaultImplementation(_ stub: NotificationsInteractorInputProtocol) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    

    

    

	 struct __StubbingProxy_NotificationsInteractorInputProtocol: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	}

	 struct __VerificationProxy_NotificationsInteractorInputProtocol: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	}
}

 class NotificationsInteractorInputProtocolStub: NotificationsInteractorInputProtocol {
    

    

    
}



 class MockNotificationsInteractorOutputProtocol: NotificationsInteractorOutputProtocol, Cuckoo.ProtocolMock {
    
     typealias MocksType = NotificationsInteractorOutputProtocol
    
     typealias Stubbing = __StubbingProxy_NotificationsInteractorOutputProtocol
     typealias Verification = __VerificationProxy_NotificationsInteractorOutputProtocol

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: NotificationsInteractorOutputProtocol?

     func enableDefaultImplementation(_ stub: NotificationsInteractorOutputProtocol) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    

    

    
    
    
     func didCompleteNotificationsSetup()  {
        
    return cuckoo_manager.call("didCompleteNotificationsSetup()",
            parameters: (),
            escapingParameters: (),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.didCompleteNotificationsSetup())
        
    }
    
    
    
     func didReceiveNotificationsSetup(error: Error)  {
        
    return cuckoo_manager.call("didReceiveNotificationsSetup(error: Error)",
            parameters: (error),
            escapingParameters: (error),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.didReceiveNotificationsSetup(error: error))
        
    }
    
    
    
     func didReceive(_ notification: SoraNotificationProtocol) -> Bool {
        
    return cuckoo_manager.call("didReceive(_: SoraNotificationProtocol) -> Bool",
            parameters: (notification),
            escapingParameters: (notification),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.didReceive(notification))
        
    }
    

	 struct __StubbingProxy_NotificationsInteractorOutputProtocol: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func didCompleteNotificationsSetup() -> Cuckoo.ProtocolStubNoReturnFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockNotificationsInteractorOutputProtocol.self, method: "didCompleteNotificationsSetup()", parameterMatchers: matchers))
	    }
	    
	    func didReceiveNotificationsSetup<M1: Cuckoo.Matchable>(error: M1) -> Cuckoo.ProtocolStubNoReturnFunction<(Error)> where M1.MatchedType == Error {
	        let matchers: [Cuckoo.ParameterMatcher<(Error)>] = [wrap(matchable: error) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockNotificationsInteractorOutputProtocol.self, method: "didReceiveNotificationsSetup(error: Error)", parameterMatchers: matchers))
	    }
	    
	    func didReceive<M1: Cuckoo.Matchable>(_ notification: M1) -> Cuckoo.ProtocolStubFunction<(SoraNotificationProtocol), Bool> where M1.MatchedType == SoraNotificationProtocol {
	        let matchers: [Cuckoo.ParameterMatcher<(SoraNotificationProtocol)>] = [wrap(matchable: notification) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockNotificationsInteractorOutputProtocol.self, method: "didReceive(_: SoraNotificationProtocol) -> Bool", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_NotificationsInteractorOutputProtocol: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func didCompleteNotificationsSetup() -> Cuckoo.__DoNotUse<(), Void> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("didCompleteNotificationsSetup()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func didReceiveNotificationsSetup<M1: Cuckoo.Matchable>(error: M1) -> Cuckoo.__DoNotUse<(Error), Void> where M1.MatchedType == Error {
	        let matchers: [Cuckoo.ParameterMatcher<(Error)>] = [wrap(matchable: error) { $0 }]
	        return cuckoo_manager.verify("didReceiveNotificationsSetup(error: Error)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func didReceive<M1: Cuckoo.Matchable>(_ notification: M1) -> Cuckoo.__DoNotUse<(SoraNotificationProtocol), Bool> where M1.MatchedType == SoraNotificationProtocol {
	        let matchers: [Cuckoo.ParameterMatcher<(SoraNotificationProtocol)>] = [wrap(matchable: notification) { $0 }]
	        return cuckoo_manager.verify("didReceive(_: SoraNotificationProtocol) -> Bool", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

 class NotificationsInteractorOutputProtocolStub: NotificationsInteractorOutputProtocol {
    

    

    
     func didCompleteNotificationsSetup()   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func didReceiveNotificationsSetup(error: Error)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func didReceive(_ notification: SoraNotificationProtocol) -> Bool  {
        return DefaultValueRegistry.defaultValue(for: (Bool).self)
    }
    
}



 class MockNotificationsRegistrationProtocol: NotificationsRegistrationProtocol, Cuckoo.ProtocolMock {
    
     typealias MocksType = NotificationsRegistrationProtocol
    
     typealias Stubbing = __StubbingProxy_NotificationsRegistrationProtocol
     typealias Verification = __VerificationProxy_NotificationsRegistrationProtocol

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: NotificationsRegistrationProtocol?

     func enableDefaultImplementation(_ stub: NotificationsRegistrationProtocol) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    

    

    
    
    
     func registerNotifications(options: NotificationsOptions)  {
        
    return cuckoo_manager.call("registerNotifications(options: NotificationsOptions)",
            parameters: (options),
            escapingParameters: (options),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.registerNotifications(options: options))
        
    }
    
    
    
     func registerForRemoteNotifications()  {
        
    return cuckoo_manager.call("registerForRemoteNotifications()",
            parameters: (),
            escapingParameters: (),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.registerForRemoteNotifications())
        
    }
    

	 struct __StubbingProxy_NotificationsRegistrationProtocol: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func registerNotifications<M1: Cuckoo.Matchable>(options: M1) -> Cuckoo.ProtocolStubNoReturnFunction<(NotificationsOptions)> where M1.MatchedType == NotificationsOptions {
	        let matchers: [Cuckoo.ParameterMatcher<(NotificationsOptions)>] = [wrap(matchable: options) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockNotificationsRegistrationProtocol.self, method: "registerNotifications(options: NotificationsOptions)", parameterMatchers: matchers))
	    }
	    
	    func registerForRemoteNotifications() -> Cuckoo.ProtocolStubNoReturnFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockNotificationsRegistrationProtocol.self, method: "registerForRemoteNotifications()", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_NotificationsRegistrationProtocol: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func registerNotifications<M1: Cuckoo.Matchable>(options: M1) -> Cuckoo.__DoNotUse<(NotificationsOptions), Void> where M1.MatchedType == NotificationsOptions {
	        let matchers: [Cuckoo.ParameterMatcher<(NotificationsOptions)>] = [wrap(matchable: options) { $0 }]
	        return cuckoo_manager.verify("registerNotifications(options: NotificationsOptions)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func registerForRemoteNotifications() -> Cuckoo.__DoNotUse<(), Void> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("registerForRemoteNotifications()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

 class NotificationsRegistrationProtocolStub: NotificationsRegistrationProtocol {
    

    

    
     func registerNotifications(options: NotificationsOptions)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func registerForRemoteNotifications()   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
}



 class MockNotificationsLocalSchedulerProtocol: NotificationsLocalSchedulerProtocol, Cuckoo.ProtocolMock {
    
     typealias MocksType = NotificationsLocalSchedulerProtocol
    
     typealias Stubbing = __StubbingProxy_NotificationsLocalSchedulerProtocol
     typealias Verification = __VerificationProxy_NotificationsLocalSchedulerProtocol

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: NotificationsLocalSchedulerProtocol?

     func enableDefaultImplementation(_ stub: NotificationsLocalSchedulerProtocol) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    

    

    
    
    
     func schedule(notification: SoraNotification, with identifier: String, on date: Date?)  {
        
    return cuckoo_manager.call("schedule(notification: SoraNotification, with: String, on: Date?)",
            parameters: (notification, identifier, date),
            escapingParameters: (notification, identifier, date),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.schedule(notification: notification, with: identifier, on: date))
        
    }
    

	 struct __StubbingProxy_NotificationsLocalSchedulerProtocol: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func schedule<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable, M3: Cuckoo.OptionalMatchable>(notification: M1, with identifier: M2, on date: M3) -> Cuckoo.ProtocolStubNoReturnFunction<(SoraNotification, String, Date?)> where M1.MatchedType == SoraNotification, M2.MatchedType == String, M3.OptionalMatchedType == Date {
	        let matchers: [Cuckoo.ParameterMatcher<(SoraNotification, String, Date?)>] = [wrap(matchable: notification) { $0.0 }, wrap(matchable: identifier) { $0.1 }, wrap(matchable: date) { $0.2 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockNotificationsLocalSchedulerProtocol.self, method: "schedule(notification: SoraNotification, with: String, on: Date?)", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_NotificationsLocalSchedulerProtocol: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func schedule<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable, M3: Cuckoo.OptionalMatchable>(notification: M1, with identifier: M2, on date: M3) -> Cuckoo.__DoNotUse<(SoraNotification, String, Date?), Void> where M1.MatchedType == SoraNotification, M2.MatchedType == String, M3.OptionalMatchedType == Date {
	        let matchers: [Cuckoo.ParameterMatcher<(SoraNotification, String, Date?)>] = [wrap(matchable: notification) { $0.0 }, wrap(matchable: identifier) { $0.1 }, wrap(matchable: date) { $0.2 }]
	        return cuckoo_manager.verify("schedule(notification: SoraNotification, with: String, on: Date?)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

 class NotificationsLocalSchedulerProtocolStub: NotificationsLocalSchedulerProtocol {
    

    

    
     func schedule(notification: SoraNotification, with identifier: String, on date: Date?)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
}



 class MockNotificationsServiceOutputProtocol: NotificationsServiceOutputProtocol, Cuckoo.ProtocolMock {
    
     typealias MocksType = NotificationsServiceOutputProtocol
    
     typealias Stubbing = __StubbingProxy_NotificationsServiceOutputProtocol
     typealias Verification = __VerificationProxy_NotificationsServiceOutputProtocol

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: NotificationsServiceOutputProtocol?

     func enableDefaultImplementation(_ stub: NotificationsServiceOutputProtocol) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    

    

    
    
    
     func didReceive(remoteToken: String)  {
        
    return cuckoo_manager.call("didReceive(remoteToken: String)",
            parameters: (remoteToken),
            escapingParameters: (remoteToken),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.didReceive(remoteToken: remoteToken))
        
    }
    
    
    
     func didReceive(_ notification: SoraNotificationProtocol) -> Bool {
        
    return cuckoo_manager.call("didReceive(_: SoraNotificationProtocol) -> Bool",
            parameters: (notification),
            escapingParameters: (notification),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.didReceive(notification))
        
    }
    

	 struct __StubbingProxy_NotificationsServiceOutputProtocol: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func didReceive<M1: Cuckoo.Matchable>(remoteToken: M1) -> Cuckoo.ProtocolStubNoReturnFunction<(String)> where M1.MatchedType == String {
	        let matchers: [Cuckoo.ParameterMatcher<(String)>] = [wrap(matchable: remoteToken) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockNotificationsServiceOutputProtocol.self, method: "didReceive(remoteToken: String)", parameterMatchers: matchers))
	    }
	    
	    func didReceive<M1: Cuckoo.Matchable>(_ notification: M1) -> Cuckoo.ProtocolStubFunction<(SoraNotificationProtocol), Bool> where M1.MatchedType == SoraNotificationProtocol {
	        let matchers: [Cuckoo.ParameterMatcher<(SoraNotificationProtocol)>] = [wrap(matchable: notification) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockNotificationsServiceOutputProtocol.self, method: "didReceive(_: SoraNotificationProtocol) -> Bool", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_NotificationsServiceOutputProtocol: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func didReceive<M1: Cuckoo.Matchable>(remoteToken: M1) -> Cuckoo.__DoNotUse<(String), Void> where M1.MatchedType == String {
	        let matchers: [Cuckoo.ParameterMatcher<(String)>] = [wrap(matchable: remoteToken) { $0 }]
	        return cuckoo_manager.verify("didReceive(remoteToken: String)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func didReceive<M1: Cuckoo.Matchable>(_ notification: M1) -> Cuckoo.__DoNotUse<(SoraNotificationProtocol), Bool> where M1.MatchedType == SoraNotificationProtocol {
	        let matchers: [Cuckoo.ParameterMatcher<(SoraNotificationProtocol)>] = [wrap(matchable: notification) { $0 }]
	        return cuckoo_manager.verify("didReceive(_: SoraNotificationProtocol) -> Bool", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

 class NotificationsServiceOutputProtocolStub: NotificationsServiceOutputProtocol {
    

    

    
     func didReceive(remoteToken: String)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func didReceive(_ notification: SoraNotificationProtocol) -> Bool  {
        return DefaultValueRegistry.defaultValue(for: (Bool).self)
    }
    
}


import Cuckoo
@testable import SoraPassport

import Foundation


 class MockOnboardingMainViewProtocol: OnboardingMainViewProtocol, Cuckoo.ProtocolMock {
    
     typealias MocksType = OnboardingMainViewProtocol
    
     typealias Stubbing = __StubbingProxy_OnboardingMainViewProtocol
     typealias Verification = __VerificationProxy_OnboardingMainViewProtocol

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: OnboardingMainViewProtocol?

     func enableDefaultImplementation(_ stub: OnboardingMainViewProtocol) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    
    
    
     var controller: UIViewController {
        get {
            return cuckoo_manager.getter("controller",
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.controller)
        }
        
    }
    
    
    
     var loadableContentView: UIView! {
        get {
            return cuckoo_manager.getter("loadableContentView",
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.loadableContentView)
        }
        
    }
    
    
    
     var shouldDisableInteractionWhenLoading: Bool {
        get {
            return cuckoo_manager.getter("shouldDisableInteractionWhenLoading",
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.shouldDisableInteractionWhenLoading)
        }
        
    }
    

    

    
    
    
     func didReceive(viewModels: [TutorialViewModelProtocol])  {
        
    return cuckoo_manager.call("didReceive(viewModels: [TutorialViewModelProtocol])",
            parameters: (viewModels),
            escapingParameters: (viewModels),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.didReceive(viewModels: viewModels))
        
    }
    
    
    
     func didStartLoading()  {
        
    return cuckoo_manager.call("didStartLoading()",
            parameters: (),
            escapingParameters: (),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.didStartLoading())
        
    }
    
    
    
     func didStopLoading()  {
        
    return cuckoo_manager.call("didStopLoading()",
            parameters: (),
            escapingParameters: (),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.didStopLoading())
        
    }
    

	 struct __StubbingProxy_OnboardingMainViewProtocol: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    var controller: Cuckoo.ProtocolToBeStubbedReadOnlyProperty<MockOnboardingMainViewProtocol, UIViewController> {
	        return .init(manager: cuckoo_manager, name: "controller")
	    }
	    
	    
	    var loadableContentView: Cuckoo.ProtocolToBeStubbedReadOnlyProperty<MockOnboardingMainViewProtocol, UIView?> {
	        return .init(manager: cuckoo_manager, name: "loadableContentView")
	    }
	    
	    
	    var shouldDisableInteractionWhenLoading: Cuckoo.ProtocolToBeStubbedReadOnlyProperty<MockOnboardingMainViewProtocol, Bool> {
	        return .init(manager: cuckoo_manager, name: "shouldDisableInteractionWhenLoading")
	    }
	    
	    
	    func didReceive<M1: Cuckoo.Matchable>(viewModels: M1) -> Cuckoo.ProtocolStubNoReturnFunction<([TutorialViewModelProtocol])> where M1.MatchedType == [TutorialViewModelProtocol] {
	        let matchers: [Cuckoo.ParameterMatcher<([TutorialViewModelProtocol])>] = [wrap(matchable: viewModels) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockOnboardingMainViewProtocol.self, method: "didReceive(viewModels: [TutorialViewModelProtocol])", parameterMatchers: matchers))
	    }
	    
	    func didStartLoading() -> Cuckoo.ProtocolStubNoReturnFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockOnboardingMainViewProtocol.self, method: "didStartLoading()", parameterMatchers: matchers))
	    }
	    
	    func didStopLoading() -> Cuckoo.ProtocolStubNoReturnFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockOnboardingMainViewProtocol.self, method: "didStopLoading()", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_OnboardingMainViewProtocol: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	    
	    var controller: Cuckoo.VerifyReadOnlyProperty<UIViewController> {
	        return .init(manager: cuckoo_manager, name: "controller", callMatcher: callMatcher, sourceLocation: sourceLocation)
	    }
	    
	    
	    var loadableContentView: Cuckoo.VerifyReadOnlyProperty<UIView?> {
	        return .init(manager: cuckoo_manager, name: "loadableContentView", callMatcher: callMatcher, sourceLocation: sourceLocation)
	    }
	    
	    
	    var shouldDisableInteractionWhenLoading: Cuckoo.VerifyReadOnlyProperty<Bool> {
	        return .init(manager: cuckoo_manager, name: "shouldDisableInteractionWhenLoading", callMatcher: callMatcher, sourceLocation: sourceLocation)
	    }
	    
	
	    
	    @discardableResult
	    func didReceive<M1: Cuckoo.Matchable>(viewModels: M1) -> Cuckoo.__DoNotUse<([TutorialViewModelProtocol]), Void> where M1.MatchedType == [TutorialViewModelProtocol] {
	        let matchers: [Cuckoo.ParameterMatcher<([TutorialViewModelProtocol])>] = [wrap(matchable: viewModels) { $0 }]
	        return cuckoo_manager.verify("didReceive(viewModels: [TutorialViewModelProtocol])", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func didStartLoading() -> Cuckoo.__DoNotUse<(), Void> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("didStartLoading()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func didStopLoading() -> Cuckoo.__DoNotUse<(), Void> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("didStopLoading()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

 class OnboardingMainViewProtocolStub: OnboardingMainViewProtocol {
    
    
     var controller: UIViewController {
        get {
            return DefaultValueRegistry.defaultValue(for: (UIViewController).self)
        }
        
    }
    
    
     var loadableContentView: UIView! {
        get {
            return DefaultValueRegistry.defaultValue(for: (UIView?).self)
        }
        
    }
    
    
     var shouldDisableInteractionWhenLoading: Bool {
        get {
            return DefaultValueRegistry.defaultValue(for: (Bool).self)
        }
        
    }
    

    

    
     func didReceive(viewModels: [TutorialViewModelProtocol])   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func didStartLoading()   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func didStopLoading()   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
}



 class MockOnboardingMainPresenterProtocol: OnboardingMainPresenterProtocol, Cuckoo.ProtocolMock {
    
     typealias MocksType = OnboardingMainPresenterProtocol
    
     typealias Stubbing = __StubbingProxy_OnboardingMainPresenterProtocol
     typealias Verification = __VerificationProxy_OnboardingMainPresenterProtocol

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: OnboardingMainPresenterProtocol?

     func enableDefaultImplementation(_ stub: OnboardingMainPresenterProtocol) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    

    

    
    
    
     func viewIsReady()  {
        
    return cuckoo_manager.call("viewIsReady()",
            parameters: (),
            escapingParameters: (),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.viewIsReady())
        
    }
    
    
    
     func activateSignup()  {
        
    return cuckoo_manager.call("activateSignup()",
            parameters: (),
            escapingParameters: (),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.activateSignup())
        
    }
    
    
    
     func activateAccountRestore()  {
        
    return cuckoo_manager.call("activateAccountRestore()",
            parameters: (),
            escapingParameters: (),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.activateAccountRestore())
        
    }
    
    
    
     func activateTerms()  {
        
    return cuckoo_manager.call("activateTerms()",
            parameters: (),
            escapingParameters: (),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.activateTerms())
        
    }
    
    
    
     func activatePrivacy()  {
        
    return cuckoo_manager.call("activatePrivacy()",
            parameters: (),
            escapingParameters: (),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.activatePrivacy())
        
    }
    

	 struct __StubbingProxy_OnboardingMainPresenterProtocol: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func viewIsReady() -> Cuckoo.ProtocolStubNoReturnFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockOnboardingMainPresenterProtocol.self, method: "viewIsReady()", parameterMatchers: matchers))
	    }
	    
	    func activateSignup() -> Cuckoo.ProtocolStubNoReturnFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockOnboardingMainPresenterProtocol.self, method: "activateSignup()", parameterMatchers: matchers))
	    }
	    
	    func activateAccountRestore() -> Cuckoo.ProtocolStubNoReturnFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockOnboardingMainPresenterProtocol.self, method: "activateAccountRestore()", parameterMatchers: matchers))
	    }
	    
	    func activateTerms() -> Cuckoo.ProtocolStubNoReturnFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockOnboardingMainPresenterProtocol.self, method: "activateTerms()", parameterMatchers: matchers))
	    }
	    
	    func activatePrivacy() -> Cuckoo.ProtocolStubNoReturnFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockOnboardingMainPresenterProtocol.self, method: "activatePrivacy()", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_OnboardingMainPresenterProtocol: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func viewIsReady() -> Cuckoo.__DoNotUse<(), Void> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("viewIsReady()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func activateSignup() -> Cuckoo.__DoNotUse<(), Void> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("activateSignup()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func activateAccountRestore() -> Cuckoo.__DoNotUse<(), Void> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("activateAccountRestore()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func activateTerms() -> Cuckoo.__DoNotUse<(), Void> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("activateTerms()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func activatePrivacy() -> Cuckoo.__DoNotUse<(), Void> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("activatePrivacy()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

 class OnboardingMainPresenterProtocolStub: OnboardingMainPresenterProtocol {
    

    

    
     func viewIsReady()   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func activateSignup()   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func activateAccountRestore()   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func activateTerms()   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func activatePrivacy()   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
}



 class MockOnboardingMainInputInteractorProtocol: OnboardingMainInputInteractorProtocol, Cuckoo.ProtocolMock {
    
     typealias MocksType = OnboardingMainInputInteractorProtocol
    
     typealias Stubbing = __StubbingProxy_OnboardingMainInputInteractorProtocol
     typealias Verification = __VerificationProxy_OnboardingMainInputInteractorProtocol

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: OnboardingMainInputInteractorProtocol?

     func enableDefaultImplementation(_ stub: OnboardingMainInputInteractorProtocol) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    

    

    
    
    
     func setup()  {
        
    return cuckoo_manager.call("setup()",
            parameters: (),
            escapingParameters: (),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.setup())
        
    }
    
    
    
     func prepareSignup()  {
        
    return cuckoo_manager.call("prepareSignup()",
            parameters: (),
            escapingParameters: (),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.prepareSignup())
        
    }
    
    
    
     func prepareRestore()  {
        
    return cuckoo_manager.call("prepareRestore()",
            parameters: (),
            escapingParameters: (),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.prepareRestore())
        
    }
    

	 struct __StubbingProxy_OnboardingMainInputInteractorProtocol: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func setup() -> Cuckoo.ProtocolStubNoReturnFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockOnboardingMainInputInteractorProtocol.self, method: "setup()", parameterMatchers: matchers))
	    }
	    
	    func prepareSignup() -> Cuckoo.ProtocolStubNoReturnFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockOnboardingMainInputInteractorProtocol.self, method: "prepareSignup()", parameterMatchers: matchers))
	    }
	    
	    func prepareRestore() -> Cuckoo.ProtocolStubNoReturnFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockOnboardingMainInputInteractorProtocol.self, method: "prepareRestore()", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_OnboardingMainInputInteractorProtocol: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func setup() -> Cuckoo.__DoNotUse<(), Void> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("setup()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func prepareSignup() -> Cuckoo.__DoNotUse<(), Void> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("prepareSignup()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func prepareRestore() -> Cuckoo.__DoNotUse<(), Void> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("prepareRestore()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

 class OnboardingMainInputInteractorProtocolStub: OnboardingMainInputInteractorProtocol {
    

    

    
     func setup()   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func prepareSignup()   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func prepareRestore()   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
}



 class MockOnboardingMainOutputInteractorProtocol: OnboardingMainOutputInteractorProtocol, Cuckoo.ProtocolMock {
    
     typealias MocksType = OnboardingMainOutputInteractorProtocol
    
     typealias Stubbing = __StubbingProxy_OnboardingMainOutputInteractorProtocol
     typealias Verification = __VerificationProxy_OnboardingMainOutputInteractorProtocol

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: OnboardingMainOutputInteractorProtocol?

     func enableDefaultImplementation(_ stub: OnboardingMainOutputInteractorProtocol) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    

    

    
    
    
     func didStartSignupPreparation()  {
        
    return cuckoo_manager.call("didStartSignupPreparation()",
            parameters: (),
            escapingParameters: (),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.didStartSignupPreparation())
        
    }
    
    
    
     func didFinishSignupPreparation()  {
        
    return cuckoo_manager.call("didFinishSignupPreparation()",
            parameters: (),
            escapingParameters: (),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.didFinishSignupPreparation())
        
    }
    
    
    
     func didReceiveSignupPreparation(error: Error)  {
        
    return cuckoo_manager.call("didReceiveSignupPreparation(error: Error)",
            parameters: (error),
            escapingParameters: (error),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.didReceiveSignupPreparation(error: error))
        
    }
    
    
    
     func didStartRestorePreparation()  {
        
    return cuckoo_manager.call("didStartRestorePreparation()",
            parameters: (),
            escapingParameters: (),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.didStartRestorePreparation())
        
    }
    
    
    
     func didFinishRestorePreparation()  {
        
    return cuckoo_manager.call("didFinishRestorePreparation()",
            parameters: (),
            escapingParameters: (),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.didFinishRestorePreparation())
        
    }
    
    
    
     func didReceiveRestorePreparation(error: Error)  {
        
    return cuckoo_manager.call("didReceiveRestorePreparation(error: Error)",
            parameters: (error),
            escapingParameters: (error),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.didReceiveRestorePreparation(error: error))
        
    }
    
    
    
     func didReceiveVersion(data: SupportedVersionData)  {
        
    return cuckoo_manager.call("didReceiveVersion(data: SupportedVersionData)",
            parameters: (data),
            escapingParameters: (data),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.didReceiveVersion(data: data))
        
    }
    

	 struct __StubbingProxy_OnboardingMainOutputInteractorProtocol: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func didStartSignupPreparation() -> Cuckoo.ProtocolStubNoReturnFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockOnboardingMainOutputInteractorProtocol.self, method: "didStartSignupPreparation()", parameterMatchers: matchers))
	    }
	    
	    func didFinishSignupPreparation() -> Cuckoo.ProtocolStubNoReturnFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockOnboardingMainOutputInteractorProtocol.self, method: "didFinishSignupPreparation()", parameterMatchers: matchers))
	    }
	    
	    func didReceiveSignupPreparation<M1: Cuckoo.Matchable>(error: M1) -> Cuckoo.ProtocolStubNoReturnFunction<(Error)> where M1.MatchedType == Error {
	        let matchers: [Cuckoo.ParameterMatcher<(Error)>] = [wrap(matchable: error) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockOnboardingMainOutputInteractorProtocol.self, method: "didReceiveSignupPreparation(error: Error)", parameterMatchers: matchers))
	    }
	    
	    func didStartRestorePreparation() -> Cuckoo.ProtocolStubNoReturnFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockOnboardingMainOutputInteractorProtocol.self, method: "didStartRestorePreparation()", parameterMatchers: matchers))
	    }
	    
	    func didFinishRestorePreparation() -> Cuckoo.ProtocolStubNoReturnFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockOnboardingMainOutputInteractorProtocol.self, method: "didFinishRestorePreparation()", parameterMatchers: matchers))
	    }
	    
	    func didReceiveRestorePreparation<M1: Cuckoo.Matchable>(error: M1) -> Cuckoo.ProtocolStubNoReturnFunction<(Error)> where M1.MatchedType == Error {
	        let matchers: [Cuckoo.ParameterMatcher<(Error)>] = [wrap(matchable: error) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockOnboardingMainOutputInteractorProtocol.self, method: "didReceiveRestorePreparation(error: Error)", parameterMatchers: matchers))
	    }
	    
	    func didReceiveVersion<M1: Cuckoo.Matchable>(data: M1) -> Cuckoo.ProtocolStubNoReturnFunction<(SupportedVersionData)> where M1.MatchedType == SupportedVersionData {
	        let matchers: [Cuckoo.ParameterMatcher<(SupportedVersionData)>] = [wrap(matchable: data) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockOnboardingMainOutputInteractorProtocol.self, method: "didReceiveVersion(data: SupportedVersionData)", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_OnboardingMainOutputInteractorProtocol: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func didStartSignupPreparation() -> Cuckoo.__DoNotUse<(), Void> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("didStartSignupPreparation()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func didFinishSignupPreparation() -> Cuckoo.__DoNotUse<(), Void> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("didFinishSignupPreparation()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func didReceiveSignupPreparation<M1: Cuckoo.Matchable>(error: M1) -> Cuckoo.__DoNotUse<(Error), Void> where M1.MatchedType == Error {
	        let matchers: [Cuckoo.ParameterMatcher<(Error)>] = [wrap(matchable: error) { $0 }]
	        return cuckoo_manager.verify("didReceiveSignupPreparation(error: Error)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func didStartRestorePreparation() -> Cuckoo.__DoNotUse<(), Void> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("didStartRestorePreparation()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func didFinishRestorePreparation() -> Cuckoo.__DoNotUse<(), Void> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("didFinishRestorePreparation()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func didReceiveRestorePreparation<M1: Cuckoo.Matchable>(error: M1) -> Cuckoo.__DoNotUse<(Error), Void> where M1.MatchedType == Error {
	        let matchers: [Cuckoo.ParameterMatcher<(Error)>] = [wrap(matchable: error) { $0 }]
	        return cuckoo_manager.verify("didReceiveRestorePreparation(error: Error)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func didReceiveVersion<M1: Cuckoo.Matchable>(data: M1) -> Cuckoo.__DoNotUse<(SupportedVersionData), Void> where M1.MatchedType == SupportedVersionData {
	        let matchers: [Cuckoo.ParameterMatcher<(SupportedVersionData)>] = [wrap(matchable: data) { $0 }]
	        return cuckoo_manager.verify("didReceiveVersion(data: SupportedVersionData)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

 class OnboardingMainOutputInteractorProtocolStub: OnboardingMainOutputInteractorProtocol {
    

    

    
     func didStartSignupPreparation()   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func didFinishSignupPreparation()   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func didReceiveSignupPreparation(error: Error)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func didStartRestorePreparation()   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func didFinishRestorePreparation()   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func didReceiveRestorePreparation(error: Error)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func didReceiveVersion(data: SupportedVersionData)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
}



 class MockOnboardingMainWireframeProtocol: OnboardingMainWireframeProtocol, Cuckoo.ProtocolMock {
    
     typealias MocksType = OnboardingMainWireframeProtocol
    
     typealias Stubbing = __StubbingProxy_OnboardingMainWireframeProtocol
     typealias Verification = __VerificationProxy_OnboardingMainWireframeProtocol

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: OnboardingMainWireframeProtocol?

     func enableDefaultImplementation(_ stub: OnboardingMainWireframeProtocol) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    

    

    
    
    
     func showSignup(from view: OnboardingMainViewProtocol?)  {
        
    return cuckoo_manager.call("showSignup(from: OnboardingMainViewProtocol?)",
            parameters: (view),
            escapingParameters: (view),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.showSignup(from: view))
        
    }
    
    
    
     func showAccountRestore(from view: OnboardingMainViewProtocol?)  {
        
    return cuckoo_manager.call("showAccountRestore(from: OnboardingMainViewProtocol?)",
            parameters: (view),
            escapingParameters: (view),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.showAccountRestore(from: view))
        
    }
    
    
    
     func showWeb(url: URL, from view: ControllerBackedProtocol, style: WebPresentableStyle)  {
        
    return cuckoo_manager.call("showWeb(url: URL, from: ControllerBackedProtocol, style: WebPresentableStyle)",
            parameters: (url, view, style),
            escapingParameters: (url, view, style),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.showWeb(url: url, from: view, style: style))
        
    }
    
    
    
     func present(error: Error, from view: ControllerBackedProtocol?) -> Bool {
        
    return cuckoo_manager.call("present(error: Error, from: ControllerBackedProtocol?) -> Bool",
            parameters: (error, view),
            escapingParameters: (error, view),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.present(error: error, from: view))
        
    }
    
    
    
     func present(message: String?, title: String?, closeAction: String?, from view: ControllerBackedProtocol?)  {
        
    return cuckoo_manager.call("present(message: String?, title: String?, closeAction: String?, from: ControllerBackedProtocol?)",
            parameters: (message, title, closeAction, view),
            escapingParameters: (message, title, closeAction, view),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.present(message: message, title: title, closeAction: closeAction, from: view))
        
    }
    
    
    
     func present(message: String?, title: String?, actions: [AlertPresentableAction], from view: ControllerBackedProtocol?)  {
        
    return cuckoo_manager.call("present(message: String?, title: String?, actions: [AlertPresentableAction], from: ControllerBackedProtocol?)",
            parameters: (message, title, actions, view),
            escapingParameters: (message, title, actions, view),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.present(message: message, title: title, actions: actions, from: view))
        
    }
    
    
    
     func presentUnsupportedVersion(for data: SupportedVersionData, on window: UIWindow?, animated: Bool)  {
        
    return cuckoo_manager.call("presentUnsupportedVersion(for: SupportedVersionData, on: UIWindow?, animated: Bool)",
            parameters: (data, window, animated),
            escapingParameters: (data, window, animated),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.presentUnsupportedVersion(for: data, on: window, animated: animated))
        
    }
    

	 struct __StubbingProxy_OnboardingMainWireframeProtocol: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func showSignup<M1: Cuckoo.OptionalMatchable>(from view: M1) -> Cuckoo.ProtocolStubNoReturnFunction<(OnboardingMainViewProtocol?)> where M1.OptionalMatchedType == OnboardingMainViewProtocol {
	        let matchers: [Cuckoo.ParameterMatcher<(OnboardingMainViewProtocol?)>] = [wrap(matchable: view) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockOnboardingMainWireframeProtocol.self, method: "showSignup(from: OnboardingMainViewProtocol?)", parameterMatchers: matchers))
	    }
	    
	    func showAccountRestore<M1: Cuckoo.OptionalMatchable>(from view: M1) -> Cuckoo.ProtocolStubNoReturnFunction<(OnboardingMainViewProtocol?)> where M1.OptionalMatchedType == OnboardingMainViewProtocol {
	        let matchers: [Cuckoo.ParameterMatcher<(OnboardingMainViewProtocol?)>] = [wrap(matchable: view) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockOnboardingMainWireframeProtocol.self, method: "showAccountRestore(from: OnboardingMainViewProtocol?)", parameterMatchers: matchers))
	    }
	    
	    func showWeb<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable, M3: Cuckoo.Matchable>(url: M1, from view: M2, style: M3) -> Cuckoo.ProtocolStubNoReturnFunction<(URL, ControllerBackedProtocol, WebPresentableStyle)> where M1.MatchedType == URL, M2.MatchedType == ControllerBackedProtocol, M3.MatchedType == WebPresentableStyle {
	        let matchers: [Cuckoo.ParameterMatcher<(URL, ControllerBackedProtocol, WebPresentableStyle)>] = [wrap(matchable: url) { $0.0 }, wrap(matchable: view) { $0.1 }, wrap(matchable: style) { $0.2 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockOnboardingMainWireframeProtocol.self, method: "showWeb(url: URL, from: ControllerBackedProtocol, style: WebPresentableStyle)", parameterMatchers: matchers))
	    }
	    
	    func present<M1: Cuckoo.Matchable, M2: Cuckoo.OptionalMatchable>(error: M1, from view: M2) -> Cuckoo.ProtocolStubFunction<(Error, ControllerBackedProtocol?), Bool> where M1.MatchedType == Error, M2.OptionalMatchedType == ControllerBackedProtocol {
	        let matchers: [Cuckoo.ParameterMatcher<(Error, ControllerBackedProtocol?)>] = [wrap(matchable: error) { $0.0 }, wrap(matchable: view) { $0.1 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockOnboardingMainWireframeProtocol.self, method: "present(error: Error, from: ControllerBackedProtocol?) -> Bool", parameterMatchers: matchers))
	    }
	    
	    func present<M1: Cuckoo.OptionalMatchable, M2: Cuckoo.OptionalMatchable, M3: Cuckoo.OptionalMatchable, M4: Cuckoo.OptionalMatchable>(message: M1, title: M2, closeAction: M3, from view: M4) -> Cuckoo.ProtocolStubNoReturnFunction<(String?, String?, String?, ControllerBackedProtocol?)> where M1.OptionalMatchedType == String, M2.OptionalMatchedType == String, M3.OptionalMatchedType == String, M4.OptionalMatchedType == ControllerBackedProtocol {
	        let matchers: [Cuckoo.ParameterMatcher<(String?, String?, String?, ControllerBackedProtocol?)>] = [wrap(matchable: message) { $0.0 }, wrap(matchable: title) { $0.1 }, wrap(matchable: closeAction) { $0.2 }, wrap(matchable: view) { $0.3 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockOnboardingMainWireframeProtocol.self, method: "present(message: String?, title: String?, closeAction: String?, from: ControllerBackedProtocol?)", parameterMatchers: matchers))
	    }
	    
	    func present<M1: Cuckoo.OptionalMatchable, M2: Cuckoo.OptionalMatchable, M3: Cuckoo.Matchable, M4: Cuckoo.OptionalMatchable>(message: M1, title: M2, actions: M3, from view: M4) -> Cuckoo.ProtocolStubNoReturnFunction<(String?, String?, [AlertPresentableAction], ControllerBackedProtocol?)> where M1.OptionalMatchedType == String, M2.OptionalMatchedType == String, M3.MatchedType == [AlertPresentableAction], M4.OptionalMatchedType == ControllerBackedProtocol {
	        let matchers: [Cuckoo.ParameterMatcher<(String?, String?, [AlertPresentableAction], ControllerBackedProtocol?)>] = [wrap(matchable: message) { $0.0 }, wrap(matchable: title) { $0.1 }, wrap(matchable: actions) { $0.2 }, wrap(matchable: view) { $0.3 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockOnboardingMainWireframeProtocol.self, method: "present(message: String?, title: String?, actions: [AlertPresentableAction], from: ControllerBackedProtocol?)", parameterMatchers: matchers))
	    }
	    
	    func presentUnsupportedVersion<M1: Cuckoo.Matchable, M2: Cuckoo.OptionalMatchable, M3: Cuckoo.Matchable>(for data: M1, on window: M2, animated: M3) -> Cuckoo.ProtocolStubNoReturnFunction<(SupportedVersionData, UIWindow?, Bool)> where M1.MatchedType == SupportedVersionData, M2.OptionalMatchedType == UIWindow, M3.MatchedType == Bool {
	        let matchers: [Cuckoo.ParameterMatcher<(SupportedVersionData, UIWindow?, Bool)>] = [wrap(matchable: data) { $0.0 }, wrap(matchable: window) { $0.1 }, wrap(matchable: animated) { $0.2 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockOnboardingMainWireframeProtocol.self, method: "presentUnsupportedVersion(for: SupportedVersionData, on: UIWindow?, animated: Bool)", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_OnboardingMainWireframeProtocol: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func showSignup<M1: Cuckoo.OptionalMatchable>(from view: M1) -> Cuckoo.__DoNotUse<(OnboardingMainViewProtocol?), Void> where M1.OptionalMatchedType == OnboardingMainViewProtocol {
	        let matchers: [Cuckoo.ParameterMatcher<(OnboardingMainViewProtocol?)>] = [wrap(matchable: view) { $0 }]
	        return cuckoo_manager.verify("showSignup(from: OnboardingMainViewProtocol?)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func showAccountRestore<M1: Cuckoo.OptionalMatchable>(from view: M1) -> Cuckoo.__DoNotUse<(OnboardingMainViewProtocol?), Void> where M1.OptionalMatchedType == OnboardingMainViewProtocol {
	        let matchers: [Cuckoo.ParameterMatcher<(OnboardingMainViewProtocol?)>] = [wrap(matchable: view) { $0 }]
	        return cuckoo_manager.verify("showAccountRestore(from: OnboardingMainViewProtocol?)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func showWeb<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable, M3: Cuckoo.Matchable>(url: M1, from view: M2, style: M3) -> Cuckoo.__DoNotUse<(URL, ControllerBackedProtocol, WebPresentableStyle), Void> where M1.MatchedType == URL, M2.MatchedType == ControllerBackedProtocol, M3.MatchedType == WebPresentableStyle {
	        let matchers: [Cuckoo.ParameterMatcher<(URL, ControllerBackedProtocol, WebPresentableStyle)>] = [wrap(matchable: url) { $0.0 }, wrap(matchable: view) { $0.1 }, wrap(matchable: style) { $0.2 }]
	        return cuckoo_manager.verify("showWeb(url: URL, from: ControllerBackedProtocol, style: WebPresentableStyle)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func present<M1: Cuckoo.Matchable, M2: Cuckoo.OptionalMatchable>(error: M1, from view: M2) -> Cuckoo.__DoNotUse<(Error, ControllerBackedProtocol?), Bool> where M1.MatchedType == Error, M2.OptionalMatchedType == ControllerBackedProtocol {
	        let matchers: [Cuckoo.ParameterMatcher<(Error, ControllerBackedProtocol?)>] = [wrap(matchable: error) { $0.0 }, wrap(matchable: view) { $0.1 }]
	        return cuckoo_manager.verify("present(error: Error, from: ControllerBackedProtocol?) -> Bool", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func present<M1: Cuckoo.OptionalMatchable, M2: Cuckoo.OptionalMatchable, M3: Cuckoo.OptionalMatchable, M4: Cuckoo.OptionalMatchable>(message: M1, title: M2, closeAction: M3, from view: M4) -> Cuckoo.__DoNotUse<(String?, String?, String?, ControllerBackedProtocol?), Void> where M1.OptionalMatchedType == String, M2.OptionalMatchedType == String, M3.OptionalMatchedType == String, M4.OptionalMatchedType == ControllerBackedProtocol {
	        let matchers: [Cuckoo.ParameterMatcher<(String?, String?, String?, ControllerBackedProtocol?)>] = [wrap(matchable: message) { $0.0 }, wrap(matchable: title) { $0.1 }, wrap(matchable: closeAction) { $0.2 }, wrap(matchable: view) { $0.3 }]
	        return cuckoo_manager.verify("present(message: String?, title: String?, closeAction: String?, from: ControllerBackedProtocol?)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func present<M1: Cuckoo.OptionalMatchable, M2: Cuckoo.OptionalMatchable, M3: Cuckoo.Matchable, M4: Cuckoo.OptionalMatchable>(message: M1, title: M2, actions: M3, from view: M4) -> Cuckoo.__DoNotUse<(String?, String?, [AlertPresentableAction], ControllerBackedProtocol?), Void> where M1.OptionalMatchedType == String, M2.OptionalMatchedType == String, M3.MatchedType == [AlertPresentableAction], M4.OptionalMatchedType == ControllerBackedProtocol {
	        let matchers: [Cuckoo.ParameterMatcher<(String?, String?, [AlertPresentableAction], ControllerBackedProtocol?)>] = [wrap(matchable: message) { $0.0 }, wrap(matchable: title) { $0.1 }, wrap(matchable: actions) { $0.2 }, wrap(matchable: view) { $0.3 }]
	        return cuckoo_manager.verify("present(message: String?, title: String?, actions: [AlertPresentableAction], from: ControllerBackedProtocol?)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func presentUnsupportedVersion<M1: Cuckoo.Matchable, M2: Cuckoo.OptionalMatchable, M3: Cuckoo.Matchable>(for data: M1, on window: M2, animated: M3) -> Cuckoo.__DoNotUse<(SupportedVersionData, UIWindow?, Bool), Void> where M1.MatchedType == SupportedVersionData, M2.OptionalMatchedType == UIWindow, M3.MatchedType == Bool {
	        let matchers: [Cuckoo.ParameterMatcher<(SupportedVersionData, UIWindow?, Bool)>] = [wrap(matchable: data) { $0.0 }, wrap(matchable: window) { $0.1 }, wrap(matchable: animated) { $0.2 }]
	        return cuckoo_manager.verify("presentUnsupportedVersion(for: SupportedVersionData, on: UIWindow?, animated: Bool)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

 class OnboardingMainWireframeProtocolStub: OnboardingMainWireframeProtocol {
    

    

    
     func showSignup(from view: OnboardingMainViewProtocol?)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func showAccountRestore(from view: OnboardingMainViewProtocol?)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func showWeb(url: URL, from view: ControllerBackedProtocol, style: WebPresentableStyle)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func present(error: Error, from view: ControllerBackedProtocol?) -> Bool  {
        return DefaultValueRegistry.defaultValue(for: (Bool).self)
    }
    
     func present(message: String?, title: String?, closeAction: String?, from view: ControllerBackedProtocol?)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func present(message: String?, title: String?, actions: [AlertPresentableAction], from view: ControllerBackedProtocol?)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func presentUnsupportedVersion(for data: SupportedVersionData, on window: UIWindow?, animated: Bool)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
}


import Cuckoo
@testable import SoraPassport

import Foundation


 class MockPersonalInfoViewProtocol: PersonalInfoViewProtocol, Cuckoo.ProtocolMock {
    
     typealias MocksType = PersonalInfoViewProtocol
    
     typealias Stubbing = __StubbingProxy_PersonalInfoViewProtocol
     typealias Verification = __VerificationProxy_PersonalInfoViewProtocol

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: PersonalInfoViewProtocol?

     func enableDefaultImplementation(_ stub: PersonalInfoViewProtocol) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    
    
    
     var loadableContentView: UIView! {
        get {
            return cuckoo_manager.getter("loadableContentView",
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.loadableContentView)
        }
        
    }
    
    
    
     var shouldDisableInteractionWhenLoading: Bool {
        get {
            return cuckoo_manager.getter("shouldDisableInteractionWhenLoading",
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.shouldDisableInteractionWhenLoading)
        }
        
    }
    
    
    
     var controller: UIViewController {
        get {
            return cuckoo_manager.getter("controller",
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.controller)
        }
        
    }
    

    

    
    
    
     func didReceive(viewModels: [PersonalInfoViewModelProtocol])  {
        
    return cuckoo_manager.call("didReceive(viewModels: [PersonalInfoViewModelProtocol])",
            parameters: (viewModels),
            escapingParameters: (viewModels),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.didReceive(viewModels: viewModels))
        
    }
    
    
    
     func didStartEditing(at index: Int)  {
        
    return cuckoo_manager.call("didStartEditing(at: Int)",
            parameters: (index),
            escapingParameters: (index),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.didStartEditing(at: index))
        
    }
    
    
    
     func didStartLoading()  {
        
    return cuckoo_manager.call("didStartLoading()",
            parameters: (),
            escapingParameters: (),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.didStartLoading())
        
    }
    
    
    
     func didStopLoading()  {
        
    return cuckoo_manager.call("didStopLoading()",
            parameters: (),
            escapingParameters: (),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.didStopLoading())
        
    }
    

	 struct __StubbingProxy_PersonalInfoViewProtocol: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    var loadableContentView: Cuckoo.ProtocolToBeStubbedReadOnlyProperty<MockPersonalInfoViewProtocol, UIView?> {
	        return .init(manager: cuckoo_manager, name: "loadableContentView")
	    }
	    
	    
	    var shouldDisableInteractionWhenLoading: Cuckoo.ProtocolToBeStubbedReadOnlyProperty<MockPersonalInfoViewProtocol, Bool> {
	        return .init(manager: cuckoo_manager, name: "shouldDisableInteractionWhenLoading")
	    }
	    
	    
	    var controller: Cuckoo.ProtocolToBeStubbedReadOnlyProperty<MockPersonalInfoViewProtocol, UIViewController> {
	        return .init(manager: cuckoo_manager, name: "controller")
	    }
	    
	    
	    func didReceive<M1: Cuckoo.Matchable>(viewModels: M1) -> Cuckoo.ProtocolStubNoReturnFunction<([PersonalInfoViewModelProtocol])> where M1.MatchedType == [PersonalInfoViewModelProtocol] {
	        let matchers: [Cuckoo.ParameterMatcher<([PersonalInfoViewModelProtocol])>] = [wrap(matchable: viewModels) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockPersonalInfoViewProtocol.self, method: "didReceive(viewModels: [PersonalInfoViewModelProtocol])", parameterMatchers: matchers))
	    }
	    
	    func didStartEditing<M1: Cuckoo.Matchable>(at index: M1) -> Cuckoo.ProtocolStubNoReturnFunction<(Int)> where M1.MatchedType == Int {
	        let matchers: [Cuckoo.ParameterMatcher<(Int)>] = [wrap(matchable: index) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockPersonalInfoViewProtocol.self, method: "didStartEditing(at: Int)", parameterMatchers: matchers))
	    }
	    
	    func didStartLoading() -> Cuckoo.ProtocolStubNoReturnFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockPersonalInfoViewProtocol.self, method: "didStartLoading()", parameterMatchers: matchers))
	    }
	    
	    func didStopLoading() -> Cuckoo.ProtocolStubNoReturnFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockPersonalInfoViewProtocol.self, method: "didStopLoading()", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_PersonalInfoViewProtocol: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	    
	    var loadableContentView: Cuckoo.VerifyReadOnlyProperty<UIView?> {
	        return .init(manager: cuckoo_manager, name: "loadableContentView", callMatcher: callMatcher, sourceLocation: sourceLocation)
	    }
	    
	    
	    var shouldDisableInteractionWhenLoading: Cuckoo.VerifyReadOnlyProperty<Bool> {
	        return .init(manager: cuckoo_manager, name: "shouldDisableInteractionWhenLoading", callMatcher: callMatcher, sourceLocation: sourceLocation)
	    }
	    
	    
	    var controller: Cuckoo.VerifyReadOnlyProperty<UIViewController> {
	        return .init(manager: cuckoo_manager, name: "controller", callMatcher: callMatcher, sourceLocation: sourceLocation)
	    }
	    
	
	    
	    @discardableResult
	    func didReceive<M1: Cuckoo.Matchable>(viewModels: M1) -> Cuckoo.__DoNotUse<([PersonalInfoViewModelProtocol]), Void> where M1.MatchedType == [PersonalInfoViewModelProtocol] {
	        let matchers: [Cuckoo.ParameterMatcher<([PersonalInfoViewModelProtocol])>] = [wrap(matchable: viewModels) { $0 }]
	        return cuckoo_manager.verify("didReceive(viewModels: [PersonalInfoViewModelProtocol])", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func didStartEditing<M1: Cuckoo.Matchable>(at index: M1) -> Cuckoo.__DoNotUse<(Int), Void> where M1.MatchedType == Int {
	        let matchers: [Cuckoo.ParameterMatcher<(Int)>] = [wrap(matchable: index) { $0 }]
	        return cuckoo_manager.verify("didStartEditing(at: Int)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func didStartLoading() -> Cuckoo.__DoNotUse<(), Void> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("didStartLoading()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func didStopLoading() -> Cuckoo.__DoNotUse<(), Void> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("didStopLoading()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

 class PersonalInfoViewProtocolStub: PersonalInfoViewProtocol {
    
    
     var loadableContentView: UIView! {
        get {
            return DefaultValueRegistry.defaultValue(for: (UIView?).self)
        }
        
    }
    
    
     var shouldDisableInteractionWhenLoading: Bool {
        get {
            return DefaultValueRegistry.defaultValue(for: (Bool).self)
        }
        
    }
    
    
     var controller: UIViewController {
        get {
            return DefaultValueRegistry.defaultValue(for: (UIViewController).self)
        }
        
    }
    

    

    
     func didReceive(viewModels: [PersonalInfoViewModelProtocol])   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func didStartEditing(at index: Int)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func didStartLoading()   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func didStopLoading()   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
}



 class MockPersonalInfoPresenterProtocol: PersonalInfoPresenterProtocol, Cuckoo.ProtocolMock {
    
     typealias MocksType = PersonalInfoPresenterProtocol
    
     typealias Stubbing = __StubbingProxy_PersonalInfoPresenterProtocol
     typealias Verification = __VerificationProxy_PersonalInfoPresenterProtocol

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: PersonalInfoPresenterProtocol?

     func enableDefaultImplementation(_ stub: PersonalInfoPresenterProtocol) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    

    

    
    
    
     func load()  {
        
    return cuckoo_manager.call("load()",
            parameters: (),
            escapingParameters: (),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.load())
        
    }
    
    
    
     func register()  {
        
    return cuckoo_manager.call("register()",
            parameters: (),
            escapingParameters: (),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.register())
        
    }
    

	 struct __StubbingProxy_PersonalInfoPresenterProtocol: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func load() -> Cuckoo.ProtocolStubNoReturnFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockPersonalInfoPresenterProtocol.self, method: "load()", parameterMatchers: matchers))
	    }
	    
	    func register() -> Cuckoo.ProtocolStubNoReturnFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockPersonalInfoPresenterProtocol.self, method: "register()", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_PersonalInfoPresenterProtocol: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func load() -> Cuckoo.__DoNotUse<(), Void> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("load()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func register() -> Cuckoo.__DoNotUse<(), Void> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("register()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

 class PersonalInfoPresenterProtocolStub: PersonalInfoPresenterProtocol {
    

    

    
     func load()   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func register()   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
}



 class MockPersonalInfoInteractorInputProtocol: PersonalInfoInteractorInputProtocol, Cuckoo.ProtocolMock {
    
     typealias MocksType = PersonalInfoInteractorInputProtocol
    
     typealias Stubbing = __StubbingProxy_PersonalInfoInteractorInputProtocol
     typealias Verification = __VerificationProxy_PersonalInfoInteractorInputProtocol

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: PersonalInfoInteractorInputProtocol?

     func enableDefaultImplementation(_ stub: PersonalInfoInteractorInputProtocol) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    

    

    
    
    
     func load()  {
        
    return cuckoo_manager.call("load()",
            parameters: (),
            escapingParameters: (),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.load())
        
    }
    
    
    
     func register(with form: PersonalForm)  {
        
    return cuckoo_manager.call("register(with: PersonalForm)",
            parameters: (form),
            escapingParameters: (form),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.register(with: form))
        
    }
    

	 struct __StubbingProxy_PersonalInfoInteractorInputProtocol: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func load() -> Cuckoo.ProtocolStubNoReturnFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockPersonalInfoInteractorInputProtocol.self, method: "load()", parameterMatchers: matchers))
	    }
	    
	    func register<M1: Cuckoo.Matchable>(with form: M1) -> Cuckoo.ProtocolStubNoReturnFunction<(PersonalForm)> where M1.MatchedType == PersonalForm {
	        let matchers: [Cuckoo.ParameterMatcher<(PersonalForm)>] = [wrap(matchable: form) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockPersonalInfoInteractorInputProtocol.self, method: "register(with: PersonalForm)", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_PersonalInfoInteractorInputProtocol: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func load() -> Cuckoo.__DoNotUse<(), Void> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("load()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func register<M1: Cuckoo.Matchable>(with form: M1) -> Cuckoo.__DoNotUse<(PersonalForm), Void> where M1.MatchedType == PersonalForm {
	        let matchers: [Cuckoo.ParameterMatcher<(PersonalForm)>] = [wrap(matchable: form) { $0 }]
	        return cuckoo_manager.verify("register(with: PersonalForm)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

 class PersonalInfoInteractorInputProtocolStub: PersonalInfoInteractorInputProtocol {
    

    

    
     func load()   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func register(with form: PersonalForm)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
}



 class MockPersonalInfoInteractorOutputProtocol: PersonalInfoInteractorOutputProtocol, Cuckoo.ProtocolMock {
    
     typealias MocksType = PersonalInfoInteractorOutputProtocol
    
     typealias Stubbing = __StubbingProxy_PersonalInfoInteractorOutputProtocol
     typealias Verification = __VerificationProxy_PersonalInfoInteractorOutputProtocol

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: PersonalInfoInteractorOutputProtocol?

     func enableDefaultImplementation(_ stub: PersonalInfoInteractorOutputProtocol) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    

    

    
    
    
     func didReceive(invitationCode: String)  {
        
    return cuckoo_manager.call("didReceive(invitationCode: String)",
            parameters: (invitationCode),
            escapingParameters: (invitationCode),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.didReceive(invitationCode: invitationCode))
        
    }
    
    
    
     func didStartRegistration(with form: PersonalForm)  {
        
    return cuckoo_manager.call("didStartRegistration(with: PersonalForm)",
            parameters: (form),
            escapingParameters: (form),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.didStartRegistration(with: form))
        
    }
    
    
    
     func didCompleteRegistration(with form: PersonalForm)  {
        
    return cuckoo_manager.call("didCompleteRegistration(with: PersonalForm)",
            parameters: (form),
            escapingParameters: (form),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.didCompleteRegistration(with: form))
        
    }
    
    
    
     func didReceiveRegistration(error: Error)  {
        
    return cuckoo_manager.call("didReceiveRegistration(error: Error)",
            parameters: (error),
            escapingParameters: (error),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.didReceiveRegistration(error: error))
        
    }
    

	 struct __StubbingProxy_PersonalInfoInteractorOutputProtocol: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func didReceive<M1: Cuckoo.Matchable>(invitationCode: M1) -> Cuckoo.ProtocolStubNoReturnFunction<(String)> where M1.MatchedType == String {
	        let matchers: [Cuckoo.ParameterMatcher<(String)>] = [wrap(matchable: invitationCode) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockPersonalInfoInteractorOutputProtocol.self, method: "didReceive(invitationCode: String)", parameterMatchers: matchers))
	    }
	    
	    func didStartRegistration<M1: Cuckoo.Matchable>(with form: M1) -> Cuckoo.ProtocolStubNoReturnFunction<(PersonalForm)> where M1.MatchedType == PersonalForm {
	        let matchers: [Cuckoo.ParameterMatcher<(PersonalForm)>] = [wrap(matchable: form) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockPersonalInfoInteractorOutputProtocol.self, method: "didStartRegistration(with: PersonalForm)", parameterMatchers: matchers))
	    }
	    
	    func didCompleteRegistration<M1: Cuckoo.Matchable>(with form: M1) -> Cuckoo.ProtocolStubNoReturnFunction<(PersonalForm)> where M1.MatchedType == PersonalForm {
	        let matchers: [Cuckoo.ParameterMatcher<(PersonalForm)>] = [wrap(matchable: form) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockPersonalInfoInteractorOutputProtocol.self, method: "didCompleteRegistration(with: PersonalForm)", parameterMatchers: matchers))
	    }
	    
	    func didReceiveRegistration<M1: Cuckoo.Matchable>(error: M1) -> Cuckoo.ProtocolStubNoReturnFunction<(Error)> where M1.MatchedType == Error {
	        let matchers: [Cuckoo.ParameterMatcher<(Error)>] = [wrap(matchable: error) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockPersonalInfoInteractorOutputProtocol.self, method: "didReceiveRegistration(error: Error)", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_PersonalInfoInteractorOutputProtocol: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func didReceive<M1: Cuckoo.Matchable>(invitationCode: M1) -> Cuckoo.__DoNotUse<(String), Void> where M1.MatchedType == String {
	        let matchers: [Cuckoo.ParameterMatcher<(String)>] = [wrap(matchable: invitationCode) { $0 }]
	        return cuckoo_manager.verify("didReceive(invitationCode: String)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func didStartRegistration<M1: Cuckoo.Matchable>(with form: M1) -> Cuckoo.__DoNotUse<(PersonalForm), Void> where M1.MatchedType == PersonalForm {
	        let matchers: [Cuckoo.ParameterMatcher<(PersonalForm)>] = [wrap(matchable: form) { $0 }]
	        return cuckoo_manager.verify("didStartRegistration(with: PersonalForm)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func didCompleteRegistration<M1: Cuckoo.Matchable>(with form: M1) -> Cuckoo.__DoNotUse<(PersonalForm), Void> where M1.MatchedType == PersonalForm {
	        let matchers: [Cuckoo.ParameterMatcher<(PersonalForm)>] = [wrap(matchable: form) { $0 }]
	        return cuckoo_manager.verify("didCompleteRegistration(with: PersonalForm)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func didReceiveRegistration<M1: Cuckoo.Matchable>(error: M1) -> Cuckoo.__DoNotUse<(Error), Void> where M1.MatchedType == Error {
	        let matchers: [Cuckoo.ParameterMatcher<(Error)>] = [wrap(matchable: error) { $0 }]
	        return cuckoo_manager.verify("didReceiveRegistration(error: Error)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

 class PersonalInfoInteractorOutputProtocolStub: PersonalInfoInteractorOutputProtocol {
    

    

    
     func didReceive(invitationCode: String)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func didStartRegistration(with form: PersonalForm)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func didCompleteRegistration(with form: PersonalForm)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func didReceiveRegistration(error: Error)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
}



 class MockPersonalInfoWireframeProtocol: PersonalInfoWireframeProtocol, Cuckoo.ProtocolMock {
    
     typealias MocksType = PersonalInfoWireframeProtocol
    
     typealias Stubbing = __StubbingProxy_PersonalInfoWireframeProtocol
     typealias Verification = __VerificationProxy_PersonalInfoWireframeProtocol

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: PersonalInfoWireframeProtocol?

     func enableDefaultImplementation(_ stub: PersonalInfoWireframeProtocol) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    

    

    
    
    
     func showPassphraseBackup(from view: PersonalInfoViewProtocol?)  {
        
    return cuckoo_manager.call("showPassphraseBackup(from: PersonalInfoViewProtocol?)",
            parameters: (view),
            escapingParameters: (view),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.showPassphraseBackup(from: view))
        
    }
    
    
    
     func present(message: String?, title: String?, closeAction: String?, from view: ControllerBackedProtocol?)  {
        
    return cuckoo_manager.call("present(message: String?, title: String?, closeAction: String?, from: ControllerBackedProtocol?)",
            parameters: (message, title, closeAction, view),
            escapingParameters: (message, title, closeAction, view),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.present(message: message, title: title, closeAction: closeAction, from: view))
        
    }
    
    
    
     func present(message: String?, title: String?, actions: [AlertPresentableAction], from view: ControllerBackedProtocol?)  {
        
    return cuckoo_manager.call("present(message: String?, title: String?, actions: [AlertPresentableAction], from: ControllerBackedProtocol?)",
            parameters: (message, title, actions, view),
            escapingParameters: (message, title, actions, view),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.present(message: message, title: title, actions: actions, from: view))
        
    }
    
    
    
     func present(error: Error, from view: ControllerBackedProtocol?) -> Bool {
        
    return cuckoo_manager.call("present(error: Error, from: ControllerBackedProtocol?) -> Bool",
            parameters: (error, view),
            escapingParameters: (error, view),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.present(error: error, from: view))
        
    }
    

	 struct __StubbingProxy_PersonalInfoWireframeProtocol: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func showPassphraseBackup<M1: Cuckoo.OptionalMatchable>(from view: M1) -> Cuckoo.ProtocolStubNoReturnFunction<(PersonalInfoViewProtocol?)> where M1.OptionalMatchedType == PersonalInfoViewProtocol {
	        let matchers: [Cuckoo.ParameterMatcher<(PersonalInfoViewProtocol?)>] = [wrap(matchable: view) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockPersonalInfoWireframeProtocol.self, method: "showPassphraseBackup(from: PersonalInfoViewProtocol?)", parameterMatchers: matchers))
	    }
	    
	    func present<M1: Cuckoo.OptionalMatchable, M2: Cuckoo.OptionalMatchable, M3: Cuckoo.OptionalMatchable, M4: Cuckoo.OptionalMatchable>(message: M1, title: M2, closeAction: M3, from view: M4) -> Cuckoo.ProtocolStubNoReturnFunction<(String?, String?, String?, ControllerBackedProtocol?)> where M1.OptionalMatchedType == String, M2.OptionalMatchedType == String, M3.OptionalMatchedType == String, M4.OptionalMatchedType == ControllerBackedProtocol {
	        let matchers: [Cuckoo.ParameterMatcher<(String?, String?, String?, ControllerBackedProtocol?)>] = [wrap(matchable: message) { $0.0 }, wrap(matchable: title) { $0.1 }, wrap(matchable: closeAction) { $0.2 }, wrap(matchable: view) { $0.3 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockPersonalInfoWireframeProtocol.self, method: "present(message: String?, title: String?, closeAction: String?, from: ControllerBackedProtocol?)", parameterMatchers: matchers))
	    }
	    
	    func present<M1: Cuckoo.OptionalMatchable, M2: Cuckoo.OptionalMatchable, M3: Cuckoo.Matchable, M4: Cuckoo.OptionalMatchable>(message: M1, title: M2, actions: M3, from view: M4) -> Cuckoo.ProtocolStubNoReturnFunction<(String?, String?, [AlertPresentableAction], ControllerBackedProtocol?)> where M1.OptionalMatchedType == String, M2.OptionalMatchedType == String, M3.MatchedType == [AlertPresentableAction], M4.OptionalMatchedType == ControllerBackedProtocol {
	        let matchers: [Cuckoo.ParameterMatcher<(String?, String?, [AlertPresentableAction], ControllerBackedProtocol?)>] = [wrap(matchable: message) { $0.0 }, wrap(matchable: title) { $0.1 }, wrap(matchable: actions) { $0.2 }, wrap(matchable: view) { $0.3 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockPersonalInfoWireframeProtocol.self, method: "present(message: String?, title: String?, actions: [AlertPresentableAction], from: ControllerBackedProtocol?)", parameterMatchers: matchers))
	    }
	    
	    func present<M1: Cuckoo.Matchable, M2: Cuckoo.OptionalMatchable>(error: M1, from view: M2) -> Cuckoo.ProtocolStubFunction<(Error, ControllerBackedProtocol?), Bool> where M1.MatchedType == Error, M2.OptionalMatchedType == ControllerBackedProtocol {
	        let matchers: [Cuckoo.ParameterMatcher<(Error, ControllerBackedProtocol?)>] = [wrap(matchable: error) { $0.0 }, wrap(matchable: view) { $0.1 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockPersonalInfoWireframeProtocol.self, method: "present(error: Error, from: ControllerBackedProtocol?) -> Bool", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_PersonalInfoWireframeProtocol: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func showPassphraseBackup<M1: Cuckoo.OptionalMatchable>(from view: M1) -> Cuckoo.__DoNotUse<(PersonalInfoViewProtocol?), Void> where M1.OptionalMatchedType == PersonalInfoViewProtocol {
	        let matchers: [Cuckoo.ParameterMatcher<(PersonalInfoViewProtocol?)>] = [wrap(matchable: view) { $0 }]
	        return cuckoo_manager.verify("showPassphraseBackup(from: PersonalInfoViewProtocol?)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func present<M1: Cuckoo.OptionalMatchable, M2: Cuckoo.OptionalMatchable, M3: Cuckoo.OptionalMatchable, M4: Cuckoo.OptionalMatchable>(message: M1, title: M2, closeAction: M3, from view: M4) -> Cuckoo.__DoNotUse<(String?, String?, String?, ControllerBackedProtocol?), Void> where M1.OptionalMatchedType == String, M2.OptionalMatchedType == String, M3.OptionalMatchedType == String, M4.OptionalMatchedType == ControllerBackedProtocol {
	        let matchers: [Cuckoo.ParameterMatcher<(String?, String?, String?, ControllerBackedProtocol?)>] = [wrap(matchable: message) { $0.0 }, wrap(matchable: title) { $0.1 }, wrap(matchable: closeAction) { $0.2 }, wrap(matchable: view) { $0.3 }]
	        return cuckoo_manager.verify("present(message: String?, title: String?, closeAction: String?, from: ControllerBackedProtocol?)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func present<M1: Cuckoo.OptionalMatchable, M2: Cuckoo.OptionalMatchable, M3: Cuckoo.Matchable, M4: Cuckoo.OptionalMatchable>(message: M1, title: M2, actions: M3, from view: M4) -> Cuckoo.__DoNotUse<(String?, String?, [AlertPresentableAction], ControllerBackedProtocol?), Void> where M1.OptionalMatchedType == String, M2.OptionalMatchedType == String, M3.MatchedType == [AlertPresentableAction], M4.OptionalMatchedType == ControllerBackedProtocol {
	        let matchers: [Cuckoo.ParameterMatcher<(String?, String?, [AlertPresentableAction], ControllerBackedProtocol?)>] = [wrap(matchable: message) { $0.0 }, wrap(matchable: title) { $0.1 }, wrap(matchable: actions) { $0.2 }, wrap(matchable: view) { $0.3 }]
	        return cuckoo_manager.verify("present(message: String?, title: String?, actions: [AlertPresentableAction], from: ControllerBackedProtocol?)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func present<M1: Cuckoo.Matchable, M2: Cuckoo.OptionalMatchable>(error: M1, from view: M2) -> Cuckoo.__DoNotUse<(Error, ControllerBackedProtocol?), Bool> where M1.MatchedType == Error, M2.OptionalMatchedType == ControllerBackedProtocol {
	        let matchers: [Cuckoo.ParameterMatcher<(Error, ControllerBackedProtocol?)>] = [wrap(matchable: error) { $0.0 }, wrap(matchable: view) { $0.1 }]
	        return cuckoo_manager.verify("present(error: Error, from: ControllerBackedProtocol?) -> Bool", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

 class PersonalInfoWireframeProtocolStub: PersonalInfoWireframeProtocol {
    

    

    
     func showPassphraseBackup(from view: PersonalInfoViewProtocol?)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func present(message: String?, title: String?, closeAction: String?, from view: ControllerBackedProtocol?)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func present(message: String?, title: String?, actions: [AlertPresentableAction], from view: ControllerBackedProtocol?)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func present(error: Error, from view: ControllerBackedProtocol?) -> Bool  {
        return DefaultValueRegistry.defaultValue(for: (Bool).self)
    }
    
}


import Cuckoo
@testable import SoraPassport

import Foundation


 class MockPersonalUpdateViewProtocol: PersonalUpdateViewProtocol, Cuckoo.ProtocolMock {
    
     typealias MocksType = PersonalUpdateViewProtocol
    
     typealias Stubbing = __StubbingProxy_PersonalUpdateViewProtocol
     typealias Verification = __VerificationProxy_PersonalUpdateViewProtocol

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: PersonalUpdateViewProtocol?

     func enableDefaultImplementation(_ stub: PersonalUpdateViewProtocol) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    
    
    
     var controller: UIViewController {
        get {
            return cuckoo_manager.getter("controller",
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.controller)
        }
        
    }
    
    
    
     var loadableContentView: UIView! {
        get {
            return cuckoo_manager.getter("loadableContentView",
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.loadableContentView)
        }
        
    }
    
    
    
     var shouldDisableInteractionWhenLoading: Bool {
        get {
            return cuckoo_manager.getter("shouldDisableInteractionWhenLoading",
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.shouldDisableInteractionWhenLoading)
        }
        
    }
    

    

    
    
    
     func didReceive(viewModels: [PersonalInfoViewModelProtocol])  {
        
    return cuckoo_manager.call("didReceive(viewModels: [PersonalInfoViewModelProtocol])",
            parameters: (viewModels),
            escapingParameters: (viewModels),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.didReceive(viewModels: viewModels))
        
    }
    
    
    
     func didStartSaving()  {
        
    return cuckoo_manager.call("didStartSaving()",
            parameters: (),
            escapingParameters: (),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.didStartSaving())
        
    }
    
    
    
     func didCompleteSaving(success: Bool)  {
        
    return cuckoo_manager.call("didCompleteSaving(success: Bool)",
            parameters: (success),
            escapingParameters: (success),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.didCompleteSaving(success: success))
        
    }
    
    
    
     func didStartLoading()  {
        
    return cuckoo_manager.call("didStartLoading()",
            parameters: (),
            escapingParameters: (),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.didStartLoading())
        
    }
    
    
    
     func didStopLoading()  {
        
    return cuckoo_manager.call("didStopLoading()",
            parameters: (),
            escapingParameters: (),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.didStopLoading())
        
    }
    

	 struct __StubbingProxy_PersonalUpdateViewProtocol: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    var controller: Cuckoo.ProtocolToBeStubbedReadOnlyProperty<MockPersonalUpdateViewProtocol, UIViewController> {
	        return .init(manager: cuckoo_manager, name: "controller")
	    }
	    
	    
	    var loadableContentView: Cuckoo.ProtocolToBeStubbedReadOnlyProperty<MockPersonalUpdateViewProtocol, UIView?> {
	        return .init(manager: cuckoo_manager, name: "loadableContentView")
	    }
	    
	    
	    var shouldDisableInteractionWhenLoading: Cuckoo.ProtocolToBeStubbedReadOnlyProperty<MockPersonalUpdateViewProtocol, Bool> {
	        return .init(manager: cuckoo_manager, name: "shouldDisableInteractionWhenLoading")
	    }
	    
	    
	    func didReceive<M1: Cuckoo.Matchable>(viewModels: M1) -> Cuckoo.ProtocolStubNoReturnFunction<([PersonalInfoViewModelProtocol])> where M1.MatchedType == [PersonalInfoViewModelProtocol] {
	        let matchers: [Cuckoo.ParameterMatcher<([PersonalInfoViewModelProtocol])>] = [wrap(matchable: viewModels) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockPersonalUpdateViewProtocol.self, method: "didReceive(viewModels: [PersonalInfoViewModelProtocol])", parameterMatchers: matchers))
	    }
	    
	    func didStartSaving() -> Cuckoo.ProtocolStubNoReturnFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockPersonalUpdateViewProtocol.self, method: "didStartSaving()", parameterMatchers: matchers))
	    }
	    
	    func didCompleteSaving<M1: Cuckoo.Matchable>(success: M1) -> Cuckoo.ProtocolStubNoReturnFunction<(Bool)> where M1.MatchedType == Bool {
	        let matchers: [Cuckoo.ParameterMatcher<(Bool)>] = [wrap(matchable: success) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockPersonalUpdateViewProtocol.self, method: "didCompleteSaving(success: Bool)", parameterMatchers: matchers))
	    }
	    
	    func didStartLoading() -> Cuckoo.ProtocolStubNoReturnFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockPersonalUpdateViewProtocol.self, method: "didStartLoading()", parameterMatchers: matchers))
	    }
	    
	    func didStopLoading() -> Cuckoo.ProtocolStubNoReturnFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockPersonalUpdateViewProtocol.self, method: "didStopLoading()", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_PersonalUpdateViewProtocol: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	    
	    var controller: Cuckoo.VerifyReadOnlyProperty<UIViewController> {
	        return .init(manager: cuckoo_manager, name: "controller", callMatcher: callMatcher, sourceLocation: sourceLocation)
	    }
	    
	    
	    var loadableContentView: Cuckoo.VerifyReadOnlyProperty<UIView?> {
	        return .init(manager: cuckoo_manager, name: "loadableContentView", callMatcher: callMatcher, sourceLocation: sourceLocation)
	    }
	    
	    
	    var shouldDisableInteractionWhenLoading: Cuckoo.VerifyReadOnlyProperty<Bool> {
	        return .init(manager: cuckoo_manager, name: "shouldDisableInteractionWhenLoading", callMatcher: callMatcher, sourceLocation: sourceLocation)
	    }
	    
	
	    
	    @discardableResult
	    func didReceive<M1: Cuckoo.Matchable>(viewModels: M1) -> Cuckoo.__DoNotUse<([PersonalInfoViewModelProtocol]), Void> where M1.MatchedType == [PersonalInfoViewModelProtocol] {
	        let matchers: [Cuckoo.ParameterMatcher<([PersonalInfoViewModelProtocol])>] = [wrap(matchable: viewModels) { $0 }]
	        return cuckoo_manager.verify("didReceive(viewModels: [PersonalInfoViewModelProtocol])", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func didStartSaving() -> Cuckoo.__DoNotUse<(), Void> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("didStartSaving()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func didCompleteSaving<M1: Cuckoo.Matchable>(success: M1) -> Cuckoo.__DoNotUse<(Bool), Void> where M1.MatchedType == Bool {
	        let matchers: [Cuckoo.ParameterMatcher<(Bool)>] = [wrap(matchable: success) { $0 }]
	        return cuckoo_manager.verify("didCompleteSaving(success: Bool)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func didStartLoading() -> Cuckoo.__DoNotUse<(), Void> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("didStartLoading()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func didStopLoading() -> Cuckoo.__DoNotUse<(), Void> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("didStopLoading()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

 class PersonalUpdateViewProtocolStub: PersonalUpdateViewProtocol {
    
    
     var controller: UIViewController {
        get {
            return DefaultValueRegistry.defaultValue(for: (UIViewController).self)
        }
        
    }
    
    
     var loadableContentView: UIView! {
        get {
            return DefaultValueRegistry.defaultValue(for: (UIView?).self)
        }
        
    }
    
    
     var shouldDisableInteractionWhenLoading: Bool {
        get {
            return DefaultValueRegistry.defaultValue(for: (Bool).self)
        }
        
    }
    

    

    
     func didReceive(viewModels: [PersonalInfoViewModelProtocol])   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func didStartSaving()   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func didCompleteSaving(success: Bool)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func didStartLoading()   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func didStopLoading()   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
}



 class MockPersonalUpdatePresenterProtocol: PersonalUpdatePresenterProtocol, Cuckoo.ProtocolMock {
    
     typealias MocksType = PersonalUpdatePresenterProtocol
    
     typealias Stubbing = __StubbingProxy_PersonalUpdatePresenterProtocol
     typealias Verification = __VerificationProxy_PersonalUpdatePresenterProtocol

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: PersonalUpdatePresenterProtocol?

     func enableDefaultImplementation(_ stub: PersonalUpdatePresenterProtocol) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    

    

    
    
    
     func viewIsReady()  {
        
    return cuckoo_manager.call("viewIsReady()",
            parameters: (),
            escapingParameters: (),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.viewIsReady())
        
    }
    
    
    
     func save()  {
        
    return cuckoo_manager.call("save()",
            parameters: (),
            escapingParameters: (),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.save())
        
    }
    

	 struct __StubbingProxy_PersonalUpdatePresenterProtocol: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func viewIsReady() -> Cuckoo.ProtocolStubNoReturnFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockPersonalUpdatePresenterProtocol.self, method: "viewIsReady()", parameterMatchers: matchers))
	    }
	    
	    func save() -> Cuckoo.ProtocolStubNoReturnFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockPersonalUpdatePresenterProtocol.self, method: "save()", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_PersonalUpdatePresenterProtocol: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func viewIsReady() -> Cuckoo.__DoNotUse<(), Void> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("viewIsReady()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func save() -> Cuckoo.__DoNotUse<(), Void> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("save()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

 class PersonalUpdatePresenterProtocolStub: PersonalUpdatePresenterProtocol {
    

    

    
     func viewIsReady()   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func save()   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
}



 class MockPersonalUpdateInteractorInputProtocol: PersonalUpdateInteractorInputProtocol, Cuckoo.ProtocolMock {
    
     typealias MocksType = PersonalUpdateInteractorInputProtocol
    
     typealias Stubbing = __StubbingProxy_PersonalUpdateInteractorInputProtocol
     typealias Verification = __VerificationProxy_PersonalUpdateInteractorInputProtocol

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: PersonalUpdateInteractorInputProtocol?

     func enableDefaultImplementation(_ stub: PersonalUpdateInteractorInputProtocol) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    

    

    
    
    
     func setup()  {
        
    return cuckoo_manager.call("setup()",
            parameters: (),
            escapingParameters: (),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.setup())
        
    }
    
    
    
     func refresh()  {
        
    return cuckoo_manager.call("refresh()",
            parameters: (),
            escapingParameters: (),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.refresh())
        
    }
    
    
    
     func update(with info: PersonalInfo)  {
        
    return cuckoo_manager.call("update(with: PersonalInfo)",
            parameters: (info),
            escapingParameters: (info),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.update(with: info))
        
    }
    

	 struct __StubbingProxy_PersonalUpdateInteractorInputProtocol: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func setup() -> Cuckoo.ProtocolStubNoReturnFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockPersonalUpdateInteractorInputProtocol.self, method: "setup()", parameterMatchers: matchers))
	    }
	    
	    func refresh() -> Cuckoo.ProtocolStubNoReturnFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockPersonalUpdateInteractorInputProtocol.self, method: "refresh()", parameterMatchers: matchers))
	    }
	    
	    func update<M1: Cuckoo.Matchable>(with info: M1) -> Cuckoo.ProtocolStubNoReturnFunction<(PersonalInfo)> where M1.MatchedType == PersonalInfo {
	        let matchers: [Cuckoo.ParameterMatcher<(PersonalInfo)>] = [wrap(matchable: info) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockPersonalUpdateInteractorInputProtocol.self, method: "update(with: PersonalInfo)", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_PersonalUpdateInteractorInputProtocol: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func setup() -> Cuckoo.__DoNotUse<(), Void> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("setup()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func refresh() -> Cuckoo.__DoNotUse<(), Void> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("refresh()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func update<M1: Cuckoo.Matchable>(with info: M1) -> Cuckoo.__DoNotUse<(PersonalInfo), Void> where M1.MatchedType == PersonalInfo {
	        let matchers: [Cuckoo.ParameterMatcher<(PersonalInfo)>] = [wrap(matchable: info) { $0 }]
	        return cuckoo_manager.verify("update(with: PersonalInfo)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

 class PersonalUpdateInteractorInputProtocolStub: PersonalUpdateInteractorInputProtocol {
    

    

    
     func setup()   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func refresh()   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func update(with info: PersonalInfo)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
}



 class MockPersonalUpdateInteractorOutputProtocol: PersonalUpdateInteractorOutputProtocol, Cuckoo.ProtocolMock {
    
     typealias MocksType = PersonalUpdateInteractorOutputProtocol
    
     typealias Stubbing = __StubbingProxy_PersonalUpdateInteractorOutputProtocol
     typealias Verification = __VerificationProxy_PersonalUpdateInteractorOutputProtocol

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: PersonalUpdateInteractorOutputProtocol?

     func enableDefaultImplementation(_ stub: PersonalUpdateInteractorOutputProtocol) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    

    

    
    
    
     func didReceive(user: UserData?)  {
        
    return cuckoo_manager.call("didReceive(user: UserData?)",
            parameters: (user),
            escapingParameters: (user),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.didReceive(user: user))
        
    }
    
    
    
     func didReceiveUserDataProvider(error: Error)  {
        
    return cuckoo_manager.call("didReceiveUserDataProvider(error: Error)",
            parameters: (error),
            escapingParameters: (error),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.didReceiveUserDataProvider(error: error))
        
    }
    
    
    
     func didUpdateUser(with info: PersonalInfo)  {
        
    return cuckoo_manager.call("didUpdateUser(with: PersonalInfo)",
            parameters: (info),
            escapingParameters: (info),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.didUpdateUser(with: info))
        
    }
    
    
    
     func didReceiveUserUpdate(error: Error)  {
        
    return cuckoo_manager.call("didReceiveUserUpdate(error: Error)",
            parameters: (error),
            escapingParameters: (error),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.didReceiveUserUpdate(error: error))
        
    }
    

	 struct __StubbingProxy_PersonalUpdateInteractorOutputProtocol: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func didReceive<M1: Cuckoo.OptionalMatchable>(user: M1) -> Cuckoo.ProtocolStubNoReturnFunction<(UserData?)> where M1.OptionalMatchedType == UserData {
	        let matchers: [Cuckoo.ParameterMatcher<(UserData?)>] = [wrap(matchable: user) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockPersonalUpdateInteractorOutputProtocol.self, method: "didReceive(user: UserData?)", parameterMatchers: matchers))
	    }
	    
	    func didReceiveUserDataProvider<M1: Cuckoo.Matchable>(error: M1) -> Cuckoo.ProtocolStubNoReturnFunction<(Error)> where M1.MatchedType == Error {
	        let matchers: [Cuckoo.ParameterMatcher<(Error)>] = [wrap(matchable: error) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockPersonalUpdateInteractorOutputProtocol.self, method: "didReceiveUserDataProvider(error: Error)", parameterMatchers: matchers))
	    }
	    
	    func didUpdateUser<M1: Cuckoo.Matchable>(with info: M1) -> Cuckoo.ProtocolStubNoReturnFunction<(PersonalInfo)> where M1.MatchedType == PersonalInfo {
	        let matchers: [Cuckoo.ParameterMatcher<(PersonalInfo)>] = [wrap(matchable: info) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockPersonalUpdateInteractorOutputProtocol.self, method: "didUpdateUser(with: PersonalInfo)", parameterMatchers: matchers))
	    }
	    
	    func didReceiveUserUpdate<M1: Cuckoo.Matchable>(error: M1) -> Cuckoo.ProtocolStubNoReturnFunction<(Error)> where M1.MatchedType == Error {
	        let matchers: [Cuckoo.ParameterMatcher<(Error)>] = [wrap(matchable: error) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockPersonalUpdateInteractorOutputProtocol.self, method: "didReceiveUserUpdate(error: Error)", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_PersonalUpdateInteractorOutputProtocol: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func didReceive<M1: Cuckoo.OptionalMatchable>(user: M1) -> Cuckoo.__DoNotUse<(UserData?), Void> where M1.OptionalMatchedType == UserData {
	        let matchers: [Cuckoo.ParameterMatcher<(UserData?)>] = [wrap(matchable: user) { $0 }]
	        return cuckoo_manager.verify("didReceive(user: UserData?)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func didReceiveUserDataProvider<M1: Cuckoo.Matchable>(error: M1) -> Cuckoo.__DoNotUse<(Error), Void> where M1.MatchedType == Error {
	        let matchers: [Cuckoo.ParameterMatcher<(Error)>] = [wrap(matchable: error) { $0 }]
	        return cuckoo_manager.verify("didReceiveUserDataProvider(error: Error)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func didUpdateUser<M1: Cuckoo.Matchable>(with info: M1) -> Cuckoo.__DoNotUse<(PersonalInfo), Void> where M1.MatchedType == PersonalInfo {
	        let matchers: [Cuckoo.ParameterMatcher<(PersonalInfo)>] = [wrap(matchable: info) { $0 }]
	        return cuckoo_manager.verify("didUpdateUser(with: PersonalInfo)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func didReceiveUserUpdate<M1: Cuckoo.Matchable>(error: M1) -> Cuckoo.__DoNotUse<(Error), Void> where M1.MatchedType == Error {
	        let matchers: [Cuckoo.ParameterMatcher<(Error)>] = [wrap(matchable: error) { $0 }]
	        return cuckoo_manager.verify("didReceiveUserUpdate(error: Error)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

 class PersonalUpdateInteractorOutputProtocolStub: PersonalUpdateInteractorOutputProtocol {
    

    

    
     func didReceive(user: UserData?)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func didReceiveUserDataProvider(error: Error)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func didUpdateUser(with info: PersonalInfo)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func didReceiveUserUpdate(error: Error)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
}



 class MockPersonalUpdateWireframeProtocol: PersonalUpdateWireframeProtocol, Cuckoo.ProtocolMock {
    
     typealias MocksType = PersonalUpdateWireframeProtocol
    
     typealias Stubbing = __StubbingProxy_PersonalUpdateWireframeProtocol
     typealias Verification = __VerificationProxy_PersonalUpdateWireframeProtocol

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: PersonalUpdateWireframeProtocol?

     func enableDefaultImplementation(_ stub: PersonalUpdateWireframeProtocol) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    

    

    
    
    
     func close(view: PersonalUpdateViewProtocol?)  {
        
    return cuckoo_manager.call("close(view: PersonalUpdateViewProtocol?)",
            parameters: (view),
            escapingParameters: (view),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.close(view: view))
        
    }
    
    
    
     func present(error: Error, from view: ControllerBackedProtocol?) -> Bool {
        
    return cuckoo_manager.call("present(error: Error, from: ControllerBackedProtocol?) -> Bool",
            parameters: (error, view),
            escapingParameters: (error, view),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.present(error: error, from: view))
        
    }
    
    
    
     func present(message: String?, title: String?, closeAction: String?, from view: ControllerBackedProtocol?)  {
        
    return cuckoo_manager.call("present(message: String?, title: String?, closeAction: String?, from: ControllerBackedProtocol?)",
            parameters: (message, title, closeAction, view),
            escapingParameters: (message, title, closeAction, view),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.present(message: message, title: title, closeAction: closeAction, from: view))
        
    }
    
    
    
     func present(message: String?, title: String?, actions: [AlertPresentableAction], from view: ControllerBackedProtocol?)  {
        
    return cuckoo_manager.call("present(message: String?, title: String?, actions: [AlertPresentableAction], from: ControllerBackedProtocol?)",
            parameters: (message, title, actions, view),
            escapingParameters: (message, title, actions, view),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.present(message: message, title: title, actions: actions, from: view))
        
    }
    

	 struct __StubbingProxy_PersonalUpdateWireframeProtocol: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func close<M1: Cuckoo.OptionalMatchable>(view: M1) -> Cuckoo.ProtocolStubNoReturnFunction<(PersonalUpdateViewProtocol?)> where M1.OptionalMatchedType == PersonalUpdateViewProtocol {
	        let matchers: [Cuckoo.ParameterMatcher<(PersonalUpdateViewProtocol?)>] = [wrap(matchable: view) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockPersonalUpdateWireframeProtocol.self, method: "close(view: PersonalUpdateViewProtocol?)", parameterMatchers: matchers))
	    }
	    
	    func present<M1: Cuckoo.Matchable, M2: Cuckoo.OptionalMatchable>(error: M1, from view: M2) -> Cuckoo.ProtocolStubFunction<(Error, ControllerBackedProtocol?), Bool> where M1.MatchedType == Error, M2.OptionalMatchedType == ControllerBackedProtocol {
	        let matchers: [Cuckoo.ParameterMatcher<(Error, ControllerBackedProtocol?)>] = [wrap(matchable: error) { $0.0 }, wrap(matchable: view) { $0.1 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockPersonalUpdateWireframeProtocol.self, method: "present(error: Error, from: ControllerBackedProtocol?) -> Bool", parameterMatchers: matchers))
	    }
	    
	    func present<M1: Cuckoo.OptionalMatchable, M2: Cuckoo.OptionalMatchable, M3: Cuckoo.OptionalMatchable, M4: Cuckoo.OptionalMatchable>(message: M1, title: M2, closeAction: M3, from view: M4) -> Cuckoo.ProtocolStubNoReturnFunction<(String?, String?, String?, ControllerBackedProtocol?)> where M1.OptionalMatchedType == String, M2.OptionalMatchedType == String, M3.OptionalMatchedType == String, M4.OptionalMatchedType == ControllerBackedProtocol {
	        let matchers: [Cuckoo.ParameterMatcher<(String?, String?, String?, ControllerBackedProtocol?)>] = [wrap(matchable: message) { $0.0 }, wrap(matchable: title) { $0.1 }, wrap(matchable: closeAction) { $0.2 }, wrap(matchable: view) { $0.3 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockPersonalUpdateWireframeProtocol.self, method: "present(message: String?, title: String?, closeAction: String?, from: ControllerBackedProtocol?)", parameterMatchers: matchers))
	    }
	    
	    func present<M1: Cuckoo.OptionalMatchable, M2: Cuckoo.OptionalMatchable, M3: Cuckoo.Matchable, M4: Cuckoo.OptionalMatchable>(message: M1, title: M2, actions: M3, from view: M4) -> Cuckoo.ProtocolStubNoReturnFunction<(String?, String?, [AlertPresentableAction], ControllerBackedProtocol?)> where M1.OptionalMatchedType == String, M2.OptionalMatchedType == String, M3.MatchedType == [AlertPresentableAction], M4.OptionalMatchedType == ControllerBackedProtocol {
	        let matchers: [Cuckoo.ParameterMatcher<(String?, String?, [AlertPresentableAction], ControllerBackedProtocol?)>] = [wrap(matchable: message) { $0.0 }, wrap(matchable: title) { $0.1 }, wrap(matchable: actions) { $0.2 }, wrap(matchable: view) { $0.3 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockPersonalUpdateWireframeProtocol.self, method: "present(message: String?, title: String?, actions: [AlertPresentableAction], from: ControllerBackedProtocol?)", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_PersonalUpdateWireframeProtocol: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func close<M1: Cuckoo.OptionalMatchable>(view: M1) -> Cuckoo.__DoNotUse<(PersonalUpdateViewProtocol?), Void> where M1.OptionalMatchedType == PersonalUpdateViewProtocol {
	        let matchers: [Cuckoo.ParameterMatcher<(PersonalUpdateViewProtocol?)>] = [wrap(matchable: view) { $0 }]
	        return cuckoo_manager.verify("close(view: PersonalUpdateViewProtocol?)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func present<M1: Cuckoo.Matchable, M2: Cuckoo.OptionalMatchable>(error: M1, from view: M2) -> Cuckoo.__DoNotUse<(Error, ControllerBackedProtocol?), Bool> where M1.MatchedType == Error, M2.OptionalMatchedType == ControllerBackedProtocol {
	        let matchers: [Cuckoo.ParameterMatcher<(Error, ControllerBackedProtocol?)>] = [wrap(matchable: error) { $0.0 }, wrap(matchable: view) { $0.1 }]
	        return cuckoo_manager.verify("present(error: Error, from: ControllerBackedProtocol?) -> Bool", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func present<M1: Cuckoo.OptionalMatchable, M2: Cuckoo.OptionalMatchable, M3: Cuckoo.OptionalMatchable, M4: Cuckoo.OptionalMatchable>(message: M1, title: M2, closeAction: M3, from view: M4) -> Cuckoo.__DoNotUse<(String?, String?, String?, ControllerBackedProtocol?), Void> where M1.OptionalMatchedType == String, M2.OptionalMatchedType == String, M3.OptionalMatchedType == String, M4.OptionalMatchedType == ControllerBackedProtocol {
	        let matchers: [Cuckoo.ParameterMatcher<(String?, String?, String?, ControllerBackedProtocol?)>] = [wrap(matchable: message) { $0.0 }, wrap(matchable: title) { $0.1 }, wrap(matchable: closeAction) { $0.2 }, wrap(matchable: view) { $0.3 }]
	        return cuckoo_manager.verify("present(message: String?, title: String?, closeAction: String?, from: ControllerBackedProtocol?)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func present<M1: Cuckoo.OptionalMatchable, M2: Cuckoo.OptionalMatchable, M3: Cuckoo.Matchable, M4: Cuckoo.OptionalMatchable>(message: M1, title: M2, actions: M3, from view: M4) -> Cuckoo.__DoNotUse<(String?, String?, [AlertPresentableAction], ControllerBackedProtocol?), Void> where M1.OptionalMatchedType == String, M2.OptionalMatchedType == String, M3.MatchedType == [AlertPresentableAction], M4.OptionalMatchedType == ControllerBackedProtocol {
	        let matchers: [Cuckoo.ParameterMatcher<(String?, String?, [AlertPresentableAction], ControllerBackedProtocol?)>] = [wrap(matchable: message) { $0.0 }, wrap(matchable: title) { $0.1 }, wrap(matchable: actions) { $0.2 }, wrap(matchable: view) { $0.3 }]
	        return cuckoo_manager.verify("present(message: String?, title: String?, actions: [AlertPresentableAction], from: ControllerBackedProtocol?)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

 class PersonalUpdateWireframeProtocolStub: PersonalUpdateWireframeProtocol {
    

    

    
     func close(view: PersonalUpdateViewProtocol?)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func present(error: Error, from view: ControllerBackedProtocol?) -> Bool  {
        return DefaultValueRegistry.defaultValue(for: (Bool).self)
    }
    
     func present(message: String?, title: String?, closeAction: String?, from view: ControllerBackedProtocol?)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func present(message: String?, title: String?, actions: [AlertPresentableAction], from view: ControllerBackedProtocol?)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
}


import Cuckoo
@testable import SoraPassport


 class MockPhoneRegistrationViewProtocol: PhoneRegistrationViewProtocol, Cuckoo.ProtocolMock {
    
     typealias MocksType = PhoneRegistrationViewProtocol
    
     typealias Stubbing = __StubbingProxy_PhoneRegistrationViewProtocol
     typealias Verification = __VerificationProxy_PhoneRegistrationViewProtocol

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: PhoneRegistrationViewProtocol?

     func enableDefaultImplementation(_ stub: PhoneRegistrationViewProtocol) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    
    
    
     var controller: UIViewController {
        get {
            return cuckoo_manager.getter("controller",
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.controller)
        }
        
    }
    
    
    
     var loadableContentView: UIView! {
        get {
            return cuckoo_manager.getter("loadableContentView",
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.loadableContentView)
        }
        
    }
    
    
    
     var shouldDisableInteractionWhenLoading: Bool {
        get {
            return cuckoo_manager.getter("shouldDisableInteractionWhenLoading",
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.shouldDisableInteractionWhenLoading)
        }
        
    }
    

    

    
    
    
     func didReceive(viewModel: PersonalInfoViewModelProtocol)  {
        
    return cuckoo_manager.call("didReceive(viewModel: PersonalInfoViewModelProtocol)",
            parameters: (viewModel),
            escapingParameters: (viewModel),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.didReceive(viewModel: viewModel))
        
    }
    
    
    
     func didStartLoading()  {
        
    return cuckoo_manager.call("didStartLoading()",
            parameters: (),
            escapingParameters: (),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.didStartLoading())
        
    }
    
    
    
     func didStopLoading()  {
        
    return cuckoo_manager.call("didStopLoading()",
            parameters: (),
            escapingParameters: (),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.didStopLoading())
        
    }
    

	 struct __StubbingProxy_PhoneRegistrationViewProtocol: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    var controller: Cuckoo.ProtocolToBeStubbedReadOnlyProperty<MockPhoneRegistrationViewProtocol, UIViewController> {
	        return .init(manager: cuckoo_manager, name: "controller")
	    }
	    
	    
	    var loadableContentView: Cuckoo.ProtocolToBeStubbedReadOnlyProperty<MockPhoneRegistrationViewProtocol, UIView?> {
	        return .init(manager: cuckoo_manager, name: "loadableContentView")
	    }
	    
	    
	    var shouldDisableInteractionWhenLoading: Cuckoo.ProtocolToBeStubbedReadOnlyProperty<MockPhoneRegistrationViewProtocol, Bool> {
	        return .init(manager: cuckoo_manager, name: "shouldDisableInteractionWhenLoading")
	    }
	    
	    
	    func didReceive<M1: Cuckoo.Matchable>(viewModel: M1) -> Cuckoo.ProtocolStubNoReturnFunction<(PersonalInfoViewModelProtocol)> where M1.MatchedType == PersonalInfoViewModelProtocol {
	        let matchers: [Cuckoo.ParameterMatcher<(PersonalInfoViewModelProtocol)>] = [wrap(matchable: viewModel) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockPhoneRegistrationViewProtocol.self, method: "didReceive(viewModel: PersonalInfoViewModelProtocol)", parameterMatchers: matchers))
	    }
	    
	    func didStartLoading() -> Cuckoo.ProtocolStubNoReturnFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockPhoneRegistrationViewProtocol.self, method: "didStartLoading()", parameterMatchers: matchers))
	    }
	    
	    func didStopLoading() -> Cuckoo.ProtocolStubNoReturnFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockPhoneRegistrationViewProtocol.self, method: "didStopLoading()", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_PhoneRegistrationViewProtocol: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	    
	    var controller: Cuckoo.VerifyReadOnlyProperty<UIViewController> {
	        return .init(manager: cuckoo_manager, name: "controller", callMatcher: callMatcher, sourceLocation: sourceLocation)
	    }
	    
	    
	    var loadableContentView: Cuckoo.VerifyReadOnlyProperty<UIView?> {
	        return .init(manager: cuckoo_manager, name: "loadableContentView", callMatcher: callMatcher, sourceLocation: sourceLocation)
	    }
	    
	    
	    var shouldDisableInteractionWhenLoading: Cuckoo.VerifyReadOnlyProperty<Bool> {
	        return .init(manager: cuckoo_manager, name: "shouldDisableInteractionWhenLoading", callMatcher: callMatcher, sourceLocation: sourceLocation)
	    }
	    
	
	    
	    @discardableResult
	    func didReceive<M1: Cuckoo.Matchable>(viewModel: M1) -> Cuckoo.__DoNotUse<(PersonalInfoViewModelProtocol), Void> where M1.MatchedType == PersonalInfoViewModelProtocol {
	        let matchers: [Cuckoo.ParameterMatcher<(PersonalInfoViewModelProtocol)>] = [wrap(matchable: viewModel) { $0 }]
	        return cuckoo_manager.verify("didReceive(viewModel: PersonalInfoViewModelProtocol)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func didStartLoading() -> Cuckoo.__DoNotUse<(), Void> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("didStartLoading()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func didStopLoading() -> Cuckoo.__DoNotUse<(), Void> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("didStopLoading()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

 class PhoneRegistrationViewProtocolStub: PhoneRegistrationViewProtocol {
    
    
     var controller: UIViewController {
        get {
            return DefaultValueRegistry.defaultValue(for: (UIViewController).self)
        }
        
    }
    
    
     var loadableContentView: UIView! {
        get {
            return DefaultValueRegistry.defaultValue(for: (UIView?).self)
        }
        
    }
    
    
     var shouldDisableInteractionWhenLoading: Bool {
        get {
            return DefaultValueRegistry.defaultValue(for: (Bool).self)
        }
        
    }
    

    

    
     func didReceive(viewModel: PersonalInfoViewModelProtocol)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func didStartLoading()   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func didStopLoading()   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
}



 class MockPhoneRegistrationPresenterProtocol: PhoneRegistrationPresenterProtocol, Cuckoo.ProtocolMock {
    
     typealias MocksType = PhoneRegistrationPresenterProtocol
    
     typealias Stubbing = __StubbingProxy_PhoneRegistrationPresenterProtocol
     typealias Verification = __VerificationProxy_PhoneRegistrationPresenterProtocol

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: PhoneRegistrationPresenterProtocol?

     func enableDefaultImplementation(_ stub: PhoneRegistrationPresenterProtocol) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    

    

    
    
    
     func setup()  {
        
    return cuckoo_manager.call("setup()",
            parameters: (),
            escapingParameters: (),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.setup())
        
    }
    
    
    
     func processPhoneInput()  {
        
    return cuckoo_manager.call("processPhoneInput()",
            parameters: (),
            escapingParameters: (),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.processPhoneInput())
        
    }
    

	 struct __StubbingProxy_PhoneRegistrationPresenterProtocol: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func setup() -> Cuckoo.ProtocolStubNoReturnFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockPhoneRegistrationPresenterProtocol.self, method: "setup()", parameterMatchers: matchers))
	    }
	    
	    func processPhoneInput() -> Cuckoo.ProtocolStubNoReturnFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockPhoneRegistrationPresenterProtocol.self, method: "processPhoneInput()", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_PhoneRegistrationPresenterProtocol: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func setup() -> Cuckoo.__DoNotUse<(), Void> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("setup()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func processPhoneInput() -> Cuckoo.__DoNotUse<(), Void> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("processPhoneInput()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

 class PhoneRegistrationPresenterProtocolStub: PhoneRegistrationPresenterProtocol {
    

    

    
     func setup()   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func processPhoneInput()   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
}



 class MockPhoneRegistrationInteractorInputProtocol: PhoneRegistrationInteractorInputProtocol, Cuckoo.ProtocolMock {
    
     typealias MocksType = PhoneRegistrationInteractorInputProtocol
    
     typealias Stubbing = __StubbingProxy_PhoneRegistrationInteractorInputProtocol
     typealias Verification = __VerificationProxy_PhoneRegistrationInteractorInputProtocol

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: PhoneRegistrationInteractorInputProtocol?

     func enableDefaultImplementation(_ stub: PhoneRegistrationInteractorInputProtocol) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    

    

    
    
    
     func createCustomer(with info: UserCreationInfo)  {
        
    return cuckoo_manager.call("createCustomer(with: UserCreationInfo)",
            parameters: (info),
            escapingParameters: (info),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.createCustomer(with: info))
        
    }
    

	 struct __StubbingProxy_PhoneRegistrationInteractorInputProtocol: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func createCustomer<M1: Cuckoo.Matchable>(with info: M1) -> Cuckoo.ProtocolStubNoReturnFunction<(UserCreationInfo)> where M1.MatchedType == UserCreationInfo {
	        let matchers: [Cuckoo.ParameterMatcher<(UserCreationInfo)>] = [wrap(matchable: info) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockPhoneRegistrationInteractorInputProtocol.self, method: "createCustomer(with: UserCreationInfo)", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_PhoneRegistrationInteractorInputProtocol: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func createCustomer<M1: Cuckoo.Matchable>(with info: M1) -> Cuckoo.__DoNotUse<(UserCreationInfo), Void> where M1.MatchedType == UserCreationInfo {
	        let matchers: [Cuckoo.ParameterMatcher<(UserCreationInfo)>] = [wrap(matchable: info) { $0 }]
	        return cuckoo_manager.verify("createCustomer(with: UserCreationInfo)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

 class PhoneRegistrationInteractorInputProtocolStub: PhoneRegistrationInteractorInputProtocol {
    

    

    
     func createCustomer(with info: UserCreationInfo)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
}



 class MockPhoneRegistrationInteractorOutputProtocol: PhoneRegistrationInteractorOutputProtocol, Cuckoo.ProtocolMock {
    
     typealias MocksType = PhoneRegistrationInteractorOutputProtocol
    
     typealias Stubbing = __StubbingProxy_PhoneRegistrationInteractorOutputProtocol
     typealias Verification = __VerificationProxy_PhoneRegistrationInteractorOutputProtocol

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: PhoneRegistrationInteractorOutputProtocol?

     func enableDefaultImplementation(_ stub: PhoneRegistrationInteractorOutputProtocol) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    

    

    
    
    
     func didCreateCustomer()  {
        
    return cuckoo_manager.call("didCreateCustomer()",
            parameters: (),
            escapingParameters: (),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.didCreateCustomer())
        
    }
    
    
    
     func didReceiveCustomerCreation(error: Error)  {
        
    return cuckoo_manager.call("didReceiveCustomerCreation(error: Error)",
            parameters: (error),
            escapingParameters: (error),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.didReceiveCustomerCreation(error: error))
        
    }
    

	 struct __StubbingProxy_PhoneRegistrationInteractorOutputProtocol: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func didCreateCustomer() -> Cuckoo.ProtocolStubNoReturnFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockPhoneRegistrationInteractorOutputProtocol.self, method: "didCreateCustomer()", parameterMatchers: matchers))
	    }
	    
	    func didReceiveCustomerCreation<M1: Cuckoo.Matchable>(error: M1) -> Cuckoo.ProtocolStubNoReturnFunction<(Error)> where M1.MatchedType == Error {
	        let matchers: [Cuckoo.ParameterMatcher<(Error)>] = [wrap(matchable: error) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockPhoneRegistrationInteractorOutputProtocol.self, method: "didReceiveCustomerCreation(error: Error)", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_PhoneRegistrationInteractorOutputProtocol: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func didCreateCustomer() -> Cuckoo.__DoNotUse<(), Void> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("didCreateCustomer()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func didReceiveCustomerCreation<M1: Cuckoo.Matchable>(error: M1) -> Cuckoo.__DoNotUse<(Error), Void> where M1.MatchedType == Error {
	        let matchers: [Cuckoo.ParameterMatcher<(Error)>] = [wrap(matchable: error) { $0 }]
	        return cuckoo_manager.verify("didReceiveCustomerCreation(error: Error)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

 class PhoneRegistrationInteractorOutputProtocolStub: PhoneRegistrationInteractorOutputProtocol {
    

    

    
     func didCreateCustomer()   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func didReceiveCustomerCreation(error: Error)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
}



 class MockPhoneRegistrationWireframeProtocol: PhoneRegistrationWireframeProtocol, Cuckoo.ProtocolMock {
    
     typealias MocksType = PhoneRegistrationWireframeProtocol
    
     typealias Stubbing = __StubbingProxy_PhoneRegistrationWireframeProtocol
     typealias Verification = __VerificationProxy_PhoneRegistrationWireframeProtocol

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: PhoneRegistrationWireframeProtocol?

     func enableDefaultImplementation(_ stub: PhoneRegistrationWireframeProtocol) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    

    

    
    
    
     func showPhoneVerification(from view: PhoneRegistrationViewProtocol?, country: Country)  {
        
    return cuckoo_manager.call("showPhoneVerification(from: PhoneRegistrationViewProtocol?, country: Country)",
            parameters: (view, country),
            escapingParameters: (view, country),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.showPhoneVerification(from: view, country: country))
        
    }
    
    
    
     func showRegistration(from view: PhoneRegistrationViewProtocol?, country: Country)  {
        
    return cuckoo_manager.call("showRegistration(from: PhoneRegistrationViewProtocol?, country: Country)",
            parameters: (view, country),
            escapingParameters: (view, country),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.showRegistration(from: view, country: country))
        
    }
    
    
    
     func present(message: String?, title: String?, closeAction: String?, from view: ControllerBackedProtocol?)  {
        
    return cuckoo_manager.call("present(message: String?, title: String?, closeAction: String?, from: ControllerBackedProtocol?)",
            parameters: (message, title, closeAction, view),
            escapingParameters: (message, title, closeAction, view),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.present(message: message, title: title, closeAction: closeAction, from: view))
        
    }
    
    
    
     func present(message: String?, title: String?, actions: [AlertPresentableAction], from view: ControllerBackedProtocol?)  {
        
    return cuckoo_manager.call("present(message: String?, title: String?, actions: [AlertPresentableAction], from: ControllerBackedProtocol?)",
            parameters: (message, title, actions, view),
            escapingParameters: (message, title, actions, view),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.present(message: message, title: title, actions: actions, from: view))
        
    }
    
    
    
     func present(error: Error, from view: ControllerBackedProtocol?) -> Bool {
        
    return cuckoo_manager.call("present(error: Error, from: ControllerBackedProtocol?) -> Bool",
            parameters: (error, view),
            escapingParameters: (error, view),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.present(error: error, from: view))
        
    }
    

	 struct __StubbingProxy_PhoneRegistrationWireframeProtocol: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func showPhoneVerification<M1: Cuckoo.OptionalMatchable, M2: Cuckoo.Matchable>(from view: M1, country: M2) -> Cuckoo.ProtocolStubNoReturnFunction<(PhoneRegistrationViewProtocol?, Country)> where M1.OptionalMatchedType == PhoneRegistrationViewProtocol, M2.MatchedType == Country {
	        let matchers: [Cuckoo.ParameterMatcher<(PhoneRegistrationViewProtocol?, Country)>] = [wrap(matchable: view) { $0.0 }, wrap(matchable: country) { $0.1 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockPhoneRegistrationWireframeProtocol.self, method: "showPhoneVerification(from: PhoneRegistrationViewProtocol?, country: Country)", parameterMatchers: matchers))
	    }
	    
	    func showRegistration<M1: Cuckoo.OptionalMatchable, M2: Cuckoo.Matchable>(from view: M1, country: M2) -> Cuckoo.ProtocolStubNoReturnFunction<(PhoneRegistrationViewProtocol?, Country)> where M1.OptionalMatchedType == PhoneRegistrationViewProtocol, M2.MatchedType == Country {
	        let matchers: [Cuckoo.ParameterMatcher<(PhoneRegistrationViewProtocol?, Country)>] = [wrap(matchable: view) { $0.0 }, wrap(matchable: country) { $0.1 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockPhoneRegistrationWireframeProtocol.self, method: "showRegistration(from: PhoneRegistrationViewProtocol?, country: Country)", parameterMatchers: matchers))
	    }
	    
	    func present<M1: Cuckoo.OptionalMatchable, M2: Cuckoo.OptionalMatchable, M3: Cuckoo.OptionalMatchable, M4: Cuckoo.OptionalMatchable>(message: M1, title: M2, closeAction: M3, from view: M4) -> Cuckoo.ProtocolStubNoReturnFunction<(String?, String?, String?, ControllerBackedProtocol?)> where M1.OptionalMatchedType == String, M2.OptionalMatchedType == String, M3.OptionalMatchedType == String, M4.OptionalMatchedType == ControllerBackedProtocol {
	        let matchers: [Cuckoo.ParameterMatcher<(String?, String?, String?, ControllerBackedProtocol?)>] = [wrap(matchable: message) { $0.0 }, wrap(matchable: title) { $0.1 }, wrap(matchable: closeAction) { $0.2 }, wrap(matchable: view) { $0.3 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockPhoneRegistrationWireframeProtocol.self, method: "present(message: String?, title: String?, closeAction: String?, from: ControllerBackedProtocol?)", parameterMatchers: matchers))
	    }
	    
	    func present<M1: Cuckoo.OptionalMatchable, M2: Cuckoo.OptionalMatchable, M3: Cuckoo.Matchable, M4: Cuckoo.OptionalMatchable>(message: M1, title: M2, actions: M3, from view: M4) -> Cuckoo.ProtocolStubNoReturnFunction<(String?, String?, [AlertPresentableAction], ControllerBackedProtocol?)> where M1.OptionalMatchedType == String, M2.OptionalMatchedType == String, M3.MatchedType == [AlertPresentableAction], M4.OptionalMatchedType == ControllerBackedProtocol {
	        let matchers: [Cuckoo.ParameterMatcher<(String?, String?, [AlertPresentableAction], ControllerBackedProtocol?)>] = [wrap(matchable: message) { $0.0 }, wrap(matchable: title) { $0.1 }, wrap(matchable: actions) { $0.2 }, wrap(matchable: view) { $0.3 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockPhoneRegistrationWireframeProtocol.self, method: "present(message: String?, title: String?, actions: [AlertPresentableAction], from: ControllerBackedProtocol?)", parameterMatchers: matchers))
	    }
	    
	    func present<M1: Cuckoo.Matchable, M2: Cuckoo.OptionalMatchable>(error: M1, from view: M2) -> Cuckoo.ProtocolStubFunction<(Error, ControllerBackedProtocol?), Bool> where M1.MatchedType == Error, M2.OptionalMatchedType == ControllerBackedProtocol {
	        let matchers: [Cuckoo.ParameterMatcher<(Error, ControllerBackedProtocol?)>] = [wrap(matchable: error) { $0.0 }, wrap(matchable: view) { $0.1 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockPhoneRegistrationWireframeProtocol.self, method: "present(error: Error, from: ControllerBackedProtocol?) -> Bool", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_PhoneRegistrationWireframeProtocol: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func showPhoneVerification<M1: Cuckoo.OptionalMatchable, M2: Cuckoo.Matchable>(from view: M1, country: M2) -> Cuckoo.__DoNotUse<(PhoneRegistrationViewProtocol?, Country), Void> where M1.OptionalMatchedType == PhoneRegistrationViewProtocol, M2.MatchedType == Country {
	        let matchers: [Cuckoo.ParameterMatcher<(PhoneRegistrationViewProtocol?, Country)>] = [wrap(matchable: view) { $0.0 }, wrap(matchable: country) { $0.1 }]
	        return cuckoo_manager.verify("showPhoneVerification(from: PhoneRegistrationViewProtocol?, country: Country)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func showRegistration<M1: Cuckoo.OptionalMatchable, M2: Cuckoo.Matchable>(from view: M1, country: M2) -> Cuckoo.__DoNotUse<(PhoneRegistrationViewProtocol?, Country), Void> where M1.OptionalMatchedType == PhoneRegistrationViewProtocol, M2.MatchedType == Country {
	        let matchers: [Cuckoo.ParameterMatcher<(PhoneRegistrationViewProtocol?, Country)>] = [wrap(matchable: view) { $0.0 }, wrap(matchable: country) { $0.1 }]
	        return cuckoo_manager.verify("showRegistration(from: PhoneRegistrationViewProtocol?, country: Country)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func present<M1: Cuckoo.OptionalMatchable, M2: Cuckoo.OptionalMatchable, M3: Cuckoo.OptionalMatchable, M4: Cuckoo.OptionalMatchable>(message: M1, title: M2, closeAction: M3, from view: M4) -> Cuckoo.__DoNotUse<(String?, String?, String?, ControllerBackedProtocol?), Void> where M1.OptionalMatchedType == String, M2.OptionalMatchedType == String, M3.OptionalMatchedType == String, M4.OptionalMatchedType == ControllerBackedProtocol {
	        let matchers: [Cuckoo.ParameterMatcher<(String?, String?, String?, ControllerBackedProtocol?)>] = [wrap(matchable: message) { $0.0 }, wrap(matchable: title) { $0.1 }, wrap(matchable: closeAction) { $0.2 }, wrap(matchable: view) { $0.3 }]
	        return cuckoo_manager.verify("present(message: String?, title: String?, closeAction: String?, from: ControllerBackedProtocol?)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func present<M1: Cuckoo.OptionalMatchable, M2: Cuckoo.OptionalMatchable, M3: Cuckoo.Matchable, M4: Cuckoo.OptionalMatchable>(message: M1, title: M2, actions: M3, from view: M4) -> Cuckoo.__DoNotUse<(String?, String?, [AlertPresentableAction], ControllerBackedProtocol?), Void> where M1.OptionalMatchedType == String, M2.OptionalMatchedType == String, M3.MatchedType == [AlertPresentableAction], M4.OptionalMatchedType == ControllerBackedProtocol {
	        let matchers: [Cuckoo.ParameterMatcher<(String?, String?, [AlertPresentableAction], ControllerBackedProtocol?)>] = [wrap(matchable: message) { $0.0 }, wrap(matchable: title) { $0.1 }, wrap(matchable: actions) { $0.2 }, wrap(matchable: view) { $0.3 }]
	        return cuckoo_manager.verify("present(message: String?, title: String?, actions: [AlertPresentableAction], from: ControllerBackedProtocol?)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func present<M1: Cuckoo.Matchable, M2: Cuckoo.OptionalMatchable>(error: M1, from view: M2) -> Cuckoo.__DoNotUse<(Error, ControllerBackedProtocol?), Bool> where M1.MatchedType == Error, M2.OptionalMatchedType == ControllerBackedProtocol {
	        let matchers: [Cuckoo.ParameterMatcher<(Error, ControllerBackedProtocol?)>] = [wrap(matchable: error) { $0.0 }, wrap(matchable: view) { $0.1 }]
	        return cuckoo_manager.verify("present(error: Error, from: ControllerBackedProtocol?) -> Bool", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

 class PhoneRegistrationWireframeProtocolStub: PhoneRegistrationWireframeProtocol {
    

    

    
     func showPhoneVerification(from view: PhoneRegistrationViewProtocol?, country: Country)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func showRegistration(from view: PhoneRegistrationViewProtocol?, country: Country)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func present(message: String?, title: String?, closeAction: String?, from view: ControllerBackedProtocol?)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func present(message: String?, title: String?, actions: [AlertPresentableAction], from view: ControllerBackedProtocol?)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func present(error: Error, from view: ControllerBackedProtocol?) -> Bool  {
        return DefaultValueRegistry.defaultValue(for: (Bool).self)
    }
    
}


import Cuckoo
@testable import SoraPassport

import Foundation


 class MockPhoneVerificationViewProtocol: PhoneVerificationViewProtocol, Cuckoo.ProtocolMock {
    
     typealias MocksType = PhoneVerificationViewProtocol
    
     typealias Stubbing = __StubbingProxy_PhoneVerificationViewProtocol
     typealias Verification = __VerificationProxy_PhoneVerificationViewProtocol

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: PhoneVerificationViewProtocol?

     func enableDefaultImplementation(_ stub: PhoneVerificationViewProtocol) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    
    
    
     var controller: UIViewController {
        get {
            return cuckoo_manager.getter("controller",
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.controller)
        }
        
    }
    
    
    
     var loadableContentView: UIView! {
        get {
            return cuckoo_manager.getter("loadableContentView",
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.loadableContentView)
        }
        
    }
    
    
    
     var shouldDisableInteractionWhenLoading: Bool {
        get {
            return cuckoo_manager.getter("shouldDisableInteractionWhenLoading",
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.shouldDisableInteractionWhenLoading)
        }
        
    }
    

    

    
    
    
     func didReceive(viewModel: CodeInputViewModelProtocol)  {
        
    return cuckoo_manager.call("didReceive(viewModel: CodeInputViewModelProtocol)",
            parameters: (viewModel),
            escapingParameters: (viewModel),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.didReceive(viewModel: viewModel))
        
    }
    
    
    
     func didUpdateResendRemained(delay: TimeInterval)  {
        
    return cuckoo_manager.call("didUpdateResendRemained(delay: TimeInterval)",
            parameters: (delay),
            escapingParameters: (delay),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.didUpdateResendRemained(delay: delay))
        
    }
    
    
    
     func didStartLoading()  {
        
    return cuckoo_manager.call("didStartLoading()",
            parameters: (),
            escapingParameters: (),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.didStartLoading())
        
    }
    
    
    
     func didStopLoading()  {
        
    return cuckoo_manager.call("didStopLoading()",
            parameters: (),
            escapingParameters: (),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.didStopLoading())
        
    }
    

	 struct __StubbingProxy_PhoneVerificationViewProtocol: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    var controller: Cuckoo.ProtocolToBeStubbedReadOnlyProperty<MockPhoneVerificationViewProtocol, UIViewController> {
	        return .init(manager: cuckoo_manager, name: "controller")
	    }
	    
	    
	    var loadableContentView: Cuckoo.ProtocolToBeStubbedReadOnlyProperty<MockPhoneVerificationViewProtocol, UIView?> {
	        return .init(manager: cuckoo_manager, name: "loadableContentView")
	    }
	    
	    
	    var shouldDisableInteractionWhenLoading: Cuckoo.ProtocolToBeStubbedReadOnlyProperty<MockPhoneVerificationViewProtocol, Bool> {
	        return .init(manager: cuckoo_manager, name: "shouldDisableInteractionWhenLoading")
	    }
	    
	    
	    func didReceive<M1: Cuckoo.Matchable>(viewModel: M1) -> Cuckoo.ProtocolStubNoReturnFunction<(CodeInputViewModelProtocol)> where M1.MatchedType == CodeInputViewModelProtocol {
	        let matchers: [Cuckoo.ParameterMatcher<(CodeInputViewModelProtocol)>] = [wrap(matchable: viewModel) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockPhoneVerificationViewProtocol.self, method: "didReceive(viewModel: CodeInputViewModelProtocol)", parameterMatchers: matchers))
	    }
	    
	    func didUpdateResendRemained<M1: Cuckoo.Matchable>(delay: M1) -> Cuckoo.ProtocolStubNoReturnFunction<(TimeInterval)> where M1.MatchedType == TimeInterval {
	        let matchers: [Cuckoo.ParameterMatcher<(TimeInterval)>] = [wrap(matchable: delay) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockPhoneVerificationViewProtocol.self, method: "didUpdateResendRemained(delay: TimeInterval)", parameterMatchers: matchers))
	    }
	    
	    func didStartLoading() -> Cuckoo.ProtocolStubNoReturnFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockPhoneVerificationViewProtocol.self, method: "didStartLoading()", parameterMatchers: matchers))
	    }
	    
	    func didStopLoading() -> Cuckoo.ProtocolStubNoReturnFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockPhoneVerificationViewProtocol.self, method: "didStopLoading()", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_PhoneVerificationViewProtocol: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	    
	    var controller: Cuckoo.VerifyReadOnlyProperty<UIViewController> {
	        return .init(manager: cuckoo_manager, name: "controller", callMatcher: callMatcher, sourceLocation: sourceLocation)
	    }
	    
	    
	    var loadableContentView: Cuckoo.VerifyReadOnlyProperty<UIView?> {
	        return .init(manager: cuckoo_manager, name: "loadableContentView", callMatcher: callMatcher, sourceLocation: sourceLocation)
	    }
	    
	    
	    var shouldDisableInteractionWhenLoading: Cuckoo.VerifyReadOnlyProperty<Bool> {
	        return .init(manager: cuckoo_manager, name: "shouldDisableInteractionWhenLoading", callMatcher: callMatcher, sourceLocation: sourceLocation)
	    }
	    
	
	    
	    @discardableResult
	    func didReceive<M1: Cuckoo.Matchable>(viewModel: M1) -> Cuckoo.__DoNotUse<(CodeInputViewModelProtocol), Void> where M1.MatchedType == CodeInputViewModelProtocol {
	        let matchers: [Cuckoo.ParameterMatcher<(CodeInputViewModelProtocol)>] = [wrap(matchable: viewModel) { $0 }]
	        return cuckoo_manager.verify("didReceive(viewModel: CodeInputViewModelProtocol)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func didUpdateResendRemained<M1: Cuckoo.Matchable>(delay: M1) -> Cuckoo.__DoNotUse<(TimeInterval), Void> where M1.MatchedType == TimeInterval {
	        let matchers: [Cuckoo.ParameterMatcher<(TimeInterval)>] = [wrap(matchable: delay) { $0 }]
	        return cuckoo_manager.verify("didUpdateResendRemained(delay: TimeInterval)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func didStartLoading() -> Cuckoo.__DoNotUse<(), Void> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("didStartLoading()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func didStopLoading() -> Cuckoo.__DoNotUse<(), Void> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("didStopLoading()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

 class PhoneVerificationViewProtocolStub: PhoneVerificationViewProtocol {
    
    
     var controller: UIViewController {
        get {
            return DefaultValueRegistry.defaultValue(for: (UIViewController).self)
        }
        
    }
    
    
     var loadableContentView: UIView! {
        get {
            return DefaultValueRegistry.defaultValue(for: (UIView?).self)
        }
        
    }
    
    
     var shouldDisableInteractionWhenLoading: Bool {
        get {
            return DefaultValueRegistry.defaultValue(for: (Bool).self)
        }
        
    }
    

    

    
     func didReceive(viewModel: CodeInputViewModelProtocol)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func didUpdateResendRemained(delay: TimeInterval)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func didStartLoading()   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func didStopLoading()   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
}



 class MockPhoneVerificationPresenterProtocol: PhoneVerificationPresenterProtocol, Cuckoo.ProtocolMock {
    
     typealias MocksType = PhoneVerificationPresenterProtocol
    
     typealias Stubbing = __StubbingProxy_PhoneVerificationPresenterProtocol
     typealias Verification = __VerificationProxy_PhoneVerificationPresenterProtocol

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: PhoneVerificationPresenterProtocol?

     func enableDefaultImplementation(_ stub: PhoneVerificationPresenterProtocol) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    

    

    
    
    
     func viewIsReady()  {
        
    return cuckoo_manager.call("viewIsReady()",
            parameters: (),
            escapingParameters: (),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.viewIsReady())
        
    }
    
    
    
     func viewDidDisappear()  {
        
    return cuckoo_manager.call("viewDidDisappear()",
            parameters: (),
            escapingParameters: (),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.viewDidDisappear())
        
    }
    
    
    
     func process(viewModel: CodeInputViewModelProtocol)  {
        
    return cuckoo_manager.call("process(viewModel: CodeInputViewModelProtocol)",
            parameters: (viewModel),
            escapingParameters: (viewModel),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.process(viewModel: viewModel))
        
    }
    
    
    
     func resendCode()  {
        
    return cuckoo_manager.call("resendCode()",
            parameters: (),
            escapingParameters: (),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.resendCode())
        
    }
    

	 struct __StubbingProxy_PhoneVerificationPresenterProtocol: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func viewIsReady() -> Cuckoo.ProtocolStubNoReturnFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockPhoneVerificationPresenterProtocol.self, method: "viewIsReady()", parameterMatchers: matchers))
	    }
	    
	    func viewDidDisappear() -> Cuckoo.ProtocolStubNoReturnFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockPhoneVerificationPresenterProtocol.self, method: "viewDidDisappear()", parameterMatchers: matchers))
	    }
	    
	    func process<M1: Cuckoo.Matchable>(viewModel: M1) -> Cuckoo.ProtocolStubNoReturnFunction<(CodeInputViewModelProtocol)> where M1.MatchedType == CodeInputViewModelProtocol {
	        let matchers: [Cuckoo.ParameterMatcher<(CodeInputViewModelProtocol)>] = [wrap(matchable: viewModel) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockPhoneVerificationPresenterProtocol.self, method: "process(viewModel: CodeInputViewModelProtocol)", parameterMatchers: matchers))
	    }
	    
	    func resendCode() -> Cuckoo.ProtocolStubNoReturnFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockPhoneVerificationPresenterProtocol.self, method: "resendCode()", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_PhoneVerificationPresenterProtocol: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func viewIsReady() -> Cuckoo.__DoNotUse<(), Void> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("viewIsReady()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func viewDidDisappear() -> Cuckoo.__DoNotUse<(), Void> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("viewDidDisappear()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func process<M1: Cuckoo.Matchable>(viewModel: M1) -> Cuckoo.__DoNotUse<(CodeInputViewModelProtocol), Void> where M1.MatchedType == CodeInputViewModelProtocol {
	        let matchers: [Cuckoo.ParameterMatcher<(CodeInputViewModelProtocol)>] = [wrap(matchable: viewModel) { $0 }]
	        return cuckoo_manager.verify("process(viewModel: CodeInputViewModelProtocol)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func resendCode() -> Cuckoo.__DoNotUse<(), Void> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("resendCode()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

 class PhoneVerificationPresenterProtocolStub: PhoneVerificationPresenterProtocol {
    

    

    
     func viewIsReady()   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func viewDidDisappear()   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func process(viewModel: CodeInputViewModelProtocol)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func resendCode()   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
}



 class MockPhoneVerificationInteractorInputProtocol: PhoneVerificationInteractorInputProtocol, Cuckoo.ProtocolMock {
    
     typealias MocksType = PhoneVerificationInteractorInputProtocol
    
     typealias Stubbing = __StubbingProxy_PhoneVerificationInteractorInputProtocol
     typealias Verification = __VerificationProxy_PhoneVerificationInteractorInputProtocol

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: PhoneVerificationInteractorInputProtocol?

     func enableDefaultImplementation(_ stub: PhoneVerificationInteractorInputProtocol) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    

    

    
    
    
     func fetchVerificationState()  {
        
    return cuckoo_manager.call("fetchVerificationState()",
            parameters: (),
            escapingParameters: (),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.fetchVerificationState())
        
    }
    
    
    
     func save(verificationState: VerificationState)  {
        
    return cuckoo_manager.call("save(verificationState: VerificationState)",
            parameters: (verificationState),
            escapingParameters: (verificationState),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.save(verificationState: verificationState))
        
    }
    
    
    
     func requestPhoneVerificationCode()  {
        
    return cuckoo_manager.call("requestPhoneVerificationCode()",
            parameters: (),
            escapingParameters: (),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.requestPhoneVerificationCode())
        
    }
    
    
    
     func verifyPhone(codeInfo: VerificationCodeInfo)  {
        
    return cuckoo_manager.call("verifyPhone(codeInfo: VerificationCodeInfo)",
            parameters: (codeInfo),
            escapingParameters: (codeInfo),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.verifyPhone(codeInfo: codeInfo))
        
    }
    

	 struct __StubbingProxy_PhoneVerificationInteractorInputProtocol: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func fetchVerificationState() -> Cuckoo.ProtocolStubNoReturnFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockPhoneVerificationInteractorInputProtocol.self, method: "fetchVerificationState()", parameterMatchers: matchers))
	    }
	    
	    func save<M1: Cuckoo.Matchable>(verificationState: M1) -> Cuckoo.ProtocolStubNoReturnFunction<(VerificationState)> where M1.MatchedType == VerificationState {
	        let matchers: [Cuckoo.ParameterMatcher<(VerificationState)>] = [wrap(matchable: verificationState) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockPhoneVerificationInteractorInputProtocol.self, method: "save(verificationState: VerificationState)", parameterMatchers: matchers))
	    }
	    
	    func requestPhoneVerificationCode() -> Cuckoo.ProtocolStubNoReturnFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockPhoneVerificationInteractorInputProtocol.self, method: "requestPhoneVerificationCode()", parameterMatchers: matchers))
	    }
	    
	    func verifyPhone<M1: Cuckoo.Matchable>(codeInfo: M1) -> Cuckoo.ProtocolStubNoReturnFunction<(VerificationCodeInfo)> where M1.MatchedType == VerificationCodeInfo {
	        let matchers: [Cuckoo.ParameterMatcher<(VerificationCodeInfo)>] = [wrap(matchable: codeInfo) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockPhoneVerificationInteractorInputProtocol.self, method: "verifyPhone(codeInfo: VerificationCodeInfo)", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_PhoneVerificationInteractorInputProtocol: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func fetchVerificationState() -> Cuckoo.__DoNotUse<(), Void> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("fetchVerificationState()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func save<M1: Cuckoo.Matchable>(verificationState: M1) -> Cuckoo.__DoNotUse<(VerificationState), Void> where M1.MatchedType == VerificationState {
	        let matchers: [Cuckoo.ParameterMatcher<(VerificationState)>] = [wrap(matchable: verificationState) { $0 }]
	        return cuckoo_manager.verify("save(verificationState: VerificationState)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func requestPhoneVerificationCode() -> Cuckoo.__DoNotUse<(), Void> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("requestPhoneVerificationCode()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func verifyPhone<M1: Cuckoo.Matchable>(codeInfo: M1) -> Cuckoo.__DoNotUse<(VerificationCodeInfo), Void> where M1.MatchedType == VerificationCodeInfo {
	        let matchers: [Cuckoo.ParameterMatcher<(VerificationCodeInfo)>] = [wrap(matchable: codeInfo) { $0 }]
	        return cuckoo_manager.verify("verifyPhone(codeInfo: VerificationCodeInfo)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

 class PhoneVerificationInteractorInputProtocolStub: PhoneVerificationInteractorInputProtocol {
    

    

    
     func fetchVerificationState()   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func save(verificationState: VerificationState)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func requestPhoneVerificationCode()   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func verifyPhone(codeInfo: VerificationCodeInfo)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
}



 class MockPhoneVerificationInteractorOutputProtocol: PhoneVerificationInteractorOutputProtocol, Cuckoo.ProtocolMock {
    
     typealias MocksType = PhoneVerificationInteractorOutputProtocol
    
     typealias Stubbing = __StubbingProxy_PhoneVerificationInteractorOutputProtocol
     typealias Verification = __VerificationProxy_PhoneVerificationInteractorOutputProtocol

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: PhoneVerificationInteractorOutputProtocol?

     func enableDefaultImplementation(_ stub: PhoneVerificationInteractorOutputProtocol) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    

    

    
    
    
     func didReceive(verificationCodeData: VerificationCodeData)  {
        
    return cuckoo_manager.call("didReceive(verificationCodeData: VerificationCodeData)",
            parameters: (verificationCodeData),
            escapingParameters: (verificationCodeData),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.didReceive(verificationCodeData: verificationCodeData))
        
    }
    
    
    
     func didReceivePhoneVerificationCodeRequest(error: Error)  {
        
    return cuckoo_manager.call("didReceivePhoneVerificationCodeRequest(error: Error)",
            parameters: (error),
            escapingParameters: (error),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.didReceivePhoneVerificationCodeRequest(error: error))
        
    }
    
    
    
     func didVerifyPhoneCode()  {
        
    return cuckoo_manager.call("didVerifyPhoneCode()",
            parameters: (),
            escapingParameters: (),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.didVerifyPhoneCode())
        
    }
    
    
    
     func didReceivePhoneVerification(error: Error)  {
        
    return cuckoo_manager.call("didReceivePhoneVerification(error: Error)",
            parameters: (error),
            escapingParameters: (error),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.didReceivePhoneVerification(error: error))
        
    }
    
    
    
     func didReceive(verificationState: VerificationState?)  {
        
    return cuckoo_manager.call("didReceive(verificationState: VerificationState?)",
            parameters: (verificationState),
            escapingParameters: (verificationState),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.didReceive(verificationState: verificationState))
        
    }
    

	 struct __StubbingProxy_PhoneVerificationInteractorOutputProtocol: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func didReceive<M1: Cuckoo.Matchable>(verificationCodeData: M1) -> Cuckoo.ProtocolStubNoReturnFunction<(VerificationCodeData)> where M1.MatchedType == VerificationCodeData {
	        let matchers: [Cuckoo.ParameterMatcher<(VerificationCodeData)>] = [wrap(matchable: verificationCodeData) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockPhoneVerificationInteractorOutputProtocol.self, method: "didReceive(verificationCodeData: VerificationCodeData)", parameterMatchers: matchers))
	    }
	    
	    func didReceivePhoneVerificationCodeRequest<M1: Cuckoo.Matchable>(error: M1) -> Cuckoo.ProtocolStubNoReturnFunction<(Error)> where M1.MatchedType == Error {
	        let matchers: [Cuckoo.ParameterMatcher<(Error)>] = [wrap(matchable: error) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockPhoneVerificationInteractorOutputProtocol.self, method: "didReceivePhoneVerificationCodeRequest(error: Error)", parameterMatchers: matchers))
	    }
	    
	    func didVerifyPhoneCode() -> Cuckoo.ProtocolStubNoReturnFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockPhoneVerificationInteractorOutputProtocol.self, method: "didVerifyPhoneCode()", parameterMatchers: matchers))
	    }
	    
	    func didReceivePhoneVerification<M1: Cuckoo.Matchable>(error: M1) -> Cuckoo.ProtocolStubNoReturnFunction<(Error)> where M1.MatchedType == Error {
	        let matchers: [Cuckoo.ParameterMatcher<(Error)>] = [wrap(matchable: error) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockPhoneVerificationInteractorOutputProtocol.self, method: "didReceivePhoneVerification(error: Error)", parameterMatchers: matchers))
	    }
	    
	    func didReceive<M1: Cuckoo.OptionalMatchable>(verificationState: M1) -> Cuckoo.ProtocolStubNoReturnFunction<(VerificationState?)> where M1.OptionalMatchedType == VerificationState {
	        let matchers: [Cuckoo.ParameterMatcher<(VerificationState?)>] = [wrap(matchable: verificationState) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockPhoneVerificationInteractorOutputProtocol.self, method: "didReceive(verificationState: VerificationState?)", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_PhoneVerificationInteractorOutputProtocol: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func didReceive<M1: Cuckoo.Matchable>(verificationCodeData: M1) -> Cuckoo.__DoNotUse<(VerificationCodeData), Void> where M1.MatchedType == VerificationCodeData {
	        let matchers: [Cuckoo.ParameterMatcher<(VerificationCodeData)>] = [wrap(matchable: verificationCodeData) { $0 }]
	        return cuckoo_manager.verify("didReceive(verificationCodeData: VerificationCodeData)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func didReceivePhoneVerificationCodeRequest<M1: Cuckoo.Matchable>(error: M1) -> Cuckoo.__DoNotUse<(Error), Void> where M1.MatchedType == Error {
	        let matchers: [Cuckoo.ParameterMatcher<(Error)>] = [wrap(matchable: error) { $0 }]
	        return cuckoo_manager.verify("didReceivePhoneVerificationCodeRequest(error: Error)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func didVerifyPhoneCode() -> Cuckoo.__DoNotUse<(), Void> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("didVerifyPhoneCode()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func didReceivePhoneVerification<M1: Cuckoo.Matchable>(error: M1) -> Cuckoo.__DoNotUse<(Error), Void> where M1.MatchedType == Error {
	        let matchers: [Cuckoo.ParameterMatcher<(Error)>] = [wrap(matchable: error) { $0 }]
	        return cuckoo_manager.verify("didReceivePhoneVerification(error: Error)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func didReceive<M1: Cuckoo.OptionalMatchable>(verificationState: M1) -> Cuckoo.__DoNotUse<(VerificationState?), Void> where M1.OptionalMatchedType == VerificationState {
	        let matchers: [Cuckoo.ParameterMatcher<(VerificationState?)>] = [wrap(matchable: verificationState) { $0 }]
	        return cuckoo_manager.verify("didReceive(verificationState: VerificationState?)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

 class PhoneVerificationInteractorOutputProtocolStub: PhoneVerificationInteractorOutputProtocol {
    

    

    
     func didReceive(verificationCodeData: VerificationCodeData)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func didReceivePhoneVerificationCodeRequest(error: Error)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func didVerifyPhoneCode()   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func didReceivePhoneVerification(error: Error)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func didReceive(verificationState: VerificationState?)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
}



 class MockPhoneVerificationWireframeProtocol: PhoneVerificationWireframeProtocol, Cuckoo.ProtocolMock {
    
     typealias MocksType = PhoneVerificationWireframeProtocol
    
     typealias Stubbing = __StubbingProxy_PhoneVerificationWireframeProtocol
     typealias Verification = __VerificationProxy_PhoneVerificationWireframeProtocol

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: PhoneVerificationWireframeProtocol?

     func enableDefaultImplementation(_ stub: PhoneVerificationWireframeProtocol) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    

    

    
    
    
     func showNext(from view: PhoneVerificationViewProtocol?)  {
        
    return cuckoo_manager.call("showNext(from: PhoneVerificationViewProtocol?)",
            parameters: (view),
            escapingParameters: (view),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.showNext(from: view))
        
    }
    
    
    
     func present(message: String?, title: String?, closeAction: String?, from view: ControllerBackedProtocol?)  {
        
    return cuckoo_manager.call("present(message: String?, title: String?, closeAction: String?, from: ControllerBackedProtocol?)",
            parameters: (message, title, closeAction, view),
            escapingParameters: (message, title, closeAction, view),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.present(message: message, title: title, closeAction: closeAction, from: view))
        
    }
    
    
    
     func present(message: String?, title: String?, actions: [AlertPresentableAction], from view: ControllerBackedProtocol?)  {
        
    return cuckoo_manager.call("present(message: String?, title: String?, actions: [AlertPresentableAction], from: ControllerBackedProtocol?)",
            parameters: (message, title, actions, view),
            escapingParameters: (message, title, actions, view),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.present(message: message, title: title, actions: actions, from: view))
        
    }
    
    
    
     func present(error: Error, from view: ControllerBackedProtocol?) -> Bool {
        
    return cuckoo_manager.call("present(error: Error, from: ControllerBackedProtocol?) -> Bool",
            parameters: (error, view),
            escapingParameters: (error, view),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.present(error: error, from: view))
        
    }
    

	 struct __StubbingProxy_PhoneVerificationWireframeProtocol: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func showNext<M1: Cuckoo.OptionalMatchable>(from view: M1) -> Cuckoo.ProtocolStubNoReturnFunction<(PhoneVerificationViewProtocol?)> where M1.OptionalMatchedType == PhoneVerificationViewProtocol {
	        let matchers: [Cuckoo.ParameterMatcher<(PhoneVerificationViewProtocol?)>] = [wrap(matchable: view) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockPhoneVerificationWireframeProtocol.self, method: "showNext(from: PhoneVerificationViewProtocol?)", parameterMatchers: matchers))
	    }
	    
	    func present<M1: Cuckoo.OptionalMatchable, M2: Cuckoo.OptionalMatchable, M3: Cuckoo.OptionalMatchable, M4: Cuckoo.OptionalMatchable>(message: M1, title: M2, closeAction: M3, from view: M4) -> Cuckoo.ProtocolStubNoReturnFunction<(String?, String?, String?, ControllerBackedProtocol?)> where M1.OptionalMatchedType == String, M2.OptionalMatchedType == String, M3.OptionalMatchedType == String, M4.OptionalMatchedType == ControllerBackedProtocol {
	        let matchers: [Cuckoo.ParameterMatcher<(String?, String?, String?, ControllerBackedProtocol?)>] = [wrap(matchable: message) { $0.0 }, wrap(matchable: title) { $0.1 }, wrap(matchable: closeAction) { $0.2 }, wrap(matchable: view) { $0.3 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockPhoneVerificationWireframeProtocol.self, method: "present(message: String?, title: String?, closeAction: String?, from: ControllerBackedProtocol?)", parameterMatchers: matchers))
	    }
	    
	    func present<M1: Cuckoo.OptionalMatchable, M2: Cuckoo.OptionalMatchable, M3: Cuckoo.Matchable, M4: Cuckoo.OptionalMatchable>(message: M1, title: M2, actions: M3, from view: M4) -> Cuckoo.ProtocolStubNoReturnFunction<(String?, String?, [AlertPresentableAction], ControllerBackedProtocol?)> where M1.OptionalMatchedType == String, M2.OptionalMatchedType == String, M3.MatchedType == [AlertPresentableAction], M4.OptionalMatchedType == ControllerBackedProtocol {
	        let matchers: [Cuckoo.ParameterMatcher<(String?, String?, [AlertPresentableAction], ControllerBackedProtocol?)>] = [wrap(matchable: message) { $0.0 }, wrap(matchable: title) { $0.1 }, wrap(matchable: actions) { $0.2 }, wrap(matchable: view) { $0.3 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockPhoneVerificationWireframeProtocol.self, method: "present(message: String?, title: String?, actions: [AlertPresentableAction], from: ControllerBackedProtocol?)", parameterMatchers: matchers))
	    }
	    
	    func present<M1: Cuckoo.Matchable, M2: Cuckoo.OptionalMatchable>(error: M1, from view: M2) -> Cuckoo.ProtocolStubFunction<(Error, ControllerBackedProtocol?), Bool> where M1.MatchedType == Error, M2.OptionalMatchedType == ControllerBackedProtocol {
	        let matchers: [Cuckoo.ParameterMatcher<(Error, ControllerBackedProtocol?)>] = [wrap(matchable: error) { $0.0 }, wrap(matchable: view) { $0.1 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockPhoneVerificationWireframeProtocol.self, method: "present(error: Error, from: ControllerBackedProtocol?) -> Bool", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_PhoneVerificationWireframeProtocol: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func showNext<M1: Cuckoo.OptionalMatchable>(from view: M1) -> Cuckoo.__DoNotUse<(PhoneVerificationViewProtocol?), Void> where M1.OptionalMatchedType == PhoneVerificationViewProtocol {
	        let matchers: [Cuckoo.ParameterMatcher<(PhoneVerificationViewProtocol?)>] = [wrap(matchable: view) { $0 }]
	        return cuckoo_manager.verify("showNext(from: PhoneVerificationViewProtocol?)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func present<M1: Cuckoo.OptionalMatchable, M2: Cuckoo.OptionalMatchable, M3: Cuckoo.OptionalMatchable, M4: Cuckoo.OptionalMatchable>(message: M1, title: M2, closeAction: M3, from view: M4) -> Cuckoo.__DoNotUse<(String?, String?, String?, ControllerBackedProtocol?), Void> where M1.OptionalMatchedType == String, M2.OptionalMatchedType == String, M3.OptionalMatchedType == String, M4.OptionalMatchedType == ControllerBackedProtocol {
	        let matchers: [Cuckoo.ParameterMatcher<(String?, String?, String?, ControllerBackedProtocol?)>] = [wrap(matchable: message) { $0.0 }, wrap(matchable: title) { $0.1 }, wrap(matchable: closeAction) { $0.2 }, wrap(matchable: view) { $0.3 }]
	        return cuckoo_manager.verify("present(message: String?, title: String?, closeAction: String?, from: ControllerBackedProtocol?)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func present<M1: Cuckoo.OptionalMatchable, M2: Cuckoo.OptionalMatchable, M3: Cuckoo.Matchable, M4: Cuckoo.OptionalMatchable>(message: M1, title: M2, actions: M3, from view: M4) -> Cuckoo.__DoNotUse<(String?, String?, [AlertPresentableAction], ControllerBackedProtocol?), Void> where M1.OptionalMatchedType == String, M2.OptionalMatchedType == String, M3.MatchedType == [AlertPresentableAction], M4.OptionalMatchedType == ControllerBackedProtocol {
	        let matchers: [Cuckoo.ParameterMatcher<(String?, String?, [AlertPresentableAction], ControllerBackedProtocol?)>] = [wrap(matchable: message) { $0.0 }, wrap(matchable: title) { $0.1 }, wrap(matchable: actions) { $0.2 }, wrap(matchable: view) { $0.3 }]
	        return cuckoo_manager.verify("present(message: String?, title: String?, actions: [AlertPresentableAction], from: ControllerBackedProtocol?)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func present<M1: Cuckoo.Matchable, M2: Cuckoo.OptionalMatchable>(error: M1, from view: M2) -> Cuckoo.__DoNotUse<(Error, ControllerBackedProtocol?), Bool> where M1.MatchedType == Error, M2.OptionalMatchedType == ControllerBackedProtocol {
	        let matchers: [Cuckoo.ParameterMatcher<(Error, ControllerBackedProtocol?)>] = [wrap(matchable: error) { $0.0 }, wrap(matchable: view) { $0.1 }]
	        return cuckoo_manager.verify("present(error: Error, from: ControllerBackedProtocol?) -> Bool", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

 class PhoneVerificationWireframeProtocolStub: PhoneVerificationWireframeProtocol {
    

    

    
     func showNext(from view: PhoneVerificationViewProtocol?)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func present(message: String?, title: String?, closeAction: String?, from view: ControllerBackedProtocol?)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func present(message: String?, title: String?, actions: [AlertPresentableAction], from view: ControllerBackedProtocol?)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func present(error: Error, from view: ControllerBackedProtocol?) -> Bool  {
        return DefaultValueRegistry.defaultValue(for: (Bool).self)
    }
    
}


import Cuckoo
@testable import SoraPassport

import Foundation


 class MockProfileViewProtocol: ProfileViewProtocol, Cuckoo.ProtocolMock {
    
     typealias MocksType = ProfileViewProtocol
    
     typealias Stubbing = __StubbingProxy_ProfileViewProtocol
     typealias Verification = __VerificationProxy_ProfileViewProtocol

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: ProfileViewProtocol?

     func enableDefaultImplementation(_ stub: ProfileViewProtocol) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    
    
    
     var controller: UIViewController {
        get {
            return cuckoo_manager.getter("controller",
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.controller)
        }
        
    }
    

    

    
    
    
     func didLoad(userViewModel: ProfileUserViewModelProtocol)  {
        
    return cuckoo_manager.call("didLoad(userViewModel: ProfileUserViewModelProtocol)",
            parameters: (userViewModel),
            escapingParameters: (userViewModel),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.didLoad(userViewModel: userViewModel))
        
    }
    
    
    
     func didLoad(optionViewModels: [ProfileOptionViewModelProtocol])  {
        
    return cuckoo_manager.call("didLoad(optionViewModels: [ProfileOptionViewModelProtocol])",
            parameters: (optionViewModels),
            escapingParameters: (optionViewModels),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.didLoad(optionViewModels: optionViewModels))
        
    }
    

	 struct __StubbingProxy_ProfileViewProtocol: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    var controller: Cuckoo.ProtocolToBeStubbedReadOnlyProperty<MockProfileViewProtocol, UIViewController> {
	        return .init(manager: cuckoo_manager, name: "controller")
	    }
	    
	    
	    func didLoad<M1: Cuckoo.Matchable>(userViewModel: M1) -> Cuckoo.ProtocolStubNoReturnFunction<(ProfileUserViewModelProtocol)> where M1.MatchedType == ProfileUserViewModelProtocol {
	        let matchers: [Cuckoo.ParameterMatcher<(ProfileUserViewModelProtocol)>] = [wrap(matchable: userViewModel) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockProfileViewProtocol.self, method: "didLoad(userViewModel: ProfileUserViewModelProtocol)", parameterMatchers: matchers))
	    }
	    
	    func didLoad<M1: Cuckoo.Matchable>(optionViewModels: M1) -> Cuckoo.ProtocolStubNoReturnFunction<([ProfileOptionViewModelProtocol])> where M1.MatchedType == [ProfileOptionViewModelProtocol] {
	        let matchers: [Cuckoo.ParameterMatcher<([ProfileOptionViewModelProtocol])>] = [wrap(matchable: optionViewModels) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockProfileViewProtocol.self, method: "didLoad(optionViewModels: [ProfileOptionViewModelProtocol])", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_ProfileViewProtocol: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	    
	    var controller: Cuckoo.VerifyReadOnlyProperty<UIViewController> {
	        return .init(manager: cuckoo_manager, name: "controller", callMatcher: callMatcher, sourceLocation: sourceLocation)
	    }
	    
	
	    
	    @discardableResult
	    func didLoad<M1: Cuckoo.Matchable>(userViewModel: M1) -> Cuckoo.__DoNotUse<(ProfileUserViewModelProtocol), Void> where M1.MatchedType == ProfileUserViewModelProtocol {
	        let matchers: [Cuckoo.ParameterMatcher<(ProfileUserViewModelProtocol)>] = [wrap(matchable: userViewModel) { $0 }]
	        return cuckoo_manager.verify("didLoad(userViewModel: ProfileUserViewModelProtocol)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func didLoad<M1: Cuckoo.Matchable>(optionViewModels: M1) -> Cuckoo.__DoNotUse<([ProfileOptionViewModelProtocol]), Void> where M1.MatchedType == [ProfileOptionViewModelProtocol] {
	        let matchers: [Cuckoo.ParameterMatcher<([ProfileOptionViewModelProtocol])>] = [wrap(matchable: optionViewModels) { $0 }]
	        return cuckoo_manager.verify("didLoad(optionViewModels: [ProfileOptionViewModelProtocol])", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

 class ProfileViewProtocolStub: ProfileViewProtocol {
    
    
     var controller: UIViewController {
        get {
            return DefaultValueRegistry.defaultValue(for: (UIViewController).self)
        }
        
    }
    

    

    
     func didLoad(userViewModel: ProfileUserViewModelProtocol)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func didLoad(optionViewModels: [ProfileOptionViewModelProtocol])   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
}



 class MockProfilePresenterProtocol: ProfilePresenterProtocol, Cuckoo.ProtocolMock {
    
     typealias MocksType = ProfilePresenterProtocol
    
     typealias Stubbing = __StubbingProxy_ProfilePresenterProtocol
     typealias Verification = __VerificationProxy_ProfilePresenterProtocol

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: ProfilePresenterProtocol?

     func enableDefaultImplementation(_ stub: ProfilePresenterProtocol) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    

    

    
    
    
     func viewIsReady()  {
        
    return cuckoo_manager.call("viewIsReady()",
            parameters: (),
            escapingParameters: (),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.viewIsReady())
        
    }
    
    
    
     func viewDidAppear()  {
        
    return cuckoo_manager.call("viewDidAppear()",
            parameters: (),
            escapingParameters: (),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.viewDidAppear())
        
    }
    
    
    
     func activateUserDetails()  {
        
    return cuckoo_manager.call("activateUserDetails()",
            parameters: (),
            escapingParameters: (),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.activateUserDetails())
        
    }
    
    
    
     func activateOption(at index: UInt)  {
        
    return cuckoo_manager.call("activateOption(at: UInt)",
            parameters: (index),
            escapingParameters: (index),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.activateOption(at: index))
        
    }
    
    
    
     func activateHelp()  {
        
    return cuckoo_manager.call("activateHelp()",
            parameters: (),
            escapingParameters: (),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.activateHelp())
        
    }
    

	 struct __StubbingProxy_ProfilePresenterProtocol: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func viewIsReady() -> Cuckoo.ProtocolStubNoReturnFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockProfilePresenterProtocol.self, method: "viewIsReady()", parameterMatchers: matchers))
	    }
	    
	    func viewDidAppear() -> Cuckoo.ProtocolStubNoReturnFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockProfilePresenterProtocol.self, method: "viewDidAppear()", parameterMatchers: matchers))
	    }
	    
	    func activateUserDetails() -> Cuckoo.ProtocolStubNoReturnFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockProfilePresenterProtocol.self, method: "activateUserDetails()", parameterMatchers: matchers))
	    }
	    
	    func activateOption<M1: Cuckoo.Matchable>(at index: M1) -> Cuckoo.ProtocolStubNoReturnFunction<(UInt)> where M1.MatchedType == UInt {
	        let matchers: [Cuckoo.ParameterMatcher<(UInt)>] = [wrap(matchable: index) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockProfilePresenterProtocol.self, method: "activateOption(at: UInt)", parameterMatchers: matchers))
	    }
	    
	    func activateHelp() -> Cuckoo.ProtocolStubNoReturnFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockProfilePresenterProtocol.self, method: "activateHelp()", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_ProfilePresenterProtocol: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func viewIsReady() -> Cuckoo.__DoNotUse<(), Void> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("viewIsReady()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func viewDidAppear() -> Cuckoo.__DoNotUse<(), Void> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("viewDidAppear()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func activateUserDetails() -> Cuckoo.__DoNotUse<(), Void> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("activateUserDetails()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func activateOption<M1: Cuckoo.Matchable>(at index: M1) -> Cuckoo.__DoNotUse<(UInt), Void> where M1.MatchedType == UInt {
	        let matchers: [Cuckoo.ParameterMatcher<(UInt)>] = [wrap(matchable: index) { $0 }]
	        return cuckoo_manager.verify("activateOption(at: UInt)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func activateHelp() -> Cuckoo.__DoNotUse<(), Void> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("activateHelp()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

 class ProfilePresenterProtocolStub: ProfilePresenterProtocol {
    

    

    
     func viewIsReady()   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func viewDidAppear()   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func activateUserDetails()   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func activateOption(at index: UInt)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func activateHelp()   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
}



 class MockProfileInteractorInputProtocol: ProfileInteractorInputProtocol, Cuckoo.ProtocolMock {
    
     typealias MocksType = ProfileInteractorInputProtocol
    
     typealias Stubbing = __StubbingProxy_ProfileInteractorInputProtocol
     typealias Verification = __VerificationProxy_ProfileInteractorInputProtocol

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: ProfileInteractorInputProtocol?

     func enableDefaultImplementation(_ stub: ProfileInteractorInputProtocol) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    

    

    
    
    
     func setup()  {
        
    return cuckoo_manager.call("setup()",
            parameters: (),
            escapingParameters: (),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.setup())
        
    }
    
    
    
     func refreshUser()  {
        
    return cuckoo_manager.call("refreshUser()",
            parameters: (),
            escapingParameters: (),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.refreshUser())
        
    }
    
    
    
     func refreshVotes()  {
        
    return cuckoo_manager.call("refreshVotes()",
            parameters: (),
            escapingParameters: (),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.refreshVotes())
        
    }
    
    
    
     func refreshReputation()  {
        
    return cuckoo_manager.call("refreshReputation()",
            parameters: (),
            escapingParameters: (),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.refreshReputation())
        
    }
    

	 struct __StubbingProxy_ProfileInteractorInputProtocol: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func setup() -> Cuckoo.ProtocolStubNoReturnFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockProfileInteractorInputProtocol.self, method: "setup()", parameterMatchers: matchers))
	    }
	    
	    func refreshUser() -> Cuckoo.ProtocolStubNoReturnFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockProfileInteractorInputProtocol.self, method: "refreshUser()", parameterMatchers: matchers))
	    }
	    
	    func refreshVotes() -> Cuckoo.ProtocolStubNoReturnFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockProfileInteractorInputProtocol.self, method: "refreshVotes()", parameterMatchers: matchers))
	    }
	    
	    func refreshReputation() -> Cuckoo.ProtocolStubNoReturnFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockProfileInteractorInputProtocol.self, method: "refreshReputation()", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_ProfileInteractorInputProtocol: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func setup() -> Cuckoo.__DoNotUse<(), Void> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("setup()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func refreshUser() -> Cuckoo.__DoNotUse<(), Void> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("refreshUser()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func refreshVotes() -> Cuckoo.__DoNotUse<(), Void> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("refreshVotes()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func refreshReputation() -> Cuckoo.__DoNotUse<(), Void> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("refreshReputation()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

 class ProfileInteractorInputProtocolStub: ProfileInteractorInputProtocol {
    

    

    
     func setup()   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func refreshUser()   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func refreshVotes()   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func refreshReputation()   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
}



 class MockProfileInteractorOutputProtocol: ProfileInteractorOutputProtocol, Cuckoo.ProtocolMock {
    
     typealias MocksType = ProfileInteractorOutputProtocol
    
     typealias Stubbing = __StubbingProxy_ProfileInteractorOutputProtocol
     typealias Verification = __VerificationProxy_ProfileInteractorOutputProtocol

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: ProfileInteractorOutputProtocol?

     func enableDefaultImplementation(_ stub: ProfileInteractorOutputProtocol) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    

    

    
    
    
     func didReceive(userData: UserData)  {
        
    return cuckoo_manager.call("didReceive(userData: UserData)",
            parameters: (userData),
            escapingParameters: (userData),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.didReceive(userData: userData))
        
    }
    
    
    
     func didReceiveUserDataProvider(error: Error)  {
        
    return cuckoo_manager.call("didReceiveUserDataProvider(error: Error)",
            parameters: (error),
            escapingParameters: (error),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.didReceiveUserDataProvider(error: error))
        
    }
    
    
    
     func didReceive(votesData: VotesData)  {
        
    return cuckoo_manager.call("didReceive(votesData: VotesData)",
            parameters: (votesData),
            escapingParameters: (votesData),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.didReceive(votesData: votesData))
        
    }
    
    
    
     func didReceiveVotesDataProvider(error: Error)  {
        
    return cuckoo_manager.call("didReceiveVotesDataProvider(error: Error)",
            parameters: (error),
            escapingParameters: (error),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.didReceiveVotesDataProvider(error: error))
        
    }
    
    
    
     func didReceive(reputationData: ReputationData)  {
        
    return cuckoo_manager.call("didReceive(reputationData: ReputationData)",
            parameters: (reputationData),
            escapingParameters: (reputationData),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.didReceive(reputationData: reputationData))
        
    }
    
    
    
     func didReceiveReputationDataProvider(error: Error)  {
        
    return cuckoo_manager.call("didReceiveReputationDataProvider(error: Error)",
            parameters: (error),
            escapingParameters: (error),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.didReceiveReputationDataProvider(error: error))
        
    }
    

	 struct __StubbingProxy_ProfileInteractorOutputProtocol: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func didReceive<M1: Cuckoo.Matchable>(userData: M1) -> Cuckoo.ProtocolStubNoReturnFunction<(UserData)> where M1.MatchedType == UserData {
	        let matchers: [Cuckoo.ParameterMatcher<(UserData)>] = [wrap(matchable: userData) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockProfileInteractorOutputProtocol.self, method: "didReceive(userData: UserData)", parameterMatchers: matchers))
	    }
	    
	    func didReceiveUserDataProvider<M1: Cuckoo.Matchable>(error: M1) -> Cuckoo.ProtocolStubNoReturnFunction<(Error)> where M1.MatchedType == Error {
	        let matchers: [Cuckoo.ParameterMatcher<(Error)>] = [wrap(matchable: error) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockProfileInteractorOutputProtocol.self, method: "didReceiveUserDataProvider(error: Error)", parameterMatchers: matchers))
	    }
	    
	    func didReceive<M1: Cuckoo.Matchable>(votesData: M1) -> Cuckoo.ProtocolStubNoReturnFunction<(VotesData)> where M1.MatchedType == VotesData {
	        let matchers: [Cuckoo.ParameterMatcher<(VotesData)>] = [wrap(matchable: votesData) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockProfileInteractorOutputProtocol.self, method: "didReceive(votesData: VotesData)", parameterMatchers: matchers))
	    }
	    
	    func didReceiveVotesDataProvider<M1: Cuckoo.Matchable>(error: M1) -> Cuckoo.ProtocolStubNoReturnFunction<(Error)> where M1.MatchedType == Error {
	        let matchers: [Cuckoo.ParameterMatcher<(Error)>] = [wrap(matchable: error) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockProfileInteractorOutputProtocol.self, method: "didReceiveVotesDataProvider(error: Error)", parameterMatchers: matchers))
	    }
	    
	    func didReceive<M1: Cuckoo.Matchable>(reputationData: M1) -> Cuckoo.ProtocolStubNoReturnFunction<(ReputationData)> where M1.MatchedType == ReputationData {
	        let matchers: [Cuckoo.ParameterMatcher<(ReputationData)>] = [wrap(matchable: reputationData) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockProfileInteractorOutputProtocol.self, method: "didReceive(reputationData: ReputationData)", parameterMatchers: matchers))
	    }
	    
	    func didReceiveReputationDataProvider<M1: Cuckoo.Matchable>(error: M1) -> Cuckoo.ProtocolStubNoReturnFunction<(Error)> where M1.MatchedType == Error {
	        let matchers: [Cuckoo.ParameterMatcher<(Error)>] = [wrap(matchable: error) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockProfileInteractorOutputProtocol.self, method: "didReceiveReputationDataProvider(error: Error)", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_ProfileInteractorOutputProtocol: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func didReceive<M1: Cuckoo.Matchable>(userData: M1) -> Cuckoo.__DoNotUse<(UserData), Void> where M1.MatchedType == UserData {
	        let matchers: [Cuckoo.ParameterMatcher<(UserData)>] = [wrap(matchable: userData) { $0 }]
	        return cuckoo_manager.verify("didReceive(userData: UserData)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func didReceiveUserDataProvider<M1: Cuckoo.Matchable>(error: M1) -> Cuckoo.__DoNotUse<(Error), Void> where M1.MatchedType == Error {
	        let matchers: [Cuckoo.ParameterMatcher<(Error)>] = [wrap(matchable: error) { $0 }]
	        return cuckoo_manager.verify("didReceiveUserDataProvider(error: Error)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func didReceive<M1: Cuckoo.Matchable>(votesData: M1) -> Cuckoo.__DoNotUse<(VotesData), Void> where M1.MatchedType == VotesData {
	        let matchers: [Cuckoo.ParameterMatcher<(VotesData)>] = [wrap(matchable: votesData) { $0 }]
	        return cuckoo_manager.verify("didReceive(votesData: VotesData)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func didReceiveVotesDataProvider<M1: Cuckoo.Matchable>(error: M1) -> Cuckoo.__DoNotUse<(Error), Void> where M1.MatchedType == Error {
	        let matchers: [Cuckoo.ParameterMatcher<(Error)>] = [wrap(matchable: error) { $0 }]
	        return cuckoo_manager.verify("didReceiveVotesDataProvider(error: Error)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func didReceive<M1: Cuckoo.Matchable>(reputationData: M1) -> Cuckoo.__DoNotUse<(ReputationData), Void> where M1.MatchedType == ReputationData {
	        let matchers: [Cuckoo.ParameterMatcher<(ReputationData)>] = [wrap(matchable: reputationData) { $0 }]
	        return cuckoo_manager.verify("didReceive(reputationData: ReputationData)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func didReceiveReputationDataProvider<M1: Cuckoo.Matchable>(error: M1) -> Cuckoo.__DoNotUse<(Error), Void> where M1.MatchedType == Error {
	        let matchers: [Cuckoo.ParameterMatcher<(Error)>] = [wrap(matchable: error) { $0 }]
	        return cuckoo_manager.verify("didReceiveReputationDataProvider(error: Error)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

 class ProfileInteractorOutputProtocolStub: ProfileInteractorOutputProtocol {
    

    

    
     func didReceive(userData: UserData)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func didReceiveUserDataProvider(error: Error)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func didReceive(votesData: VotesData)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func didReceiveVotesDataProvider(error: Error)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func didReceive(reputationData: ReputationData)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func didReceiveReputationDataProvider(error: Error)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
}



 class MockProfileWireframeProtocol: ProfileWireframeProtocol, Cuckoo.ProtocolMock {
    
     typealias MocksType = ProfileWireframeProtocol
    
     typealias Stubbing = __StubbingProxy_ProfileWireframeProtocol
     typealias Verification = __VerificationProxy_ProfileWireframeProtocol

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: ProfileWireframeProtocol?

     func enableDefaultImplementation(_ stub: ProfileWireframeProtocol) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    

    

    
    
    
     func showReputationView(from view: ProfileViewProtocol?)  {
        
    return cuckoo_manager.call("showReputationView(from: ProfileViewProtocol?)",
            parameters: (view),
            escapingParameters: (view),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.showReputationView(from: view))
        
    }
    
    
    
     func showVotesHistoryView(from view: ProfileViewProtocol?)  {
        
    return cuckoo_manager.call("showVotesHistoryView(from: ProfileViewProtocol?)",
            parameters: (view),
            escapingParameters: (view),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.showVotesHistoryView(from: view))
        
    }
    
    
    
     func showPersonalDetailsView(from view: ProfileViewProtocol?)  {
        
    return cuckoo_manager.call("showPersonalDetailsView(from: ProfileViewProtocol?)",
            parameters: (view),
            escapingParameters: (view),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.showPersonalDetailsView(from: view))
        
    }
    
    
    
     func showPassphraseView(from view: ProfileViewProtocol?)  {
        
    return cuckoo_manager.call("showPassphraseView(from: ProfileViewProtocol?)",
            parameters: (view),
            escapingParameters: (view),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.showPassphraseView(from: view))
        
    }
    
    
    
     func showAbout(from view: ProfileViewProtocol?)  {
        
    return cuckoo_manager.call("showAbout(from: ProfileViewProtocol?)",
            parameters: (view),
            escapingParameters: (view),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.showAbout(from: view))
        
    }
    
    
    
     func present(error: Error, from view: ControllerBackedProtocol?) -> Bool {
        
    return cuckoo_manager.call("present(error: Error, from: ControllerBackedProtocol?) -> Bool",
            parameters: (error, view),
            escapingParameters: (error, view),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.present(error: error, from: view))
        
    }
    
    
    
     func present(message: String?, title: String?, closeAction: String?, from view: ControllerBackedProtocol?)  {
        
    return cuckoo_manager.call("present(message: String?, title: String?, closeAction: String?, from: ControllerBackedProtocol?)",
            parameters: (message, title, closeAction, view),
            escapingParameters: (message, title, closeAction, view),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.present(message: message, title: title, closeAction: closeAction, from: view))
        
    }
    
    
    
     func present(message: String?, title: String?, actions: [AlertPresentableAction], from view: ControllerBackedProtocol?)  {
        
    return cuckoo_manager.call("present(message: String?, title: String?, actions: [AlertPresentableAction], from: ControllerBackedProtocol?)",
            parameters: (message, title, actions, view),
            escapingParameters: (message, title, actions, view),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.present(message: message, title: title, actions: actions, from: view))
        
    }
    
    
    
     func showWeb(url: URL, from view: ControllerBackedProtocol, style: WebPresentableStyle)  {
        
    return cuckoo_manager.call("showWeb(url: URL, from: ControllerBackedProtocol, style: WebPresentableStyle)",
            parameters: (url, view, style),
            escapingParameters: (url, view, style),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.showWeb(url: url, from: view, style: style))
        
    }
    

	 struct __StubbingProxy_ProfileWireframeProtocol: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func showReputationView<M1: Cuckoo.OptionalMatchable>(from view: M1) -> Cuckoo.ProtocolStubNoReturnFunction<(ProfileViewProtocol?)> where M1.OptionalMatchedType == ProfileViewProtocol {
	        let matchers: [Cuckoo.ParameterMatcher<(ProfileViewProtocol?)>] = [wrap(matchable: view) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockProfileWireframeProtocol.self, method: "showReputationView(from: ProfileViewProtocol?)", parameterMatchers: matchers))
	    }
	    
	    func showVotesHistoryView<M1: Cuckoo.OptionalMatchable>(from view: M1) -> Cuckoo.ProtocolStubNoReturnFunction<(ProfileViewProtocol?)> where M1.OptionalMatchedType == ProfileViewProtocol {
	        let matchers: [Cuckoo.ParameterMatcher<(ProfileViewProtocol?)>] = [wrap(matchable: view) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockProfileWireframeProtocol.self, method: "showVotesHistoryView(from: ProfileViewProtocol?)", parameterMatchers: matchers))
	    }
	    
	    func showPersonalDetailsView<M1: Cuckoo.OptionalMatchable>(from view: M1) -> Cuckoo.ProtocolStubNoReturnFunction<(ProfileViewProtocol?)> where M1.OptionalMatchedType == ProfileViewProtocol {
	        let matchers: [Cuckoo.ParameterMatcher<(ProfileViewProtocol?)>] = [wrap(matchable: view) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockProfileWireframeProtocol.self, method: "showPersonalDetailsView(from: ProfileViewProtocol?)", parameterMatchers: matchers))
	    }
	    
	    func showPassphraseView<M1: Cuckoo.OptionalMatchable>(from view: M1) -> Cuckoo.ProtocolStubNoReturnFunction<(ProfileViewProtocol?)> where M1.OptionalMatchedType == ProfileViewProtocol {
	        let matchers: [Cuckoo.ParameterMatcher<(ProfileViewProtocol?)>] = [wrap(matchable: view) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockProfileWireframeProtocol.self, method: "showPassphraseView(from: ProfileViewProtocol?)", parameterMatchers: matchers))
	    }
	    
	    func showAbout<M1: Cuckoo.OptionalMatchable>(from view: M1) -> Cuckoo.ProtocolStubNoReturnFunction<(ProfileViewProtocol?)> where M1.OptionalMatchedType == ProfileViewProtocol {
	        let matchers: [Cuckoo.ParameterMatcher<(ProfileViewProtocol?)>] = [wrap(matchable: view) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockProfileWireframeProtocol.self, method: "showAbout(from: ProfileViewProtocol?)", parameterMatchers: matchers))
	    }
	    
	    func present<M1: Cuckoo.Matchable, M2: Cuckoo.OptionalMatchable>(error: M1, from view: M2) -> Cuckoo.ProtocolStubFunction<(Error, ControllerBackedProtocol?), Bool> where M1.MatchedType == Error, M2.OptionalMatchedType == ControllerBackedProtocol {
	        let matchers: [Cuckoo.ParameterMatcher<(Error, ControllerBackedProtocol?)>] = [wrap(matchable: error) { $0.0 }, wrap(matchable: view) { $0.1 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockProfileWireframeProtocol.self, method: "present(error: Error, from: ControllerBackedProtocol?) -> Bool", parameterMatchers: matchers))
	    }
	    
	    func present<M1: Cuckoo.OptionalMatchable, M2: Cuckoo.OptionalMatchable, M3: Cuckoo.OptionalMatchable, M4: Cuckoo.OptionalMatchable>(message: M1, title: M2, closeAction: M3, from view: M4) -> Cuckoo.ProtocolStubNoReturnFunction<(String?, String?, String?, ControllerBackedProtocol?)> where M1.OptionalMatchedType == String, M2.OptionalMatchedType == String, M3.OptionalMatchedType == String, M4.OptionalMatchedType == ControllerBackedProtocol {
	        let matchers: [Cuckoo.ParameterMatcher<(String?, String?, String?, ControllerBackedProtocol?)>] = [wrap(matchable: message) { $0.0 }, wrap(matchable: title) { $0.1 }, wrap(matchable: closeAction) { $0.2 }, wrap(matchable: view) { $0.3 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockProfileWireframeProtocol.self, method: "present(message: String?, title: String?, closeAction: String?, from: ControllerBackedProtocol?)", parameterMatchers: matchers))
	    }
	    
	    func present<M1: Cuckoo.OptionalMatchable, M2: Cuckoo.OptionalMatchable, M3: Cuckoo.Matchable, M4: Cuckoo.OptionalMatchable>(message: M1, title: M2, actions: M3, from view: M4) -> Cuckoo.ProtocolStubNoReturnFunction<(String?, String?, [AlertPresentableAction], ControllerBackedProtocol?)> where M1.OptionalMatchedType == String, M2.OptionalMatchedType == String, M3.MatchedType == [AlertPresentableAction], M4.OptionalMatchedType == ControllerBackedProtocol {
	        let matchers: [Cuckoo.ParameterMatcher<(String?, String?, [AlertPresentableAction], ControllerBackedProtocol?)>] = [wrap(matchable: message) { $0.0 }, wrap(matchable: title) { $0.1 }, wrap(matchable: actions) { $0.2 }, wrap(matchable: view) { $0.3 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockProfileWireframeProtocol.self, method: "present(message: String?, title: String?, actions: [AlertPresentableAction], from: ControllerBackedProtocol?)", parameterMatchers: matchers))
	    }
	    
	    func showWeb<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable, M3: Cuckoo.Matchable>(url: M1, from view: M2, style: M3) -> Cuckoo.ProtocolStubNoReturnFunction<(URL, ControllerBackedProtocol, WebPresentableStyle)> where M1.MatchedType == URL, M2.MatchedType == ControllerBackedProtocol, M3.MatchedType == WebPresentableStyle {
	        let matchers: [Cuckoo.ParameterMatcher<(URL, ControllerBackedProtocol, WebPresentableStyle)>] = [wrap(matchable: url) { $0.0 }, wrap(matchable: view) { $0.1 }, wrap(matchable: style) { $0.2 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockProfileWireframeProtocol.self, method: "showWeb(url: URL, from: ControllerBackedProtocol, style: WebPresentableStyle)", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_ProfileWireframeProtocol: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func showReputationView<M1: Cuckoo.OptionalMatchable>(from view: M1) -> Cuckoo.__DoNotUse<(ProfileViewProtocol?), Void> where M1.OptionalMatchedType == ProfileViewProtocol {
	        let matchers: [Cuckoo.ParameterMatcher<(ProfileViewProtocol?)>] = [wrap(matchable: view) { $0 }]
	        return cuckoo_manager.verify("showReputationView(from: ProfileViewProtocol?)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func showVotesHistoryView<M1: Cuckoo.OptionalMatchable>(from view: M1) -> Cuckoo.__DoNotUse<(ProfileViewProtocol?), Void> where M1.OptionalMatchedType == ProfileViewProtocol {
	        let matchers: [Cuckoo.ParameterMatcher<(ProfileViewProtocol?)>] = [wrap(matchable: view) { $0 }]
	        return cuckoo_manager.verify("showVotesHistoryView(from: ProfileViewProtocol?)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func showPersonalDetailsView<M1: Cuckoo.OptionalMatchable>(from view: M1) -> Cuckoo.__DoNotUse<(ProfileViewProtocol?), Void> where M1.OptionalMatchedType == ProfileViewProtocol {
	        let matchers: [Cuckoo.ParameterMatcher<(ProfileViewProtocol?)>] = [wrap(matchable: view) { $0 }]
	        return cuckoo_manager.verify("showPersonalDetailsView(from: ProfileViewProtocol?)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func showPassphraseView<M1: Cuckoo.OptionalMatchable>(from view: M1) -> Cuckoo.__DoNotUse<(ProfileViewProtocol?), Void> where M1.OptionalMatchedType == ProfileViewProtocol {
	        let matchers: [Cuckoo.ParameterMatcher<(ProfileViewProtocol?)>] = [wrap(matchable: view) { $0 }]
	        return cuckoo_manager.verify("showPassphraseView(from: ProfileViewProtocol?)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func showAbout<M1: Cuckoo.OptionalMatchable>(from view: M1) -> Cuckoo.__DoNotUse<(ProfileViewProtocol?), Void> where M1.OptionalMatchedType == ProfileViewProtocol {
	        let matchers: [Cuckoo.ParameterMatcher<(ProfileViewProtocol?)>] = [wrap(matchable: view) { $0 }]
	        return cuckoo_manager.verify("showAbout(from: ProfileViewProtocol?)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func present<M1: Cuckoo.Matchable, M2: Cuckoo.OptionalMatchable>(error: M1, from view: M2) -> Cuckoo.__DoNotUse<(Error, ControllerBackedProtocol?), Bool> where M1.MatchedType == Error, M2.OptionalMatchedType == ControllerBackedProtocol {
	        let matchers: [Cuckoo.ParameterMatcher<(Error, ControllerBackedProtocol?)>] = [wrap(matchable: error) { $0.0 }, wrap(matchable: view) { $0.1 }]
	        return cuckoo_manager.verify("present(error: Error, from: ControllerBackedProtocol?) -> Bool", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func present<M1: Cuckoo.OptionalMatchable, M2: Cuckoo.OptionalMatchable, M3: Cuckoo.OptionalMatchable, M4: Cuckoo.OptionalMatchable>(message: M1, title: M2, closeAction: M3, from view: M4) -> Cuckoo.__DoNotUse<(String?, String?, String?, ControllerBackedProtocol?), Void> where M1.OptionalMatchedType == String, M2.OptionalMatchedType == String, M3.OptionalMatchedType == String, M4.OptionalMatchedType == ControllerBackedProtocol {
	        let matchers: [Cuckoo.ParameterMatcher<(String?, String?, String?, ControllerBackedProtocol?)>] = [wrap(matchable: message) { $0.0 }, wrap(matchable: title) { $0.1 }, wrap(matchable: closeAction) { $0.2 }, wrap(matchable: view) { $0.3 }]
	        return cuckoo_manager.verify("present(message: String?, title: String?, closeAction: String?, from: ControllerBackedProtocol?)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func present<M1: Cuckoo.OptionalMatchable, M2: Cuckoo.OptionalMatchable, M3: Cuckoo.Matchable, M4: Cuckoo.OptionalMatchable>(message: M1, title: M2, actions: M3, from view: M4) -> Cuckoo.__DoNotUse<(String?, String?, [AlertPresentableAction], ControllerBackedProtocol?), Void> where M1.OptionalMatchedType == String, M2.OptionalMatchedType == String, M3.MatchedType == [AlertPresentableAction], M4.OptionalMatchedType == ControllerBackedProtocol {
	        let matchers: [Cuckoo.ParameterMatcher<(String?, String?, [AlertPresentableAction], ControllerBackedProtocol?)>] = [wrap(matchable: message) { $0.0 }, wrap(matchable: title) { $0.1 }, wrap(matchable: actions) { $0.2 }, wrap(matchable: view) { $0.3 }]
	        return cuckoo_manager.verify("present(message: String?, title: String?, actions: [AlertPresentableAction], from: ControllerBackedProtocol?)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func showWeb<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable, M3: Cuckoo.Matchable>(url: M1, from view: M2, style: M3) -> Cuckoo.__DoNotUse<(URL, ControllerBackedProtocol, WebPresentableStyle), Void> where M1.MatchedType == URL, M2.MatchedType == ControllerBackedProtocol, M3.MatchedType == WebPresentableStyle {
	        let matchers: [Cuckoo.ParameterMatcher<(URL, ControllerBackedProtocol, WebPresentableStyle)>] = [wrap(matchable: url) { $0.0 }, wrap(matchable: view) { $0.1 }, wrap(matchable: style) { $0.2 }]
	        return cuckoo_manager.verify("showWeb(url: URL, from: ControllerBackedProtocol, style: WebPresentableStyle)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

 class ProfileWireframeProtocolStub: ProfileWireframeProtocol {
    

    

    
     func showReputationView(from view: ProfileViewProtocol?)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func showVotesHistoryView(from view: ProfileViewProtocol?)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func showPersonalDetailsView(from view: ProfileViewProtocol?)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func showPassphraseView(from view: ProfileViewProtocol?)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func showAbout(from view: ProfileViewProtocol?)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func present(error: Error, from view: ControllerBackedProtocol?) -> Bool  {
        return DefaultValueRegistry.defaultValue(for: (Bool).self)
    }
    
     func present(message: String?, title: String?, closeAction: String?, from view: ControllerBackedProtocol?)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func present(message: String?, title: String?, actions: [AlertPresentableAction], from view: ControllerBackedProtocol?)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func showWeb(url: URL, from view: ControllerBackedProtocol, style: WebPresentableStyle)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
}


import Cuckoo
@testable import SoraPassport

import UIKit


 class MockProjectDetailsViewProtocol: ProjectDetailsViewProtocol, Cuckoo.ProtocolMock {
    
     typealias MocksType = ProjectDetailsViewProtocol
    
     typealias Stubbing = __StubbingProxy_ProjectDetailsViewProtocol
     typealias Verification = __VerificationProxy_ProjectDetailsViewProtocol

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: ProjectDetailsViewProtocol?

     func enableDefaultImplementation(_ stub: ProjectDetailsViewProtocol) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    
    
    
     var controller: UIViewController {
        get {
            return cuckoo_manager.getter("controller",
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.controller)
        }
        
    }
    

    

    
    
    
     func didReceive(votes: String)  {
        
    return cuckoo_manager.call("didReceive(votes: String)",
            parameters: (votes),
            escapingParameters: (votes),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.didReceive(votes: votes))
        
    }
    
    
    
     func didReceive(projectDetails: ProjectDetailsViewModelProtocol)  {
        
    return cuckoo_manager.call("didReceive(projectDetails: ProjectDetailsViewModelProtocol)",
            parameters: (projectDetails),
            escapingParameters: (projectDetails),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.didReceive(projectDetails: projectDetails))
        
    }
    

	 struct __StubbingProxy_ProjectDetailsViewProtocol: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    var controller: Cuckoo.ProtocolToBeStubbedReadOnlyProperty<MockProjectDetailsViewProtocol, UIViewController> {
	        return .init(manager: cuckoo_manager, name: "controller")
	    }
	    
	    
	    func didReceive<M1: Cuckoo.Matchable>(votes: M1) -> Cuckoo.ProtocolStubNoReturnFunction<(String)> where M1.MatchedType == String {
	        let matchers: [Cuckoo.ParameterMatcher<(String)>] = [wrap(matchable: votes) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockProjectDetailsViewProtocol.self, method: "didReceive(votes: String)", parameterMatchers: matchers))
	    }
	    
	    func didReceive<M1: Cuckoo.Matchable>(projectDetails: M1) -> Cuckoo.ProtocolStubNoReturnFunction<(ProjectDetailsViewModelProtocol)> where M1.MatchedType == ProjectDetailsViewModelProtocol {
	        let matchers: [Cuckoo.ParameterMatcher<(ProjectDetailsViewModelProtocol)>] = [wrap(matchable: projectDetails) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockProjectDetailsViewProtocol.self, method: "didReceive(projectDetails: ProjectDetailsViewModelProtocol)", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_ProjectDetailsViewProtocol: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	    
	    var controller: Cuckoo.VerifyReadOnlyProperty<UIViewController> {
	        return .init(manager: cuckoo_manager, name: "controller", callMatcher: callMatcher, sourceLocation: sourceLocation)
	    }
	    
	
	    
	    @discardableResult
	    func didReceive<M1: Cuckoo.Matchable>(votes: M1) -> Cuckoo.__DoNotUse<(String), Void> where M1.MatchedType == String {
	        let matchers: [Cuckoo.ParameterMatcher<(String)>] = [wrap(matchable: votes) { $0 }]
	        return cuckoo_manager.verify("didReceive(votes: String)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func didReceive<M1: Cuckoo.Matchable>(projectDetails: M1) -> Cuckoo.__DoNotUse<(ProjectDetailsViewModelProtocol), Void> where M1.MatchedType == ProjectDetailsViewModelProtocol {
	        let matchers: [Cuckoo.ParameterMatcher<(ProjectDetailsViewModelProtocol)>] = [wrap(matchable: projectDetails) { $0 }]
	        return cuckoo_manager.verify("didReceive(projectDetails: ProjectDetailsViewModelProtocol)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

 class ProjectDetailsViewProtocolStub: ProjectDetailsViewProtocol {
    
    
     var controller: UIViewController {
        get {
            return DefaultValueRegistry.defaultValue(for: (UIViewController).self)
        }
        
    }
    

    

    
     func didReceive(votes: String)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func didReceive(projectDetails: ProjectDetailsViewModelProtocol)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
}



 class MockProjectDetailsPresenterProtocol: ProjectDetailsPresenterProtocol, Cuckoo.ProtocolMock {
    
     typealias MocksType = ProjectDetailsPresenterProtocol
    
     typealias Stubbing = __StubbingProxy_ProjectDetailsPresenterProtocol
     typealias Verification = __VerificationProxy_ProjectDetailsPresenterProtocol

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: ProjectDetailsPresenterProtocol?

     func enableDefaultImplementation(_ stub: ProjectDetailsPresenterProtocol) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    

    

    
    
    
     func viewIsReady()  {
        
    return cuckoo_manager.call("viewIsReady()",
            parameters: (),
            escapingParameters: (),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.viewIsReady())
        
    }
    
    
    
     func activateVotes()  {
        
    return cuckoo_manager.call("activateVotes()",
            parameters: (),
            escapingParameters: (),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.activateVotes())
        
    }
    
    
    
     func activateGalleryItem(at index: Int, animatedFrom animatingView: UIView?)  {
        
    return cuckoo_manager.call("activateGalleryItem(at: Int, animatedFrom: UIView?)",
            parameters: (index, animatingView),
            escapingParameters: (index, animatingView),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.activateGalleryItem(at: index, animatedFrom: animatingView))
        
    }
    
    
    
     func activateClose()  {
        
    return cuckoo_manager.call("activateClose()",
            parameters: (),
            escapingParameters: (),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.activateClose())
        
    }
    

	 struct __StubbingProxy_ProjectDetailsPresenterProtocol: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func viewIsReady() -> Cuckoo.ProtocolStubNoReturnFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockProjectDetailsPresenterProtocol.self, method: "viewIsReady()", parameterMatchers: matchers))
	    }
	    
	    func activateVotes() -> Cuckoo.ProtocolStubNoReturnFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockProjectDetailsPresenterProtocol.self, method: "activateVotes()", parameterMatchers: matchers))
	    }
	    
	    func activateGalleryItem<M1: Cuckoo.Matchable, M2: Cuckoo.OptionalMatchable>(at index: M1, animatedFrom animatingView: M2) -> Cuckoo.ProtocolStubNoReturnFunction<(Int, UIView?)> where M1.MatchedType == Int, M2.OptionalMatchedType == UIView {
	        let matchers: [Cuckoo.ParameterMatcher<(Int, UIView?)>] = [wrap(matchable: index) { $0.0 }, wrap(matchable: animatingView) { $0.1 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockProjectDetailsPresenterProtocol.self, method: "activateGalleryItem(at: Int, animatedFrom: UIView?)", parameterMatchers: matchers))
	    }
	    
	    func activateClose() -> Cuckoo.ProtocolStubNoReturnFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockProjectDetailsPresenterProtocol.self, method: "activateClose()", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_ProjectDetailsPresenterProtocol: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func viewIsReady() -> Cuckoo.__DoNotUse<(), Void> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("viewIsReady()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func activateVotes() -> Cuckoo.__DoNotUse<(), Void> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("activateVotes()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func activateGalleryItem<M1: Cuckoo.Matchable, M2: Cuckoo.OptionalMatchable>(at index: M1, animatedFrom animatingView: M2) -> Cuckoo.__DoNotUse<(Int, UIView?), Void> where M1.MatchedType == Int, M2.OptionalMatchedType == UIView {
	        let matchers: [Cuckoo.ParameterMatcher<(Int, UIView?)>] = [wrap(matchable: index) { $0.0 }, wrap(matchable: animatingView) { $0.1 }]
	        return cuckoo_manager.verify("activateGalleryItem(at: Int, animatedFrom: UIView?)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func activateClose() -> Cuckoo.__DoNotUse<(), Void> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("activateClose()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

 class ProjectDetailsPresenterProtocolStub: ProjectDetailsPresenterProtocol {
    

    

    
     func viewIsReady()   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func activateVotes()   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func activateGalleryItem(at index: Int, animatedFrom animatingView: UIView?)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func activateClose()   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
}



 class MockProjectDetailsInteractorInputProtocol: ProjectDetailsInteractorInputProtocol, Cuckoo.ProtocolMock {
    
     typealias MocksType = ProjectDetailsInteractorInputProtocol
    
     typealias Stubbing = __StubbingProxy_ProjectDetailsInteractorInputProtocol
     typealias Verification = __VerificationProxy_ProjectDetailsInteractorInputProtocol

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: ProjectDetailsInteractorInputProtocol?

     func enableDefaultImplementation(_ stub: ProjectDetailsInteractorInputProtocol) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    

    

    
    
    
     func setup()  {
        
    return cuckoo_manager.call("setup()",
            parameters: (),
            escapingParameters: (),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.setup())
        
    }
    
    
    
     func refreshVotes()  {
        
    return cuckoo_manager.call("refreshVotes()",
            parameters: (),
            escapingParameters: (),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.refreshVotes())
        
    }
    
    
    
     func refreshProjectDetails()  {
        
    return cuckoo_manager.call("refreshProjectDetails()",
            parameters: (),
            escapingParameters: (),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.refreshProjectDetails())
        
    }
    
    
    
     func vote(for project: ProjectVote)  {
        
    return cuckoo_manager.call("vote(for: ProjectVote)",
            parameters: (project),
            escapingParameters: (project),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.vote(for: project))
        
    }
    
    
    
     func toggleFavorite(for projectId: String)  {
        
    return cuckoo_manager.call("toggleFavorite(for: String)",
            parameters: (projectId),
            escapingParameters: (projectId),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.toggleFavorite(for: projectId))
        
    }
    
    
    
     func markAsViewed(for projectId: String)  {
        
    return cuckoo_manager.call("markAsViewed(for: String)",
            parameters: (projectId),
            escapingParameters: (projectId),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.markAsViewed(for: projectId))
        
    }
    

	 struct __StubbingProxy_ProjectDetailsInteractorInputProtocol: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func setup() -> Cuckoo.ProtocolStubNoReturnFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockProjectDetailsInteractorInputProtocol.self, method: "setup()", parameterMatchers: matchers))
	    }
	    
	    func refreshVotes() -> Cuckoo.ProtocolStubNoReturnFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockProjectDetailsInteractorInputProtocol.self, method: "refreshVotes()", parameterMatchers: matchers))
	    }
	    
	    func refreshProjectDetails() -> Cuckoo.ProtocolStubNoReturnFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockProjectDetailsInteractorInputProtocol.self, method: "refreshProjectDetails()", parameterMatchers: matchers))
	    }
	    
	    func vote<M1: Cuckoo.Matchable>(for project: M1) -> Cuckoo.ProtocolStubNoReturnFunction<(ProjectVote)> where M1.MatchedType == ProjectVote {
	        let matchers: [Cuckoo.ParameterMatcher<(ProjectVote)>] = [wrap(matchable: project) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockProjectDetailsInteractorInputProtocol.self, method: "vote(for: ProjectVote)", parameterMatchers: matchers))
	    }
	    
	    func toggleFavorite<M1: Cuckoo.Matchable>(for projectId: M1) -> Cuckoo.ProtocolStubNoReturnFunction<(String)> where M1.MatchedType == String {
	        let matchers: [Cuckoo.ParameterMatcher<(String)>] = [wrap(matchable: projectId) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockProjectDetailsInteractorInputProtocol.self, method: "toggleFavorite(for: String)", parameterMatchers: matchers))
	    }
	    
	    func markAsViewed<M1: Cuckoo.Matchable>(for projectId: M1) -> Cuckoo.ProtocolStubNoReturnFunction<(String)> where M1.MatchedType == String {
	        let matchers: [Cuckoo.ParameterMatcher<(String)>] = [wrap(matchable: projectId) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockProjectDetailsInteractorInputProtocol.self, method: "markAsViewed(for: String)", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_ProjectDetailsInteractorInputProtocol: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func setup() -> Cuckoo.__DoNotUse<(), Void> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("setup()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func refreshVotes() -> Cuckoo.__DoNotUse<(), Void> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("refreshVotes()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func refreshProjectDetails() -> Cuckoo.__DoNotUse<(), Void> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("refreshProjectDetails()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func vote<M1: Cuckoo.Matchable>(for project: M1) -> Cuckoo.__DoNotUse<(ProjectVote), Void> where M1.MatchedType == ProjectVote {
	        let matchers: [Cuckoo.ParameterMatcher<(ProjectVote)>] = [wrap(matchable: project) { $0 }]
	        return cuckoo_manager.verify("vote(for: ProjectVote)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func toggleFavorite<M1: Cuckoo.Matchable>(for projectId: M1) -> Cuckoo.__DoNotUse<(String), Void> where M1.MatchedType == String {
	        let matchers: [Cuckoo.ParameterMatcher<(String)>] = [wrap(matchable: projectId) { $0 }]
	        return cuckoo_manager.verify("toggleFavorite(for: String)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func markAsViewed<M1: Cuckoo.Matchable>(for projectId: M1) -> Cuckoo.__DoNotUse<(String), Void> where M1.MatchedType == String {
	        let matchers: [Cuckoo.ParameterMatcher<(String)>] = [wrap(matchable: projectId) { $0 }]
	        return cuckoo_manager.verify("markAsViewed(for: String)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

 class ProjectDetailsInteractorInputProtocolStub: ProjectDetailsInteractorInputProtocol {
    

    

    
     func setup()   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func refreshVotes()   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func refreshProjectDetails()   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func vote(for project: ProjectVote)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func toggleFavorite(for projectId: String)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func markAsViewed(for projectId: String)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
}



 class MockProjectDetailsInteractorOutputProtocol: ProjectDetailsInteractorOutputProtocol, Cuckoo.ProtocolMock {
    
     typealias MocksType = ProjectDetailsInteractorOutputProtocol
    
     typealias Stubbing = __StubbingProxy_ProjectDetailsInteractorOutputProtocol
     typealias Verification = __VerificationProxy_ProjectDetailsInteractorOutputProtocol

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: ProjectDetailsInteractorOutputProtocol?

     func enableDefaultImplementation(_ stub: ProjectDetailsInteractorOutputProtocol) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    

    

    
    
    
     func didReceive(votes: VotesData)  {
        
    return cuckoo_manager.call("didReceive(votes: VotesData)",
            parameters: (votes),
            escapingParameters: (votes),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.didReceive(votes: votes))
        
    }
    
    
    
     func didReceiveVotesDataProvider(error: Error)  {
        
    return cuckoo_manager.call("didReceiveVotesDataProvider(error: Error)",
            parameters: (error),
            escapingParameters: (error),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.didReceiveVotesDataProvider(error: error))
        
    }
    
    
    
     func didReceive(projectDetails: ProjectDetailsData?)  {
        
    return cuckoo_manager.call("didReceive(projectDetails: ProjectDetailsData?)",
            parameters: (projectDetails),
            escapingParameters: (projectDetails),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.didReceive(projectDetails: projectDetails))
        
    }
    
    
    
     func didReceiveProjectDetailsDataProvider(error: Error)  {
        
    return cuckoo_manager.call("didReceiveProjectDetailsDataProvider(error: Error)",
            parameters: (error),
            escapingParameters: (error),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.didReceiveProjectDetailsDataProvider(error: error))
        
    }
    
    
    
     func didVote(for project: ProjectVote)  {
        
    return cuckoo_manager.call("didVote(for: ProjectVote)",
            parameters: (project),
            escapingParameters: (project),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.didVote(for: project))
        
    }
    
    
    
     func didReceiveVote(error: Error, for project: ProjectVote)  {
        
    return cuckoo_manager.call("didReceiveVote(error: Error, for: ProjectVote)",
            parameters: (error, project),
            escapingParameters: (error, project),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.didReceiveVote(error: error, for: project))
        
    }
    
    
    
     func didToggleFavorite(for projectId: String)  {
        
    return cuckoo_manager.call("didToggleFavorite(for: String)",
            parameters: (projectId),
            escapingParameters: (projectId),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.didToggleFavorite(for: projectId))
        
    }
    
    
    
     func didReceiveToggleFavorite(error: Error, for projectId: String)  {
        
    return cuckoo_manager.call("didReceiveToggleFavorite(error: Error, for: String)",
            parameters: (error, projectId),
            escapingParameters: (error, projectId),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.didReceiveToggleFavorite(error: error, for: projectId))
        
    }
    

	 struct __StubbingProxy_ProjectDetailsInteractorOutputProtocol: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func didReceive<M1: Cuckoo.Matchable>(votes: M1) -> Cuckoo.ProtocolStubNoReturnFunction<(VotesData)> where M1.MatchedType == VotesData {
	        let matchers: [Cuckoo.ParameterMatcher<(VotesData)>] = [wrap(matchable: votes) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockProjectDetailsInteractorOutputProtocol.self, method: "didReceive(votes: VotesData)", parameterMatchers: matchers))
	    }
	    
	    func didReceiveVotesDataProvider<M1: Cuckoo.Matchable>(error: M1) -> Cuckoo.ProtocolStubNoReturnFunction<(Error)> where M1.MatchedType == Error {
	        let matchers: [Cuckoo.ParameterMatcher<(Error)>] = [wrap(matchable: error) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockProjectDetailsInteractorOutputProtocol.self, method: "didReceiveVotesDataProvider(error: Error)", parameterMatchers: matchers))
	    }
	    
	    func didReceive<M1: Cuckoo.OptionalMatchable>(projectDetails: M1) -> Cuckoo.ProtocolStubNoReturnFunction<(ProjectDetailsData?)> where M1.OptionalMatchedType == ProjectDetailsData {
	        let matchers: [Cuckoo.ParameterMatcher<(ProjectDetailsData?)>] = [wrap(matchable: projectDetails) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockProjectDetailsInteractorOutputProtocol.self, method: "didReceive(projectDetails: ProjectDetailsData?)", parameterMatchers: matchers))
	    }
	    
	    func didReceiveProjectDetailsDataProvider<M1: Cuckoo.Matchable>(error: M1) -> Cuckoo.ProtocolStubNoReturnFunction<(Error)> where M1.MatchedType == Error {
	        let matchers: [Cuckoo.ParameterMatcher<(Error)>] = [wrap(matchable: error) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockProjectDetailsInteractorOutputProtocol.self, method: "didReceiveProjectDetailsDataProvider(error: Error)", parameterMatchers: matchers))
	    }
	    
	    func didVote<M1: Cuckoo.Matchable>(for project: M1) -> Cuckoo.ProtocolStubNoReturnFunction<(ProjectVote)> where M1.MatchedType == ProjectVote {
	        let matchers: [Cuckoo.ParameterMatcher<(ProjectVote)>] = [wrap(matchable: project) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockProjectDetailsInteractorOutputProtocol.self, method: "didVote(for: ProjectVote)", parameterMatchers: matchers))
	    }
	    
	    func didReceiveVote<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(error: M1, for project: M2) -> Cuckoo.ProtocolStubNoReturnFunction<(Error, ProjectVote)> where M1.MatchedType == Error, M2.MatchedType == ProjectVote {
	        let matchers: [Cuckoo.ParameterMatcher<(Error, ProjectVote)>] = [wrap(matchable: error) { $0.0 }, wrap(matchable: project) { $0.1 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockProjectDetailsInteractorOutputProtocol.self, method: "didReceiveVote(error: Error, for: ProjectVote)", parameterMatchers: matchers))
	    }
	    
	    func didToggleFavorite<M1: Cuckoo.Matchable>(for projectId: M1) -> Cuckoo.ProtocolStubNoReturnFunction<(String)> where M1.MatchedType == String {
	        let matchers: [Cuckoo.ParameterMatcher<(String)>] = [wrap(matchable: projectId) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockProjectDetailsInteractorOutputProtocol.self, method: "didToggleFavorite(for: String)", parameterMatchers: matchers))
	    }
	    
	    func didReceiveToggleFavorite<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(error: M1, for projectId: M2) -> Cuckoo.ProtocolStubNoReturnFunction<(Error, String)> where M1.MatchedType == Error, M2.MatchedType == String {
	        let matchers: [Cuckoo.ParameterMatcher<(Error, String)>] = [wrap(matchable: error) { $0.0 }, wrap(matchable: projectId) { $0.1 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockProjectDetailsInteractorOutputProtocol.self, method: "didReceiveToggleFavorite(error: Error, for: String)", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_ProjectDetailsInteractorOutputProtocol: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func didReceive<M1: Cuckoo.Matchable>(votes: M1) -> Cuckoo.__DoNotUse<(VotesData), Void> where M1.MatchedType == VotesData {
	        let matchers: [Cuckoo.ParameterMatcher<(VotesData)>] = [wrap(matchable: votes) { $0 }]
	        return cuckoo_manager.verify("didReceive(votes: VotesData)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func didReceiveVotesDataProvider<M1: Cuckoo.Matchable>(error: M1) -> Cuckoo.__DoNotUse<(Error), Void> where M1.MatchedType == Error {
	        let matchers: [Cuckoo.ParameterMatcher<(Error)>] = [wrap(matchable: error) { $0 }]
	        return cuckoo_manager.verify("didReceiveVotesDataProvider(error: Error)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func didReceive<M1: Cuckoo.OptionalMatchable>(projectDetails: M1) -> Cuckoo.__DoNotUse<(ProjectDetailsData?), Void> where M1.OptionalMatchedType == ProjectDetailsData {
	        let matchers: [Cuckoo.ParameterMatcher<(ProjectDetailsData?)>] = [wrap(matchable: projectDetails) { $0 }]
	        return cuckoo_manager.verify("didReceive(projectDetails: ProjectDetailsData?)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func didReceiveProjectDetailsDataProvider<M1: Cuckoo.Matchable>(error: M1) -> Cuckoo.__DoNotUse<(Error), Void> where M1.MatchedType == Error {
	        let matchers: [Cuckoo.ParameterMatcher<(Error)>] = [wrap(matchable: error) { $0 }]
	        return cuckoo_manager.verify("didReceiveProjectDetailsDataProvider(error: Error)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func didVote<M1: Cuckoo.Matchable>(for project: M1) -> Cuckoo.__DoNotUse<(ProjectVote), Void> where M1.MatchedType == ProjectVote {
	        let matchers: [Cuckoo.ParameterMatcher<(ProjectVote)>] = [wrap(matchable: project) { $0 }]
	        return cuckoo_manager.verify("didVote(for: ProjectVote)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func didReceiveVote<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(error: M1, for project: M2) -> Cuckoo.__DoNotUse<(Error, ProjectVote), Void> where M1.MatchedType == Error, M2.MatchedType == ProjectVote {
	        let matchers: [Cuckoo.ParameterMatcher<(Error, ProjectVote)>] = [wrap(matchable: error) { $0.0 }, wrap(matchable: project) { $0.1 }]
	        return cuckoo_manager.verify("didReceiveVote(error: Error, for: ProjectVote)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func didToggleFavorite<M1: Cuckoo.Matchable>(for projectId: M1) -> Cuckoo.__DoNotUse<(String), Void> where M1.MatchedType == String {
	        let matchers: [Cuckoo.ParameterMatcher<(String)>] = [wrap(matchable: projectId) { $0 }]
	        return cuckoo_manager.verify("didToggleFavorite(for: String)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func didReceiveToggleFavorite<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(error: M1, for projectId: M2) -> Cuckoo.__DoNotUse<(Error, String), Void> where M1.MatchedType == Error, M2.MatchedType == String {
	        let matchers: [Cuckoo.ParameterMatcher<(Error, String)>] = [wrap(matchable: error) { $0.0 }, wrap(matchable: projectId) { $0.1 }]
	        return cuckoo_manager.verify("didReceiveToggleFavorite(error: Error, for: String)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

 class ProjectDetailsInteractorOutputProtocolStub: ProjectDetailsInteractorOutputProtocol {
    

    

    
     func didReceive(votes: VotesData)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func didReceiveVotesDataProvider(error: Error)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func didReceive(projectDetails: ProjectDetailsData?)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func didReceiveProjectDetailsDataProvider(error: Error)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func didVote(for project: ProjectVote)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func didReceiveVote(error: Error, for project: ProjectVote)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func didToggleFavorite(for projectId: String)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func didReceiveToggleFavorite(error: Error, for projectId: String)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
}



 class MockProjectDetailsWireframeProtocol: ProjectDetailsWireframeProtocol, Cuckoo.ProtocolMock {
    
     typealias MocksType = ProjectDetailsWireframeProtocol
    
     typealias Stubbing = __StubbingProxy_ProjectDetailsWireframeProtocol
     typealias Verification = __VerificationProxy_ProjectDetailsWireframeProtocol

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: ProjectDetailsWireframeProtocol?

     func enableDefaultImplementation(_ stub: ProjectDetailsWireframeProtocol) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    

    

    
    
    
     func showVotingView(from view: ProjectDetailsViewProtocol?, with model: VoteViewModelProtocol, delegate: VoteViewDelegate?)  {
        
    return cuckoo_manager.call("showVotingView(from: ProjectDetailsViewProtocol?, with: VoteViewModelProtocol, delegate: VoteViewDelegate?)",
            parameters: (view, model, delegate),
            escapingParameters: (view, model, delegate),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.showVotingView(from: view, with: model, delegate: delegate))
        
    }
    
    
    
     func close(view: ProjectDetailsViewProtocol?)  {
        
    return cuckoo_manager.call("close(view: ProjectDetailsViewProtocol?)",
            parameters: (view),
            escapingParameters: (view),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.close(view: view))
        
    }
    
    
    
     func showVotesHistoryView(from view: ProjectDetailsViewProtocol?)  {
        
    return cuckoo_manager.call("showVotesHistoryView(from: ProjectDetailsViewProtocol?)",
            parameters: (view),
            escapingParameters: (view),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.showVotesHistoryView(from: view))
        
    }
    
    
    
     func present(message: String?, title: String?, closeAction: String?, from view: ControllerBackedProtocol?)  {
        
    return cuckoo_manager.call("present(message: String?, title: String?, closeAction: String?, from: ControllerBackedProtocol?)",
            parameters: (message, title, closeAction, view),
            escapingParameters: (message, title, closeAction, view),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.present(message: message, title: title, closeAction: closeAction, from: view))
        
    }
    
    
    
     func present(message: String?, title: String?, actions: [AlertPresentableAction], from view: ControllerBackedProtocol?)  {
        
    return cuckoo_manager.call("present(message: String?, title: String?, actions: [AlertPresentableAction], from: ControllerBackedProtocol?)",
            parameters: (message, title, actions, view),
            escapingParameters: (message, title, actions, view),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.present(message: message, title: title, actions: actions, from: view))
        
    }
    
    
    
     func present(error: Error, from view: ControllerBackedProtocol?) -> Bool {
        
    return cuckoo_manager.call("present(error: Error, from: ControllerBackedProtocol?) -> Bool",
            parameters: (error, view),
            escapingParameters: (error, view),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.present(error: error, from: view))
        
    }
    
    
    
     func showWeb(url: URL, from view: ControllerBackedProtocol, style: WebPresentableStyle)  {
        
    return cuckoo_manager.call("showWeb(url: URL, from: ControllerBackedProtocol, style: WebPresentableStyle)",
            parameters: (url, view, style),
            escapingParameters: (url, view, style),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.showWeb(url: url, from: view, style: style))
        
    }
    

	 struct __StubbingProxy_ProjectDetailsWireframeProtocol: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func showVotingView<M1: Cuckoo.OptionalMatchable, M2: Cuckoo.Matchable, M3: Cuckoo.OptionalMatchable>(from view: M1, with model: M2, delegate: M3) -> Cuckoo.ProtocolStubNoReturnFunction<(ProjectDetailsViewProtocol?, VoteViewModelProtocol, VoteViewDelegate?)> where M1.OptionalMatchedType == ProjectDetailsViewProtocol, M2.MatchedType == VoteViewModelProtocol, M3.OptionalMatchedType == VoteViewDelegate {
	        let matchers: [Cuckoo.ParameterMatcher<(ProjectDetailsViewProtocol?, VoteViewModelProtocol, VoteViewDelegate?)>] = [wrap(matchable: view) { $0.0 }, wrap(matchable: model) { $0.1 }, wrap(matchable: delegate) { $0.2 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockProjectDetailsWireframeProtocol.self, method: "showVotingView(from: ProjectDetailsViewProtocol?, with: VoteViewModelProtocol, delegate: VoteViewDelegate?)", parameterMatchers: matchers))
	    }
	    
	    func close<M1: Cuckoo.OptionalMatchable>(view: M1) -> Cuckoo.ProtocolStubNoReturnFunction<(ProjectDetailsViewProtocol?)> where M1.OptionalMatchedType == ProjectDetailsViewProtocol {
	        let matchers: [Cuckoo.ParameterMatcher<(ProjectDetailsViewProtocol?)>] = [wrap(matchable: view) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockProjectDetailsWireframeProtocol.self, method: "close(view: ProjectDetailsViewProtocol?)", parameterMatchers: matchers))
	    }
	    
	    func showVotesHistoryView<M1: Cuckoo.OptionalMatchable>(from view: M1) -> Cuckoo.ProtocolStubNoReturnFunction<(ProjectDetailsViewProtocol?)> where M1.OptionalMatchedType == ProjectDetailsViewProtocol {
	        let matchers: [Cuckoo.ParameterMatcher<(ProjectDetailsViewProtocol?)>] = [wrap(matchable: view) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockProjectDetailsWireframeProtocol.self, method: "showVotesHistoryView(from: ProjectDetailsViewProtocol?)", parameterMatchers: matchers))
	    }
	    
	    func present<M1: Cuckoo.OptionalMatchable, M2: Cuckoo.OptionalMatchable, M3: Cuckoo.OptionalMatchable, M4: Cuckoo.OptionalMatchable>(message: M1, title: M2, closeAction: M3, from view: M4) -> Cuckoo.ProtocolStubNoReturnFunction<(String?, String?, String?, ControllerBackedProtocol?)> where M1.OptionalMatchedType == String, M2.OptionalMatchedType == String, M3.OptionalMatchedType == String, M4.OptionalMatchedType == ControllerBackedProtocol {
	        let matchers: [Cuckoo.ParameterMatcher<(String?, String?, String?, ControllerBackedProtocol?)>] = [wrap(matchable: message) { $0.0 }, wrap(matchable: title) { $0.1 }, wrap(matchable: closeAction) { $0.2 }, wrap(matchable: view) { $0.3 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockProjectDetailsWireframeProtocol.self, method: "present(message: String?, title: String?, closeAction: String?, from: ControllerBackedProtocol?)", parameterMatchers: matchers))
	    }
	    
	    func present<M1: Cuckoo.OptionalMatchable, M2: Cuckoo.OptionalMatchable, M3: Cuckoo.Matchable, M4: Cuckoo.OptionalMatchable>(message: M1, title: M2, actions: M3, from view: M4) -> Cuckoo.ProtocolStubNoReturnFunction<(String?, String?, [AlertPresentableAction], ControllerBackedProtocol?)> where M1.OptionalMatchedType == String, M2.OptionalMatchedType == String, M3.MatchedType == [AlertPresentableAction], M4.OptionalMatchedType == ControllerBackedProtocol {
	        let matchers: [Cuckoo.ParameterMatcher<(String?, String?, [AlertPresentableAction], ControllerBackedProtocol?)>] = [wrap(matchable: message) { $0.0 }, wrap(matchable: title) { $0.1 }, wrap(matchable: actions) { $0.2 }, wrap(matchable: view) { $0.3 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockProjectDetailsWireframeProtocol.self, method: "present(message: String?, title: String?, actions: [AlertPresentableAction], from: ControllerBackedProtocol?)", parameterMatchers: matchers))
	    }
	    
	    func present<M1: Cuckoo.Matchable, M2: Cuckoo.OptionalMatchable>(error: M1, from view: M2) -> Cuckoo.ProtocolStubFunction<(Error, ControllerBackedProtocol?), Bool> where M1.MatchedType == Error, M2.OptionalMatchedType == ControllerBackedProtocol {
	        let matchers: [Cuckoo.ParameterMatcher<(Error, ControllerBackedProtocol?)>] = [wrap(matchable: error) { $0.0 }, wrap(matchable: view) { $0.1 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockProjectDetailsWireframeProtocol.self, method: "present(error: Error, from: ControllerBackedProtocol?) -> Bool", parameterMatchers: matchers))
	    }
	    
	    func showWeb<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable, M3: Cuckoo.Matchable>(url: M1, from view: M2, style: M3) -> Cuckoo.ProtocolStubNoReturnFunction<(URL, ControllerBackedProtocol, WebPresentableStyle)> where M1.MatchedType == URL, M2.MatchedType == ControllerBackedProtocol, M3.MatchedType == WebPresentableStyle {
	        let matchers: [Cuckoo.ParameterMatcher<(URL, ControllerBackedProtocol, WebPresentableStyle)>] = [wrap(matchable: url) { $0.0 }, wrap(matchable: view) { $0.1 }, wrap(matchable: style) { $0.2 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockProjectDetailsWireframeProtocol.self, method: "showWeb(url: URL, from: ControllerBackedProtocol, style: WebPresentableStyle)", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_ProjectDetailsWireframeProtocol: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func showVotingView<M1: Cuckoo.OptionalMatchable, M2: Cuckoo.Matchable, M3: Cuckoo.OptionalMatchable>(from view: M1, with model: M2, delegate: M3) -> Cuckoo.__DoNotUse<(ProjectDetailsViewProtocol?, VoteViewModelProtocol, VoteViewDelegate?), Void> where M1.OptionalMatchedType == ProjectDetailsViewProtocol, M2.MatchedType == VoteViewModelProtocol, M3.OptionalMatchedType == VoteViewDelegate {
	        let matchers: [Cuckoo.ParameterMatcher<(ProjectDetailsViewProtocol?, VoteViewModelProtocol, VoteViewDelegate?)>] = [wrap(matchable: view) { $0.0 }, wrap(matchable: model) { $0.1 }, wrap(matchable: delegate) { $0.2 }]
	        return cuckoo_manager.verify("showVotingView(from: ProjectDetailsViewProtocol?, with: VoteViewModelProtocol, delegate: VoteViewDelegate?)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func close<M1: Cuckoo.OptionalMatchable>(view: M1) -> Cuckoo.__DoNotUse<(ProjectDetailsViewProtocol?), Void> where M1.OptionalMatchedType == ProjectDetailsViewProtocol {
	        let matchers: [Cuckoo.ParameterMatcher<(ProjectDetailsViewProtocol?)>] = [wrap(matchable: view) { $0 }]
	        return cuckoo_manager.verify("close(view: ProjectDetailsViewProtocol?)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func showVotesHistoryView<M1: Cuckoo.OptionalMatchable>(from view: M1) -> Cuckoo.__DoNotUse<(ProjectDetailsViewProtocol?), Void> where M1.OptionalMatchedType == ProjectDetailsViewProtocol {
	        let matchers: [Cuckoo.ParameterMatcher<(ProjectDetailsViewProtocol?)>] = [wrap(matchable: view) { $0 }]
	        return cuckoo_manager.verify("showVotesHistoryView(from: ProjectDetailsViewProtocol?)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func present<M1: Cuckoo.OptionalMatchable, M2: Cuckoo.OptionalMatchable, M3: Cuckoo.OptionalMatchable, M4: Cuckoo.OptionalMatchable>(message: M1, title: M2, closeAction: M3, from view: M4) -> Cuckoo.__DoNotUse<(String?, String?, String?, ControllerBackedProtocol?), Void> where M1.OptionalMatchedType == String, M2.OptionalMatchedType == String, M3.OptionalMatchedType == String, M4.OptionalMatchedType == ControllerBackedProtocol {
	        let matchers: [Cuckoo.ParameterMatcher<(String?, String?, String?, ControllerBackedProtocol?)>] = [wrap(matchable: message) { $0.0 }, wrap(matchable: title) { $0.1 }, wrap(matchable: closeAction) { $0.2 }, wrap(matchable: view) { $0.3 }]
	        return cuckoo_manager.verify("present(message: String?, title: String?, closeAction: String?, from: ControllerBackedProtocol?)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func present<M1: Cuckoo.OptionalMatchable, M2: Cuckoo.OptionalMatchable, M3: Cuckoo.Matchable, M4: Cuckoo.OptionalMatchable>(message: M1, title: M2, actions: M3, from view: M4) -> Cuckoo.__DoNotUse<(String?, String?, [AlertPresentableAction], ControllerBackedProtocol?), Void> where M1.OptionalMatchedType == String, M2.OptionalMatchedType == String, M3.MatchedType == [AlertPresentableAction], M4.OptionalMatchedType == ControllerBackedProtocol {
	        let matchers: [Cuckoo.ParameterMatcher<(String?, String?, [AlertPresentableAction], ControllerBackedProtocol?)>] = [wrap(matchable: message) { $0.0 }, wrap(matchable: title) { $0.1 }, wrap(matchable: actions) { $0.2 }, wrap(matchable: view) { $0.3 }]
	        return cuckoo_manager.verify("present(message: String?, title: String?, actions: [AlertPresentableAction], from: ControllerBackedProtocol?)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func present<M1: Cuckoo.Matchable, M2: Cuckoo.OptionalMatchable>(error: M1, from view: M2) -> Cuckoo.__DoNotUse<(Error, ControllerBackedProtocol?), Bool> where M1.MatchedType == Error, M2.OptionalMatchedType == ControllerBackedProtocol {
	        let matchers: [Cuckoo.ParameterMatcher<(Error, ControllerBackedProtocol?)>] = [wrap(matchable: error) { $0.0 }, wrap(matchable: view) { $0.1 }]
	        return cuckoo_manager.verify("present(error: Error, from: ControllerBackedProtocol?) -> Bool", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func showWeb<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable, M3: Cuckoo.Matchable>(url: M1, from view: M2, style: M3) -> Cuckoo.__DoNotUse<(URL, ControllerBackedProtocol, WebPresentableStyle), Void> where M1.MatchedType == URL, M2.MatchedType == ControllerBackedProtocol, M3.MatchedType == WebPresentableStyle {
	        let matchers: [Cuckoo.ParameterMatcher<(URL, ControllerBackedProtocol, WebPresentableStyle)>] = [wrap(matchable: url) { $0.0 }, wrap(matchable: view) { $0.1 }, wrap(matchable: style) { $0.2 }]
	        return cuckoo_manager.verify("showWeb(url: URL, from: ControllerBackedProtocol, style: WebPresentableStyle)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

 class ProjectDetailsWireframeProtocolStub: ProjectDetailsWireframeProtocol {
    

    

    
     func showVotingView(from view: ProjectDetailsViewProtocol?, with model: VoteViewModelProtocol, delegate: VoteViewDelegate?)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func close(view: ProjectDetailsViewProtocol?)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func showVotesHistoryView(from view: ProjectDetailsViewProtocol?)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func present(message: String?, title: String?, closeAction: String?, from view: ControllerBackedProtocol?)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func present(message: String?, title: String?, actions: [AlertPresentableAction], from view: ControllerBackedProtocol?)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func present(error: Error, from view: ControllerBackedProtocol?) -> Bool  {
        return DefaultValueRegistry.defaultValue(for: (Bool).self)
    }
    
     func showWeb(url: URL, from view: ControllerBackedProtocol, style: WebPresentableStyle)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
}


import Cuckoo
@testable import SoraPassport

import Foundation
import RobinHood
import SoraUI


 class MockProjectsListViewProtocol: ProjectsListViewProtocol, Cuckoo.ProtocolMock {
    
     typealias MocksType = ProjectsListViewProtocol
    
     typealias Stubbing = __StubbingProxy_ProjectsListViewProtocol
     typealias Verification = __VerificationProxy_ProjectsListViewProtocol

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: ProjectsListViewProtocol?

     func enableDefaultImplementation(_ stub: ProjectsListViewProtocol) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    
    
    
     var controller: UIViewController {
        get {
            return cuckoo_manager.getter("controller",
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.controller)
        }
        
    }
    

    

    
    
    
     func didReloadProjects(using viewModelChangeBlock: @escaping () -> Void)  {
        
    return cuckoo_manager.call("didReloadProjects(using: @escaping () -> Void)",
            parameters: (viewModelChangeBlock),
            escapingParameters: (viewModelChangeBlock),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.didReloadProjects(using: viewModelChangeBlock))
        
    }
    
    
    
     func didEditProjects(using viewModelChangeBlock: @escaping () -> ViewModelUpdateResult)  {
        
    return cuckoo_manager.call("didEditProjects(using: @escaping () -> ViewModelUpdateResult)",
            parameters: (viewModelChangeBlock),
            escapingParameters: (viewModelChangeBlock),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.didEditProjects(using: viewModelChangeBlock))
        
    }
    

	 struct __StubbingProxy_ProjectsListViewProtocol: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    var controller: Cuckoo.ProtocolToBeStubbedReadOnlyProperty<MockProjectsListViewProtocol, UIViewController> {
	        return .init(manager: cuckoo_manager, name: "controller")
	    }
	    
	    
	    func didReloadProjects<M1: Cuckoo.Matchable>(using viewModelChangeBlock: M1) -> Cuckoo.ProtocolStubNoReturnFunction<(() -> Void)> where M1.MatchedType == () -> Void {
	        let matchers: [Cuckoo.ParameterMatcher<(() -> Void)>] = [wrap(matchable: viewModelChangeBlock) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockProjectsListViewProtocol.self, method: "didReloadProjects(using: @escaping () -> Void)", parameterMatchers: matchers))
	    }
	    
	    func didEditProjects<M1: Cuckoo.Matchable>(using viewModelChangeBlock: M1) -> Cuckoo.ProtocolStubNoReturnFunction<(() -> ViewModelUpdateResult)> where M1.MatchedType == () -> ViewModelUpdateResult {
	        let matchers: [Cuckoo.ParameterMatcher<(() -> ViewModelUpdateResult)>] = [wrap(matchable: viewModelChangeBlock) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockProjectsListViewProtocol.self, method: "didEditProjects(using: @escaping () -> ViewModelUpdateResult)", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_ProjectsListViewProtocol: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	    
	    var controller: Cuckoo.VerifyReadOnlyProperty<UIViewController> {
	        return .init(manager: cuckoo_manager, name: "controller", callMatcher: callMatcher, sourceLocation: sourceLocation)
	    }
	    
	
	    
	    @discardableResult
	    func didReloadProjects<M1: Cuckoo.Matchable>(using viewModelChangeBlock: M1) -> Cuckoo.__DoNotUse<(() -> Void), Void> where M1.MatchedType == () -> Void {
	        let matchers: [Cuckoo.ParameterMatcher<(() -> Void)>] = [wrap(matchable: viewModelChangeBlock) { $0 }]
	        return cuckoo_manager.verify("didReloadProjects(using: @escaping () -> Void)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func didEditProjects<M1: Cuckoo.Matchable>(using viewModelChangeBlock: M1) -> Cuckoo.__DoNotUse<(() -> ViewModelUpdateResult), Void> where M1.MatchedType == () -> ViewModelUpdateResult {
	        let matchers: [Cuckoo.ParameterMatcher<(() -> ViewModelUpdateResult)>] = [wrap(matchable: viewModelChangeBlock) { $0 }]
	        return cuckoo_manager.verify("didEditProjects(using: @escaping () -> ViewModelUpdateResult)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

 class ProjectsListViewProtocolStub: ProjectsListViewProtocol {
    
    
     var controller: UIViewController {
        get {
            return DefaultValueRegistry.defaultValue(for: (UIViewController).self)
        }
        
    }
    

    

    
     func didReloadProjects(using viewModelChangeBlock: @escaping () -> Void)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func didEditProjects(using viewModelChangeBlock: @escaping () -> ViewModelUpdateResult)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
}



 class MockProjectsViewProtocol: ProjectsViewProtocol, Cuckoo.ProtocolMock {
    
     typealias MocksType = ProjectsViewProtocol
    
     typealias Stubbing = __StubbingProxy_ProjectsViewProtocol
     typealias Verification = __VerificationProxy_ProjectsViewProtocol

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: ProjectsViewProtocol?

     func enableDefaultImplementation(_ stub: ProjectsViewProtocol) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    
    
    
     var controller: UIViewController {
        get {
            return cuckoo_manager.getter("controller",
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.controller)
        }
        
    }
    

    

    
    
    
     func didLoad(votes: String)  {
        
    return cuckoo_manager.call("didLoad(votes: String)",
            parameters: (votes),
            escapingParameters: (votes),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.didLoad(votes: votes))
        
    }
    
    
    
     func didReloadProjects(using viewModelChangeBlock: @escaping () -> Void)  {
        
    return cuckoo_manager.call("didReloadProjects(using: @escaping () -> Void)",
            parameters: (viewModelChangeBlock),
            escapingParameters: (viewModelChangeBlock),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.didReloadProjects(using: viewModelChangeBlock))
        
    }
    
    
    
     func didEditProjects(using viewModelChangeBlock: @escaping () -> ViewModelUpdateResult)  {
        
    return cuckoo_manager.call("didEditProjects(using: @escaping () -> ViewModelUpdateResult)",
            parameters: (viewModelChangeBlock),
            escapingParameters: (viewModelChangeBlock),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.didEditProjects(using: viewModelChangeBlock))
        
    }
    

	 struct __StubbingProxy_ProjectsViewProtocol: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    var controller: Cuckoo.ProtocolToBeStubbedReadOnlyProperty<MockProjectsViewProtocol, UIViewController> {
	        return .init(manager: cuckoo_manager, name: "controller")
	    }
	    
	    
	    func didLoad<M1: Cuckoo.Matchable>(votes: M1) -> Cuckoo.ProtocolStubNoReturnFunction<(String)> where M1.MatchedType == String {
	        let matchers: [Cuckoo.ParameterMatcher<(String)>] = [wrap(matchable: votes) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockProjectsViewProtocol.self, method: "didLoad(votes: String)", parameterMatchers: matchers))
	    }
	    
	    func didReloadProjects<M1: Cuckoo.Matchable>(using viewModelChangeBlock: M1) -> Cuckoo.ProtocolStubNoReturnFunction<(() -> Void)> where M1.MatchedType == () -> Void {
	        let matchers: [Cuckoo.ParameterMatcher<(() -> Void)>] = [wrap(matchable: viewModelChangeBlock) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockProjectsViewProtocol.self, method: "didReloadProjects(using: @escaping () -> Void)", parameterMatchers: matchers))
	    }
	    
	    func didEditProjects<M1: Cuckoo.Matchable>(using viewModelChangeBlock: M1) -> Cuckoo.ProtocolStubNoReturnFunction<(() -> ViewModelUpdateResult)> where M1.MatchedType == () -> ViewModelUpdateResult {
	        let matchers: [Cuckoo.ParameterMatcher<(() -> ViewModelUpdateResult)>] = [wrap(matchable: viewModelChangeBlock) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockProjectsViewProtocol.self, method: "didEditProjects(using: @escaping () -> ViewModelUpdateResult)", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_ProjectsViewProtocol: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	    
	    var controller: Cuckoo.VerifyReadOnlyProperty<UIViewController> {
	        return .init(manager: cuckoo_manager, name: "controller", callMatcher: callMatcher, sourceLocation: sourceLocation)
	    }
	    
	
	    
	    @discardableResult
	    func didLoad<M1: Cuckoo.Matchable>(votes: M1) -> Cuckoo.__DoNotUse<(String), Void> where M1.MatchedType == String {
	        let matchers: [Cuckoo.ParameterMatcher<(String)>] = [wrap(matchable: votes) { $0 }]
	        return cuckoo_manager.verify("didLoad(votes: String)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func didReloadProjects<M1: Cuckoo.Matchable>(using viewModelChangeBlock: M1) -> Cuckoo.__DoNotUse<(() -> Void), Void> where M1.MatchedType == () -> Void {
	        let matchers: [Cuckoo.ParameterMatcher<(() -> Void)>] = [wrap(matchable: viewModelChangeBlock) { $0 }]
	        return cuckoo_manager.verify("didReloadProjects(using: @escaping () -> Void)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func didEditProjects<M1: Cuckoo.Matchable>(using viewModelChangeBlock: M1) -> Cuckoo.__DoNotUse<(() -> ViewModelUpdateResult), Void> where M1.MatchedType == () -> ViewModelUpdateResult {
	        let matchers: [Cuckoo.ParameterMatcher<(() -> ViewModelUpdateResult)>] = [wrap(matchable: viewModelChangeBlock) { $0 }]
	        return cuckoo_manager.verify("didEditProjects(using: @escaping () -> ViewModelUpdateResult)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

 class ProjectsViewProtocolStub: ProjectsViewProtocol {
    
    
     var controller: UIViewController {
        get {
            return DefaultValueRegistry.defaultValue(for: (UIViewController).self)
        }
        
    }
    

    

    
     func didLoad(votes: String)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func didReloadProjects(using viewModelChangeBlock: @escaping () -> Void)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func didEditProjects(using viewModelChangeBlock: @escaping () -> ViewModelUpdateResult)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
}



 class MockProjectsPresenterProtocol: ProjectsPresenterProtocol, Cuckoo.ProtocolMock {
    
     typealias MocksType = ProjectsPresenterProtocol
    
     typealias Stubbing = __StubbingProxy_ProjectsPresenterProtocol
     typealias Verification = __VerificationProxy_ProjectsPresenterProtocol

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: ProjectsPresenterProtocol?

     func enableDefaultImplementation(_ stub: ProjectsPresenterProtocol) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    
    
    
     var displayType: ProjectDisplayType {
        get {
            return cuckoo_manager.getter("displayType",
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.displayType)
        }
        
    }
    
    
    
     var numberOfProjects: Int {
        get {
            return cuckoo_manager.getter("numberOfProjects",
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.numberOfProjects)
        }
        
    }
    
    
    
    public var shouldDisplayEmptyState: Bool {
        get {
            return cuckoo_manager.getter("shouldDisplayEmptyState",
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.shouldDisplayEmptyState)
        }
        
    }
    

    

    
    
    
     func viewIsReady(layoutMetadata: ProjectLayoutMetadata)  {
        
    return cuckoo_manager.call("viewIsReady(layoutMetadata: ProjectLayoutMetadata)",
            parameters: (layoutMetadata),
            escapingParameters: (layoutMetadata),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.viewIsReady(layoutMetadata: layoutMetadata))
        
    }
    
    
    
     func viewDidAppear()  {
        
    return cuckoo_manager.call("viewDidAppear()",
            parameters: (),
            escapingParameters: (),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.viewDidAppear())
        
    }
    
    
    
     func activateProjectDisplay(type: ProjectDisplayType)  {
        
    return cuckoo_manager.call("activateProjectDisplay(type: ProjectDisplayType)",
            parameters: (type),
            escapingParameters: (type),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.activateProjectDisplay(type: type))
        
    }
    
    
    
     func activateProject(at index: Int)  {
        
    return cuckoo_manager.call("activateProject(at: Int)",
            parameters: (index),
            escapingParameters: (index),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.activateProject(at: index))
        
    }
    
    
    
     func activateVotesDetails()  {
        
    return cuckoo_manager.call("activateVotesDetails()",
            parameters: (),
            escapingParameters: (),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.activateVotesDetails())
        
    }
    
    
    
     func activateHelp()  {
        
    return cuckoo_manager.call("activateHelp()",
            parameters: (),
            escapingParameters: (),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.activateHelp())
        
    }
    
    
    
     func viewModel(at index: Int) -> ProjectOneOfViewModel {
        
    return cuckoo_manager.call("viewModel(at: Int) -> ProjectOneOfViewModel",
            parameters: (index),
            escapingParameters: (index),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.viewModel(at: index))
        
    }
    

	 struct __StubbingProxy_ProjectsPresenterProtocol: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    var displayType: Cuckoo.ProtocolToBeStubbedReadOnlyProperty<MockProjectsPresenterProtocol, ProjectDisplayType> {
	        return .init(manager: cuckoo_manager, name: "displayType")
	    }
	    
	    
	    var numberOfProjects: Cuckoo.ProtocolToBeStubbedReadOnlyProperty<MockProjectsPresenterProtocol, Int> {
	        return .init(manager: cuckoo_manager, name: "numberOfProjects")
	    }
	    
	    
	    var shouldDisplayEmptyState: Cuckoo.ProtocolToBeStubbedReadOnlyProperty<MockProjectsPresenterProtocol, Bool> {
	        return .init(manager: cuckoo_manager, name: "shouldDisplayEmptyState")
	    }
	    
	    
	    func viewIsReady<M1: Cuckoo.Matchable>(layoutMetadata: M1) -> Cuckoo.ProtocolStubNoReturnFunction<(ProjectLayoutMetadata)> where M1.MatchedType == ProjectLayoutMetadata {
	        let matchers: [Cuckoo.ParameterMatcher<(ProjectLayoutMetadata)>] = [wrap(matchable: layoutMetadata) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockProjectsPresenterProtocol.self, method: "viewIsReady(layoutMetadata: ProjectLayoutMetadata)", parameterMatchers: matchers))
	    }
	    
	    func viewDidAppear() -> Cuckoo.ProtocolStubNoReturnFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockProjectsPresenterProtocol.self, method: "viewDidAppear()", parameterMatchers: matchers))
	    }
	    
	    func activateProjectDisplay<M1: Cuckoo.Matchable>(type: M1) -> Cuckoo.ProtocolStubNoReturnFunction<(ProjectDisplayType)> where M1.MatchedType == ProjectDisplayType {
	        let matchers: [Cuckoo.ParameterMatcher<(ProjectDisplayType)>] = [wrap(matchable: type) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockProjectsPresenterProtocol.self, method: "activateProjectDisplay(type: ProjectDisplayType)", parameterMatchers: matchers))
	    }
	    
	    func activateProject<M1: Cuckoo.Matchable>(at index: M1) -> Cuckoo.ProtocolStubNoReturnFunction<(Int)> where M1.MatchedType == Int {
	        let matchers: [Cuckoo.ParameterMatcher<(Int)>] = [wrap(matchable: index) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockProjectsPresenterProtocol.self, method: "activateProject(at: Int)", parameterMatchers: matchers))
	    }
	    
	    func activateVotesDetails() -> Cuckoo.ProtocolStubNoReturnFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockProjectsPresenterProtocol.self, method: "activateVotesDetails()", parameterMatchers: matchers))
	    }
	    
	    func activateHelp() -> Cuckoo.ProtocolStubNoReturnFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockProjectsPresenterProtocol.self, method: "activateHelp()", parameterMatchers: matchers))
	    }
	    
	    func viewModel<M1: Cuckoo.Matchable>(at index: M1) -> Cuckoo.ProtocolStubFunction<(Int), ProjectOneOfViewModel> where M1.MatchedType == Int {
	        let matchers: [Cuckoo.ParameterMatcher<(Int)>] = [wrap(matchable: index) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockProjectsPresenterProtocol.self, method: "viewModel(at: Int) -> ProjectOneOfViewModel", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_ProjectsPresenterProtocol: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	    
	    var displayType: Cuckoo.VerifyReadOnlyProperty<ProjectDisplayType> {
	        return .init(manager: cuckoo_manager, name: "displayType", callMatcher: callMatcher, sourceLocation: sourceLocation)
	    }
	    
	    
	    var numberOfProjects: Cuckoo.VerifyReadOnlyProperty<Int> {
	        return .init(manager: cuckoo_manager, name: "numberOfProjects", callMatcher: callMatcher, sourceLocation: sourceLocation)
	    }
	    
	    
	    var shouldDisplayEmptyState: Cuckoo.VerifyReadOnlyProperty<Bool> {
	        return .init(manager: cuckoo_manager, name: "shouldDisplayEmptyState", callMatcher: callMatcher, sourceLocation: sourceLocation)
	    }
	    
	
	    
	    @discardableResult
	    func viewIsReady<M1: Cuckoo.Matchable>(layoutMetadata: M1) -> Cuckoo.__DoNotUse<(ProjectLayoutMetadata), Void> where M1.MatchedType == ProjectLayoutMetadata {
	        let matchers: [Cuckoo.ParameterMatcher<(ProjectLayoutMetadata)>] = [wrap(matchable: layoutMetadata) { $0 }]
	        return cuckoo_manager.verify("viewIsReady(layoutMetadata: ProjectLayoutMetadata)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func viewDidAppear() -> Cuckoo.__DoNotUse<(), Void> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("viewDidAppear()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func activateProjectDisplay<M1: Cuckoo.Matchable>(type: M1) -> Cuckoo.__DoNotUse<(ProjectDisplayType), Void> where M1.MatchedType == ProjectDisplayType {
	        let matchers: [Cuckoo.ParameterMatcher<(ProjectDisplayType)>] = [wrap(matchable: type) { $0 }]
	        return cuckoo_manager.verify("activateProjectDisplay(type: ProjectDisplayType)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func activateProject<M1: Cuckoo.Matchable>(at index: M1) -> Cuckoo.__DoNotUse<(Int), Void> where M1.MatchedType == Int {
	        let matchers: [Cuckoo.ParameterMatcher<(Int)>] = [wrap(matchable: index) { $0 }]
	        return cuckoo_manager.verify("activateProject(at: Int)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func activateVotesDetails() -> Cuckoo.__DoNotUse<(), Void> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("activateVotesDetails()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func activateHelp() -> Cuckoo.__DoNotUse<(), Void> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("activateHelp()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func viewModel<M1: Cuckoo.Matchable>(at index: M1) -> Cuckoo.__DoNotUse<(Int), ProjectOneOfViewModel> where M1.MatchedType == Int {
	        let matchers: [Cuckoo.ParameterMatcher<(Int)>] = [wrap(matchable: index) { $0 }]
	        return cuckoo_manager.verify("viewModel(at: Int) -> ProjectOneOfViewModel", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

 class ProjectsPresenterProtocolStub: ProjectsPresenterProtocol {
    
    
     var displayType: ProjectDisplayType {
        get {
            return DefaultValueRegistry.defaultValue(for: (ProjectDisplayType).self)
        }
        
    }
    
    
     var numberOfProjects: Int {
        get {
            return DefaultValueRegistry.defaultValue(for: (Int).self)
        }
        
    }
    
    
    public var shouldDisplayEmptyState: Bool {
        get {
            return DefaultValueRegistry.defaultValue(for: (Bool).self)
        }
        
    }
    

    

    
     func viewIsReady(layoutMetadata: ProjectLayoutMetadata)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func viewDidAppear()   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func activateProjectDisplay(type: ProjectDisplayType)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func activateProject(at index: Int)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func activateVotesDetails()   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func activateHelp()   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func viewModel(at index: Int) -> ProjectOneOfViewModel  {
        return DefaultValueRegistry.defaultValue(for: (ProjectOneOfViewModel).self)
    }
    
}



 class MockProjectsInteractorInputProtocol: ProjectsInteractorInputProtocol, Cuckoo.ProtocolMock {
    
     typealias MocksType = ProjectsInteractorInputProtocol
    
     typealias Stubbing = __StubbingProxy_ProjectsInteractorInputProtocol
     typealias Verification = __VerificationProxy_ProjectsInteractorInputProtocol

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: ProjectsInteractorInputProtocol?

     func enableDefaultImplementation(_ stub: ProjectsInteractorInputProtocol) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    

    

    
    
    
     func setup()  {
        
    return cuckoo_manager.call("setup()",
            parameters: (),
            escapingParameters: (),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.setup())
        
    }
    
    
    
     func refreshVotes()  {
        
    return cuckoo_manager.call("refreshVotes()",
            parameters: (),
            escapingParameters: (),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.refreshVotes())
        
    }
    
    
    
     func vote(for project: ProjectVote)  {
        
    return cuckoo_manager.call("vote(for: ProjectVote)",
            parameters: (project),
            escapingParameters: (project),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.vote(for: project))
        
    }
    
    
    
     func toggleFavorite(for projectId: String)  {
        
    return cuckoo_manager.call("toggleFavorite(for: String)",
            parameters: (projectId),
            escapingParameters: (projectId),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.toggleFavorite(for: projectId))
        
    }
    

	 struct __StubbingProxy_ProjectsInteractorInputProtocol: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func setup() -> Cuckoo.ProtocolStubNoReturnFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockProjectsInteractorInputProtocol.self, method: "setup()", parameterMatchers: matchers))
	    }
	    
	    func refreshVotes() -> Cuckoo.ProtocolStubNoReturnFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockProjectsInteractorInputProtocol.self, method: "refreshVotes()", parameterMatchers: matchers))
	    }
	    
	    func vote<M1: Cuckoo.Matchable>(for project: M1) -> Cuckoo.ProtocolStubNoReturnFunction<(ProjectVote)> where M1.MatchedType == ProjectVote {
	        let matchers: [Cuckoo.ParameterMatcher<(ProjectVote)>] = [wrap(matchable: project) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockProjectsInteractorInputProtocol.self, method: "vote(for: ProjectVote)", parameterMatchers: matchers))
	    }
	    
	    func toggleFavorite<M1: Cuckoo.Matchable>(for projectId: M1) -> Cuckoo.ProtocolStubNoReturnFunction<(String)> where M1.MatchedType == String {
	        let matchers: [Cuckoo.ParameterMatcher<(String)>] = [wrap(matchable: projectId) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockProjectsInteractorInputProtocol.self, method: "toggleFavorite(for: String)", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_ProjectsInteractorInputProtocol: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func setup() -> Cuckoo.__DoNotUse<(), Void> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("setup()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func refreshVotes() -> Cuckoo.__DoNotUse<(), Void> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("refreshVotes()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func vote<M1: Cuckoo.Matchable>(for project: M1) -> Cuckoo.__DoNotUse<(ProjectVote), Void> where M1.MatchedType == ProjectVote {
	        let matchers: [Cuckoo.ParameterMatcher<(ProjectVote)>] = [wrap(matchable: project) { $0 }]
	        return cuckoo_manager.verify("vote(for: ProjectVote)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func toggleFavorite<M1: Cuckoo.Matchable>(for projectId: M1) -> Cuckoo.__DoNotUse<(String), Void> where M1.MatchedType == String {
	        let matchers: [Cuckoo.ParameterMatcher<(String)>] = [wrap(matchable: projectId) { $0 }]
	        return cuckoo_manager.verify("toggleFavorite(for: String)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

 class ProjectsInteractorInputProtocolStub: ProjectsInteractorInputProtocol {
    

    

    
     func setup()   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func refreshVotes()   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func vote(for project: ProjectVote)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func toggleFavorite(for projectId: String)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
}



 class MockProjectsInteractorOutputProtocol: ProjectsInteractorOutputProtocol, Cuckoo.ProtocolMock {
    
     typealias MocksType = ProjectsInteractorOutputProtocol
    
     typealias Stubbing = __StubbingProxy_ProjectsInteractorOutputProtocol
     typealias Verification = __VerificationProxy_ProjectsInteractorOutputProtocol

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: ProjectsInteractorOutputProtocol?

     func enableDefaultImplementation(_ stub: ProjectsInteractorOutputProtocol) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    

    

    
    
    
     func didReceive(votes: VotesData)  {
        
    return cuckoo_manager.call("didReceive(votes: VotesData)",
            parameters: (votes),
            escapingParameters: (votes),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.didReceive(votes: votes))
        
    }
    
    
    
     func didReceiveVotesDataProvider(error: Error)  {
        
    return cuckoo_manager.call("didReceiveVotesDataProvider(error: Error)",
            parameters: (error),
            escapingParameters: (error),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.didReceiveVotesDataProvider(error: error))
        
    }
    
    
    
     func didVote(for project: ProjectVote)  {
        
    return cuckoo_manager.call("didVote(for: ProjectVote)",
            parameters: (project),
            escapingParameters: (project),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.didVote(for: project))
        
    }
    
    
    
     func didReceiveVote(error: Error, for project: ProjectVote)  {
        
    return cuckoo_manager.call("didReceiveVote(error: Error, for: ProjectVote)",
            parameters: (error, project),
            escapingParameters: (error, project),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.didReceiveVote(error: error, for: project))
        
    }
    
    
    
     func didToggleFavorite(for projectId: String)  {
        
    return cuckoo_manager.call("didToggleFavorite(for: String)",
            parameters: (projectId),
            escapingParameters: (projectId),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.didToggleFavorite(for: projectId))
        
    }
    
    
    
     func didReceiveTogglingFavorite(error: Error, for projectId: String)  {
        
    return cuckoo_manager.call("didReceiveTogglingFavorite(error: Error, for: String)",
            parameters: (error, projectId),
            escapingParameters: (error, projectId),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.didReceiveTogglingFavorite(error: error, for: projectId))
        
    }
    

	 struct __StubbingProxy_ProjectsInteractorOutputProtocol: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func didReceive<M1: Cuckoo.Matchable>(votes: M1) -> Cuckoo.ProtocolStubNoReturnFunction<(VotesData)> where M1.MatchedType == VotesData {
	        let matchers: [Cuckoo.ParameterMatcher<(VotesData)>] = [wrap(matchable: votes) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockProjectsInteractorOutputProtocol.self, method: "didReceive(votes: VotesData)", parameterMatchers: matchers))
	    }
	    
	    func didReceiveVotesDataProvider<M1: Cuckoo.Matchable>(error: M1) -> Cuckoo.ProtocolStubNoReturnFunction<(Error)> where M1.MatchedType == Error {
	        let matchers: [Cuckoo.ParameterMatcher<(Error)>] = [wrap(matchable: error) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockProjectsInteractorOutputProtocol.self, method: "didReceiveVotesDataProvider(error: Error)", parameterMatchers: matchers))
	    }
	    
	    func didVote<M1: Cuckoo.Matchable>(for project: M1) -> Cuckoo.ProtocolStubNoReturnFunction<(ProjectVote)> where M1.MatchedType == ProjectVote {
	        let matchers: [Cuckoo.ParameterMatcher<(ProjectVote)>] = [wrap(matchable: project) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockProjectsInteractorOutputProtocol.self, method: "didVote(for: ProjectVote)", parameterMatchers: matchers))
	    }
	    
	    func didReceiveVote<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(error: M1, for project: M2) -> Cuckoo.ProtocolStubNoReturnFunction<(Error, ProjectVote)> where M1.MatchedType == Error, M2.MatchedType == ProjectVote {
	        let matchers: [Cuckoo.ParameterMatcher<(Error, ProjectVote)>] = [wrap(matchable: error) { $0.0 }, wrap(matchable: project) { $0.1 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockProjectsInteractorOutputProtocol.self, method: "didReceiveVote(error: Error, for: ProjectVote)", parameterMatchers: matchers))
	    }
	    
	    func didToggleFavorite<M1: Cuckoo.Matchable>(for projectId: M1) -> Cuckoo.ProtocolStubNoReturnFunction<(String)> where M1.MatchedType == String {
	        let matchers: [Cuckoo.ParameterMatcher<(String)>] = [wrap(matchable: projectId) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockProjectsInteractorOutputProtocol.self, method: "didToggleFavorite(for: String)", parameterMatchers: matchers))
	    }
	    
	    func didReceiveTogglingFavorite<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(error: M1, for projectId: M2) -> Cuckoo.ProtocolStubNoReturnFunction<(Error, String)> where M1.MatchedType == Error, M2.MatchedType == String {
	        let matchers: [Cuckoo.ParameterMatcher<(Error, String)>] = [wrap(matchable: error) { $0.0 }, wrap(matchable: projectId) { $0.1 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockProjectsInteractorOutputProtocol.self, method: "didReceiveTogglingFavorite(error: Error, for: String)", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_ProjectsInteractorOutputProtocol: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func didReceive<M1: Cuckoo.Matchable>(votes: M1) -> Cuckoo.__DoNotUse<(VotesData), Void> where M1.MatchedType == VotesData {
	        let matchers: [Cuckoo.ParameterMatcher<(VotesData)>] = [wrap(matchable: votes) { $0 }]
	        return cuckoo_manager.verify("didReceive(votes: VotesData)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func didReceiveVotesDataProvider<M1: Cuckoo.Matchable>(error: M1) -> Cuckoo.__DoNotUse<(Error), Void> where M1.MatchedType == Error {
	        let matchers: [Cuckoo.ParameterMatcher<(Error)>] = [wrap(matchable: error) { $0 }]
	        return cuckoo_manager.verify("didReceiveVotesDataProvider(error: Error)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func didVote<M1: Cuckoo.Matchable>(for project: M1) -> Cuckoo.__DoNotUse<(ProjectVote), Void> where M1.MatchedType == ProjectVote {
	        let matchers: [Cuckoo.ParameterMatcher<(ProjectVote)>] = [wrap(matchable: project) { $0 }]
	        return cuckoo_manager.verify("didVote(for: ProjectVote)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func didReceiveVote<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(error: M1, for project: M2) -> Cuckoo.__DoNotUse<(Error, ProjectVote), Void> where M1.MatchedType == Error, M2.MatchedType == ProjectVote {
	        let matchers: [Cuckoo.ParameterMatcher<(Error, ProjectVote)>] = [wrap(matchable: error) { $0.0 }, wrap(matchable: project) { $0.1 }]
	        return cuckoo_manager.verify("didReceiveVote(error: Error, for: ProjectVote)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func didToggleFavorite<M1: Cuckoo.Matchable>(for projectId: M1) -> Cuckoo.__DoNotUse<(String), Void> where M1.MatchedType == String {
	        let matchers: [Cuckoo.ParameterMatcher<(String)>] = [wrap(matchable: projectId) { $0 }]
	        return cuckoo_manager.verify("didToggleFavorite(for: String)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func didReceiveTogglingFavorite<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(error: M1, for projectId: M2) -> Cuckoo.__DoNotUse<(Error, String), Void> where M1.MatchedType == Error, M2.MatchedType == String {
	        let matchers: [Cuckoo.ParameterMatcher<(Error, String)>] = [wrap(matchable: error) { $0.0 }, wrap(matchable: projectId) { $0.1 }]
	        return cuckoo_manager.verify("didReceiveTogglingFavorite(error: Error, for: String)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

 class ProjectsInteractorOutputProtocolStub: ProjectsInteractorOutputProtocol {
    

    

    
     func didReceive(votes: VotesData)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func didReceiveVotesDataProvider(error: Error)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func didVote(for project: ProjectVote)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func didReceiveVote(error: Error, for project: ProjectVote)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func didToggleFavorite(for projectId: String)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func didReceiveTogglingFavorite(error: Error, for projectId: String)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
}



 class MockProjectsListPresenterDelegate: ProjectsListPresenterDelegate, Cuckoo.ProtocolMock {
    
     typealias MocksType = ProjectsListPresenterDelegate
    
     typealias Stubbing = __StubbingProxy_ProjectsListPresenterDelegate
     typealias Verification = __VerificationProxy_ProjectsListPresenterDelegate

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: ProjectsListPresenterDelegate?

     func enableDefaultImplementation(_ stub: ProjectsListPresenterDelegate) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    

    

    
    
    
     func didSelectVoting(for project: ProjectData, in projectsList: ProjectsListPresenterProtocol) -> Bool {
        
    return cuckoo_manager.call("didSelectVoting(for: ProjectData, in: ProjectsListPresenterProtocol) -> Bool",
            parameters: (project, projectsList),
            escapingParameters: (project, projectsList),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.didSelectVoting(for: project, in: projectsList))
        
    }
    
    
    
     func didToggleFavorite(for project: ProjectData, in projectsList: ProjectsListPresenterProtocol) -> Bool {
        
    return cuckoo_manager.call("didToggleFavorite(for: ProjectData, in: ProjectsListPresenterProtocol) -> Bool",
            parameters: (project, projectsList),
            escapingParameters: (project, projectsList),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.didToggleFavorite(for: project, in: projectsList))
        
    }
    

	 struct __StubbingProxy_ProjectsListPresenterDelegate: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func didSelectVoting<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(for project: M1, in projectsList: M2) -> Cuckoo.ProtocolStubFunction<(ProjectData, ProjectsListPresenterProtocol), Bool> where M1.MatchedType == ProjectData, M2.MatchedType == ProjectsListPresenterProtocol {
	        let matchers: [Cuckoo.ParameterMatcher<(ProjectData, ProjectsListPresenterProtocol)>] = [wrap(matchable: project) { $0.0 }, wrap(matchable: projectsList) { $0.1 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockProjectsListPresenterDelegate.self, method: "didSelectVoting(for: ProjectData, in: ProjectsListPresenterProtocol) -> Bool", parameterMatchers: matchers))
	    }
	    
	    func didToggleFavorite<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(for project: M1, in projectsList: M2) -> Cuckoo.ProtocolStubFunction<(ProjectData, ProjectsListPresenterProtocol), Bool> where M1.MatchedType == ProjectData, M2.MatchedType == ProjectsListPresenterProtocol {
	        let matchers: [Cuckoo.ParameterMatcher<(ProjectData, ProjectsListPresenterProtocol)>] = [wrap(matchable: project) { $0.0 }, wrap(matchable: projectsList) { $0.1 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockProjectsListPresenterDelegate.self, method: "didToggleFavorite(for: ProjectData, in: ProjectsListPresenterProtocol) -> Bool", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_ProjectsListPresenterDelegate: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func didSelectVoting<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(for project: M1, in projectsList: M2) -> Cuckoo.__DoNotUse<(ProjectData, ProjectsListPresenterProtocol), Bool> where M1.MatchedType == ProjectData, M2.MatchedType == ProjectsListPresenterProtocol {
	        let matchers: [Cuckoo.ParameterMatcher<(ProjectData, ProjectsListPresenterProtocol)>] = [wrap(matchable: project) { $0.0 }, wrap(matchable: projectsList) { $0.1 }]
	        return cuckoo_manager.verify("didSelectVoting(for: ProjectData, in: ProjectsListPresenterProtocol) -> Bool", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func didToggleFavorite<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(for project: M1, in projectsList: M2) -> Cuckoo.__DoNotUse<(ProjectData, ProjectsListPresenterProtocol), Bool> where M1.MatchedType == ProjectData, M2.MatchedType == ProjectsListPresenterProtocol {
	        let matchers: [Cuckoo.ParameterMatcher<(ProjectData, ProjectsListPresenterProtocol)>] = [wrap(matchable: project) { $0.0 }, wrap(matchable: projectsList) { $0.1 }]
	        return cuckoo_manager.verify("didToggleFavorite(for: ProjectData, in: ProjectsListPresenterProtocol) -> Bool", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

 class ProjectsListPresenterDelegateStub: ProjectsListPresenterDelegate {
    

    

    
     func didSelectVoting(for project: ProjectData, in projectsList: ProjectsListPresenterProtocol) -> Bool  {
        return DefaultValueRegistry.defaultValue(for: (Bool).self)
    }
    
     func didToggleFavorite(for project: ProjectData, in projectsList: ProjectsListPresenterProtocol) -> Bool  {
        return DefaultValueRegistry.defaultValue(for: (Bool).self)
    }
    
}



 class MockProjectsListPresenterProtocol: ProjectsListPresenterProtocol, Cuckoo.ProtocolMock {
    
     typealias MocksType = ProjectsListPresenterProtocol
    
     typealias Stubbing = __StubbingProxy_ProjectsListPresenterProtocol
     typealias Verification = __VerificationProxy_ProjectsListPresenterProtocol

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: ProjectsListPresenterProtocol?

     func enableDefaultImplementation(_ stub: ProjectsListPresenterProtocol) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    
    
    
     var view: ProjectsListViewProtocol? {
        get {
            return cuckoo_manager.getter("view",
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.view)
        }
        
        set {
            cuckoo_manager.setter("view",
                value: newValue,
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.view = newValue)
        }
        
    }
    
    
    
     var loadingState: ProjectDataLoadingState {
        get {
            return cuckoo_manager.getter("loadingState",
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.loadingState)
        }
        
    }
    
    
    
     var numberOfProjects: Int {
        get {
            return cuckoo_manager.getter("numberOfProjects",
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.numberOfProjects)
        }
        
    }
    

    

    
    
    
     func setup(layoutMetadata: ProjectLayoutMetadata)  {
        
    return cuckoo_manager.call("setup(layoutMetadata: ProjectLayoutMetadata)",
            parameters: (layoutMetadata),
            escapingParameters: (layoutMetadata),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.setup(layoutMetadata: layoutMetadata))
        
    }
    
    
    
     func refresh()  {
        
    return cuckoo_manager.call("refresh()",
            parameters: (),
            escapingParameters: (),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.refresh())
        
    }
    
    
    
     func setFavorite(value: Bool, for projectId: String)  {
        
    return cuckoo_manager.call("setFavorite(value: Bool, for: String)",
            parameters: (value, projectId),
            escapingParameters: (value, projectId),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.setFavorite(value: value, for: projectId))
        
    }
    
    
    
     func viewModel(at index: Int) -> ProjectOneOfViewModel {
        
    return cuckoo_manager.call("viewModel(at: Int) -> ProjectOneOfViewModel",
            parameters: (index),
            escapingParameters: (index),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.viewModel(at: index))
        
    }
    

	 struct __StubbingProxy_ProjectsListPresenterProtocol: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    var view: Cuckoo.ProtocolToBeStubbedOptionalProperty<MockProjectsListPresenterProtocol, ProjectsListViewProtocol> {
	        return .init(manager: cuckoo_manager, name: "view")
	    }
	    
	    
	    var loadingState: Cuckoo.ProtocolToBeStubbedReadOnlyProperty<MockProjectsListPresenterProtocol, ProjectDataLoadingState> {
	        return .init(manager: cuckoo_manager, name: "loadingState")
	    }
	    
	    
	    var numberOfProjects: Cuckoo.ProtocolToBeStubbedReadOnlyProperty<MockProjectsListPresenterProtocol, Int> {
	        return .init(manager: cuckoo_manager, name: "numberOfProjects")
	    }
	    
	    
	    func setup<M1: Cuckoo.Matchable>(layoutMetadata: M1) -> Cuckoo.ProtocolStubNoReturnFunction<(ProjectLayoutMetadata)> where M1.MatchedType == ProjectLayoutMetadata {
	        let matchers: [Cuckoo.ParameterMatcher<(ProjectLayoutMetadata)>] = [wrap(matchable: layoutMetadata) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockProjectsListPresenterProtocol.self, method: "setup(layoutMetadata: ProjectLayoutMetadata)", parameterMatchers: matchers))
	    }
	    
	    func refresh() -> Cuckoo.ProtocolStubNoReturnFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockProjectsListPresenterProtocol.self, method: "refresh()", parameterMatchers: matchers))
	    }
	    
	    func setFavorite<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(value: M1, for projectId: M2) -> Cuckoo.ProtocolStubNoReturnFunction<(Bool, String)> where M1.MatchedType == Bool, M2.MatchedType == String {
	        let matchers: [Cuckoo.ParameterMatcher<(Bool, String)>] = [wrap(matchable: value) { $0.0 }, wrap(matchable: projectId) { $0.1 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockProjectsListPresenterProtocol.self, method: "setFavorite(value: Bool, for: String)", parameterMatchers: matchers))
	    }
	    
	    func viewModel<M1: Cuckoo.Matchable>(at index: M1) -> Cuckoo.ProtocolStubFunction<(Int), ProjectOneOfViewModel> where M1.MatchedType == Int {
	        let matchers: [Cuckoo.ParameterMatcher<(Int)>] = [wrap(matchable: index) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockProjectsListPresenterProtocol.self, method: "viewModel(at: Int) -> ProjectOneOfViewModel", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_ProjectsListPresenterProtocol: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	    
	    var view: Cuckoo.VerifyOptionalProperty<ProjectsListViewProtocol> {
	        return .init(manager: cuckoo_manager, name: "view", callMatcher: callMatcher, sourceLocation: sourceLocation)
	    }
	    
	    
	    var loadingState: Cuckoo.VerifyReadOnlyProperty<ProjectDataLoadingState> {
	        return .init(manager: cuckoo_manager, name: "loadingState", callMatcher: callMatcher, sourceLocation: sourceLocation)
	    }
	    
	    
	    var numberOfProjects: Cuckoo.VerifyReadOnlyProperty<Int> {
	        return .init(manager: cuckoo_manager, name: "numberOfProjects", callMatcher: callMatcher, sourceLocation: sourceLocation)
	    }
	    
	
	    
	    @discardableResult
	    func setup<M1: Cuckoo.Matchable>(layoutMetadata: M1) -> Cuckoo.__DoNotUse<(ProjectLayoutMetadata), Void> where M1.MatchedType == ProjectLayoutMetadata {
	        let matchers: [Cuckoo.ParameterMatcher<(ProjectLayoutMetadata)>] = [wrap(matchable: layoutMetadata) { $0 }]
	        return cuckoo_manager.verify("setup(layoutMetadata: ProjectLayoutMetadata)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func refresh() -> Cuckoo.__DoNotUse<(), Void> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("refresh()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func setFavorite<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(value: M1, for projectId: M2) -> Cuckoo.__DoNotUse<(Bool, String), Void> where M1.MatchedType == Bool, M2.MatchedType == String {
	        let matchers: [Cuckoo.ParameterMatcher<(Bool, String)>] = [wrap(matchable: value) { $0.0 }, wrap(matchable: projectId) { $0.1 }]
	        return cuckoo_manager.verify("setFavorite(value: Bool, for: String)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func viewModel<M1: Cuckoo.Matchable>(at index: M1) -> Cuckoo.__DoNotUse<(Int), ProjectOneOfViewModel> where M1.MatchedType == Int {
	        let matchers: [Cuckoo.ParameterMatcher<(Int)>] = [wrap(matchable: index) { $0 }]
	        return cuckoo_manager.verify("viewModel(at: Int) -> ProjectOneOfViewModel", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

 class ProjectsListPresenterProtocolStub: ProjectsListPresenterProtocol {
    
    
     var view: ProjectsListViewProtocol? {
        get {
            return DefaultValueRegistry.defaultValue(for: (ProjectsListViewProtocol?).self)
        }
        
        set { }
        
    }
    
    
     var loadingState: ProjectDataLoadingState {
        get {
            return DefaultValueRegistry.defaultValue(for: (ProjectDataLoadingState).self)
        }
        
    }
    
    
     var numberOfProjects: Int {
        get {
            return DefaultValueRegistry.defaultValue(for: (Int).self)
        }
        
    }
    

    

    
     func setup(layoutMetadata: ProjectLayoutMetadata)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func refresh()   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func setFavorite(value: Bool, for projectId: String)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func viewModel(at index: Int) -> ProjectOneOfViewModel  {
        return DefaultValueRegistry.defaultValue(for: (ProjectOneOfViewModel).self)
    }
    
}



 class MockProjectsListInteractorInputProtocol: ProjectsListInteractorInputProtocol, Cuckoo.ProtocolMock {
    
     typealias MocksType = ProjectsListInteractorInputProtocol
    
     typealias Stubbing = __StubbingProxy_ProjectsListInteractorInputProtocol
     typealias Verification = __VerificationProxy_ProjectsListInteractorInputProtocol

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: ProjectsListInteractorInputProtocol?

     func enableDefaultImplementation(_ stub: ProjectsListInteractorInputProtocol) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    

    

    
    
    
     func setup()  {
        
    return cuckoo_manager.call("setup()",
            parameters: (),
            escapingParameters: (),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.setup())
        
    }
    
    
    
     func refresh()  {
        
    return cuckoo_manager.call("refresh()",
            parameters: (),
            escapingParameters: (),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.refresh())
        
    }
    

	 struct __StubbingProxy_ProjectsListInteractorInputProtocol: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func setup() -> Cuckoo.ProtocolStubNoReturnFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockProjectsListInteractorInputProtocol.self, method: "setup()", parameterMatchers: matchers))
	    }
	    
	    func refresh() -> Cuckoo.ProtocolStubNoReturnFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockProjectsListInteractorInputProtocol.self, method: "refresh()", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_ProjectsListInteractorInputProtocol: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func setup() -> Cuckoo.__DoNotUse<(), Void> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("setup()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func refresh() -> Cuckoo.__DoNotUse<(), Void> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("refresh()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

 class ProjectsListInteractorInputProtocolStub: ProjectsListInteractorInputProtocol {
    

    

    
     func setup()   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func refresh()   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
}



 class MockProjectsListInteractorOutputProtocol: ProjectsListInteractorOutputProtocol, Cuckoo.ProtocolMock {
    
     typealias MocksType = ProjectsListInteractorOutputProtocol
    
     typealias Stubbing = __StubbingProxy_ProjectsListInteractorOutputProtocol
     typealias Verification = __VerificationProxy_ProjectsListInteractorOutputProtocol

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: ProjectsListInteractorOutputProtocol?

     func enableDefaultImplementation(_ stub: ProjectsListInteractorOutputProtocol) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    

    

    
    
    
     func didReceiveProjects(changes: [DataProviderChange<ProjectData>], at page: UInt)  {
        
    return cuckoo_manager.call("didReceiveProjects(changes: [DataProviderChange<ProjectData>], at: UInt)",
            parameters: (changes, page),
            escapingParameters: (changes, page),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.didReceiveProjects(changes: changes, at: page))
        
    }
    
    
    
     func didReceiveProjectsDataProvider(error: Error)  {
        
    return cuckoo_manager.call("didReceiveProjectsDataProvider(error: Error)",
            parameters: (error),
            escapingParameters: (error),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.didReceiveProjectsDataProvider(error: error))
        
    }
    
    
    
     func didViewProject(with projectId: String)  {
        
    return cuckoo_manager.call("didViewProject(with: String)",
            parameters: (projectId),
            escapingParameters: (projectId),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.didViewProject(with: projectId))
        
    }
    

	 struct __StubbingProxy_ProjectsListInteractorOutputProtocol: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func didReceiveProjects<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(changes: M1, at page: M2) -> Cuckoo.ProtocolStubNoReturnFunction<([DataProviderChange<ProjectData>], UInt)> where M1.MatchedType == [DataProviderChange<ProjectData>], M2.MatchedType == UInt {
	        let matchers: [Cuckoo.ParameterMatcher<([DataProviderChange<ProjectData>], UInt)>] = [wrap(matchable: changes) { $0.0 }, wrap(matchable: page) { $0.1 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockProjectsListInteractorOutputProtocol.self, method: "didReceiveProjects(changes: [DataProviderChange<ProjectData>], at: UInt)", parameterMatchers: matchers))
	    }
	    
	    func didReceiveProjectsDataProvider<M1: Cuckoo.Matchable>(error: M1) -> Cuckoo.ProtocolStubNoReturnFunction<(Error)> where M1.MatchedType == Error {
	        let matchers: [Cuckoo.ParameterMatcher<(Error)>] = [wrap(matchable: error) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockProjectsListInteractorOutputProtocol.self, method: "didReceiveProjectsDataProvider(error: Error)", parameterMatchers: matchers))
	    }
	    
	    func didViewProject<M1: Cuckoo.Matchable>(with projectId: M1) -> Cuckoo.ProtocolStubNoReturnFunction<(String)> where M1.MatchedType == String {
	        let matchers: [Cuckoo.ParameterMatcher<(String)>] = [wrap(matchable: projectId) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockProjectsListInteractorOutputProtocol.self, method: "didViewProject(with: String)", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_ProjectsListInteractorOutputProtocol: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func didReceiveProjects<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(changes: M1, at page: M2) -> Cuckoo.__DoNotUse<([DataProviderChange<ProjectData>], UInt), Void> where M1.MatchedType == [DataProviderChange<ProjectData>], M2.MatchedType == UInt {
	        let matchers: [Cuckoo.ParameterMatcher<([DataProviderChange<ProjectData>], UInt)>] = [wrap(matchable: changes) { $0.0 }, wrap(matchable: page) { $0.1 }]
	        return cuckoo_manager.verify("didReceiveProjects(changes: [DataProviderChange<ProjectData>], at: UInt)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func didReceiveProjectsDataProvider<M1: Cuckoo.Matchable>(error: M1) -> Cuckoo.__DoNotUse<(Error), Void> where M1.MatchedType == Error {
	        let matchers: [Cuckoo.ParameterMatcher<(Error)>] = [wrap(matchable: error) { $0 }]
	        return cuckoo_manager.verify("didReceiveProjectsDataProvider(error: Error)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func didViewProject<M1: Cuckoo.Matchable>(with projectId: M1) -> Cuckoo.__DoNotUse<(String), Void> where M1.MatchedType == String {
	        let matchers: [Cuckoo.ParameterMatcher<(String)>] = [wrap(matchable: projectId) { $0 }]
	        return cuckoo_manager.verify("didViewProject(with: String)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

 class ProjectsListInteractorOutputProtocolStub: ProjectsListInteractorOutputProtocol {
    

    

    
     func didReceiveProjects(changes: [DataProviderChange<ProjectData>], at page: UInt)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func didReceiveProjectsDataProvider(error: Error)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func didViewProject(with projectId: String)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
}



 class MockProjectsWireframeProtocol: ProjectsWireframeProtocol, Cuckoo.ProtocolMock {
    
     typealias MocksType = ProjectsWireframeProtocol
    
     typealias Stubbing = __StubbingProxy_ProjectsWireframeProtocol
     typealias Verification = __VerificationProxy_ProjectsWireframeProtocol

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: ProjectsWireframeProtocol?

     func enableDefaultImplementation(_ stub: ProjectsWireframeProtocol) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    

    

    
    
    
     func showVotingView(from view: ProjectsViewProtocol?, with model: VoteViewModelProtocol, delegate: VoteViewDelegate?)  {
        
    return cuckoo_manager.call("showVotingView(from: ProjectsViewProtocol?, with: VoteViewModelProtocol, delegate: VoteViewDelegate?)",
            parameters: (view, model, delegate),
            escapingParameters: (view, model, delegate),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.showVotingView(from: view, with: model, delegate: delegate))
        
    }
    
    
    
     func showProjectDetails(from view: ProjectsViewProtocol?, projectId: String)  {
        
    return cuckoo_manager.call("showProjectDetails(from: ProjectsViewProtocol?, projectId: String)",
            parameters: (view, projectId),
            escapingParameters: (view, projectId),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.showProjectDetails(from: view, projectId: projectId))
        
    }
    
    
    
     func showVotingHistory(from view: ProjectsViewProtocol?)  {
        
    return cuckoo_manager.call("showVotingHistory(from: ProjectsViewProtocol?)",
            parameters: (view),
            escapingParameters: (view),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.showVotingHistory(from: view))
        
    }
    
    
    
     func present(message: String?, title: String?, closeAction: String?, from view: ControllerBackedProtocol?)  {
        
    return cuckoo_manager.call("present(message: String?, title: String?, closeAction: String?, from: ControllerBackedProtocol?)",
            parameters: (message, title, closeAction, view),
            escapingParameters: (message, title, closeAction, view),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.present(message: message, title: title, closeAction: closeAction, from: view))
        
    }
    
    
    
     func present(message: String?, title: String?, actions: [AlertPresentableAction], from view: ControllerBackedProtocol?)  {
        
    return cuckoo_manager.call("present(message: String?, title: String?, actions: [AlertPresentableAction], from: ControllerBackedProtocol?)",
            parameters: (message, title, actions, view),
            escapingParameters: (message, title, actions, view),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.present(message: message, title: title, actions: actions, from: view))
        
    }
    
    
    
     func present(error: Error, from view: ControllerBackedProtocol?) -> Bool {
        
    return cuckoo_manager.call("present(error: Error, from: ControllerBackedProtocol?) -> Bool",
            parameters: (error, view),
            escapingParameters: (error, view),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.present(error: error, from: view))
        
    }
    

	 struct __StubbingProxy_ProjectsWireframeProtocol: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func showVotingView<M1: Cuckoo.OptionalMatchable, M2: Cuckoo.Matchable, M3: Cuckoo.OptionalMatchable>(from view: M1, with model: M2, delegate: M3) -> Cuckoo.ProtocolStubNoReturnFunction<(ProjectsViewProtocol?, VoteViewModelProtocol, VoteViewDelegate?)> where M1.OptionalMatchedType == ProjectsViewProtocol, M2.MatchedType == VoteViewModelProtocol, M3.OptionalMatchedType == VoteViewDelegate {
	        let matchers: [Cuckoo.ParameterMatcher<(ProjectsViewProtocol?, VoteViewModelProtocol, VoteViewDelegate?)>] = [wrap(matchable: view) { $0.0 }, wrap(matchable: model) { $0.1 }, wrap(matchable: delegate) { $0.2 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockProjectsWireframeProtocol.self, method: "showVotingView(from: ProjectsViewProtocol?, with: VoteViewModelProtocol, delegate: VoteViewDelegate?)", parameterMatchers: matchers))
	    }
	    
	    func showProjectDetails<M1: Cuckoo.OptionalMatchable, M2: Cuckoo.Matchable>(from view: M1, projectId: M2) -> Cuckoo.ProtocolStubNoReturnFunction<(ProjectsViewProtocol?, String)> where M1.OptionalMatchedType == ProjectsViewProtocol, M2.MatchedType == String {
	        let matchers: [Cuckoo.ParameterMatcher<(ProjectsViewProtocol?, String)>] = [wrap(matchable: view) { $0.0 }, wrap(matchable: projectId) { $0.1 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockProjectsWireframeProtocol.self, method: "showProjectDetails(from: ProjectsViewProtocol?, projectId: String)", parameterMatchers: matchers))
	    }
	    
	    func showVotingHistory<M1: Cuckoo.OptionalMatchable>(from view: M1) -> Cuckoo.ProtocolStubNoReturnFunction<(ProjectsViewProtocol?)> where M1.OptionalMatchedType == ProjectsViewProtocol {
	        let matchers: [Cuckoo.ParameterMatcher<(ProjectsViewProtocol?)>] = [wrap(matchable: view) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockProjectsWireframeProtocol.self, method: "showVotingHistory(from: ProjectsViewProtocol?)", parameterMatchers: matchers))
	    }
	    
	    func present<M1: Cuckoo.OptionalMatchable, M2: Cuckoo.OptionalMatchable, M3: Cuckoo.OptionalMatchable, M4: Cuckoo.OptionalMatchable>(message: M1, title: M2, closeAction: M3, from view: M4) -> Cuckoo.ProtocolStubNoReturnFunction<(String?, String?, String?, ControllerBackedProtocol?)> where M1.OptionalMatchedType == String, M2.OptionalMatchedType == String, M3.OptionalMatchedType == String, M4.OptionalMatchedType == ControllerBackedProtocol {
	        let matchers: [Cuckoo.ParameterMatcher<(String?, String?, String?, ControllerBackedProtocol?)>] = [wrap(matchable: message) { $0.0 }, wrap(matchable: title) { $0.1 }, wrap(matchable: closeAction) { $0.2 }, wrap(matchable: view) { $0.3 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockProjectsWireframeProtocol.self, method: "present(message: String?, title: String?, closeAction: String?, from: ControllerBackedProtocol?)", parameterMatchers: matchers))
	    }
	    
	    func present<M1: Cuckoo.OptionalMatchable, M2: Cuckoo.OptionalMatchable, M3: Cuckoo.Matchable, M4: Cuckoo.OptionalMatchable>(message: M1, title: M2, actions: M3, from view: M4) -> Cuckoo.ProtocolStubNoReturnFunction<(String?, String?, [AlertPresentableAction], ControllerBackedProtocol?)> where M1.OptionalMatchedType == String, M2.OptionalMatchedType == String, M3.MatchedType == [AlertPresentableAction], M4.OptionalMatchedType == ControllerBackedProtocol {
	        let matchers: [Cuckoo.ParameterMatcher<(String?, String?, [AlertPresentableAction], ControllerBackedProtocol?)>] = [wrap(matchable: message) { $0.0 }, wrap(matchable: title) { $0.1 }, wrap(matchable: actions) { $0.2 }, wrap(matchable: view) { $0.3 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockProjectsWireframeProtocol.self, method: "present(message: String?, title: String?, actions: [AlertPresentableAction], from: ControllerBackedProtocol?)", parameterMatchers: matchers))
	    }
	    
	    func present<M1: Cuckoo.Matchable, M2: Cuckoo.OptionalMatchable>(error: M1, from view: M2) -> Cuckoo.ProtocolStubFunction<(Error, ControllerBackedProtocol?), Bool> where M1.MatchedType == Error, M2.OptionalMatchedType == ControllerBackedProtocol {
	        let matchers: [Cuckoo.ParameterMatcher<(Error, ControllerBackedProtocol?)>] = [wrap(matchable: error) { $0.0 }, wrap(matchable: view) { $0.1 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockProjectsWireframeProtocol.self, method: "present(error: Error, from: ControllerBackedProtocol?) -> Bool", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_ProjectsWireframeProtocol: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func showVotingView<M1: Cuckoo.OptionalMatchable, M2: Cuckoo.Matchable, M3: Cuckoo.OptionalMatchable>(from view: M1, with model: M2, delegate: M3) -> Cuckoo.__DoNotUse<(ProjectsViewProtocol?, VoteViewModelProtocol, VoteViewDelegate?), Void> where M1.OptionalMatchedType == ProjectsViewProtocol, M2.MatchedType == VoteViewModelProtocol, M3.OptionalMatchedType == VoteViewDelegate {
	        let matchers: [Cuckoo.ParameterMatcher<(ProjectsViewProtocol?, VoteViewModelProtocol, VoteViewDelegate?)>] = [wrap(matchable: view) { $0.0 }, wrap(matchable: model) { $0.1 }, wrap(matchable: delegate) { $0.2 }]
	        return cuckoo_manager.verify("showVotingView(from: ProjectsViewProtocol?, with: VoteViewModelProtocol, delegate: VoteViewDelegate?)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func showProjectDetails<M1: Cuckoo.OptionalMatchable, M2: Cuckoo.Matchable>(from view: M1, projectId: M2) -> Cuckoo.__DoNotUse<(ProjectsViewProtocol?, String), Void> where M1.OptionalMatchedType == ProjectsViewProtocol, M2.MatchedType == String {
	        let matchers: [Cuckoo.ParameterMatcher<(ProjectsViewProtocol?, String)>] = [wrap(matchable: view) { $0.0 }, wrap(matchable: projectId) { $0.1 }]
	        return cuckoo_manager.verify("showProjectDetails(from: ProjectsViewProtocol?, projectId: String)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func showVotingHistory<M1: Cuckoo.OptionalMatchable>(from view: M1) -> Cuckoo.__DoNotUse<(ProjectsViewProtocol?), Void> where M1.OptionalMatchedType == ProjectsViewProtocol {
	        let matchers: [Cuckoo.ParameterMatcher<(ProjectsViewProtocol?)>] = [wrap(matchable: view) { $0 }]
	        return cuckoo_manager.verify("showVotingHistory(from: ProjectsViewProtocol?)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func present<M1: Cuckoo.OptionalMatchable, M2: Cuckoo.OptionalMatchable, M3: Cuckoo.OptionalMatchable, M4: Cuckoo.OptionalMatchable>(message: M1, title: M2, closeAction: M3, from view: M4) -> Cuckoo.__DoNotUse<(String?, String?, String?, ControllerBackedProtocol?), Void> where M1.OptionalMatchedType == String, M2.OptionalMatchedType == String, M3.OptionalMatchedType == String, M4.OptionalMatchedType == ControllerBackedProtocol {
	        let matchers: [Cuckoo.ParameterMatcher<(String?, String?, String?, ControllerBackedProtocol?)>] = [wrap(matchable: message) { $0.0 }, wrap(matchable: title) { $0.1 }, wrap(matchable: closeAction) { $0.2 }, wrap(matchable: view) { $0.3 }]
	        return cuckoo_manager.verify("present(message: String?, title: String?, closeAction: String?, from: ControllerBackedProtocol?)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func present<M1: Cuckoo.OptionalMatchable, M2: Cuckoo.OptionalMatchable, M3: Cuckoo.Matchable, M4: Cuckoo.OptionalMatchable>(message: M1, title: M2, actions: M3, from view: M4) -> Cuckoo.__DoNotUse<(String?, String?, [AlertPresentableAction], ControllerBackedProtocol?), Void> where M1.OptionalMatchedType == String, M2.OptionalMatchedType == String, M3.MatchedType == [AlertPresentableAction], M4.OptionalMatchedType == ControllerBackedProtocol {
	        let matchers: [Cuckoo.ParameterMatcher<(String?, String?, [AlertPresentableAction], ControllerBackedProtocol?)>] = [wrap(matchable: message) { $0.0 }, wrap(matchable: title) { $0.1 }, wrap(matchable: actions) { $0.2 }, wrap(matchable: view) { $0.3 }]
	        return cuckoo_manager.verify("present(message: String?, title: String?, actions: [AlertPresentableAction], from: ControllerBackedProtocol?)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func present<M1: Cuckoo.Matchable, M2: Cuckoo.OptionalMatchable>(error: M1, from view: M2) -> Cuckoo.__DoNotUse<(Error, ControllerBackedProtocol?), Bool> where M1.MatchedType == Error, M2.OptionalMatchedType == ControllerBackedProtocol {
	        let matchers: [Cuckoo.ParameterMatcher<(Error, ControllerBackedProtocol?)>] = [wrap(matchable: error) { $0.0 }, wrap(matchable: view) { $0.1 }]
	        return cuckoo_manager.verify("present(error: Error, from: ControllerBackedProtocol?) -> Bool", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

 class ProjectsWireframeProtocolStub: ProjectsWireframeProtocol {
    

    

    
     func showVotingView(from view: ProjectsViewProtocol?, with model: VoteViewModelProtocol, delegate: VoteViewDelegate?)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func showProjectDetails(from view: ProjectsViewProtocol?, projectId: String)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func showVotingHistory(from view: ProjectsViewProtocol?)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func present(message: String?, title: String?, closeAction: String?, from view: ControllerBackedProtocol?)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func present(message: String?, title: String?, actions: [AlertPresentableAction], from view: ControllerBackedProtocol?)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func present(error: Error, from view: ControllerBackedProtocol?) -> Bool  {
        return DefaultValueRegistry.defaultValue(for: (Bool).self)
    }
    
}


import Cuckoo
@testable import SoraPassport

import Foundation


 class MockReputationViewProtocol: ReputationViewProtocol, Cuckoo.ProtocolMock {
    
     typealias MocksType = ReputationViewProtocol
    
     typealias Stubbing = __StubbingProxy_ReputationViewProtocol
     typealias Verification = __VerificationProxy_ReputationViewProtocol

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: ReputationViewProtocol?

     func enableDefaultImplementation(_ stub: ReputationViewProtocol) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    
    
    
     var controller: UIViewController {
        get {
            return cuckoo_manager.getter("controller",
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.controller)
        }
        
    }
    

    

    
    
    
     func set(emptyRankDetails: String)  {
        
    return cuckoo_manager.call("set(emptyRankDetails: String)",
            parameters: (emptyRankDetails),
            escapingParameters: (emptyRankDetails),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.set(emptyRankDetails: emptyRankDetails))
        
    }
    
    
    
     func set(existingRankDetails: String)  {
        
    return cuckoo_manager.call("set(existingRankDetails: String)",
            parameters: (existingRankDetails),
            escapingParameters: (existingRankDetails),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.set(existingRankDetails: existingRankDetails))
        
    }
    
    
    
     func set(votesDetails: String)  {
        
    return cuckoo_manager.call("set(votesDetails: String)",
            parameters: (votesDetails),
            escapingParameters: (votesDetails),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.set(votesDetails: votesDetails))
        
    }
    
    
    
     func set(reputationDetailsViewModel: ReputationDetailsViewModel)  {
        
    return cuckoo_manager.call("set(reputationDetailsViewModel: ReputationDetailsViewModel)",
            parameters: (reputationDetailsViewModel),
            escapingParameters: (reputationDetailsViewModel),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.set(reputationDetailsViewModel: reputationDetailsViewModel))
        
    }
    

	 struct __StubbingProxy_ReputationViewProtocol: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    var controller: Cuckoo.ProtocolToBeStubbedReadOnlyProperty<MockReputationViewProtocol, UIViewController> {
	        return .init(manager: cuckoo_manager, name: "controller")
	    }
	    
	    
	    func set<M1: Cuckoo.Matchable>(emptyRankDetails: M1) -> Cuckoo.ProtocolStubNoReturnFunction<(String)> where M1.MatchedType == String {
	        let matchers: [Cuckoo.ParameterMatcher<(String)>] = [wrap(matchable: emptyRankDetails) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockReputationViewProtocol.self, method: "set(emptyRankDetails: String)", parameterMatchers: matchers))
	    }
	    
	    func set<M1: Cuckoo.Matchable>(existingRankDetails: M1) -> Cuckoo.ProtocolStubNoReturnFunction<(String)> where M1.MatchedType == String {
	        let matchers: [Cuckoo.ParameterMatcher<(String)>] = [wrap(matchable: existingRankDetails) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockReputationViewProtocol.self, method: "set(existingRankDetails: String)", parameterMatchers: matchers))
	    }
	    
	    func set<M1: Cuckoo.Matchable>(votesDetails: M1) -> Cuckoo.ProtocolStubNoReturnFunction<(String)> where M1.MatchedType == String {
	        let matchers: [Cuckoo.ParameterMatcher<(String)>] = [wrap(matchable: votesDetails) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockReputationViewProtocol.self, method: "set(votesDetails: String)", parameterMatchers: matchers))
	    }
	    
	    func set<M1: Cuckoo.Matchable>(reputationDetailsViewModel: M1) -> Cuckoo.ProtocolStubNoReturnFunction<(ReputationDetailsViewModel)> where M1.MatchedType == ReputationDetailsViewModel {
	        let matchers: [Cuckoo.ParameterMatcher<(ReputationDetailsViewModel)>] = [wrap(matchable: reputationDetailsViewModel) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockReputationViewProtocol.self, method: "set(reputationDetailsViewModel: ReputationDetailsViewModel)", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_ReputationViewProtocol: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	    
	    var controller: Cuckoo.VerifyReadOnlyProperty<UIViewController> {
	        return .init(manager: cuckoo_manager, name: "controller", callMatcher: callMatcher, sourceLocation: sourceLocation)
	    }
	    
	
	    
	    @discardableResult
	    func set<M1: Cuckoo.Matchable>(emptyRankDetails: M1) -> Cuckoo.__DoNotUse<(String), Void> where M1.MatchedType == String {
	        let matchers: [Cuckoo.ParameterMatcher<(String)>] = [wrap(matchable: emptyRankDetails) { $0 }]
	        return cuckoo_manager.verify("set(emptyRankDetails: String)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func set<M1: Cuckoo.Matchable>(existingRankDetails: M1) -> Cuckoo.__DoNotUse<(String), Void> where M1.MatchedType == String {
	        let matchers: [Cuckoo.ParameterMatcher<(String)>] = [wrap(matchable: existingRankDetails) { $0 }]
	        return cuckoo_manager.verify("set(existingRankDetails: String)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func set<M1: Cuckoo.Matchable>(votesDetails: M1) -> Cuckoo.__DoNotUse<(String), Void> where M1.MatchedType == String {
	        let matchers: [Cuckoo.ParameterMatcher<(String)>] = [wrap(matchable: votesDetails) { $0 }]
	        return cuckoo_manager.verify("set(votesDetails: String)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func set<M1: Cuckoo.Matchable>(reputationDetailsViewModel: M1) -> Cuckoo.__DoNotUse<(ReputationDetailsViewModel), Void> where M1.MatchedType == ReputationDetailsViewModel {
	        let matchers: [Cuckoo.ParameterMatcher<(ReputationDetailsViewModel)>] = [wrap(matchable: reputationDetailsViewModel) { $0 }]
	        return cuckoo_manager.verify("set(reputationDetailsViewModel: ReputationDetailsViewModel)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

 class ReputationViewProtocolStub: ReputationViewProtocol {
    
    
     var controller: UIViewController {
        get {
            return DefaultValueRegistry.defaultValue(for: (UIViewController).self)
        }
        
    }
    

    

    
     func set(emptyRankDetails: String)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func set(existingRankDetails: String)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func set(votesDetails: String)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func set(reputationDetailsViewModel: ReputationDetailsViewModel)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
}



 class MockReputationPresenterProtocol: ReputationPresenterProtocol, Cuckoo.ProtocolMock {
    
     typealias MocksType = ReputationPresenterProtocol
    
     typealias Stubbing = __StubbingProxy_ReputationPresenterProtocol
     typealias Verification = __VerificationProxy_ReputationPresenterProtocol

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: ReputationPresenterProtocol?

     func enableDefaultImplementation(_ stub: ReputationPresenterProtocol) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    

    

    
    
    
     func viewIsReady()  {
        
    return cuckoo_manager.call("viewIsReady()",
            parameters: (),
            escapingParameters: (),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.viewIsReady())
        
    }
    
    
    
     func viewDidAppear()  {
        
    return cuckoo_manager.call("viewDidAppear()",
            parameters: (),
            escapingParameters: (),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.viewDidAppear())
        
    }
    

	 struct __StubbingProxy_ReputationPresenterProtocol: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func viewIsReady() -> Cuckoo.ProtocolStubNoReturnFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockReputationPresenterProtocol.self, method: "viewIsReady()", parameterMatchers: matchers))
	    }
	    
	    func viewDidAppear() -> Cuckoo.ProtocolStubNoReturnFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockReputationPresenterProtocol.self, method: "viewDidAppear()", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_ReputationPresenterProtocol: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func viewIsReady() -> Cuckoo.__DoNotUse<(), Void> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("viewIsReady()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func viewDidAppear() -> Cuckoo.__DoNotUse<(), Void> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("viewDidAppear()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

 class ReputationPresenterProtocolStub: ReputationPresenterProtocol {
    

    

    
     func viewIsReady()   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func viewDidAppear()   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
}



 class MockReputationInteractorInputProtocol: ReputationInteractorInputProtocol, Cuckoo.ProtocolMock {
    
     typealias MocksType = ReputationInteractorInputProtocol
    
     typealias Stubbing = __StubbingProxy_ReputationInteractorInputProtocol
     typealias Verification = __VerificationProxy_ReputationInteractorInputProtocol

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: ReputationInteractorInputProtocol?

     func enableDefaultImplementation(_ stub: ReputationInteractorInputProtocol) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    

    

    
    
    
     func setup()  {
        
    return cuckoo_manager.call("setup()",
            parameters: (),
            escapingParameters: (),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.setup())
        
    }
    
    
    
     func refresh()  {
        
    return cuckoo_manager.call("refresh()",
            parameters: (),
            escapingParameters: (),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.refresh())
        
    }
    

	 struct __StubbingProxy_ReputationInteractorInputProtocol: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func setup() -> Cuckoo.ProtocolStubNoReturnFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockReputationInteractorInputProtocol.self, method: "setup()", parameterMatchers: matchers))
	    }
	    
	    func refresh() -> Cuckoo.ProtocolStubNoReturnFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockReputationInteractorInputProtocol.self, method: "refresh()", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_ReputationInteractorInputProtocol: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func setup() -> Cuckoo.__DoNotUse<(), Void> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("setup()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func refresh() -> Cuckoo.__DoNotUse<(), Void> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("refresh()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

 class ReputationInteractorInputProtocolStub: ReputationInteractorInputProtocol {
    

    

    
     func setup()   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func refresh()   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
}



 class MockReputationInteractorOutputProtocol: ReputationInteractorOutputProtocol, Cuckoo.ProtocolMock {
    
     typealias MocksType = ReputationInteractorOutputProtocol
    
     typealias Stubbing = __StubbingProxy_ReputationInteractorOutputProtocol
     typealias Verification = __VerificationProxy_ReputationInteractorOutputProtocol

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: ReputationInteractorOutputProtocol?

     func enableDefaultImplementation(_ stub: ReputationInteractorOutputProtocol) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    

    

    
    
    
     func didReceive(reputationData: ReputationData)  {
        
    return cuckoo_manager.call("didReceive(reputationData: ReputationData)",
            parameters: (reputationData),
            escapingParameters: (reputationData),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.didReceive(reputationData: reputationData))
        
    }
    
    
    
     func didReceiveReputationDataProvider(error: Error)  {
        
    return cuckoo_manager.call("didReceiveReputationDataProvider(error: Error)",
            parameters: (error),
            escapingParameters: (error),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.didReceiveReputationDataProvider(error: error))
        
    }
    
    
    
     func didReceive(reputationDetails: ReputationDetailsData)  {
        
    return cuckoo_manager.call("didReceive(reputationDetails: ReputationDetailsData)",
            parameters: (reputationDetails),
            escapingParameters: (reputationDetails),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.didReceive(reputationDetails: reputationDetails))
        
    }
    
    
    
     func didReceiveReputationDetailsDataProvider(error: Error)  {
        
    return cuckoo_manager.call("didReceiveReputationDetailsDataProvider(error: Error)",
            parameters: (error),
            escapingParameters: (error),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.didReceiveReputationDetailsDataProvider(error: error))
        
    }
    
    
    
     func didReceive(votesData: VotesData)  {
        
    return cuckoo_manager.call("didReceive(votesData: VotesData)",
            parameters: (votesData),
            escapingParameters: (votesData),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.didReceive(votesData: votesData))
        
    }
    
    
    
     func didReceiveVotesDataProvider(error: Error)  {
        
    return cuckoo_manager.call("didReceiveVotesDataProvider(error: Error)",
            parameters: (error),
            escapingParameters: (error),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.didReceiveVotesDataProvider(error: error))
        
    }
    

	 struct __StubbingProxy_ReputationInteractorOutputProtocol: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func didReceive<M1: Cuckoo.Matchable>(reputationData: M1) -> Cuckoo.ProtocolStubNoReturnFunction<(ReputationData)> where M1.MatchedType == ReputationData {
	        let matchers: [Cuckoo.ParameterMatcher<(ReputationData)>] = [wrap(matchable: reputationData) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockReputationInteractorOutputProtocol.self, method: "didReceive(reputationData: ReputationData)", parameterMatchers: matchers))
	    }
	    
	    func didReceiveReputationDataProvider<M1: Cuckoo.Matchable>(error: M1) -> Cuckoo.ProtocolStubNoReturnFunction<(Error)> where M1.MatchedType == Error {
	        let matchers: [Cuckoo.ParameterMatcher<(Error)>] = [wrap(matchable: error) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockReputationInteractorOutputProtocol.self, method: "didReceiveReputationDataProvider(error: Error)", parameterMatchers: matchers))
	    }
	    
	    func didReceive<M1: Cuckoo.Matchable>(reputationDetails: M1) -> Cuckoo.ProtocolStubNoReturnFunction<(ReputationDetailsData)> where M1.MatchedType == ReputationDetailsData {
	        let matchers: [Cuckoo.ParameterMatcher<(ReputationDetailsData)>] = [wrap(matchable: reputationDetails) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockReputationInteractorOutputProtocol.self, method: "didReceive(reputationDetails: ReputationDetailsData)", parameterMatchers: matchers))
	    }
	    
	    func didReceiveReputationDetailsDataProvider<M1: Cuckoo.Matchable>(error: M1) -> Cuckoo.ProtocolStubNoReturnFunction<(Error)> where M1.MatchedType == Error {
	        let matchers: [Cuckoo.ParameterMatcher<(Error)>] = [wrap(matchable: error) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockReputationInteractorOutputProtocol.self, method: "didReceiveReputationDetailsDataProvider(error: Error)", parameterMatchers: matchers))
	    }
	    
	    func didReceive<M1: Cuckoo.Matchable>(votesData: M1) -> Cuckoo.ProtocolStubNoReturnFunction<(VotesData)> where M1.MatchedType == VotesData {
	        let matchers: [Cuckoo.ParameterMatcher<(VotesData)>] = [wrap(matchable: votesData) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockReputationInteractorOutputProtocol.self, method: "didReceive(votesData: VotesData)", parameterMatchers: matchers))
	    }
	    
	    func didReceiveVotesDataProvider<M1: Cuckoo.Matchable>(error: M1) -> Cuckoo.ProtocolStubNoReturnFunction<(Error)> where M1.MatchedType == Error {
	        let matchers: [Cuckoo.ParameterMatcher<(Error)>] = [wrap(matchable: error) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockReputationInteractorOutputProtocol.self, method: "didReceiveVotesDataProvider(error: Error)", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_ReputationInteractorOutputProtocol: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func didReceive<M1: Cuckoo.Matchable>(reputationData: M1) -> Cuckoo.__DoNotUse<(ReputationData), Void> where M1.MatchedType == ReputationData {
	        let matchers: [Cuckoo.ParameterMatcher<(ReputationData)>] = [wrap(matchable: reputationData) { $0 }]
	        return cuckoo_manager.verify("didReceive(reputationData: ReputationData)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func didReceiveReputationDataProvider<M1: Cuckoo.Matchable>(error: M1) -> Cuckoo.__DoNotUse<(Error), Void> where M1.MatchedType == Error {
	        let matchers: [Cuckoo.ParameterMatcher<(Error)>] = [wrap(matchable: error) { $0 }]
	        return cuckoo_manager.verify("didReceiveReputationDataProvider(error: Error)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func didReceive<M1: Cuckoo.Matchable>(reputationDetails: M1) -> Cuckoo.__DoNotUse<(ReputationDetailsData), Void> where M1.MatchedType == ReputationDetailsData {
	        let matchers: [Cuckoo.ParameterMatcher<(ReputationDetailsData)>] = [wrap(matchable: reputationDetails) { $0 }]
	        return cuckoo_manager.verify("didReceive(reputationDetails: ReputationDetailsData)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func didReceiveReputationDetailsDataProvider<M1: Cuckoo.Matchable>(error: M1) -> Cuckoo.__DoNotUse<(Error), Void> where M1.MatchedType == Error {
	        let matchers: [Cuckoo.ParameterMatcher<(Error)>] = [wrap(matchable: error) { $0 }]
	        return cuckoo_manager.verify("didReceiveReputationDetailsDataProvider(error: Error)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func didReceive<M1: Cuckoo.Matchable>(votesData: M1) -> Cuckoo.__DoNotUse<(VotesData), Void> where M1.MatchedType == VotesData {
	        let matchers: [Cuckoo.ParameterMatcher<(VotesData)>] = [wrap(matchable: votesData) { $0 }]
	        return cuckoo_manager.verify("didReceive(votesData: VotesData)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func didReceiveVotesDataProvider<M1: Cuckoo.Matchable>(error: M1) -> Cuckoo.__DoNotUse<(Error), Void> where M1.MatchedType == Error {
	        let matchers: [Cuckoo.ParameterMatcher<(Error)>] = [wrap(matchable: error) { $0 }]
	        return cuckoo_manager.verify("didReceiveVotesDataProvider(error: Error)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

 class ReputationInteractorOutputProtocolStub: ReputationInteractorOutputProtocol {
    

    

    
     func didReceive(reputationData: ReputationData)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func didReceiveReputationDataProvider(error: Error)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func didReceive(reputationDetails: ReputationDetailsData)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func didReceiveReputationDetailsDataProvider(error: Error)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func didReceive(votesData: VotesData)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func didReceiveVotesDataProvider(error: Error)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
}



 class MockReputationWireframeProtocol: ReputationWireframeProtocol, Cuckoo.ProtocolMock {
    
     typealias MocksType = ReputationWireframeProtocol
    
     typealias Stubbing = __StubbingProxy_ReputationWireframeProtocol
     typealias Verification = __VerificationProxy_ReputationWireframeProtocol

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: ReputationWireframeProtocol?

     func enableDefaultImplementation(_ stub: ReputationWireframeProtocol) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    

    

    
    
    
     func present(error: Error, from view: ControllerBackedProtocol?) -> Bool {
        
    return cuckoo_manager.call("present(error: Error, from: ControllerBackedProtocol?) -> Bool",
            parameters: (error, view),
            escapingParameters: (error, view),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.present(error: error, from: view))
        
    }
    
    
    
     func present(message: String?, title: String?, closeAction: String?, from view: ControllerBackedProtocol?)  {
        
    return cuckoo_manager.call("present(message: String?, title: String?, closeAction: String?, from: ControllerBackedProtocol?)",
            parameters: (message, title, closeAction, view),
            escapingParameters: (message, title, closeAction, view),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.present(message: message, title: title, closeAction: closeAction, from: view))
        
    }
    
    
    
     func present(message: String?, title: String?, actions: [AlertPresentableAction], from view: ControllerBackedProtocol?)  {
        
    return cuckoo_manager.call("present(message: String?, title: String?, actions: [AlertPresentableAction], from: ControllerBackedProtocol?)",
            parameters: (message, title, actions, view),
            escapingParameters: (message, title, actions, view),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.present(message: message, title: title, actions: actions, from: view))
        
    }
    

	 struct __StubbingProxy_ReputationWireframeProtocol: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func present<M1: Cuckoo.Matchable, M2: Cuckoo.OptionalMatchable>(error: M1, from view: M2) -> Cuckoo.ProtocolStubFunction<(Error, ControllerBackedProtocol?), Bool> where M1.MatchedType == Error, M2.OptionalMatchedType == ControllerBackedProtocol {
	        let matchers: [Cuckoo.ParameterMatcher<(Error, ControllerBackedProtocol?)>] = [wrap(matchable: error) { $0.0 }, wrap(matchable: view) { $0.1 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockReputationWireframeProtocol.self, method: "present(error: Error, from: ControllerBackedProtocol?) -> Bool", parameterMatchers: matchers))
	    }
	    
	    func present<M1: Cuckoo.OptionalMatchable, M2: Cuckoo.OptionalMatchable, M3: Cuckoo.OptionalMatchable, M4: Cuckoo.OptionalMatchable>(message: M1, title: M2, closeAction: M3, from view: M4) -> Cuckoo.ProtocolStubNoReturnFunction<(String?, String?, String?, ControllerBackedProtocol?)> where M1.OptionalMatchedType == String, M2.OptionalMatchedType == String, M3.OptionalMatchedType == String, M4.OptionalMatchedType == ControllerBackedProtocol {
	        let matchers: [Cuckoo.ParameterMatcher<(String?, String?, String?, ControllerBackedProtocol?)>] = [wrap(matchable: message) { $0.0 }, wrap(matchable: title) { $0.1 }, wrap(matchable: closeAction) { $0.2 }, wrap(matchable: view) { $0.3 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockReputationWireframeProtocol.self, method: "present(message: String?, title: String?, closeAction: String?, from: ControllerBackedProtocol?)", parameterMatchers: matchers))
	    }
	    
	    func present<M1: Cuckoo.OptionalMatchable, M2: Cuckoo.OptionalMatchable, M3: Cuckoo.Matchable, M4: Cuckoo.OptionalMatchable>(message: M1, title: M2, actions: M3, from view: M4) -> Cuckoo.ProtocolStubNoReturnFunction<(String?, String?, [AlertPresentableAction], ControllerBackedProtocol?)> where M1.OptionalMatchedType == String, M2.OptionalMatchedType == String, M3.MatchedType == [AlertPresentableAction], M4.OptionalMatchedType == ControllerBackedProtocol {
	        let matchers: [Cuckoo.ParameterMatcher<(String?, String?, [AlertPresentableAction], ControllerBackedProtocol?)>] = [wrap(matchable: message) { $0.0 }, wrap(matchable: title) { $0.1 }, wrap(matchable: actions) { $0.2 }, wrap(matchable: view) { $0.3 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockReputationWireframeProtocol.self, method: "present(message: String?, title: String?, actions: [AlertPresentableAction], from: ControllerBackedProtocol?)", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_ReputationWireframeProtocol: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func present<M1: Cuckoo.Matchable, M2: Cuckoo.OptionalMatchable>(error: M1, from view: M2) -> Cuckoo.__DoNotUse<(Error, ControllerBackedProtocol?), Bool> where M1.MatchedType == Error, M2.OptionalMatchedType == ControllerBackedProtocol {
	        let matchers: [Cuckoo.ParameterMatcher<(Error, ControllerBackedProtocol?)>] = [wrap(matchable: error) { $0.0 }, wrap(matchable: view) { $0.1 }]
	        return cuckoo_manager.verify("present(error: Error, from: ControllerBackedProtocol?) -> Bool", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func present<M1: Cuckoo.OptionalMatchable, M2: Cuckoo.OptionalMatchable, M3: Cuckoo.OptionalMatchable, M4: Cuckoo.OptionalMatchable>(message: M1, title: M2, closeAction: M3, from view: M4) -> Cuckoo.__DoNotUse<(String?, String?, String?, ControllerBackedProtocol?), Void> where M1.OptionalMatchedType == String, M2.OptionalMatchedType == String, M3.OptionalMatchedType == String, M4.OptionalMatchedType == ControllerBackedProtocol {
	        let matchers: [Cuckoo.ParameterMatcher<(String?, String?, String?, ControllerBackedProtocol?)>] = [wrap(matchable: message) { $0.0 }, wrap(matchable: title) { $0.1 }, wrap(matchable: closeAction) { $0.2 }, wrap(matchable: view) { $0.3 }]
	        return cuckoo_manager.verify("present(message: String?, title: String?, closeAction: String?, from: ControllerBackedProtocol?)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func present<M1: Cuckoo.OptionalMatchable, M2: Cuckoo.OptionalMatchable, M3: Cuckoo.Matchable, M4: Cuckoo.OptionalMatchable>(message: M1, title: M2, actions: M3, from view: M4) -> Cuckoo.__DoNotUse<(String?, String?, [AlertPresentableAction], ControllerBackedProtocol?), Void> where M1.OptionalMatchedType == String, M2.OptionalMatchedType == String, M3.MatchedType == [AlertPresentableAction], M4.OptionalMatchedType == ControllerBackedProtocol {
	        let matchers: [Cuckoo.ParameterMatcher<(String?, String?, [AlertPresentableAction], ControllerBackedProtocol?)>] = [wrap(matchable: message) { $0.0 }, wrap(matchable: title) { $0.1 }, wrap(matchable: actions) { $0.2 }, wrap(matchable: view) { $0.3 }]
	        return cuckoo_manager.verify("present(message: String?, title: String?, actions: [AlertPresentableAction], from: ControllerBackedProtocol?)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

 class ReputationWireframeProtocolStub: ReputationWireframeProtocol {
    

    

    
     func present(error: Error, from view: ControllerBackedProtocol?) -> Bool  {
        return DefaultValueRegistry.defaultValue(for: (Bool).self)
    }
    
     func present(message: String?, title: String?, closeAction: String?, from view: ControllerBackedProtocol?)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func present(message: String?, title: String?, actions: [AlertPresentableAction], from view: ControllerBackedProtocol?)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
}


import Cuckoo
@testable import SoraPassport

import Foundation


 class MockReputationDelayFactoryProtocol: ReputationDelayFactoryProtocol, Cuckoo.ProtocolMock {
    
     typealias MocksType = ReputationDelayFactoryProtocol
    
     typealias Stubbing = __StubbingProxy_ReputationDelayFactoryProtocol
     typealias Verification = __VerificationProxy_ReputationDelayFactoryProtocol

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: ReputationDelayFactoryProtocol?

     func enableDefaultImplementation(_ stub: ReputationDelayFactoryProtocol) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    

    

    
    
    
     func calculateDelay(from date: Date) -> TimeInterval {
        
    return cuckoo_manager.call("calculateDelay(from: Date) -> TimeInterval",
            parameters: (date),
            escapingParameters: (date),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.calculateDelay(from: date))
        
    }
    

	 struct __StubbingProxy_ReputationDelayFactoryProtocol: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func calculateDelay<M1: Cuckoo.Matchable>(from date: M1) -> Cuckoo.ProtocolStubFunction<(Date), TimeInterval> where M1.MatchedType == Date {
	        let matchers: [Cuckoo.ParameterMatcher<(Date)>] = [wrap(matchable: date) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockReputationDelayFactoryProtocol.self, method: "calculateDelay(from: Date) -> TimeInterval", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_ReputationDelayFactoryProtocol: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func calculateDelay<M1: Cuckoo.Matchable>(from date: M1) -> Cuckoo.__DoNotUse<(Date), TimeInterval> where M1.MatchedType == Date {
	        let matchers: [Cuckoo.ParameterMatcher<(Date)>] = [wrap(matchable: date) { $0 }]
	        return cuckoo_manager.verify("calculateDelay(from: Date) -> TimeInterval", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

 class ReputationDelayFactoryProtocolStub: ReputationDelayFactoryProtocol {
    

    

    
     func calculateDelay(from date: Date) -> TimeInterval  {
        return DefaultValueRegistry.defaultValue(for: (TimeInterval).self)
    }
    
}


import Cuckoo
@testable import SoraPassport

import UIKit


 class MockRootPresenterProtocol: RootPresenterProtocol, Cuckoo.ProtocolMock {
    
     typealias MocksType = RootPresenterProtocol
    
     typealias Stubbing = __StubbingProxy_RootPresenterProtocol
     typealias Verification = __VerificationProxy_RootPresenterProtocol

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: RootPresenterProtocol?

     func enableDefaultImplementation(_ stub: RootPresenterProtocol) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    

    

    
    
    
     func loadOnLaunch()  {
        
    return cuckoo_manager.call("loadOnLaunch()",
            parameters: (),
            escapingParameters: (),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.loadOnLaunch())
        
    }
    

	 struct __StubbingProxy_RootPresenterProtocol: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func loadOnLaunch() -> Cuckoo.ProtocolStubNoReturnFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockRootPresenterProtocol.self, method: "loadOnLaunch()", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_RootPresenterProtocol: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func loadOnLaunch() -> Cuckoo.__DoNotUse<(), Void> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("loadOnLaunch()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

 class RootPresenterProtocolStub: RootPresenterProtocol {
    

    

    
     func loadOnLaunch()   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
}



 class MockRootWireframeProtocol: RootWireframeProtocol, Cuckoo.ProtocolMock {
    
     typealias MocksType = RootWireframeProtocol
    
     typealias Stubbing = __StubbingProxy_RootWireframeProtocol
     typealias Verification = __VerificationProxy_RootWireframeProtocol

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: RootWireframeProtocol?

     func enableDefaultImplementation(_ stub: RootWireframeProtocol) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    

    

    
    
    
     func showLocalAuthentication(on view: UIWindow)  {
        
    return cuckoo_manager.call("showLocalAuthentication(on: UIWindow)",
            parameters: (view),
            escapingParameters: (view),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.showLocalAuthentication(on: view))
        
    }
    
    
    
     func showOnboarding(on view: UIWindow)  {
        
    return cuckoo_manager.call("showOnboarding(on: UIWindow)",
            parameters: (view),
            escapingParameters: (view),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.showOnboarding(on: view))
        
    }
    
    
    
     func showAuthVerification(on view: UIWindow)  {
        
    return cuckoo_manager.call("showAuthVerification(on: UIWindow)",
            parameters: (view),
            escapingParameters: (view),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.showAuthVerification(on: view))
        
    }
    
    
    
     func showBroken(on view: UIWindow)  {
        
    return cuckoo_manager.call("showBroken(on: UIWindow)",
            parameters: (view),
            escapingParameters: (view),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.showBroken(on: view))
        
    }
    

	 struct __StubbingProxy_RootWireframeProtocol: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func showLocalAuthentication<M1: Cuckoo.Matchable>(on view: M1) -> Cuckoo.ProtocolStubNoReturnFunction<(UIWindow)> where M1.MatchedType == UIWindow {
	        let matchers: [Cuckoo.ParameterMatcher<(UIWindow)>] = [wrap(matchable: view) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockRootWireframeProtocol.self, method: "showLocalAuthentication(on: UIWindow)", parameterMatchers: matchers))
	    }
	    
	    func showOnboarding<M1: Cuckoo.Matchable>(on view: M1) -> Cuckoo.ProtocolStubNoReturnFunction<(UIWindow)> where M1.MatchedType == UIWindow {
	        let matchers: [Cuckoo.ParameterMatcher<(UIWindow)>] = [wrap(matchable: view) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockRootWireframeProtocol.self, method: "showOnboarding(on: UIWindow)", parameterMatchers: matchers))
	    }
	    
	    func showAuthVerification<M1: Cuckoo.Matchable>(on view: M1) -> Cuckoo.ProtocolStubNoReturnFunction<(UIWindow)> where M1.MatchedType == UIWindow {
	        let matchers: [Cuckoo.ParameterMatcher<(UIWindow)>] = [wrap(matchable: view) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockRootWireframeProtocol.self, method: "showAuthVerification(on: UIWindow)", parameterMatchers: matchers))
	    }
	    
	    func showBroken<M1: Cuckoo.Matchable>(on view: M1) -> Cuckoo.ProtocolStubNoReturnFunction<(UIWindow)> where M1.MatchedType == UIWindow {
	        let matchers: [Cuckoo.ParameterMatcher<(UIWindow)>] = [wrap(matchable: view) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockRootWireframeProtocol.self, method: "showBroken(on: UIWindow)", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_RootWireframeProtocol: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func showLocalAuthentication<M1: Cuckoo.Matchable>(on view: M1) -> Cuckoo.__DoNotUse<(UIWindow), Void> where M1.MatchedType == UIWindow {
	        let matchers: [Cuckoo.ParameterMatcher<(UIWindow)>] = [wrap(matchable: view) { $0 }]
	        return cuckoo_manager.verify("showLocalAuthentication(on: UIWindow)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func showOnboarding<M1: Cuckoo.Matchable>(on view: M1) -> Cuckoo.__DoNotUse<(UIWindow), Void> where M1.MatchedType == UIWindow {
	        let matchers: [Cuckoo.ParameterMatcher<(UIWindow)>] = [wrap(matchable: view) { $0 }]
	        return cuckoo_manager.verify("showOnboarding(on: UIWindow)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func showAuthVerification<M1: Cuckoo.Matchable>(on view: M1) -> Cuckoo.__DoNotUse<(UIWindow), Void> where M1.MatchedType == UIWindow {
	        let matchers: [Cuckoo.ParameterMatcher<(UIWindow)>] = [wrap(matchable: view) { $0 }]
	        return cuckoo_manager.verify("showAuthVerification(on: UIWindow)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func showBroken<M1: Cuckoo.Matchable>(on view: M1) -> Cuckoo.__DoNotUse<(UIWindow), Void> where M1.MatchedType == UIWindow {
	        let matchers: [Cuckoo.ParameterMatcher<(UIWindow)>] = [wrap(matchable: view) { $0 }]
	        return cuckoo_manager.verify("showBroken(on: UIWindow)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

 class RootWireframeProtocolStub: RootWireframeProtocol {
    

    

    
     func showLocalAuthentication(on view: UIWindow)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func showOnboarding(on view: UIWindow)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func showAuthVerification(on view: UIWindow)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func showBroken(on view: UIWindow)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
}



 class MockRootInteractorInputProtocol: RootInteractorInputProtocol, Cuckoo.ProtocolMock {
    
     typealias MocksType = RootInteractorInputProtocol
    
     typealias Stubbing = __StubbingProxy_RootInteractorInputProtocol
     typealias Verification = __VerificationProxy_RootInteractorInputProtocol

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: RootInteractorInputProtocol?

     func enableDefaultImplementation(_ stub: RootInteractorInputProtocol) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    

    

    
    
    
     func setup()  {
        
    return cuckoo_manager.call("setup()",
            parameters: (),
            escapingParameters: (),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.setup())
        
    }
    
    
    
     func decideModuleSynchroniously()  {
        
    return cuckoo_manager.call("decideModuleSynchroniously()",
            parameters: (),
            escapingParameters: (),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.decideModuleSynchroniously())
        
    }
    

	 struct __StubbingProxy_RootInteractorInputProtocol: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func setup() -> Cuckoo.ProtocolStubNoReturnFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockRootInteractorInputProtocol.self, method: "setup()", parameterMatchers: matchers))
	    }
	    
	    func decideModuleSynchroniously() -> Cuckoo.ProtocolStubNoReturnFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockRootInteractorInputProtocol.self, method: "decideModuleSynchroniously()", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_RootInteractorInputProtocol: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func setup() -> Cuckoo.__DoNotUse<(), Void> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("setup()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func decideModuleSynchroniously() -> Cuckoo.__DoNotUse<(), Void> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("decideModuleSynchroniously()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

 class RootInteractorInputProtocolStub: RootInteractorInputProtocol {
    

    

    
     func setup()   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func decideModuleSynchroniously()   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
}



 class MockRootInteractorOutputProtocol: RootInteractorOutputProtocol, Cuckoo.ProtocolMock {
    
     typealias MocksType = RootInteractorOutputProtocol
    
     typealias Stubbing = __StubbingProxy_RootInteractorOutputProtocol
     typealias Verification = __VerificationProxy_RootInteractorOutputProtocol

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: RootInteractorOutputProtocol?

     func enableDefaultImplementation(_ stub: RootInteractorOutputProtocol) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    

    

    
    
    
     func didDecideOnboarding()  {
        
    return cuckoo_manager.call("didDecideOnboarding()",
            parameters: (),
            escapingParameters: (),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.didDecideOnboarding())
        
    }
    
    
    
     func didDecideLocalAuthentication()  {
        
    return cuckoo_manager.call("didDecideLocalAuthentication()",
            parameters: (),
            escapingParameters: (),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.didDecideLocalAuthentication())
        
    }
    
    
    
     func didDecideAuthVerification()  {
        
    return cuckoo_manager.call("didDecideAuthVerification()",
            parameters: (),
            escapingParameters: (),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.didDecideAuthVerification())
        
    }
    
    
    
     func didDecideBroken()  {
        
    return cuckoo_manager.call("didDecideBroken()",
            parameters: (),
            escapingParameters: (),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.didDecideBroken())
        
    }
    

	 struct __StubbingProxy_RootInteractorOutputProtocol: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func didDecideOnboarding() -> Cuckoo.ProtocolStubNoReturnFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockRootInteractorOutputProtocol.self, method: "didDecideOnboarding()", parameterMatchers: matchers))
	    }
	    
	    func didDecideLocalAuthentication() -> Cuckoo.ProtocolStubNoReturnFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockRootInteractorOutputProtocol.self, method: "didDecideLocalAuthentication()", parameterMatchers: matchers))
	    }
	    
	    func didDecideAuthVerification() -> Cuckoo.ProtocolStubNoReturnFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockRootInteractorOutputProtocol.self, method: "didDecideAuthVerification()", parameterMatchers: matchers))
	    }
	    
	    func didDecideBroken() -> Cuckoo.ProtocolStubNoReturnFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockRootInteractorOutputProtocol.self, method: "didDecideBroken()", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_RootInteractorOutputProtocol: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func didDecideOnboarding() -> Cuckoo.__DoNotUse<(), Void> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("didDecideOnboarding()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func didDecideLocalAuthentication() -> Cuckoo.__DoNotUse<(), Void> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("didDecideLocalAuthentication()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func didDecideAuthVerification() -> Cuckoo.__DoNotUse<(), Void> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("didDecideAuthVerification()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func didDecideBroken() -> Cuckoo.__DoNotUse<(), Void> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("didDecideBroken()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

 class RootInteractorOutputProtocolStub: RootInteractorOutputProtocol {
    

    

    
     func didDecideOnboarding()   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func didDecideLocalAuthentication()   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func didDecideAuthVerification()   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func didDecideBroken()   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
}


import Cuckoo
@testable import SoraPassport

import UIKit


 class MockSecurityLayerInteractorInputProtocol: SecurityLayerInteractorInputProtocol, Cuckoo.ProtocolMock {
    
     typealias MocksType = SecurityLayerInteractorInputProtocol
    
     typealias Stubbing = __StubbingProxy_SecurityLayerInteractorInputProtocol
     typealias Verification = __VerificationProxy_SecurityLayerInteractorInputProtocol

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: SecurityLayerInteractorInputProtocol?

     func enableDefaultImplementation(_ stub: SecurityLayerInteractorInputProtocol) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    

    

    
    
    
     func setup()  {
        
    return cuckoo_manager.call("setup()",
            parameters: (),
            escapingParameters: (),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.setup())
        
    }
    

	 struct __StubbingProxy_SecurityLayerInteractorInputProtocol: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func setup() -> Cuckoo.ProtocolStubNoReturnFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockSecurityLayerInteractorInputProtocol.self, method: "setup()", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_SecurityLayerInteractorInputProtocol: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func setup() -> Cuckoo.__DoNotUse<(), Void> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("setup()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

 class SecurityLayerInteractorInputProtocolStub: SecurityLayerInteractorInputProtocol {
    

    

    
     func setup()   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
}



 class MockSecurityLayerInteractorOutputProtocol: SecurityLayerInteractorOutputProtocol, Cuckoo.ProtocolMock {
    
     typealias MocksType = SecurityLayerInteractorOutputProtocol
    
     typealias Stubbing = __StubbingProxy_SecurityLayerInteractorOutputProtocol
     typealias Verification = __VerificationProxy_SecurityLayerInteractorOutputProtocol

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: SecurityLayerInteractorOutputProtocol?

     func enableDefaultImplementation(_ stub: SecurityLayerInteractorOutputProtocol) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    

    

    
    
    
     func didDecideSecurePresentation()  {
        
    return cuckoo_manager.call("didDecideSecurePresentation()",
            parameters: (),
            escapingParameters: (),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.didDecideSecurePresentation())
        
    }
    
    
    
     func didDecideUnsecurePresentation()  {
        
    return cuckoo_manager.call("didDecideUnsecurePresentation()",
            parameters: (),
            escapingParameters: (),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.didDecideUnsecurePresentation())
        
    }
    
    
    
     func didDecideRequestAuthorization()  {
        
    return cuckoo_manager.call("didDecideRequestAuthorization()",
            parameters: (),
            escapingParameters: (),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.didDecideRequestAuthorization())
        
    }
    

	 struct __StubbingProxy_SecurityLayerInteractorOutputProtocol: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func didDecideSecurePresentation() -> Cuckoo.ProtocolStubNoReturnFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockSecurityLayerInteractorOutputProtocol.self, method: "didDecideSecurePresentation()", parameterMatchers: matchers))
	    }
	    
	    func didDecideUnsecurePresentation() -> Cuckoo.ProtocolStubNoReturnFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockSecurityLayerInteractorOutputProtocol.self, method: "didDecideUnsecurePresentation()", parameterMatchers: matchers))
	    }
	    
	    func didDecideRequestAuthorization() -> Cuckoo.ProtocolStubNoReturnFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockSecurityLayerInteractorOutputProtocol.self, method: "didDecideRequestAuthorization()", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_SecurityLayerInteractorOutputProtocol: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func didDecideSecurePresentation() -> Cuckoo.__DoNotUse<(), Void> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("didDecideSecurePresentation()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func didDecideUnsecurePresentation() -> Cuckoo.__DoNotUse<(), Void> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("didDecideUnsecurePresentation()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func didDecideRequestAuthorization() -> Cuckoo.__DoNotUse<(), Void> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("didDecideRequestAuthorization()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

 class SecurityLayerInteractorOutputProtocolStub: SecurityLayerInteractorOutputProtocol {
    

    

    
     func didDecideSecurePresentation()   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func didDecideUnsecurePresentation()   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func didDecideRequestAuthorization()   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
}



 class MockSecurityLayerWireframProtocol: SecurityLayerWireframProtocol, Cuckoo.ProtocolMock {
    
     typealias MocksType = SecurityLayerWireframProtocol
    
     typealias Stubbing = __StubbingProxy_SecurityLayerWireframProtocol
     typealias Verification = __VerificationProxy_SecurityLayerWireframProtocol

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: SecurityLayerWireframProtocol?

     func enableDefaultImplementation(_ stub: SecurityLayerWireframProtocol) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    

    

    
    
    
     func showSecuringOverlay()  {
        
    return cuckoo_manager.call("showSecuringOverlay()",
            parameters: (),
            escapingParameters: (),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.showSecuringOverlay())
        
    }
    
    
    
     func hideSecuringOverlay()  {
        
    return cuckoo_manager.call("hideSecuringOverlay()",
            parameters: (),
            escapingParameters: (),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.hideSecuringOverlay())
        
    }
    
    
    
     func showAuthorization()  {
        
    return cuckoo_manager.call("showAuthorization()",
            parameters: (),
            escapingParameters: (),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.showAuthorization())
        
    }
    

	 struct __StubbingProxy_SecurityLayerWireframProtocol: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func showSecuringOverlay() -> Cuckoo.ProtocolStubNoReturnFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockSecurityLayerWireframProtocol.self, method: "showSecuringOverlay()", parameterMatchers: matchers))
	    }
	    
	    func hideSecuringOverlay() -> Cuckoo.ProtocolStubNoReturnFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockSecurityLayerWireframProtocol.self, method: "hideSecuringOverlay()", parameterMatchers: matchers))
	    }
	    
	    func showAuthorization() -> Cuckoo.ProtocolStubNoReturnFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockSecurityLayerWireframProtocol.self, method: "showAuthorization()", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_SecurityLayerWireframProtocol: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func showSecuringOverlay() -> Cuckoo.__DoNotUse<(), Void> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("showSecuringOverlay()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func hideSecuringOverlay() -> Cuckoo.__DoNotUse<(), Void> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("hideSecuringOverlay()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func showAuthorization() -> Cuckoo.__DoNotUse<(), Void> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("showAuthorization()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

 class SecurityLayerWireframProtocolStub: SecurityLayerWireframProtocol {
    

    

    
     func showSecuringOverlay()   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func hideSecuringOverlay()   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func showAuthorization()   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
}


import Cuckoo
@testable import SoraPassport


 class MockSelectCountryViewProtocol: SelectCountryViewProtocol, Cuckoo.ProtocolMock {
    
     typealias MocksType = SelectCountryViewProtocol
    
     typealias Stubbing = __StubbingProxy_SelectCountryViewProtocol
     typealias Verification = __VerificationProxy_SelectCountryViewProtocol

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: SelectCountryViewProtocol?

     func enableDefaultImplementation(_ stub: SelectCountryViewProtocol) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    
    
    
     var controller: UIViewController {
        get {
            return cuckoo_manager.getter("controller",
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.controller)
        }
        
    }
    

    

    
    
    
     func didReceive(viewModels: [String])  {
        
    return cuckoo_manager.call("didReceive(viewModels: [String])",
            parameters: (viewModels),
            escapingParameters: (viewModels),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.didReceive(viewModels: viewModels))
        
    }
    

	 struct __StubbingProxy_SelectCountryViewProtocol: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    var controller: Cuckoo.ProtocolToBeStubbedReadOnlyProperty<MockSelectCountryViewProtocol, UIViewController> {
	        return .init(manager: cuckoo_manager, name: "controller")
	    }
	    
	    
	    func didReceive<M1: Cuckoo.Matchable>(viewModels: M1) -> Cuckoo.ProtocolStubNoReturnFunction<([String])> where M1.MatchedType == [String] {
	        let matchers: [Cuckoo.ParameterMatcher<([String])>] = [wrap(matchable: viewModels) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockSelectCountryViewProtocol.self, method: "didReceive(viewModels: [String])", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_SelectCountryViewProtocol: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	    
	    var controller: Cuckoo.VerifyReadOnlyProperty<UIViewController> {
	        return .init(manager: cuckoo_manager, name: "controller", callMatcher: callMatcher, sourceLocation: sourceLocation)
	    }
	    
	
	    
	    @discardableResult
	    func didReceive<M1: Cuckoo.Matchable>(viewModels: M1) -> Cuckoo.__DoNotUse<([String]), Void> where M1.MatchedType == [String] {
	        let matchers: [Cuckoo.ParameterMatcher<([String])>] = [wrap(matchable: viewModels) { $0 }]
	        return cuckoo_manager.verify("didReceive(viewModels: [String])", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

 class SelectCountryViewProtocolStub: SelectCountryViewProtocol {
    
    
     var controller: UIViewController {
        get {
            return DefaultValueRegistry.defaultValue(for: (UIViewController).self)
        }
        
    }
    

    

    
     func didReceive(viewModels: [String])   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
}



 class MockSelectCountryPresenterProtocol: SelectCountryPresenterProtocol, Cuckoo.ProtocolMock {
    
     typealias MocksType = SelectCountryPresenterProtocol
    
     typealias Stubbing = __StubbingProxy_SelectCountryPresenterProtocol
     typealias Verification = __VerificationProxy_SelectCountryPresenterProtocol

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: SelectCountryPresenterProtocol?

     func enableDefaultImplementation(_ stub: SelectCountryPresenterProtocol) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    

    

    
    
    
     func setup()  {
        
    return cuckoo_manager.call("setup()",
            parameters: (),
            escapingParameters: (),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.setup())
        
    }
    
    
    
     func search(by query: String)  {
        
    return cuckoo_manager.call("search(by: String)",
            parameters: (query),
            escapingParameters: (query),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.search(by: query))
        
    }
    
    
    
     func select(at index: Int)  {
        
    return cuckoo_manager.call("select(at: Int)",
            parameters: (index),
            escapingParameters: (index),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.select(at: index))
        
    }
    

	 struct __StubbingProxy_SelectCountryPresenterProtocol: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func setup() -> Cuckoo.ProtocolStubNoReturnFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockSelectCountryPresenterProtocol.self, method: "setup()", parameterMatchers: matchers))
	    }
	    
	    func search<M1: Cuckoo.Matchable>(by query: M1) -> Cuckoo.ProtocolStubNoReturnFunction<(String)> where M1.MatchedType == String {
	        let matchers: [Cuckoo.ParameterMatcher<(String)>] = [wrap(matchable: query) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockSelectCountryPresenterProtocol.self, method: "search(by: String)", parameterMatchers: matchers))
	    }
	    
	    func select<M1: Cuckoo.Matchable>(at index: M1) -> Cuckoo.ProtocolStubNoReturnFunction<(Int)> where M1.MatchedType == Int {
	        let matchers: [Cuckoo.ParameterMatcher<(Int)>] = [wrap(matchable: index) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockSelectCountryPresenterProtocol.self, method: "select(at: Int)", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_SelectCountryPresenterProtocol: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func setup() -> Cuckoo.__DoNotUse<(), Void> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("setup()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func search<M1: Cuckoo.Matchable>(by query: M1) -> Cuckoo.__DoNotUse<(String), Void> where M1.MatchedType == String {
	        let matchers: [Cuckoo.ParameterMatcher<(String)>] = [wrap(matchable: query) { $0 }]
	        return cuckoo_manager.verify("search(by: String)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func select<M1: Cuckoo.Matchable>(at index: M1) -> Cuckoo.__DoNotUse<(Int), Void> where M1.MatchedType == Int {
	        let matchers: [Cuckoo.ParameterMatcher<(Int)>] = [wrap(matchable: index) { $0 }]
	        return cuckoo_manager.verify("select(at: Int)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

 class SelectCountryPresenterProtocolStub: SelectCountryPresenterProtocol {
    

    

    
     func setup()   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func search(by query: String)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func select(at index: Int)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
}



 class MockSelectCountryInteractorInputProtocol: SelectCountryInteractorInputProtocol, Cuckoo.ProtocolMock {
    
     typealias MocksType = SelectCountryInteractorInputProtocol
    
     typealias Stubbing = __StubbingProxy_SelectCountryInteractorInputProtocol
     typealias Verification = __VerificationProxy_SelectCountryInteractorInputProtocol

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: SelectCountryInteractorInputProtocol?

     func enableDefaultImplementation(_ stub: SelectCountryInteractorInputProtocol) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    

    

    
    
    
     func setup()  {
        
    return cuckoo_manager.call("setup()",
            parameters: (),
            escapingParameters: (),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.setup())
        
    }
    

	 struct __StubbingProxy_SelectCountryInteractorInputProtocol: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func setup() -> Cuckoo.ProtocolStubNoReturnFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockSelectCountryInteractorInputProtocol.self, method: "setup()", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_SelectCountryInteractorInputProtocol: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func setup() -> Cuckoo.__DoNotUse<(), Void> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("setup()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

 class SelectCountryInteractorInputProtocolStub: SelectCountryInteractorInputProtocol {
    

    

    
     func setup()   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
}



 class MockSelectCountryInteractorOutputProtocol: SelectCountryInteractorOutputProtocol, Cuckoo.ProtocolMock {
    
     typealias MocksType = SelectCountryInteractorOutputProtocol
    
     typealias Stubbing = __StubbingProxy_SelectCountryInteractorOutputProtocol
     typealias Verification = __VerificationProxy_SelectCountryInteractorOutputProtocol

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: SelectCountryInteractorOutputProtocol?

     func enableDefaultImplementation(_ stub: SelectCountryInteractorOutputProtocol) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    

    

    
    
    
     func didReceive(countries: [Country])  {
        
    return cuckoo_manager.call("didReceive(countries: [Country])",
            parameters: (countries),
            escapingParameters: (countries),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.didReceive(countries: countries))
        
    }
    
    
    
     func didReceiveDataProvider(error: Error)  {
        
    return cuckoo_manager.call("didReceiveDataProvider(error: Error)",
            parameters: (error),
            escapingParameters: (error),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.didReceiveDataProvider(error: error))
        
    }
    

	 struct __StubbingProxy_SelectCountryInteractorOutputProtocol: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func didReceive<M1: Cuckoo.Matchable>(countries: M1) -> Cuckoo.ProtocolStubNoReturnFunction<([Country])> where M1.MatchedType == [Country] {
	        let matchers: [Cuckoo.ParameterMatcher<([Country])>] = [wrap(matchable: countries) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockSelectCountryInteractorOutputProtocol.self, method: "didReceive(countries: [Country])", parameterMatchers: matchers))
	    }
	    
	    func didReceiveDataProvider<M1: Cuckoo.Matchable>(error: M1) -> Cuckoo.ProtocolStubNoReturnFunction<(Error)> where M1.MatchedType == Error {
	        let matchers: [Cuckoo.ParameterMatcher<(Error)>] = [wrap(matchable: error) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockSelectCountryInteractorOutputProtocol.self, method: "didReceiveDataProvider(error: Error)", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_SelectCountryInteractorOutputProtocol: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func didReceive<M1: Cuckoo.Matchable>(countries: M1) -> Cuckoo.__DoNotUse<([Country]), Void> where M1.MatchedType == [Country] {
	        let matchers: [Cuckoo.ParameterMatcher<([Country])>] = [wrap(matchable: countries) { $0 }]
	        return cuckoo_manager.verify("didReceive(countries: [Country])", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func didReceiveDataProvider<M1: Cuckoo.Matchable>(error: M1) -> Cuckoo.__DoNotUse<(Error), Void> where M1.MatchedType == Error {
	        let matchers: [Cuckoo.ParameterMatcher<(Error)>] = [wrap(matchable: error) { $0 }]
	        return cuckoo_manager.verify("didReceiveDataProvider(error: Error)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

 class SelectCountryInteractorOutputProtocolStub: SelectCountryInteractorOutputProtocol {
    

    

    
     func didReceive(countries: [Country])   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func didReceiveDataProvider(error: Error)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
}



 class MockSelectCountryWireframeProtocol: SelectCountryWireframeProtocol, Cuckoo.ProtocolMock {
    
     typealias MocksType = SelectCountryWireframeProtocol
    
     typealias Stubbing = __StubbingProxy_SelectCountryWireframeProtocol
     typealias Verification = __VerificationProxy_SelectCountryWireframeProtocol

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: SelectCountryWireframeProtocol?

     func enableDefaultImplementation(_ stub: SelectCountryWireframeProtocol) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    

    

    
    
    
     func showNext(from view: SelectCountryViewProtocol?, country: Country)  {
        
    return cuckoo_manager.call("showNext(from: SelectCountryViewProtocol?, country: Country)",
            parameters: (view, country),
            escapingParameters: (view, country),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.showNext(from: view, country: country))
        
    }
    

	 struct __StubbingProxy_SelectCountryWireframeProtocol: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func showNext<M1: Cuckoo.OptionalMatchable, M2: Cuckoo.Matchable>(from view: M1, country: M2) -> Cuckoo.ProtocolStubNoReturnFunction<(SelectCountryViewProtocol?, Country)> where M1.OptionalMatchedType == SelectCountryViewProtocol, M2.MatchedType == Country {
	        let matchers: [Cuckoo.ParameterMatcher<(SelectCountryViewProtocol?, Country)>] = [wrap(matchable: view) { $0.0 }, wrap(matchable: country) { $0.1 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockSelectCountryWireframeProtocol.self, method: "showNext(from: SelectCountryViewProtocol?, country: Country)", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_SelectCountryWireframeProtocol: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func showNext<M1: Cuckoo.OptionalMatchable, M2: Cuckoo.Matchable>(from view: M1, country: M2) -> Cuckoo.__DoNotUse<(SelectCountryViewProtocol?, Country), Void> where M1.OptionalMatchedType == SelectCountryViewProtocol, M2.MatchedType == Country {
	        let matchers: [Cuckoo.ParameterMatcher<(SelectCountryViewProtocol?, Country)>] = [wrap(matchable: view) { $0.0 }, wrap(matchable: country) { $0.1 }]
	        return cuckoo_manager.verify("showNext(from: SelectCountryViewProtocol?, country: Country)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

 class SelectCountryWireframeProtocolStub: SelectCountryWireframeProtocol {
    

    

    
     func showNext(from view: SelectCountryViewProtocol?, country: Country)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
}


import Cuckoo
@testable import SoraPassport

import Foundation


 class MockStartupViewProtocol: StartupViewProtocol, Cuckoo.ProtocolMock {
    
     typealias MocksType = StartupViewProtocol
    
     typealias Stubbing = __StubbingProxy_StartupViewProtocol
     typealias Verification = __VerificationProxy_StartupViewProtocol

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: StartupViewProtocol?

     func enableDefaultImplementation(_ stub: StartupViewProtocol) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    
    
    
     var controller: UIViewController {
        get {
            return cuckoo_manager.getter("controller",
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.controller)
        }
        
    }
    

    

    
    
    
     func didUpdate(title: String, subtitle: String)  {
        
    return cuckoo_manager.call("didUpdate(title: String, subtitle: String)",
            parameters: (title, subtitle),
            escapingParameters: (title, subtitle),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.didUpdate(title: title, subtitle: subtitle))
        
    }
    

	 struct __StubbingProxy_StartupViewProtocol: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    var controller: Cuckoo.ProtocolToBeStubbedReadOnlyProperty<MockStartupViewProtocol, UIViewController> {
	        return .init(manager: cuckoo_manager, name: "controller")
	    }
	    
	    
	    func didUpdate<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(title: M1, subtitle: M2) -> Cuckoo.ProtocolStubNoReturnFunction<(String, String)> where M1.MatchedType == String, M2.MatchedType == String {
	        let matchers: [Cuckoo.ParameterMatcher<(String, String)>] = [wrap(matchable: title) { $0.0 }, wrap(matchable: subtitle) { $0.1 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockStartupViewProtocol.self, method: "didUpdate(title: String, subtitle: String)", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_StartupViewProtocol: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	    
	    var controller: Cuckoo.VerifyReadOnlyProperty<UIViewController> {
	        return .init(manager: cuckoo_manager, name: "controller", callMatcher: callMatcher, sourceLocation: sourceLocation)
	    }
	    
	
	    
	    @discardableResult
	    func didUpdate<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(title: M1, subtitle: M2) -> Cuckoo.__DoNotUse<(String, String), Void> where M1.MatchedType == String, M2.MatchedType == String {
	        let matchers: [Cuckoo.ParameterMatcher<(String, String)>] = [wrap(matchable: title) { $0.0 }, wrap(matchable: subtitle) { $0.1 }]
	        return cuckoo_manager.verify("didUpdate(title: String, subtitle: String)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

 class StartupViewProtocolStub: StartupViewProtocol {
    
    
     var controller: UIViewController {
        get {
            return DefaultValueRegistry.defaultValue(for: (UIViewController).self)
        }
        
    }
    

    

    
     func didUpdate(title: String, subtitle: String)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
}



 class MockStartupPresenterProtocol: StartupPresenterProtocol, Cuckoo.ProtocolMock {
    
     typealias MocksType = StartupPresenterProtocol
    
     typealias Stubbing = __StubbingProxy_StartupPresenterProtocol
     typealias Verification = __VerificationProxy_StartupPresenterProtocol

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: StartupPresenterProtocol?

     func enableDefaultImplementation(_ stub: StartupPresenterProtocol) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    

    

    
    
    
     func viewIsReady()  {
        
    return cuckoo_manager.call("viewIsReady()",
            parameters: (),
            escapingParameters: (),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.viewIsReady())
        
    }
    

	 struct __StubbingProxy_StartupPresenterProtocol: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func viewIsReady() -> Cuckoo.ProtocolStubNoReturnFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockStartupPresenterProtocol.self, method: "viewIsReady()", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_StartupPresenterProtocol: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func viewIsReady() -> Cuckoo.__DoNotUse<(), Void> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("viewIsReady()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

 class StartupPresenterProtocolStub: StartupPresenterProtocol {
    

    

    
     func viewIsReady()   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
}



 class MockStartupInteractorInputProtocol: StartupInteractorInputProtocol, Cuckoo.ProtocolMock {
    
     typealias MocksType = StartupInteractorInputProtocol
    
     typealias Stubbing = __StubbingProxy_StartupInteractorInputProtocol
     typealias Verification = __VerificationProxy_StartupInteractorInputProtocol

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: StartupInteractorInputProtocol?

     func enableDefaultImplementation(_ stub: StartupInteractorInputProtocol) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    
    
    
     var state: StartupInteratorState {
        get {
            return cuckoo_manager.getter("state",
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.state)
        }
        
    }
    

    

    
    
    
     func verify()  {
        
    return cuckoo_manager.call("verify()",
            parameters: (),
            escapingParameters: (),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.verify())
        
    }
    

	 struct __StubbingProxy_StartupInteractorInputProtocol: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    var state: Cuckoo.ProtocolToBeStubbedReadOnlyProperty<MockStartupInteractorInputProtocol, StartupInteratorState> {
	        return .init(manager: cuckoo_manager, name: "state")
	    }
	    
	    
	    func verify() -> Cuckoo.ProtocolStubNoReturnFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockStartupInteractorInputProtocol.self, method: "verify()", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_StartupInteractorInputProtocol: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	    
	    var state: Cuckoo.VerifyReadOnlyProperty<StartupInteratorState> {
	        return .init(manager: cuckoo_manager, name: "state", callMatcher: callMatcher, sourceLocation: sourceLocation)
	    }
	    
	
	    
	    @discardableResult
	    func verify() -> Cuckoo.__DoNotUse<(), Void> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("verify()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

 class StartupInteractorInputProtocolStub: StartupInteractorInputProtocol {
    
    
     var state: StartupInteratorState {
        get {
            return DefaultValueRegistry.defaultValue(for: (StartupInteratorState).self)
        }
        
    }
    

    

    
     func verify()   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
}



 class MockStartupInteractorOutputProtocol: StartupInteractorOutputProtocol, Cuckoo.ProtocolMock {
    
     typealias MocksType = StartupInteractorOutputProtocol
    
     typealias Stubbing = __StubbingProxy_StartupInteractorOutputProtocol
     typealias Verification = __VerificationProxy_StartupInteractorOutputProtocol

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: StartupInteractorOutputProtocol?

     func enableDefaultImplementation(_ stub: StartupInteractorOutputProtocol) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    

    

    
    
    
     func didDecideOnboarding()  {
        
    return cuckoo_manager.call("didDecideOnboarding()",
            parameters: (),
            escapingParameters: (),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.didDecideOnboarding())
        
    }
    
    
    
     func didDecidePincodeSetup()  {
        
    return cuckoo_manager.call("didDecidePincodeSetup()",
            parameters: (),
            escapingParameters: (),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.didDecidePincodeSetup())
        
    }
    
    
    
     func didDecideMain()  {
        
    return cuckoo_manager.call("didDecideMain()",
            parameters: (),
            escapingParameters: (),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.didDecideMain())
        
    }
    
    
    
     func didDecideUnsupportedVersion(data: SupportedVersionData)  {
        
    return cuckoo_manager.call("didDecideUnsupportedVersion(data: SupportedVersionData)",
            parameters: (data),
            escapingParameters: (data),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.didDecideUnsupportedVersion(data: data))
        
    }
    
    
    
     func didChangeState()  {
        
    return cuckoo_manager.call("didChangeState()",
            parameters: (),
            escapingParameters: (),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.didChangeState())
        
    }
    

	 struct __StubbingProxy_StartupInteractorOutputProtocol: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func didDecideOnboarding() -> Cuckoo.ProtocolStubNoReturnFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockStartupInteractorOutputProtocol.self, method: "didDecideOnboarding()", parameterMatchers: matchers))
	    }
	    
	    func didDecidePincodeSetup() -> Cuckoo.ProtocolStubNoReturnFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockStartupInteractorOutputProtocol.self, method: "didDecidePincodeSetup()", parameterMatchers: matchers))
	    }
	    
	    func didDecideMain() -> Cuckoo.ProtocolStubNoReturnFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockStartupInteractorOutputProtocol.self, method: "didDecideMain()", parameterMatchers: matchers))
	    }
	    
	    func didDecideUnsupportedVersion<M1: Cuckoo.Matchable>(data: M1) -> Cuckoo.ProtocolStubNoReturnFunction<(SupportedVersionData)> where M1.MatchedType == SupportedVersionData {
	        let matchers: [Cuckoo.ParameterMatcher<(SupportedVersionData)>] = [wrap(matchable: data) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockStartupInteractorOutputProtocol.self, method: "didDecideUnsupportedVersion(data: SupportedVersionData)", parameterMatchers: matchers))
	    }
	    
	    func didChangeState() -> Cuckoo.ProtocolStubNoReturnFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockStartupInteractorOutputProtocol.self, method: "didChangeState()", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_StartupInteractorOutputProtocol: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func didDecideOnboarding() -> Cuckoo.__DoNotUse<(), Void> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("didDecideOnboarding()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func didDecidePincodeSetup() -> Cuckoo.__DoNotUse<(), Void> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("didDecidePincodeSetup()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func didDecideMain() -> Cuckoo.__DoNotUse<(), Void> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("didDecideMain()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func didDecideUnsupportedVersion<M1: Cuckoo.Matchable>(data: M1) -> Cuckoo.__DoNotUse<(SupportedVersionData), Void> where M1.MatchedType == SupportedVersionData {
	        let matchers: [Cuckoo.ParameterMatcher<(SupportedVersionData)>] = [wrap(matchable: data) { $0 }]
	        return cuckoo_manager.verify("didDecideUnsupportedVersion(data: SupportedVersionData)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func didChangeState() -> Cuckoo.__DoNotUse<(), Void> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("didChangeState()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

 class StartupInteractorOutputProtocolStub: StartupInteractorOutputProtocol {
    

    

    
     func didDecideOnboarding()   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func didDecidePincodeSetup()   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func didDecideMain()   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func didDecideUnsupportedVersion(data: SupportedVersionData)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func didChangeState()   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
}



 class MockStartupWireframeProtocol: StartupWireframeProtocol, Cuckoo.ProtocolMock {
    
     typealias MocksType = StartupWireframeProtocol
    
     typealias Stubbing = __StubbingProxy_StartupWireframeProtocol
     typealias Verification = __VerificationProxy_StartupWireframeProtocol

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: StartupWireframeProtocol?

     func enableDefaultImplementation(_ stub: StartupWireframeProtocol) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    

    

    
    
    
     func showOnboarding(from view: StartupViewProtocol?)  {
        
    return cuckoo_manager.call("showOnboarding(from: StartupViewProtocol?)",
            parameters: (view),
            escapingParameters: (view),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.showOnboarding(from: view))
        
    }
    
    
    
     func showMain(from view: StartupViewProtocol?)  {
        
    return cuckoo_manager.call("showMain(from: StartupViewProtocol?)",
            parameters: (view),
            escapingParameters: (view),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.showMain(from: view))
        
    }
    
    
    
     func showPincodeSetup(from view: StartupViewProtocol?)  {
        
    return cuckoo_manager.call("showPincodeSetup(from: StartupViewProtocol?)",
            parameters: (view),
            escapingParameters: (view),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.showPincodeSetup(from: view))
        
    }
    
    
    
     func presentUnsupportedVersion(for data: SupportedVersionData, on window: UIWindow?, animated: Bool)  {
        
    return cuckoo_manager.call("presentUnsupportedVersion(for: SupportedVersionData, on: UIWindow?, animated: Bool)",
            parameters: (data, window, animated),
            escapingParameters: (data, window, animated),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.presentUnsupportedVersion(for: data, on: window, animated: animated))
        
    }
    

	 struct __StubbingProxy_StartupWireframeProtocol: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func showOnboarding<M1: Cuckoo.OptionalMatchable>(from view: M1) -> Cuckoo.ProtocolStubNoReturnFunction<(StartupViewProtocol?)> where M1.OptionalMatchedType == StartupViewProtocol {
	        let matchers: [Cuckoo.ParameterMatcher<(StartupViewProtocol?)>] = [wrap(matchable: view) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockStartupWireframeProtocol.self, method: "showOnboarding(from: StartupViewProtocol?)", parameterMatchers: matchers))
	    }
	    
	    func showMain<M1: Cuckoo.OptionalMatchable>(from view: M1) -> Cuckoo.ProtocolStubNoReturnFunction<(StartupViewProtocol?)> where M1.OptionalMatchedType == StartupViewProtocol {
	        let matchers: [Cuckoo.ParameterMatcher<(StartupViewProtocol?)>] = [wrap(matchable: view) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockStartupWireframeProtocol.self, method: "showMain(from: StartupViewProtocol?)", parameterMatchers: matchers))
	    }
	    
	    func showPincodeSetup<M1: Cuckoo.OptionalMatchable>(from view: M1) -> Cuckoo.ProtocolStubNoReturnFunction<(StartupViewProtocol?)> where M1.OptionalMatchedType == StartupViewProtocol {
	        let matchers: [Cuckoo.ParameterMatcher<(StartupViewProtocol?)>] = [wrap(matchable: view) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockStartupWireframeProtocol.self, method: "showPincodeSetup(from: StartupViewProtocol?)", parameterMatchers: matchers))
	    }
	    
	    func presentUnsupportedVersion<M1: Cuckoo.Matchable, M2: Cuckoo.OptionalMatchable, M3: Cuckoo.Matchable>(for data: M1, on window: M2, animated: M3) -> Cuckoo.ProtocolStubNoReturnFunction<(SupportedVersionData, UIWindow?, Bool)> where M1.MatchedType == SupportedVersionData, M2.OptionalMatchedType == UIWindow, M3.MatchedType == Bool {
	        let matchers: [Cuckoo.ParameterMatcher<(SupportedVersionData, UIWindow?, Bool)>] = [wrap(matchable: data) { $0.0 }, wrap(matchable: window) { $0.1 }, wrap(matchable: animated) { $0.2 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockStartupWireframeProtocol.self, method: "presentUnsupportedVersion(for: SupportedVersionData, on: UIWindow?, animated: Bool)", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_StartupWireframeProtocol: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func showOnboarding<M1: Cuckoo.OptionalMatchable>(from view: M1) -> Cuckoo.__DoNotUse<(StartupViewProtocol?), Void> where M1.OptionalMatchedType == StartupViewProtocol {
	        let matchers: [Cuckoo.ParameterMatcher<(StartupViewProtocol?)>] = [wrap(matchable: view) { $0 }]
	        return cuckoo_manager.verify("showOnboarding(from: StartupViewProtocol?)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func showMain<M1: Cuckoo.OptionalMatchable>(from view: M1) -> Cuckoo.__DoNotUse<(StartupViewProtocol?), Void> where M1.OptionalMatchedType == StartupViewProtocol {
	        let matchers: [Cuckoo.ParameterMatcher<(StartupViewProtocol?)>] = [wrap(matchable: view) { $0 }]
	        return cuckoo_manager.verify("showMain(from: StartupViewProtocol?)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func showPincodeSetup<M1: Cuckoo.OptionalMatchable>(from view: M1) -> Cuckoo.__DoNotUse<(StartupViewProtocol?), Void> where M1.OptionalMatchedType == StartupViewProtocol {
	        let matchers: [Cuckoo.ParameterMatcher<(StartupViewProtocol?)>] = [wrap(matchable: view) { $0 }]
	        return cuckoo_manager.verify("showPincodeSetup(from: StartupViewProtocol?)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func presentUnsupportedVersion<M1: Cuckoo.Matchable, M2: Cuckoo.OptionalMatchable, M3: Cuckoo.Matchable>(for data: M1, on window: M2, animated: M3) -> Cuckoo.__DoNotUse<(SupportedVersionData, UIWindow?, Bool), Void> where M1.MatchedType == SupportedVersionData, M2.OptionalMatchedType == UIWindow, M3.MatchedType == Bool {
	        let matchers: [Cuckoo.ParameterMatcher<(SupportedVersionData, UIWindow?, Bool)>] = [wrap(matchable: data) { $0.0 }, wrap(matchable: window) { $0.1 }, wrap(matchable: animated) { $0.2 }]
	        return cuckoo_manager.verify("presentUnsupportedVersion(for: SupportedVersionData, on: UIWindow?, animated: Bool)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

 class StartupWireframeProtocolStub: StartupWireframeProtocol {
    

    

    
     func showOnboarding(from view: StartupViewProtocol?)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func showMain(from view: StartupViewProtocol?)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func showPincodeSetup(from view: StartupViewProtocol?)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func presentUnsupportedVersion(for data: SupportedVersionData, on window: UIWindow?, animated: Bool)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
}


import Cuckoo
@testable import SoraPassport

import UIKit


 class MockUnsupportedVersionViewProtocol: UnsupportedVersionViewProtocol, Cuckoo.ProtocolMock {
    
     typealias MocksType = UnsupportedVersionViewProtocol
    
     typealias Stubbing = __StubbingProxy_UnsupportedVersionViewProtocol
     typealias Verification = __VerificationProxy_UnsupportedVersionViewProtocol

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: UnsupportedVersionViewProtocol?

     func enableDefaultImplementation(_ stub: UnsupportedVersionViewProtocol) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    
    
    
     var controller: UIViewController {
        get {
            return cuckoo_manager.getter("controller",
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.controller)
        }
        
    }
    

    

    
    
    
     func didReceive(viewModel: UnsupportedVersionViewModel)  {
        
    return cuckoo_manager.call("didReceive(viewModel: UnsupportedVersionViewModel)",
            parameters: (viewModel),
            escapingParameters: (viewModel),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.didReceive(viewModel: viewModel))
        
    }
    

	 struct __StubbingProxy_UnsupportedVersionViewProtocol: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    var controller: Cuckoo.ProtocolToBeStubbedReadOnlyProperty<MockUnsupportedVersionViewProtocol, UIViewController> {
	        return .init(manager: cuckoo_manager, name: "controller")
	    }
	    
	    
	    func didReceive<M1: Cuckoo.Matchable>(viewModel: M1) -> Cuckoo.ProtocolStubNoReturnFunction<(UnsupportedVersionViewModel)> where M1.MatchedType == UnsupportedVersionViewModel {
	        let matchers: [Cuckoo.ParameterMatcher<(UnsupportedVersionViewModel)>] = [wrap(matchable: viewModel) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockUnsupportedVersionViewProtocol.self, method: "didReceive(viewModel: UnsupportedVersionViewModel)", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_UnsupportedVersionViewProtocol: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	    
	    var controller: Cuckoo.VerifyReadOnlyProperty<UIViewController> {
	        return .init(manager: cuckoo_manager, name: "controller", callMatcher: callMatcher, sourceLocation: sourceLocation)
	    }
	    
	
	    
	    @discardableResult
	    func didReceive<M1: Cuckoo.Matchable>(viewModel: M1) -> Cuckoo.__DoNotUse<(UnsupportedVersionViewModel), Void> where M1.MatchedType == UnsupportedVersionViewModel {
	        let matchers: [Cuckoo.ParameterMatcher<(UnsupportedVersionViewModel)>] = [wrap(matchable: viewModel) { $0 }]
	        return cuckoo_manager.verify("didReceive(viewModel: UnsupportedVersionViewModel)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

 class UnsupportedVersionViewProtocolStub: UnsupportedVersionViewProtocol {
    
    
     var controller: UIViewController {
        get {
            return DefaultValueRegistry.defaultValue(for: (UIViewController).self)
        }
        
    }
    

    

    
     func didReceive(viewModel: UnsupportedVersionViewModel)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
}



 class MockUnsupportedVersionPresenterProtocol: UnsupportedVersionPresenterProtocol, Cuckoo.ProtocolMock {
    
     typealias MocksType = UnsupportedVersionPresenterProtocol
    
     typealias Stubbing = __StubbingProxy_UnsupportedVersionPresenterProtocol
     typealias Verification = __VerificationProxy_UnsupportedVersionPresenterProtocol

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: UnsupportedVersionPresenterProtocol?

     func enableDefaultImplementation(_ stub: UnsupportedVersionPresenterProtocol) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    

    

    
    
    
     func setup()  {
        
    return cuckoo_manager.call("setup()",
            parameters: (),
            escapingParameters: (),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.setup())
        
    }
    
    
    
     func performAction()  {
        
    return cuckoo_manager.call("performAction()",
            parameters: (),
            escapingParameters: (),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.performAction())
        
    }
    

	 struct __StubbingProxy_UnsupportedVersionPresenterProtocol: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func setup() -> Cuckoo.ProtocolStubNoReturnFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockUnsupportedVersionPresenterProtocol.self, method: "setup()", parameterMatchers: matchers))
	    }
	    
	    func performAction() -> Cuckoo.ProtocolStubNoReturnFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockUnsupportedVersionPresenterProtocol.self, method: "performAction()", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_UnsupportedVersionPresenterProtocol: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func setup() -> Cuckoo.__DoNotUse<(), Void> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("setup()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func performAction() -> Cuckoo.__DoNotUse<(), Void> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("performAction()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

 class UnsupportedVersionPresenterProtocolStub: UnsupportedVersionPresenterProtocol {
    

    

    
     func setup()   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func performAction()   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
}



 class MockUnsupportedVersionInteractorInputProtocol: UnsupportedVersionInteractorInputProtocol, Cuckoo.ProtocolMock {
    
     typealias MocksType = UnsupportedVersionInteractorInputProtocol
    
     typealias Stubbing = __StubbingProxy_UnsupportedVersionInteractorInputProtocol
     typealias Verification = __VerificationProxy_UnsupportedVersionInteractorInputProtocol

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: UnsupportedVersionInteractorInputProtocol?

     func enableDefaultImplementation(_ stub: UnsupportedVersionInteractorInputProtocol) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    

    

    

	 struct __StubbingProxy_UnsupportedVersionInteractorInputProtocol: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	}

	 struct __VerificationProxy_UnsupportedVersionInteractorInputProtocol: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	}
}

 class UnsupportedVersionInteractorInputProtocolStub: UnsupportedVersionInteractorInputProtocol {
    

    

    
}



 class MockUnsupportedVersionInteractorOutputProtocol: UnsupportedVersionInteractorOutputProtocol, Cuckoo.ProtocolMock {
    
     typealias MocksType = UnsupportedVersionInteractorOutputProtocol
    
     typealias Stubbing = __StubbingProxy_UnsupportedVersionInteractorOutputProtocol
     typealias Verification = __VerificationProxy_UnsupportedVersionInteractorOutputProtocol

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: UnsupportedVersionInteractorOutputProtocol?

     func enableDefaultImplementation(_ stub: UnsupportedVersionInteractorOutputProtocol) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    

    

    

	 struct __StubbingProxy_UnsupportedVersionInteractorOutputProtocol: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	}

	 struct __VerificationProxy_UnsupportedVersionInteractorOutputProtocol: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	}
}

 class UnsupportedVersionInteractorOutputProtocolStub: UnsupportedVersionInteractorOutputProtocol {
    

    

    
}



 class MockUnsupportedVersionWireframeProtocol: UnsupportedVersionWireframeProtocol, Cuckoo.ProtocolMock {
    
     typealias MocksType = UnsupportedVersionWireframeProtocol
    
     typealias Stubbing = __StubbingProxy_UnsupportedVersionWireframeProtocol
     typealias Verification = __VerificationProxy_UnsupportedVersionWireframeProtocol

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: UnsupportedVersionWireframeProtocol?

     func enableDefaultImplementation(_ stub: UnsupportedVersionWireframeProtocol) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    

    

    

	 struct __StubbingProxy_UnsupportedVersionWireframeProtocol: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	}

	 struct __VerificationProxy_UnsupportedVersionWireframeProtocol: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	}
}

 class UnsupportedVersionWireframeProtocolStub: UnsupportedVersionWireframeProtocol {
    

    

    
}


import Cuckoo
@testable import SoraPassport

import Foundation
import RobinHood
import SoraUI


 class MockVotesHistoryViewProtocol: VotesHistoryViewProtocol, Cuckoo.ProtocolMock {
    
     typealias MocksType = VotesHistoryViewProtocol
    
     typealias Stubbing = __StubbingProxy_VotesHistoryViewProtocol
     typealias Verification = __VerificationProxy_VotesHistoryViewProtocol

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: VotesHistoryViewProtocol?

     func enableDefaultImplementation(_ stub: VotesHistoryViewProtocol) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    
    
    
     var controller: UIViewController {
        get {
            return cuckoo_manager.getter("controller",
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.controller)
        }
        
    }
    

    

    
    
    
     func didReload()  {
        
    return cuckoo_manager.call("didReload()",
            parameters: (),
            escapingParameters: (),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.didReload())
        
    }
    
    
    
     func didReceive(changes: [VotesHistoryViewModelChange])  {
        
    return cuckoo_manager.call("didReceive(changes: [VotesHistoryViewModelChange])",
            parameters: (changes),
            escapingParameters: (changes),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.didReceive(changes: changes))
        
    }
    

	 struct __StubbingProxy_VotesHistoryViewProtocol: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    var controller: Cuckoo.ProtocolToBeStubbedReadOnlyProperty<MockVotesHistoryViewProtocol, UIViewController> {
	        return .init(manager: cuckoo_manager, name: "controller")
	    }
	    
	    
	    func didReload() -> Cuckoo.ProtocolStubNoReturnFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockVotesHistoryViewProtocol.self, method: "didReload()", parameterMatchers: matchers))
	    }
	    
	    func didReceive<M1: Cuckoo.Matchable>(changes: M1) -> Cuckoo.ProtocolStubNoReturnFunction<([VotesHistoryViewModelChange])> where M1.MatchedType == [VotesHistoryViewModelChange] {
	        let matchers: [Cuckoo.ParameterMatcher<([VotesHistoryViewModelChange])>] = [wrap(matchable: changes) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockVotesHistoryViewProtocol.self, method: "didReceive(changes: [VotesHistoryViewModelChange])", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_VotesHistoryViewProtocol: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	    
	    var controller: Cuckoo.VerifyReadOnlyProperty<UIViewController> {
	        return .init(manager: cuckoo_manager, name: "controller", callMatcher: callMatcher, sourceLocation: sourceLocation)
	    }
	    
	
	    
	    @discardableResult
	    func didReload() -> Cuckoo.__DoNotUse<(), Void> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("didReload()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func didReceive<M1: Cuckoo.Matchable>(changes: M1) -> Cuckoo.__DoNotUse<([VotesHistoryViewModelChange]), Void> where M1.MatchedType == [VotesHistoryViewModelChange] {
	        let matchers: [Cuckoo.ParameterMatcher<([VotesHistoryViewModelChange])>] = [wrap(matchable: changes) { $0 }]
	        return cuckoo_manager.verify("didReceive(changes: [VotesHistoryViewModelChange])", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

 class VotesHistoryViewProtocolStub: VotesHistoryViewProtocol {
    
    
     var controller: UIViewController {
        get {
            return DefaultValueRegistry.defaultValue(for: (UIViewController).self)
        }
        
    }
    

    

    
     func didReload()   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func didReceive(changes: [VotesHistoryViewModelChange])   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
}



 class MockVotesHistoryPresenterProtocol: VotesHistoryPresenterProtocol, Cuckoo.ProtocolMock {
    
     typealias MocksType = VotesHistoryPresenterProtocol
    
     typealias Stubbing = __StubbingProxy_VotesHistoryPresenterProtocol
     typealias Verification = __VerificationProxy_VotesHistoryPresenterProtocol

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: VotesHistoryPresenterProtocol?

     func enableDefaultImplementation(_ stub: VotesHistoryPresenterProtocol) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    
    
    
    public var shouldDisplayEmptyState: Bool {
        get {
            return cuckoo_manager.getter("shouldDisplayEmptyState",
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.shouldDisplayEmptyState)
        }
        
    }
    

    

    
    
    
     func viewIsReady()  {
        
    return cuckoo_manager.call("viewIsReady()",
            parameters: (),
            escapingParameters: (),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.viewIsReady())
        
    }
    
    
    
     func reload()  {
        
    return cuckoo_manager.call("reload()",
            parameters: (),
            escapingParameters: (),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.reload())
        
    }
    
    
    
     func loadNext() -> Bool {
        
    return cuckoo_manager.call("loadNext() -> Bool",
            parameters: (),
            escapingParameters: (),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.loadNext())
        
    }
    
    
    
     func numberOfSections() -> Int {
        
    return cuckoo_manager.call("numberOfSections() -> Int",
            parameters: (),
            escapingParameters: (),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.numberOfSections())
        
    }
    
    
    
     func sectionModel(at index: Int) -> VotesHistorySectionViewModelProtocol {
        
    return cuckoo_manager.call("sectionModel(at: Int) -> VotesHistorySectionViewModelProtocol",
            parameters: (index),
            escapingParameters: (index),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.sectionModel(at: index))
        
    }
    

	 struct __StubbingProxy_VotesHistoryPresenterProtocol: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    var shouldDisplayEmptyState: Cuckoo.ProtocolToBeStubbedReadOnlyProperty<MockVotesHistoryPresenterProtocol, Bool> {
	        return .init(manager: cuckoo_manager, name: "shouldDisplayEmptyState")
	    }
	    
	    
	    func viewIsReady() -> Cuckoo.ProtocolStubNoReturnFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockVotesHistoryPresenterProtocol.self, method: "viewIsReady()", parameterMatchers: matchers))
	    }
	    
	    func reload() -> Cuckoo.ProtocolStubNoReturnFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockVotesHistoryPresenterProtocol.self, method: "reload()", parameterMatchers: matchers))
	    }
	    
	    func loadNext() -> Cuckoo.ProtocolStubFunction<(), Bool> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockVotesHistoryPresenterProtocol.self, method: "loadNext() -> Bool", parameterMatchers: matchers))
	    }
	    
	    func numberOfSections() -> Cuckoo.ProtocolStubFunction<(), Int> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockVotesHistoryPresenterProtocol.self, method: "numberOfSections() -> Int", parameterMatchers: matchers))
	    }
	    
	    func sectionModel<M1: Cuckoo.Matchable>(at index: M1) -> Cuckoo.ProtocolStubFunction<(Int), VotesHistorySectionViewModelProtocol> where M1.MatchedType == Int {
	        let matchers: [Cuckoo.ParameterMatcher<(Int)>] = [wrap(matchable: index) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockVotesHistoryPresenterProtocol.self, method: "sectionModel(at: Int) -> VotesHistorySectionViewModelProtocol", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_VotesHistoryPresenterProtocol: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	    
	    var shouldDisplayEmptyState: Cuckoo.VerifyReadOnlyProperty<Bool> {
	        return .init(manager: cuckoo_manager, name: "shouldDisplayEmptyState", callMatcher: callMatcher, sourceLocation: sourceLocation)
	    }
	    
	
	    
	    @discardableResult
	    func viewIsReady() -> Cuckoo.__DoNotUse<(), Void> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("viewIsReady()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func reload() -> Cuckoo.__DoNotUse<(), Void> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("reload()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func loadNext() -> Cuckoo.__DoNotUse<(), Bool> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("loadNext() -> Bool", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func numberOfSections() -> Cuckoo.__DoNotUse<(), Int> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("numberOfSections() -> Int", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func sectionModel<M1: Cuckoo.Matchable>(at index: M1) -> Cuckoo.__DoNotUse<(Int), VotesHistorySectionViewModelProtocol> where M1.MatchedType == Int {
	        let matchers: [Cuckoo.ParameterMatcher<(Int)>] = [wrap(matchable: index) { $0 }]
	        return cuckoo_manager.verify("sectionModel(at: Int) -> VotesHistorySectionViewModelProtocol", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

 class VotesHistoryPresenterProtocolStub: VotesHistoryPresenterProtocol {
    
    
    public var shouldDisplayEmptyState: Bool {
        get {
            return DefaultValueRegistry.defaultValue(for: (Bool).self)
        }
        
    }
    

    

    
     func viewIsReady()   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func reload()   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func loadNext() -> Bool  {
        return DefaultValueRegistry.defaultValue(for: (Bool).self)
    }
    
     func numberOfSections() -> Int  {
        return DefaultValueRegistry.defaultValue(for: (Int).self)
    }
    
     func sectionModel(at index: Int) -> VotesHistorySectionViewModelProtocol  {
        return DefaultValueRegistry.defaultValue(for: (VotesHistorySectionViewModelProtocol).self)
    }
    
}



 class MockVotesHistoryInteractorInputProtocol: VotesHistoryInteractorInputProtocol, Cuckoo.ProtocolMock {
    
     typealias MocksType = VotesHistoryInteractorInputProtocol
    
     typealias Stubbing = __StubbingProxy_VotesHistoryInteractorInputProtocol
     typealias Verification = __VerificationProxy_VotesHistoryInteractorInputProtocol

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: VotesHistoryInteractorInputProtocol?

     func enableDefaultImplementation(_ stub: VotesHistoryInteractorInputProtocol) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    

    

    
    
    
     func setup()  {
        
    return cuckoo_manager.call("setup()",
            parameters: (),
            escapingParameters: (),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.setup())
        
    }
    
    
    
     func reload()  {
        
    return cuckoo_manager.call("reload()",
            parameters: (),
            escapingParameters: (),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.reload())
        
    }
    
    
    
     func loadNext(page: Pagination)  {
        
    return cuckoo_manager.call("loadNext(page: Pagination)",
            parameters: (page),
            escapingParameters: (page),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.loadNext(page: page))
        
    }
    

	 struct __StubbingProxy_VotesHistoryInteractorInputProtocol: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func setup() -> Cuckoo.ProtocolStubNoReturnFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockVotesHistoryInteractorInputProtocol.self, method: "setup()", parameterMatchers: matchers))
	    }
	    
	    func reload() -> Cuckoo.ProtocolStubNoReturnFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockVotesHistoryInteractorInputProtocol.self, method: "reload()", parameterMatchers: matchers))
	    }
	    
	    func loadNext<M1: Cuckoo.Matchable>(page: M1) -> Cuckoo.ProtocolStubNoReturnFunction<(Pagination)> where M1.MatchedType == Pagination {
	        let matchers: [Cuckoo.ParameterMatcher<(Pagination)>] = [wrap(matchable: page) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockVotesHistoryInteractorInputProtocol.self, method: "loadNext(page: Pagination)", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_VotesHistoryInteractorInputProtocol: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func setup() -> Cuckoo.__DoNotUse<(), Void> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("setup()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func reload() -> Cuckoo.__DoNotUse<(), Void> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("reload()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func loadNext<M1: Cuckoo.Matchable>(page: M1) -> Cuckoo.__DoNotUse<(Pagination), Void> where M1.MatchedType == Pagination {
	        let matchers: [Cuckoo.ParameterMatcher<(Pagination)>] = [wrap(matchable: page) { $0 }]
	        return cuckoo_manager.verify("loadNext(page: Pagination)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

 class VotesHistoryInteractorInputProtocolStub: VotesHistoryInteractorInputProtocol {
    

    

    
     func setup()   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func reload()   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func loadNext(page: Pagination)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
}



 class MockVotesHistoryInteractorOutputProtocol: VotesHistoryInteractorOutputProtocol, Cuckoo.ProtocolMock {
    
     typealias MocksType = VotesHistoryInteractorOutputProtocol
    
     typealias Stubbing = __StubbingProxy_VotesHistoryInteractorOutputProtocol
     typealias Verification = __VerificationProxy_VotesHistoryInteractorOutputProtocol

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: VotesHistoryInteractorOutputProtocol?

     func enableDefaultImplementation(_ stub: VotesHistoryInteractorOutputProtocol) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    

    

    
    
    
     func didReload(events: [VotesHistoryEventData]?)  {
        
    return cuckoo_manager.call("didReload(events: [VotesHistoryEventData]?)",
            parameters: (events),
            escapingParameters: (events),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.didReload(events: events))
        
    }
    
    
    
     func didReceiveVotesHistoryDataProvider(error: Error)  {
        
    return cuckoo_manager.call("didReceiveVotesHistoryDataProvider(error: Error)",
            parameters: (error),
            escapingParameters: (error),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.didReceiveVotesHistoryDataProvider(error: error))
        
    }
    
    
    
     func didLoadNext(events: [VotesHistoryEventData], for page: Pagination)  {
        
    return cuckoo_manager.call("didLoadNext(events: [VotesHistoryEventData], for: Pagination)",
            parameters: (events, page),
            escapingParameters: (events, page),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.didLoadNext(events: events, for: page))
        
    }
    
    
    
     func didReceiveLoadNext(error: Error, for page: Pagination)  {
        
    return cuckoo_manager.call("didReceiveLoadNext(error: Error, for: Pagination)",
            parameters: (error, page),
            escapingParameters: (error, page),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.didReceiveLoadNext(error: error, for: page))
        
    }
    

	 struct __StubbingProxy_VotesHistoryInteractorOutputProtocol: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func didReload<M1: Cuckoo.OptionalMatchable>(events: M1) -> Cuckoo.ProtocolStubNoReturnFunction<([VotesHistoryEventData]?)> where M1.OptionalMatchedType == [VotesHistoryEventData] {
	        let matchers: [Cuckoo.ParameterMatcher<([VotesHistoryEventData]?)>] = [wrap(matchable: events) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockVotesHistoryInteractorOutputProtocol.self, method: "didReload(events: [VotesHistoryEventData]?)", parameterMatchers: matchers))
	    }
	    
	    func didReceiveVotesHistoryDataProvider<M1: Cuckoo.Matchable>(error: M1) -> Cuckoo.ProtocolStubNoReturnFunction<(Error)> where M1.MatchedType == Error {
	        let matchers: [Cuckoo.ParameterMatcher<(Error)>] = [wrap(matchable: error) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockVotesHistoryInteractorOutputProtocol.self, method: "didReceiveVotesHistoryDataProvider(error: Error)", parameterMatchers: matchers))
	    }
	    
	    func didLoadNext<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(events: M1, for page: M2) -> Cuckoo.ProtocolStubNoReturnFunction<([VotesHistoryEventData], Pagination)> where M1.MatchedType == [VotesHistoryEventData], M2.MatchedType == Pagination {
	        let matchers: [Cuckoo.ParameterMatcher<([VotesHistoryEventData], Pagination)>] = [wrap(matchable: events) { $0.0 }, wrap(matchable: page) { $0.1 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockVotesHistoryInteractorOutputProtocol.self, method: "didLoadNext(events: [VotesHistoryEventData], for: Pagination)", parameterMatchers: matchers))
	    }
	    
	    func didReceiveLoadNext<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(error: M1, for page: M2) -> Cuckoo.ProtocolStubNoReturnFunction<(Error, Pagination)> where M1.MatchedType == Error, M2.MatchedType == Pagination {
	        let matchers: [Cuckoo.ParameterMatcher<(Error, Pagination)>] = [wrap(matchable: error) { $0.0 }, wrap(matchable: page) { $0.1 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockVotesHistoryInteractorOutputProtocol.self, method: "didReceiveLoadNext(error: Error, for: Pagination)", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_VotesHistoryInteractorOutputProtocol: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func didReload<M1: Cuckoo.OptionalMatchable>(events: M1) -> Cuckoo.__DoNotUse<([VotesHistoryEventData]?), Void> where M1.OptionalMatchedType == [VotesHistoryEventData] {
	        let matchers: [Cuckoo.ParameterMatcher<([VotesHistoryEventData]?)>] = [wrap(matchable: events) { $0 }]
	        return cuckoo_manager.verify("didReload(events: [VotesHistoryEventData]?)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func didReceiveVotesHistoryDataProvider<M1: Cuckoo.Matchable>(error: M1) -> Cuckoo.__DoNotUse<(Error), Void> where M1.MatchedType == Error {
	        let matchers: [Cuckoo.ParameterMatcher<(Error)>] = [wrap(matchable: error) { $0 }]
	        return cuckoo_manager.verify("didReceiveVotesHistoryDataProvider(error: Error)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func didLoadNext<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(events: M1, for page: M2) -> Cuckoo.__DoNotUse<([VotesHistoryEventData], Pagination), Void> where M1.MatchedType == [VotesHistoryEventData], M2.MatchedType == Pagination {
	        let matchers: [Cuckoo.ParameterMatcher<([VotesHistoryEventData], Pagination)>] = [wrap(matchable: events) { $0.0 }, wrap(matchable: page) { $0.1 }]
	        return cuckoo_manager.verify("didLoadNext(events: [VotesHistoryEventData], for: Pagination)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func didReceiveLoadNext<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(error: M1, for page: M2) -> Cuckoo.__DoNotUse<(Error, Pagination), Void> where M1.MatchedType == Error, M2.MatchedType == Pagination {
	        let matchers: [Cuckoo.ParameterMatcher<(Error, Pagination)>] = [wrap(matchable: error) { $0.0 }, wrap(matchable: page) { $0.1 }]
	        return cuckoo_manager.verify("didReceiveLoadNext(error: Error, for: Pagination)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

 class VotesHistoryInteractorOutputProtocolStub: VotesHistoryInteractorOutputProtocol {
    

    

    
     func didReload(events: [VotesHistoryEventData]?)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func didReceiveVotesHistoryDataProvider(error: Error)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func didLoadNext(events: [VotesHistoryEventData], for page: Pagination)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func didReceiveLoadNext(error: Error, for page: Pagination)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
}



 class MockVotesHistoryWireframeProtocol: VotesHistoryWireframeProtocol, Cuckoo.ProtocolMock {
    
     typealias MocksType = VotesHistoryWireframeProtocol
    
     typealias Stubbing = __StubbingProxy_VotesHistoryWireframeProtocol
     typealias Verification = __VerificationProxy_VotesHistoryWireframeProtocol

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: VotesHistoryWireframeProtocol?

     func enableDefaultImplementation(_ stub: VotesHistoryWireframeProtocol) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    

    

    
    
    
     func present(error: Error, from view: ControllerBackedProtocol?) -> Bool {
        
    return cuckoo_manager.call("present(error: Error, from: ControllerBackedProtocol?) -> Bool",
            parameters: (error, view),
            escapingParameters: (error, view),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.present(error: error, from: view))
        
    }
    
    
    
     func present(message: String?, title: String?, closeAction: String?, from view: ControllerBackedProtocol?)  {
        
    return cuckoo_manager.call("present(message: String?, title: String?, closeAction: String?, from: ControllerBackedProtocol?)",
            parameters: (message, title, closeAction, view),
            escapingParameters: (message, title, closeAction, view),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.present(message: message, title: title, closeAction: closeAction, from: view))
        
    }
    
    
    
     func present(message: String?, title: String?, actions: [AlertPresentableAction], from view: ControllerBackedProtocol?)  {
        
    return cuckoo_manager.call("present(message: String?, title: String?, actions: [AlertPresentableAction], from: ControllerBackedProtocol?)",
            parameters: (message, title, actions, view),
            escapingParameters: (message, title, actions, view),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.present(message: message, title: title, actions: actions, from: view))
        
    }
    

	 struct __StubbingProxy_VotesHistoryWireframeProtocol: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func present<M1: Cuckoo.Matchable, M2: Cuckoo.OptionalMatchable>(error: M1, from view: M2) -> Cuckoo.ProtocolStubFunction<(Error, ControllerBackedProtocol?), Bool> where M1.MatchedType == Error, M2.OptionalMatchedType == ControllerBackedProtocol {
	        let matchers: [Cuckoo.ParameterMatcher<(Error, ControllerBackedProtocol?)>] = [wrap(matchable: error) { $0.0 }, wrap(matchable: view) { $0.1 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockVotesHistoryWireframeProtocol.self, method: "present(error: Error, from: ControllerBackedProtocol?) -> Bool", parameterMatchers: matchers))
	    }
	    
	    func present<M1: Cuckoo.OptionalMatchable, M2: Cuckoo.OptionalMatchable, M3: Cuckoo.OptionalMatchable, M4: Cuckoo.OptionalMatchable>(message: M1, title: M2, closeAction: M3, from view: M4) -> Cuckoo.ProtocolStubNoReturnFunction<(String?, String?, String?, ControllerBackedProtocol?)> where M1.OptionalMatchedType == String, M2.OptionalMatchedType == String, M3.OptionalMatchedType == String, M4.OptionalMatchedType == ControllerBackedProtocol {
	        let matchers: [Cuckoo.ParameterMatcher<(String?, String?, String?, ControllerBackedProtocol?)>] = [wrap(matchable: message) { $0.0 }, wrap(matchable: title) { $0.1 }, wrap(matchable: closeAction) { $0.2 }, wrap(matchable: view) { $0.3 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockVotesHistoryWireframeProtocol.self, method: "present(message: String?, title: String?, closeAction: String?, from: ControllerBackedProtocol?)", parameterMatchers: matchers))
	    }
	    
	    func present<M1: Cuckoo.OptionalMatchable, M2: Cuckoo.OptionalMatchable, M3: Cuckoo.Matchable, M4: Cuckoo.OptionalMatchable>(message: M1, title: M2, actions: M3, from view: M4) -> Cuckoo.ProtocolStubNoReturnFunction<(String?, String?, [AlertPresentableAction], ControllerBackedProtocol?)> where M1.OptionalMatchedType == String, M2.OptionalMatchedType == String, M3.MatchedType == [AlertPresentableAction], M4.OptionalMatchedType == ControllerBackedProtocol {
	        let matchers: [Cuckoo.ParameterMatcher<(String?, String?, [AlertPresentableAction], ControllerBackedProtocol?)>] = [wrap(matchable: message) { $0.0 }, wrap(matchable: title) { $0.1 }, wrap(matchable: actions) { $0.2 }, wrap(matchable: view) { $0.3 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockVotesHistoryWireframeProtocol.self, method: "present(message: String?, title: String?, actions: [AlertPresentableAction], from: ControllerBackedProtocol?)", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_VotesHistoryWireframeProtocol: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func present<M1: Cuckoo.Matchable, M2: Cuckoo.OptionalMatchable>(error: M1, from view: M2) -> Cuckoo.__DoNotUse<(Error, ControllerBackedProtocol?), Bool> where M1.MatchedType == Error, M2.OptionalMatchedType == ControllerBackedProtocol {
	        let matchers: [Cuckoo.ParameterMatcher<(Error, ControllerBackedProtocol?)>] = [wrap(matchable: error) { $0.0 }, wrap(matchable: view) { $0.1 }]
	        return cuckoo_manager.verify("present(error: Error, from: ControllerBackedProtocol?) -> Bool", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func present<M1: Cuckoo.OptionalMatchable, M2: Cuckoo.OptionalMatchable, M3: Cuckoo.OptionalMatchable, M4: Cuckoo.OptionalMatchable>(message: M1, title: M2, closeAction: M3, from view: M4) -> Cuckoo.__DoNotUse<(String?, String?, String?, ControllerBackedProtocol?), Void> where M1.OptionalMatchedType == String, M2.OptionalMatchedType == String, M3.OptionalMatchedType == String, M4.OptionalMatchedType == ControllerBackedProtocol {
	        let matchers: [Cuckoo.ParameterMatcher<(String?, String?, String?, ControllerBackedProtocol?)>] = [wrap(matchable: message) { $0.0 }, wrap(matchable: title) { $0.1 }, wrap(matchable: closeAction) { $0.2 }, wrap(matchable: view) { $0.3 }]
	        return cuckoo_manager.verify("present(message: String?, title: String?, closeAction: String?, from: ControllerBackedProtocol?)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func present<M1: Cuckoo.OptionalMatchable, M2: Cuckoo.OptionalMatchable, M3: Cuckoo.Matchable, M4: Cuckoo.OptionalMatchable>(message: M1, title: M2, actions: M3, from view: M4) -> Cuckoo.__DoNotUse<(String?, String?, [AlertPresentableAction], ControllerBackedProtocol?), Void> where M1.OptionalMatchedType == String, M2.OptionalMatchedType == String, M3.MatchedType == [AlertPresentableAction], M4.OptionalMatchedType == ControllerBackedProtocol {
	        let matchers: [Cuckoo.ParameterMatcher<(String?, String?, [AlertPresentableAction], ControllerBackedProtocol?)>] = [wrap(matchable: message) { $0.0 }, wrap(matchable: title) { $0.1 }, wrap(matchable: actions) { $0.2 }, wrap(matchable: view) { $0.3 }]
	        return cuckoo_manager.verify("present(message: String?, title: String?, actions: [AlertPresentableAction], from: ControllerBackedProtocol?)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

 class VotesHistoryWireframeProtocolStub: VotesHistoryWireframeProtocol {
    

    

    
     func present(error: Error, from view: ControllerBackedProtocol?) -> Bool  {
        return DefaultValueRegistry.defaultValue(for: (Bool).self)
    }
    
     func present(message: String?, title: String?, closeAction: String?, from view: ControllerBackedProtocol?)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func present(message: String?, title: String?, actions: [AlertPresentableAction], from view: ControllerBackedProtocol?)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
}

