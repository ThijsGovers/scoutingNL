//
//  dumpView.swift
//  scoutingNL
//
//  Created by Thijs Govers on 02/12/2021.
//

import SwiftUI

struct DumpView: View {
    var body: some View {
        HStack{
            Button("Button") {
                
            }
            Spacer()
            Text("ersdtfg")
                .font(.title)
                .fontWeight(.thin)
                .foregroundColor(Color.green)
        }.padding(.horizontal)
    }
}

struct dumpView_Previews: PreviewProvider {
    static var previews: some View {
        DumpView()
    }
}

//GeometryReader {geo in // Liever niet, maar werkt wel goed
//}
