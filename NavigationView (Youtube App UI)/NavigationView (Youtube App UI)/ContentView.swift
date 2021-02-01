//
//  ContentView.swift
//  NavigationView (Youtube App UI)
//
//  Created by muhammad luthfi farizqi on 29/01/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            TabView{
                Home()
                    .tabItem {
                        Image(systemName: "house.fill")
                        Text("Beranda")
                    }
                Home()
                    .tabItem {
                        Image(systemName: "paperplane.fill")
                        Text("Eksplorasi")
                    }
                Home()
                    .tabItem {
                        Image(systemName: "tray.fill")
                        Text("subsription")
                    }
                Home()
                    .tabItem {
                        Image(systemName: "envelope.fill")
                        Text("kontak masuk")
                    }
                Home()
                    .tabItem {
                        Image(systemName: "play.rectangle.fill")
                        Text("Koleksi")
                    }
            }.accentColor(.red)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Home : View {
    var body: some View{
        NavigationView{
            Kontent()
                .navigationBarItems(leading:
                                        HStack{
                                            Button(action:{print("hello button")
                                                
                                            }){
                             Image("YT")
                                .renderingMode(.original)
                                .resizable()
                                .frame(width:90, height:20)
                                }
                                        },
                                    trailing:
                                        HStack{
                                            Button(action: {print("Hello print")}){
                                                Image(systemName: "tray.full")
                                                    .foregroundColor(Color.secondary)
                                            }
                                            Button(action: {print("Hello print")}){
                                                Image(systemName: "video.fill")
                                                    .foregroundColor(Color.secondary)
                                            }
                                            Button(action: {print("Hello print")}){
                                                Image(systemName: "magnifyingglass")
                                                    .foregroundColor(Color.secondary)
                                            }
                                            
                                            Button(action: {print("Hello print")}){
                                                Image("Profile")
                                                    .renderingMode(.original)
                                                    .resizable()
                                                    .frame(width: 20, height: 20)
                                                    .clipShape(Circle())
                                            }
                                        }
                                    )
                .navigationBarTitle("")
                .navigationViewStyle(StackNavigationViewStyle())
        }
    }
}
struct Kontent : View {
    var  body: some View{
        List{
            CellKontent(imageKontent: "foto1", profileKontent: "Profile", judul: "Sholat ", deskripsi: "Ditoton 100x" , durasi: "20:20")
            CellKontent(imageKontent: "foto 2", profileKontent: "Profile", judul: "Tutorial Swift part 1 ", deskripsi: "Ditoton 300x" , durasi: "30:20")
            CellKontent(imageKontent: "foto 3", profileKontent: "Profile", judul: "Tutorial Swift part 2 ", deskripsi: "Ditoton 400x" , durasi: "50:20")
            CellKontent(imageKontent: "foto 4", profileKontent: "Profile", judul: "Tutorial Swift part 3 ", deskripsi: "Ditoton 500x" , durasi: "60:20")
        }
                }
                
            }
struct  CellKontent : View{
                var  imageKontent: String
                var  profileKontent: String
                var  judul: String
                var  deskripsi: String
                var  durasi: String
    
    var body: some View{
        VStack{
            ZStack(alignment: .bottomTrailing){
                Image(imageKontent)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                Text(durasi)
                    .padding(.all,2)
                    .foregroundColor(.white)
                    .font(.caption)
                    .background(Color.black)
                    .cornerRadius(5)
                    .padding(.trailing,5)
                    .padding(.bottom,5)
                
            }
            HStack{
                Image(profileKontent)
                    .resizable()
                    .frame(width:25, height: 30)
                    .clipShape(Circle())
                VStack(alignment: .leading){
                    Text(judul).font(.headline)
                    HStack{
                        Text(deskripsi).font(.caption)
                            Spacer()
                        Image(systemName:"list.bullet")
                    }
              
            }
        }
    }
            }
        
 
}
