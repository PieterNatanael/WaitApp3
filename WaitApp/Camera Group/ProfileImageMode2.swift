//
//  ProfileImageMode2.swift
//  WaitApp
//
//  Created by Pieter Yoshua Natanael on 11/04/22.
//

import Foundation


import SwiftUI

extension Image {

    func profileImageMod2() -> some View {
        self
            .resizable()
            
            .scaledToFill()
            .background(.white)
            .foregroundColor(.black)
            .aspectRatio(contentMode: .fill)
            .frame(width: 300, height: 300)
//            .clipShape(Circle())
//            .clipShape(RoundedRectangle(cornerRadius: 55))
    }

}
