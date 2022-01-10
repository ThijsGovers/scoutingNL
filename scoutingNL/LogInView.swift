//
//  LogInView.swift
//  scoutingNL
//
//  Created by Thijs Govers on 20/12/2021.
//

import SwiftUI

struct LogInView: View {
    @State var scoutingNummer = ""
    @State var wachtwoord = ""
    
    var body: some View {
        ZStack{
            Image("logInImage").resizable().ignoresSafeArea()
            
            
            VStack{
                Image(systemName: "circle")
                
                HStack{
                    TextField("Scoutingnummer", text: $scoutingNummer)
                        
                    Image(systemName: "person").foregroundColor(Color("Purple"))
                }.padding()
                .padding(.top, 50)
                
                Divider().background(Color.black)
                    .padding(.bottom, 50)
                    .padding(.horizontal, 10)
                    
                HStack{
                    SecureField("Wachtwoord", text: $wachtwoord)
                    Image(systemName: "eye").foregroundColor(Color("Purple"))
                }.padding()
                
                Divider().background(Color.black)
                    .padding(.bottom, 50)
                    .padding(.horizontal, 10)
                
                Button(action: {}) {
                    Text("Inloggen")
                }.padding()
                .padding(.horizontal, 50)
                .foregroundColor(.white)
                .background(Color("Purple"))
                .cornerRadius(50)
                .font(.title)
                
                Button(action: {}) {
                    Text("Wachtwoord vergeten?")
                }.padding()
                .foregroundColor(Color("Purple"))
                .padding(.top, 30)
                
                Divider().background(Color("Purple"))
                    .padding(.bottom, 50)
                    .padding(.horizontal, 90)
                
            }.background(Color("lightBlue")).opacity(0.85)
            .cornerRadius(20)
            .padding(30)
            
        }
    }
}

struct LogInView_Previews: PreviewProvider {
    static var previews: some View {
        LogInView()
    }
}
