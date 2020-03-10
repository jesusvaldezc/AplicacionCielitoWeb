//
//  ContentView.swift
//  CW3.0
//
//  Created by Jesús Valdez on 30/01/20.
//  Copyright © 2020 Jesús Valdez. All rights reserved.
//

import SwiftUI

struct ContentView: View {
@State private var showDetails = false
    struct LoginView: View {
        var body: some View {
            Text("Login View")
        }
    }


    var body: some View {
            VStack {
                VStack(alignment: .center) {
                    Rectangle()
                    .fill(Color.yellow)
                        .frame(width: 450.0, height: 320.0)
                        .offset(y: -100)
                    CircleImage()
                    .frame(width: 0.0)
                    .offset(y: -300)
            .padding(.bottom, -300)
                    
                    Text("Amplia tu negocio").font(.title).multilineTextAlignment(.center)
                        .padding(.top, 16.0)
                    HStack {
                        Text("Con Cielito Web")
                            .font(.subheadline)
                    }
                    
                }
                .padding()
                
                VStack{
                    Text("Cielito Web te ofrece lo ultimo en tecnología para que no pierdas tus clientes")
                        .padding(.top, 15.0)
                        .frame(width: 300.0)
                       
                }

            
                HStack{
                   
                    Button(action: {
                       self.showDetails.toggle()
                    }) {
                        VStack {
                            Image(systemName: "eye.fill")
                                .padding(20.0)
                            Text("Mejore su imagen")
                                .font(.system(size: 16))
                                .multilineTextAlignment(.center)
                                
                                
                               
                                
                            
                        }
                        .padding()
                        .foregroundColor(.white)
                        .background(Color.green)
                        .cornerRadius(40)
                    }.sheet(isPresented: self.$showDetails){
                        ModalView()
                    }
                    
                    Button(action: {
                                          self.showDetails.toggle()
                                       }) {
                    
                  VStack {
                                          Image(systemName: "dollarsign.circle.fill")
                                                                        .padding(20.0)
                                                                    Text("Aumente sus ventas")
                                                                        .font(.system(size: 16))
                                                                        .multilineTextAlignment(.center)
                                                                        
                                                                        
                                                                       
                                                                        
                                                                    
                                                                }
                                                                .padding()
                                                                .foregroundColor(.white)
                                                                .background(Color.green)
                                                                .cornerRadius(40)
                                                            }.sheet(isPresented: self.$showDetails){
                                                                ModalView()
                                                            }
                    
                    Button(action: {
                                          self.showDetails.toggle()
                                       }) {
                    
               VStack {
                        Image(systemName: "phone.fill")
                            .padding(20.0)
                        Text("Atencion 100% en español")
                            .font(.system(size: 16))
                            .multilineTextAlignment(.center)
                            
                            
                           
                            
                        
                    }
                    .padding()
                    .foregroundColor(.white)
                    .background(Color.green)
                    .cornerRadius(40)
                }.sheet(isPresented: self.$showDetails){
                    ModalView()
                }
                                      
                   
                    
               
                    
                    
                                      
                }
                .padding()
                .frame(width: 400.0, height: 200.0)
                
                
            
        
        }
        
       
        
        
        
            }
            
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
