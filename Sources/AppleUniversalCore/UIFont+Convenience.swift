//
//  UIFont+Convenience.swift
//  MobileRadio
//
//  Created by Steven Troughton-Smith on 08/07/2022.
//  Copyright © 2022 High Caffeine Content. All rights reserved.
//

#if canImport(UIKit)
import UIKit

@available(iOS 13.0, *)
extension UIFont {
	
	public func rounded() -> UIFont {
		
		if let descriptor = self.fontDescriptor.withDesign(.rounded) {
			return UIFont(descriptor: descriptor, size: self.pointSize)
		}
		else {
			return self
		}
	}
	
	public func bold() -> UIFont {
		
		if let descriptor = self.fontDescriptor.withSymbolicTraits(.traitBold) {
			return UIFont(descriptor: descriptor, size: self.pointSize)
		}
		else {
			return self
		}
	}
	
}
#endif
