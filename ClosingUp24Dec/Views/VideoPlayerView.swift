//
//  VideoPlayerView.swift
//  ClosingUp24Dec
//
//  Created by Dan Payne on 1/23/22.
//

import AVKit
import SwiftUI

struct VideoPlayerView: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    let documentURL = Bundle.main.url(forResource: "RE04", withExtension: "pdf")!
    let url: URL

    var body: some View {
        
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color("rahRed"), Color("rahDarkRed")]), startPoint: .leading, endPoint: .trailing)
            .ignoresSafeArea()
            
        
            VStack {
            
                Button {
                    self.presentationMode.wrappedValue.dismiss()
                }
            label: {
                
                HStack {
                
                    Spacer()
                Image(systemName: "xmark")
                        .foregroundColor(.black)
                    .imageScale(.large)
                    .frame(width: 44, height: 44)
                    
               
                
            }
            }
                Text("Affidavit & Indemnity")
                    .font(.largeTitle)
                    .foregroundColor(.white)
                    .bold()
            
            VideoPlayer(player: AVPlayer(url: url))
                    .frame(width: 575, height: 275)
                    .cornerRadius(20)
                    .shadow(color: .black, radius: 20)
                    .padding()
            Spacer()
                
                
                PDFKitView(url: documentURL)
                    
        
            }
            .navigationBarBackButtonHidden(true)
            .navigationBarTitle("")
            .navigationBarHidden(true)
        }
        
        
    }
    
}

