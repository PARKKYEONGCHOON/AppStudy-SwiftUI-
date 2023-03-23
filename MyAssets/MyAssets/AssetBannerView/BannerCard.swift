//
//  BannerCard.swift
//  MyAssets
//
//  Created by 박경춘 on 2023/03/22.
//

import SwiftUI

struct BannerCard: View {
    
    var banner: AssetBanner
    
    var body: some View {
        Color(banner.backgroundColor)
            .overlay(
                VStack {
                    Text(banner.title)
                        .font(.title)
                    Text(banner.description)
                        .font(.subheadline)
                }
            )
    }
    
}

struct BannerCard_Previews: PreviewProvider {
    static var previews: some View {
        let banner0 = AssetBanner(title: "공지사항", description: "확인하세요", backgroundColor: .red)
        BannerCard(banner: banner0)
    }
}
