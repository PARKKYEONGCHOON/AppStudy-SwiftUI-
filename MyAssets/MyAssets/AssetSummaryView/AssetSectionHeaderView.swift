//
//  AssetSectionHeaderView.swift
//  MyAssets
//
//  Created by 박경춘 on 2023/03/22.
//

import SwiftUI

struct AssetSectionHeaderView: View {
    
    let title: String
    
    var body: some View {
        VStack(alignment: .leading){
            Text(title)
                .font(.system(size: 20,weight: .bold))
                .foregroundColor(.accentColor)
            Divider()
                .frame(height: 2)
                .background(Color.primary)
                .foregroundColor(.accentColor)
        }
    }
}

struct AssetSectionHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        AssetSectionHeaderView(title: "은행")
    }
}
