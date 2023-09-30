//
//  BoardView.swift
//  CFGDraughts
//
//  Created by Sarah Smith on 30/09/2023.
//

import SwiftUI

struct BoardView: View {
    var body: some View {
        VStack{
            ForEach(0..<Utils.maxCells) { row in
                if (row.isMultiple(of: 2)) {
                    
                    HStack{
                        
                        ForEach(0..<Utils.maxCells){ cell in
                            
                            if (cell.isMultiple(of: 2)){
                                Button(action: {
                                    print("dark button tapped")
                                }){                            Image(systemName: "square.fill")
                                    .foregroundColor(Utils.colorDarkCell)}
                            }
                            else {
                                Button(action: {
                                    print("light button tapped")
                                }){
                                    Image(systemName: "square.fill")
                                        .foregroundColor(Utils.colorLightCell)
                                }
                            }
                        }
                    }
                }
                        
                        else {
                            HStack{
                                
                                ForEach(0..<Utils.maxCells){ cell in
                                    
                                    if (!cell.isMultiple(of: 2)){
                                        Button(action: {
                                            print("dark button tapped")
                                        }){                            Image(systemName: "square.fill")
                                            .foregroundColor(Utils.colorDarkCell)}
                                    }
                                    else {
                                        Button(action: {
                                            print("light button tapped")
                                        }){
                                            Image(systemName: "square.fill")
                                                .foregroundColor(Utils.colorLightCell)
                                        }
                                    }
                                }
                            }
                        }
                }
            }
        }
    }

struct BoardView_Previews: PreviewProvider {
    static var previews: some View {
        BoardView()
    }
}
