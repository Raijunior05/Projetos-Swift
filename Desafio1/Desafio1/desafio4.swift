//
//  desafio4.swift
//  Desafio1
//
//  Created by Turma02-22 on 20/09/24.
//

import SwiftUI

struct desafio4: View {
    @State var planodefundo: Color = Color.yellow
    @State var peso: String = ""
    @State var valor1: Double = 0
    @State var valor2: Double = 0
    @State var valor: Double = 0
    var body: some View {
        ZStack{
            planodefundo
                .edgesIgnoringSafeArea(.all)
            VStack(){
                    
                    Text("Calculadora de IMC")
                    .font(.title)
                    .bold()
                    .foregroundColor(.black)
                Spacer(minLength: 0)
                TextField("Digite seu peso", value: $valor1, formatter: NumberFormatter())
                    .keyboardType(.decimalPad)
                    .textContentType(.oneTimeCode)
                    .padding()
                    .frame(width: 350, height: 35)
                    .background(Color.white)
                    .cornerRadius(10)
                    .multilineTextAlignment(.center)
                TextField("Digite sua altura", value: $valor2, formatter: NumberFormatter())
                    .keyboardType(.decimalPad)
                    .textContentType(.oneTimeCode)
                    .padding()
                    .frame(width: 350, height: 35)
                    .background(Color.white)
                    .cornerRadius(10)
                    .multilineTextAlignment(.center)
    
                Button("Calcular"){
                    if valor2==0{
                        valor = 0
                    }
                    else{
                        valor = (valor1/((valor2/100)*(valor2/100)))
                    }
                    if valor == 0{
                        planodefundo = Color.red
                        peso = "Insira peso/altura válida"
                    }
                    if valor<18.5 && valor>0{
                        planodefundo = Color.baixo
                        peso = "Abaixo do peso"
                        
                    }
                    if valor >= 18.5 && valor < 25{
                        planodefundo = Color.normal
                        peso = "Normal"
                    }
                    if valor >= 25 && valor < 30{
                        planodefundo = Color.sobrepeso
                        peso = "Sobrepeso"
                    }
                    if valor >= 30{
                        planodefundo = Color.obesidade
                        peso = "Obesidade"
                    }
                    
                }
                        .padding()
                        .foregroundColor(.white)
                        .background(.blue)
                        .cornerRadius(20)
                    
                        
                Spacer()
                    Text("\(peso)")
                    .font(.title)
                    .bold()
                    .foregroundColor(.white)
                Spacer()
                ZStack{
                    Rectangle()
                        .frame(width: 400, height: 220)
                        .foregroundColor(Color.white)
                    VStack{
                        Text("VALORES DO IMC: PESSOAS DE 20 A 60 ANOS")
                            .bold()
                            .foregroundColor(.green)

                        HStack(spacing: 3){
                            VStack(spacing: 0){
                                ZStack{
                                    Rectangle()
                                        .frame(width: 200 ,height: 35)
                                        .foregroundColor(Color.gray.opacity(0.2))
                                    Text("VALOR DO IMC")
                                        .foregroundColor(.black)
                                }
                                ZStack{
                                    Rectangle()
                                        .frame(width: 200 ,height: 35)
                                        .foregroundColor(.baixo)
                                    Text("Menor que 18,5")
                                        .foregroundColor(.white)
                                    
                                }
                                ZStack{
                                    Rectangle()
                                        .frame(width: 200 ,height: 35)
                                        .foregroundColor(.normal)
                                    Text("De 18,5 a 24,99")
                                        .foregroundColor(.white)
                                    
                                }
                                ZStack{
                                    Rectangle()
                                        .frame(width: 200 ,height: 35)
                                        .foregroundColor(.sobrepeso)
                                    Text("De 25 a 29,99")
                                        .foregroundColor(.white)
                                    
                                    
                                }
                                ZStack{
                                    Rectangle()
                                        .frame(width: 200 ,height: 35)
                                        .foregroundColor(.obesidade)
                                    Text("Maior que 30")
                                        .foregroundColor(.white)
                                    
                                }
                                
                            }
                            VStack(spacing: 0){
                                ZStack{
                                    Rectangle()
                                        .frame(width: 200 ,height: 35)
                                        .foregroundColor(Color.gray.opacity(0.2))
                                        Text("Classificação")
                                    
                                }
                                ZStack{
                                    Rectangle()
                                        .frame(width: 200 ,height: 35)
                                        .foregroundColor(.baixo)
                                    Text("Abaixo do peso")
                                        .foregroundColor(.white)
                                        
                                    
                                }
                                ZStack{
                                    Rectangle()
                                        .frame(width: 200 ,height: 35)
                                        .foregroundColor(.normal)
                                        Text("Normal")
                                        .foregroundColor(.white)
                                    
                                }
                                ZStack{
                                    Rectangle()
                                        .frame(width: 200 ,height: 35)
                                        .foregroundColor(.sobrepeso)
                                        Text("Sobrepeso")
                                        .foregroundColor(.white)
                                    
                                }
                                ZStack{
                                    Rectangle()
                                        .frame(width: 200 ,height: 35)
                                        .foregroundColor(.obesidade)
                                        Text("Obesidade")
                                        .foregroundColor(.white)
                                    
                                }
                                
                            }
                        }
                    }
                        
                }
                
                
                    
            }
            
            
        }
    }
}

#Preview {
    desafio4()
}
