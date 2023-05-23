//
//  FontStyles.swift
//  SubscriptionForGroceries
//
//  Created by Aziza Karzhaubayeva on 22.05.2023.
//

import Foundation
import SwiftUI

extension Font {
    
    static var titleText: Font{
        return Font.custom("Inter-SemiBold ", size: 16)
    }
    
    static var plainText: Font{
        return Font.custom("Inter-Light", size: 12)
    }
    
    static var headerText: Font{
        return Font.custom("Inter-Medium", size: 12)
    }
    
    static var storiesText: Font{
        return Font.custom("Inter-Medium", size: 11)
    }
    
    static var bannerText: Font{
        return Font.custom("Inter-SemiBold", size: 10)
    }
    
    static var extraBold: Font{
        return Font.custom("Inter-ExtraBold", size: 17)
    }
    static var bannerBtnText: Font{
        return Font.custom("Inter-Medium", size: 6)
    }
    
    static var titleCartText: Font{
        return Font.custom("Inter-SemiBold", size: 12)
    }
    
}
