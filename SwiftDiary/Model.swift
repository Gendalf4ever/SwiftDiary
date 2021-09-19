//
//  Model.swift
//  SwiftDiary
//
//  Created by Master on 04.09.2021.
//

import Foundation

var hours: [String] = ["0:00-1:00", "1:00-2:00", "2:00-3:00", "3:00-4:00",
"4:00-5:00","5:00-6:00","6:00-7:00","7:00-8:00","8:00-9:00","9:00-10:00",
"10:00-11:00","11:00-12:00","12:00-13:00","13:00-14:00","14:00-15:00",
"16:00-17:00","17:00-18:00","18:00-19:00","19:00-20:00","20:00-21:00",
"21:00-22:00","22:00-23:00","23:00-0:00"]

var cases: [String] = ["bebe","baba","bubu"]
func loadData() {
    
}

func saveData(){

}

func addCase(nameOfCase: String){
    cases.append(nameOfCase)
    saveData()
}

func removeCase(at index: Int) {
    cases.remove(at: index)
    saveData()
}
