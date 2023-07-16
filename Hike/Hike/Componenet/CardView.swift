//
//  CardView.swift
//  Hike
//
//  Created by Arman Akash on 7/10/23.
//

import SwiftUI

struct CardView: View {
    // MARK: - PROPERTIES
    
    @State private  var imageNumber: Int = 1
    @State private  var randomNumber: Int = 1
    @State private var isShowingSheet : Bool = false
    
    // MARK: - FUNCTIONS
    
    func randomImage(){
       
        print("Status:  Old Image number = \(imageNumber)")
        repeat {
            randomNumber = Int.random(in: 1...5)
            print("Action: Random Number Generated = \(randomNumber)")
        } while randomNumber == imageNumber
        imageNumber = randomNumber
        
        print("Result :  New Image Number = \(imageNumber)")
        print("___END___")
        print("\n")
    }
    var body: some View {
        // MARK: - CARD
            
            ZStack {
                
                CustomBackgroundView()
                VStack {
                    // MARK: - HEADER
                    
                    VStack(alignment: .leading){
                        HStack {
                            Text("Hiking")
                                .fontWeight(.black)
                                .font(.system(size: 52))
                                .foregroundStyle(
                                    LinearGradient(colors: [.customGrayLight,.customGrayMedium], startPoint: .top, endPoint: .bottom)
                            )
                            Spacer()
                            
                            Button {
                                //Acttion: Show a Sheet
                                isShowingSheet.toggle()
                            } label: {
                                CustomButtonView()
                            }
                            .sheet(isPresented: $isShowingSheet) {
                                SettingsView()
                                    .presentationDragIndicator(.visible)
                                    .presentationDetents([.medium, .large])
                            }

                        }
                        
                        Text("Fun and enjoyable outdoor activity fir friends and families.")
                            .multilineTextAlignment(.leading)
                            .italic()
                            .foregroundColor(.customGrayMedium)
                    } //: HEADER
                    .padding(.horizontal,30)
                        
                        // MARK: - MAIN CONTENT
                    ZStack {
                       CustomCircleView()
                        
                        Image("image-\(imageNumber)")
                            .resizable()
                            .scaledToFit()
                            .animation(.default, value: imageNumber)
                    }
                    
                    // MARK: - FOOTER
                    Button {
                        // ACTION:  Generate the random number
                       
                        randomImage()
                    } label: {
                        Text("Explore More")
                            .font(.title2)
                            .fontWeight(.heavy)
                            .foregroundStyle(LinearGradient(colors: [.customGreenLight, .customGreenMedium], startPoint: .top, endPoint: .bottom))
                            .shadow(color: .black.opacity(0.25), radius: 0.25, x: 1, y: 2)
                    }
                    .buttonStyle(GradientButton())
                } //:Vstack
               

            } //: CARD
            .frame(width: 320, height: 670)
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView()
    }
}
