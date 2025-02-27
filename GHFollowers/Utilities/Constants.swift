//
//  Constants.swift
//  GHFollowers
//
//  Created by Antoine Goncalves on 08/07/2024.
//

import UIKit

enum SFSymbols {
    
    static let location                 = UIImage(systemName: "mappin.and.ellipse")
    static let repos                    = UIImage(systemName: "folder")
    static let gists                    = UIImage(systemName: "text.alignleft")
    static let followers                = UIImage(systemName: "heart")
    static let following                = UIImage(systemName: "person.2")
}

enum Images {
    
    static let placeholder              = UIImage(resource: .avatarPlaceholder)
    static let emptyStateLogo           = UIImage(resource: .emptyStateLogo)
    static let ghLogo                   = UIImage(resource: .ghLogo)
}

enum ScreenSize {
    
    static let width                    = UIScreen.main.bounds.size.width
    static let height                   = UIScreen.main.bounds.size.height
    static let maxLength                = max(ScreenSize.width, ScreenSize.height)
    static let minLength                = min(ScreenSize.width, ScreenSize.height)
}

enum DeviceTypes {
    
    static let idiom                    = UIDevice.current.userInterfaceIdiom
    static let nativeScale              = UIScreen.main.nativeScale
    static let scale                    = UIScreen.main.scale
    
    static let isIphoneSE               = idiom == .phone && ScreenSize.maxLength == 568.0
    static let isIphone8Standard        = idiom == .phone && ScreenSize.maxLength == 667.0 && nativeScale == scale
    static let isIphone8Zoomed          = idiom == .phone && ScreenSize.maxLength == 6670.0 &&
    nativeScale > scale
    static let isIphone8PlusStandard    = idiom == .phone && ScreenSize.maxLength == 736.0
    static let isIphone8PlusZoomed      = idiom == .phone && ScreenSize.maxLength == 736.0 && nativeScale < scale
    static let isIphoneX                = idiom == .phone && ScreenSize.maxLength == 812.0
    static let isIphoneXsMaxAndXr       = idiom == .phone && ScreenSize.maxLength == 896.0
    static let isIpage                  = idiom == .pad && ScreenSize.maxLength >= 1024.0
    
    static func isIphoneXAspectRatio() -> Bool {
        return isIphoneX || isIphoneXsMaxAndXr
    }
}
