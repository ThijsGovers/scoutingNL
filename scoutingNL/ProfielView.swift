//
//  profielView.swift
//  scoutingNL
//
//  Created by Thijs Govers on 08/12/2021.
//

import SwiftUI

struct ProfielView: View {
    @AppStorage("Settings.nameKey") var name = ""
    @AppStorage("Settings.scoutingNummerKey") var scoutingNummer = ""
    @AppStorage("Settings.darkModeKey") var darkMode = false
    @AppStorage("Settings.meldingenKey") var meldingen = true
    
    let appVersion = Bundle.main.infoDictionary?["CFBundleShortVersionString"] as? String ?? ""
        let appBuild =   Bundle.main.infoDictionary?[kCFBundleVersionKey as String] as? String ?? ""
        var buildVersion : String {
            appVersion + ", buildnumber: " + appBuild
        }
    
    var body: some View {
        NavigationView{
            Form{
                Section(header: Text("Naam")) {
                    TextField("Gebruikersnaam", text: $name)
                    TextField("Scouting nummer", text: $scoutingNummer)
                }
                
                Section(header: Text("Instellingen")) {
                    Toggle(isOn: $darkMode, label: {
                        Text("Darkmode")
                    })
                    Toggle("Meldingen", isOn: $meldingen)
                }
                
                Section(header: Text("App informatie")) {
                    HStack{
                        Text("Eigenaar")
                        Spacer()
                        Text("Scouting Nederland")
                        }
                    HStack{
                        Text("Website")
                        Spacer()
                    Link("scouting.nl", destination: URL(string: "https://www.scouting.nl")!)
                    }
                    HStack{
                        Text("App versie")
                        Spacer()
                        Text(buildVersion)
                        
                    }
                }
                
            }.preferredColorScheme(darkMode ? .dark : .light)
        }
    }
}

struct profielView_Previews: PreviewProvider {
    static var previews: some View {
        ProfielView()
    }
}

