//
//  BannerView.swift
//  Ins
//
//  Created by Romain Beaujean on 12/11/2020.
//

import SwiftUI

struct BannerView: View {
       var body: some View {
              HStack {
                     Image(systemName: "camera")
                     
                     Spacer()
                     Text("Instagram")
                     
                     Spacer()
                     Image(systemName: "paperplane")
                     
              }
              .padding()
              .font(.title2)
       }
}

struct BannerView_Previews: PreviewProvider {
       static var previews: some View {
              BannerView()
       }
}
