//
//  FSPopoverViewTransitionContext.swift
//  FSPopoverView
//
//  Created by Sheng on 2023/11/23.
//  Copyright © 2023 Sheng. All rights reserved.
//

import UIKit

public final class FSPopoverViewTransitionContext {
    
    // MARK: Sence
    
    public enum Scene {
        case present
        case dismiss
        case selection
    }
    
    // MARK: Properties/Public
    
    public let scene: FSPopoverViewTransitionContext.Scene
    
    public let arrowDirection: FSPopoverView.ArrowDirection
    
    public let arrowPoint: CGPoint
    
    public let popoverView: FSPopoverView
    
    public let dimBackgroundView: UIView
    
    // MARK: Properties/Internal
    
    var onDidCompleteTransition: (() -> Void)?
    
    // MARK: Initialization
    
    init(scene: FSPopoverViewTransitionContext.Scene,
         arrowDirection: FSPopoverView.ArrowDirection,
         arrowPoint: CGPoint,
         popoverView: FSPopoverView,
         dimBackgroundView: UIView) {
        self.scene = scene
        self.arrowDirection = arrowDirection
        self.arrowPoint = arrowPoint
        self.popoverView = popoverView
        self.dimBackgroundView = dimBackgroundView
    }
    
    // MARK: Public
    
    /// When the animation ends, you must call this method to
    /// tell the popover view that the animation has ended.
    public func completeTransition() {
        onDidCompleteTransition?()
    }
}
