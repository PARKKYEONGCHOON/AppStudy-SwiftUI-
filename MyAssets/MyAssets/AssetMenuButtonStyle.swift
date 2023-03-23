//
//  AssetMenuButtonStyle.swift
//  MyAssets
//
//  Created by 박경춘 on 2023/03/22.
//

import SwiftUI

struct AssetMenuButtonStyle: ButtonStyle {
    
    let menu: AssetMenu
    
    func makeBody(configuration: Configuration) -> some View {
        return VStack {
            Image(systemName: menu.systemImageName)
                .resizable()
                .frame(width: 30,height: 30)
                .padding([.leading,.trailing], 10)
            Text(menu.title)
                .font(.system(size: 11, weight: .bold))
        }
        .padding()
        .foregroundColor(Color.blue)
        .background(Color.white)
        .clipShape(RoundedRectangle(cornerRadius: 10))
    }
}

struct AssetMenuButtonStyle_Previews: PreviewProvider {
    static var previews: some View {
        HStack(spacing: 24) {
            Button("") {
                print("")
            }
            .buttonStyle(AssetMenuButtonStyle(menu: .creditScore))
            Button("") {
                print("")
            }
            .buttonStyle(AssetMenuButtonStyle(menu: .cash))
            Button("") {
                print("")
            }
            .buttonStyle(AssetMenuButtonStyle(menu: .investment))
            Button("") {
                print("")
            }
            .buttonStyle(AssetMenuButtonStyle(menu: .loan))
            
        }
        .background(Color.gray.opacity(0.2))
    }
}
