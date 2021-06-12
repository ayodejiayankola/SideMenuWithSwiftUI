//
//  SideMenuViewModel.swift
//  SideMenuWithSwiftUI
//
//  Created by Ayankola Ayodeji  on 21/05/2021.
//

import Foundation

enum SideMenuViewModel: Int, CaseIterable {
    case profile
    case list
    case bookmarks
    
    var title : String {
        switch self {
        case .profile:
            return "Profile"
        case .list:
            return "List"
        case .bookmarks:
            return "Bookmarks"
        }
    }
    
    var imageName : String {
        switch self {
        case .profile:
            return "person"
        case .list:
            return "list.bullet"
        case .bookmarks:
            return "bookmark"
        }
    }
}
