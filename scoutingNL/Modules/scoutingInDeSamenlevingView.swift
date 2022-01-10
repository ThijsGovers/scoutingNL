//
//  scoutingInDeSamenlevingView.swift
//  scoutingNL
//
//  Created by Thijs Govers on 01/12/2021.
//

import SwiftUI

struct scoutingInDeSamenlevingView: View {
    var body: some View {
        
            VStack{
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
            }.navigationBarTitle("Scouting in de samenleving").foregroundColor(Color("titleColor"))
    }

}


struct scoutingInDeSamenlevingView_Previews: PreviewProvider {
    static var previews: some View {
        scoutingInDeSamenlevingView()
    }
}
