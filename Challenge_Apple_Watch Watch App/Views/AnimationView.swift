//
//  ContentView.swift
//  Challenge_Apple_Watch Watch App
//
//  Created by Dessana Santos on 07/11/22.
//

import SwiftUI

struct AnimationView: View {
    
    @State var angle: Double = 0.0
    @State var isAnimating = false
    
    var foreverAnimation: Animation {
        Animation.linear(duration: 2.0)
            .repeatForever(autoreverses: false)
    }
    
    var body: some View {
        
        GeometryReader { geometry in
            ZStack(alignment: .leading){
          
                ZStack{
                    //leading white circle
                    Image("plate")
                        .resizable()
                        .frame(width: 85.0, height: 85.0)
                        .rotationEffect(Angle(degrees: self.isAnimating ? -360.0 : 0.0))
                        .animation(self.foreverAnimation)
                        .onAppear {
                            self.isAnimating = true
                        }
                    
                }  .padding(.bottom, 150)
                    .padding(.leading, -35)
               
                ZStack {
                    
                    //top green circle
                        Image("plate2")
                        .resizable()
                        .frame(width: 60.0, height: 60.0)
                            .rotationEffect(Angle(degrees: self.isAnimating ? 360.0 : 0.0))
                             .animation(self.foreverAnimation)
                            .onAppear {
                                self.isAnimating = true
                            }
                } .padding(.top, -150)
                    .padding(.leading, 110)
                
                ZStack {
                    
                    //midle white circle
                        Image("plate")
                        .resizable()
                        .frame(width: 75.0, height: 75.0)
                            .rotationEffect(Angle(degrees: self.isAnimating ? 360.0 : 0.0))
                             .animation(self.foreverAnimation)
                            .onAppear {
                                self.isAnimating = true
                            }
                } .padding(.leading, 63)
                    .padding(.bottom, 95)
                    
                    
                    
                    ZStack{
                        //trailing orange circle
                        Image("plate1")
                            .resizable()
                            .frame(width: 90.0, height: 90.0)
                            .rotationEffect(Angle(degrees: self.isAnimating ? -360.0 : 0.0))
                            .animation(self.foreverAnimation)
                            .onAppear {
                                self.isAnimating = true
                            }
                        
                    }.padding(.leading, 130.0)
                    .padding(.top, 50)
                
                ZStack{
                    
                    //bottom orange circle
                    Image("plate1")
                        .resizable()
                        .frame(width: 130.0, height: 130.0)
                        .rotationEffect(Angle(degrees: self.isAnimating ? 360.0 : 0.0))
                        .animation(self.foreverAnimation)
                        .onAppear {
                            self.isAnimating = true
                        }
                    
                }
                .padding(.top, 125)
                .padding(.leading, -20)
            
            }
        }.ignoresSafeArea(.all)
            
        }
    }

struct AnimationView_Previews: PreviewProvider {
    static var previews: some View {
        AnimationView()
    }
}





