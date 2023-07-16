//
//  SettingsView.swift
//  Hike
//
//  Created by Arman Akash on 7/16/23.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
        List {
            // MARK: - SECTION: HEADER
            Section{
                HStack{
                    Spacer()
                    Image(systemName: "laurel.leading")
                        .font(.system(size: 80, weight: .black))
                    
                    VStack (spacing: -10){
                        Text("Hike")
                            .font(.system(size: 66, weight: .black))
                        
                        Text("Editors' choice")
                            .fontWeight(.medium)
                    }
                    
                    Image(systemName: "laurel.trailing")
                        .font(.system(size: 80, weight: .black))
                    Spacer()
                }
                .foregroundStyle(
                    LinearGradient(colors: [.customGreenMedium, .customGreenDark], startPoint: .top, endPoint: .bottom)
                )
                .padding(.top, 8)
                
                VStack(spacing: 8){
                    Text("Where can you find \nperfect tracks?")
                        .font(.title2)
                        .fontWeight(.heavy)
                    Text("The hike which is looks gorgeous in photos but is even better once you are actually there. The hike that you hope to do again someday. \nFind the best day hikes in the app")
                        .font(.footnote)
                        .italic()
                    
                    Text("Dust of the boots! It's time for a walk.")
                        .fontWeight(.heavy)
                        .foregroundColor(.customGreenMedium)
                } //: VSTACK
                .multilineTextAlignment(.center)
                .padding(.bottom, 16)
                .frame(maxWidth: .infinity)

            } //: HEADER
            .listRowSeparator(.hidden)
            
            // MARK: -  SECTION: ICON
            
            // MARK: - SECTION: ABOUT
            
            Section {
               // 1. Basic Labeled Content
         //       LabeledContent("Application", value: "Hike")
                
                // 2. Advanced Labeled Content
               
                CustomListRowView(rowLable: "Application", rowIcon: "apps.iphone", rowContent: "Hike", rowTintColor: .blue)
                
                CustomListRowView(rowLable: "Compatibility", rowIcon: "info.circle", rowContent: "iOS, iPadOS", rowTintColor: .red)
                
                CustomListRowView(rowLable: "Technology", rowIcon: "swift", rowContent: "Swift", rowTintColor: .orange)
                
                CustomListRowView(rowLable: "Version", rowIcon: "gear", rowContent: "1.0", rowTintColor: .purple)
                
                CustomListRowView(rowLable: "Developer", rowIcon: "ellipsis.curlybraces", rowContent: "Arman Akash", rowTintColor: .mint)
                
                CustomListRowView(rowLable: "Designer", rowIcon: "paintpalette", rowContent: "Robert Petras", rowTintColor: .pink)
                
                CustomListRowView(rowLable: "Website", rowIcon: "globe", rowTintColor: .indigo, rowLinkLabel: "Arman Akash", rowLinkDestination: "https://github.com/akashaha")
            }//: SECTION
        header: {
                Text("ABOUT THE APP")
            } footer: {
                HStack{
                    Spacer()
                    Text("Copyright © All right reserved")
                    Spacer()
                }
                .padding(.vertical, 8)
            }

        } //:LIST
       
       
    }
    
}


struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}