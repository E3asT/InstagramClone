//
//  DescriptionView.swift
//  Ins
//
//  Created by Romain Beaujean on 11/11/2020.
//

import SwiftUI

struct DescriptionView: View {
       var body: some View {
              VStack {
                     HStack(alignment: .lastTextBaseline) {
                            Text("15555")
                            
                            Text("Likes")
                            
                            Spacer()
                     }
              }
              .padding(.horizontal, 10)
       }
}

struct DescriptionView_Previews: PreviewProvider {
       static var previews: some View {
              DescriptionView()
       }
}
