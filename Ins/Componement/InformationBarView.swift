//
//  InformationBarView.swift
//  Ins
//
//  Created by Romain Beaujean on 11/11/2020.
//

import SwiftUI

struct InformationBarView: View {
       let images = Images()
       var body: some View {
              HStack(alignment: .center, spacing: 15) {
                     Image(images.icon)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 40, height: 40)
                            .clipShape(Circle())
                     
                     Text("East")
                     
                     
                     Spacer()
                     Image(systemName: "ellipsis")
                            .imageScale(.large)
              }
              .padding(.horizontal, 10)
              .padding(.vertical, 10)
       }
}

struct InformationBarView_Previews: PreviewProvider {
       static var previews: some View {
              InformationBarView()
       }
}
