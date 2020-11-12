//
//  DescriptionView.swift
//  Ins
//
//  Created by Romain Beaujean on 11/11/2020.
//

import SwiftUI

struct DescriptionView: View {
       let east = "East"
       
       var body: some View {
              VStack(alignment: .leading, spacing: 10) {
                     HStack(alignment: .lastTextBaseline) {
                            Text("15555")
                            
                            Text("Likes")
                            
                            Spacer()
                     }
                     
                     HStack(alignment: .top) {
                            Text("East What a incredibly burger, perhaps one of the most succulet I ever tast in my life. I'm so greatfull to be enable to eat that !")
                                   .multilineTextAlignment(.leading)
                                   .lineSpacing(2)
                     }
                     
                     Text("See the 6 comments")
                            .font(.system(size: 17))
                            .font(.footnote)
                            .foregroundColor(.secondary)
              }
              .padding(.horizontal, 10)
       }
       
}

struct DescriptionView_Previews: PreviewProvider {
       static var previews: some View {
              DescriptionView()
       }
}
