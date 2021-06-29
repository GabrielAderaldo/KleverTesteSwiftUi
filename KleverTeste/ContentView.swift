//
//  ContentView.swift
//  KleverTeste
//
//  Created by Gabriel Aderaldo on 28/06/21.
//

import SwiftUI


struct ContentView: View {
    
    
    var body: some View {
        
        ZStack{
            //Criando o gradiente...
            RadialGradient(gradient: Gradient(colors: [Color.red, Color.purple]), center: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, startRadius: 100, endRadius: 470)
            
            VStack{
                
                LogoViewEeApresentacao()
                SubTemaText()
                Inpults()
                Bnt()
                
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


///MARK:Components

///MARK:Logo
struct LogoViewEeApresentacao: View {
    
    var body: some View{
        
        Image("logo")
            .resizable()
            .aspectRatio(contentMode: ContentMode.fit)
            .frame(width: 74.0, height: 74.0)
            .padding(Edge.Set.bottom, 20)
        
        
        Text("Login").bold().font(.title).foregroundColor(.white)
        
    }
}

///MARK:  SubTema...

struct SubTemaText: View {
    
 
    
    var body: some View{
        
        Text("Feito por Gabriel Aderaldo")
            .font(.subheadline)
            .padding(EdgeInsets(top: 0, leading: 0, bottom: 70, trailing: 0))
            .foregroundColor(.white)
        
    }
}

///MARK: Inpults de login e senha

struct Inpults : View {
    
    @State private var name: String = ""
    @State private var senha: String = ""
    
    var body: some View{
        
        TextField("Login", text: $name)
            .padding()
            .background(Color.white)
            .cornerRadius(4.0)
            .padding(EdgeInsets(top: 0, leading: 10, bottom: 15, trailing: 10))
        
        TextField("Senha", text: $senha)
            .padding()
            .background(Color.white)
            .cornerRadius(4.0)
            .padding(EdgeInsets(top: 0, leading: 10, bottom: 15, trailing: 10))
        
    }
}


///MARK: Butões

struct Bnt : View {
    
    var body: some View{
        
        Button(action: {
            
        }, label: {
            Text("Login")
        })
        .padding()
        .background(Color.white)
        .cornerRadius(8)
        .padding(EdgeInsets(top: 0, leading: 0, bottom: 15, trailing: 0))
        .foregroundColor(.black)
        
        
        
        Button(action: {
            print("Butão acessado...")
        }, label: {
            Text("Não tem conta? clique aqui!")
        }).padding(EdgeInsets(top: 0, leading: 10, bottom: 10, trailing: 0)).foregroundColor(Color.white)
        
    }
    
}

