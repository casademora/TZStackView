//
//  NSLayoutConstraintExtension.swift
//  TZStackView
//
//  Created by Tom van Zummeren on 10/06/15.
//  Copyright © 2015 Tom van Zummeren. All rights reserved.
//

import UIKit

extension NSLayoutConstraint {
    
    func readableString() -> String {
        return "\(self.dynamicType)(\n  item1: \(unwrap(firstItem)), firstAttribute: \(toString(firstAttribute))\n  relation: \(toString(relation))\n  secondItem: \(unwrap(secondItem)), secondAttribute: \(toString(secondAttribute))\n  constant: \(constant)\n  multiplier: \(multiplier)\n  priority: \(priority)\n)"
    }
    
    private func unwrap(_ object: AnyObject?) -> String {
        if let object = object {
            return "\(object)"
        }
        return "nil"
    }
    
    private func toString(_ relation: NSLayoutRelation) -> String {
        switch relation {
        case .lessThanOrEqual: return "LessThanOrEqual"
        case .equal: return "Equal"
        case .greaterThanOrEqual: return "GreaterThanOrEqual"
        }
    }
    
    private func toString(_ attribute: NSLayoutAttribute) -> String {
        switch attribute {
        case .left: return "Left"
        case .right: return "Right"
        case .top: return "Top"
        case .bottom: return "Bottom"
        case .leading: return "Leading"
        case .trailing: return "Trailing"
        case .width: return "Width"
        case .height: return "Height"
        case .centerX: return "CenterX"
        case .centerY: return "CenterY"
        case .lastBaseline: return "Last Baseline"
        case .firstBaseline: return "FirstBaseline"
        case .notAnAttribute: return "NotAnAttribute"
        case .leftMargin: return "LeftMargin"
        case .rightMargin: return "RightMargin"
        case .topMargin: return "TopMargin"
        case .bottomMargin: return "BottomMargin"
        case .leadingMargin: return "LeadingMargin"
        case .trailingMargin: return "TrailingMargin"
        case .centerXWithinMargins: return "CenterXWithinMargins"
        case .centerYWithinMargins: return "CenterYWithinMargins"
        }
    }
}
