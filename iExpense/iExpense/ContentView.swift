//
//  ContentView.swift
//  iExpense
//
//  Created by Preju Kanuparthy on 1/6/24.
//
import Observation
import SwiftUI

struct SecondView: View {
    @Environment(\.dismiss) var dismiss
    @State private var isImageFullScreen = false
    
    
    let name: String
    var body: some View {
        ZStack(alignment: .bottom){
            
            LinearGradient(colors: [.blue, .purple], startPoint: .topLeading, endPoint: .bottomTrailing)
                .opacity(0.23)
                .ignoresSafeArea()
            
            Rectangle()
                .cornerRadius(30)
                .ignoresSafeArea()
                .foregroundColor(.white)
                .frame(height: 550)
            
            Image("grad")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 150, height: 150)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.white, lineWidth: 2)) // Optional: Add a white border
                .shadow(radius: 5)
                .padding()
                .offset(x: -100 ,y: -450)
            
            
            VStack {
                HStack {
                    
                    Button("<- Back") {
                        dismiss()
                    }
                    .padding()
                    .foregroundStyle(.black)
                    .fontWeight(.bold)
                    .padding()
                    
                    Spacer()
                    
                }
                
            Spacer()
                HStack {
                    VStack {
                        Text("Preju Kanuparthy")
                            .font(.largeTitle)
                            .multilineTextAlignment(.leading)
                        
                        Text("Photographer")
                            .foregroundStyle(.gray)
                            .multilineTextAlignment(.leading)
                            .offset(x: -55)
                        
                        Spacer()
                        
                        
                    }
                    .offset(y: 200)
                    .padding()
                    
                    Spacer()
                }
                    
                
                Spacer()
                    
                }
            HStack {
                           
                
                Image("imy7")
                                .resizable()
                                .scaledToFill()
                                .frame(width: isImageFullScreen ? UIScreen.main.bounds.width : 200,
                                       height: isImageFullScreen ? UIScreen.main.bounds.height : 200)
                                .clipShape(Rectangle())
                                .onTapGesture {
                                    withAnimation {
                                        isImageFullScreen.toggle()
                                    }
                                }
                                .ignoresSafeArea()

                } //end of h stack
                  
            }
        }
        
    }

struct ContentView: View {
    @State private var showingSheet = false
    let blueColor = Color(red: 134/255, green: 187/255, blue: 216/255)
    let darkBlueColor = Color(red: 51/255, green: 101/255, blue: 138/255)
    @State private var selectedTab = 0
    
    var body: some View {
        
        
        ZStack{
            
            LinearGradient(colors: [.black.opacity(0.4)], startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
            
            
            VStack {
                HStack {
                    Button("Friends") {
                    }
                    .foregroundColor(.white)
                    .padding()
                    .background(.black)
                    .cornerRadius(15)
                    .padding()
                    
                    
                    Button("Add Friend") {
                    }
                    .foregroundColor(.black)
                    .padding()
                    .background(.white)
                    .cornerRadius(15)
                    .overlay(
                        RoundedRectangle(cornerRadius: 15)
                            .stroke(Color.black, lineWidth: 2))
                    
                    
                    Spacer()
                    
                    
                    Button(action: {
                        showingSheet.toggle()
                    }) {
                        Image("grad")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 60, height: 60)
                            .clipShape(Circle())
                            .overlay(Circle().stroke(Color.black, lineWidth: 2))
                            .shadow(radius: 0)
                            .padding()
                    }
                    .sheet(isPresented: $showingSheet) {
                        SecondView(name: "Preju")
                    }
                    
                    
                    
                    
                }
                ZStack {
                    
                    Rectangle()
                        .cornerRadius(20)
                        .ignoresSafeArea()
                        .foregroundColor(.white)
                    
                    //here for white rectangle
                    
                    VStack {
                        HStack {
                            Text("Hello, Preju")
                                .font(.largeTitle)
                                .fontWeight(.bold)
                                .padding()
                            
                            Spacer()
                            
                            Image(systemName: "mappin")
                                .foregroundColor(.green)
                            
                            Text("Seattle")
                                .padding()
                        }
                        ZStack {
              
                            
                            Image("imy7")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 370, height: 500)
                                .cornerRadius(15)
                            
                            Rectangle()
                                .fill(LinearGradient(
                                                gradient: Gradient(colors: [Color.black, Color.green]),
                                                startPoint: .topLeading,
                                                endPoint: .bottomTrailing
                                            ))
                                .frame(width: 370, height: 500)
                                .cornerRadius(15)
                                .opacity(0.4)
                            
                            VStack{
                                HStack{
                                    Text("Currently Listening To:")
                                        .foregroundStyle(.white)
                                        .padding()
                                        .padding()
                                    
                                    
                                    Spacer()
                                    
                                }
                                
                                Text("MARSHMELLO")
                                    .fontWeight(.bold)
                                    .foregroundStyle(.white)
                                    .font(.system(size: 50))
                                    .fixedSize(horizontal: false, vertical: true)
                                    .padding()
                                    .offset(y: 330)
                                    
                
                                
                                Spacer()
                            }
                            
                        }
                        
                        ZStack {
                            Rectangle()
                                .foregroundColor(.gray)
                                .frame(width: 300, height: 3)
                                .padding()
                                
                            
                            Rectangle()
                                .foregroundColor(.black)
                                .frame(width: 100, height: 3)
                                .padding()
                                .offset(x: -100)
                            
                        }
                        
                        HStack {
                            Image(systemName: "shuffle")
                                .foregroundColor(.black)
                                .padding()
                            
                            Image(systemName: "backward.fill")
                                .foregroundColor(.black)
                                .padding()
                            
                            Image(systemName: "play.fill")
                                .foregroundColor(.black)
                                .padding()
                            
                            Image(systemName: "forward.fill")
                                .foregroundColor(.black)
                                .padding()
                            
                            Image(systemName: "music.note")
                                .foregroundColor(.black)
                                .padding()
                            
                        }
            
                        
                    }
                }
            }
        }
        
    }
}
#Preview {
    ContentView()
}
