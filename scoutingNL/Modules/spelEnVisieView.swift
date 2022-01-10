//
//  spelEnVisieView.swift
//  scoutingNL
//
//  Created by Thijs Govers on 01/12/2021.
//

import SwiftUI

struct spelEnVisieView: View {
    var body: some View {
           
                VStack(alignment: .leading){
                    Text("Spel en visie").font(.largeTitle).padding(.horizontal, 30)
                    Spacer()
                    HStack{
                        Spacer()
                        Text("Uploaden").padding().background(Color("lightBlue")).cornerRadius(15).padding()
                        
                        Spacer()
                        Text("Feedback").padding().background(Color("lightBlue")).cornerRadius(15).padding()
                        Spacer()
                    }
                    
                    HStack{
                        Spacer()
                        Text("Cheatsheet").padding().background(Color("lightBlue")).cornerRadius(15).padding()
                        Spacer()
                        Text("NFC").padding().background(Color("lightBlue")).cornerRadius(15).padding()
                        Spacer()
                    }
                    Spacer()
                }.foregroundColor(Color("titleColor"))
        
        
    }
}

struct spelEnVisieView_Previews: PreviewProvider {
    static var previews: some View {
        spelEnVisieView()
    }
}
