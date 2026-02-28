//
//  iPhone.swift
//  MVVM282JSON
//
//  Created by CHIEN on 28/2/26.
//

import Foundation


struct iPhone: Codable, Identifiable, Hashable{
    
    let id :Int
    let name :String
    let tagline :String
    let chip :String
    let storage : [String]
    let price: Double
    let series :String
    // có thể hỏi chỗ nào chưa hiểu
    // code phần này vào trước. Nên code tay vào đừng copy
    
    
    
    var formattedPrice: String {
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.locale = Locale(identifier: "vi_VN")
        return formatter.string(from: NSNumber(value: price)) ?? "\(price) đ"
    }
    
}
