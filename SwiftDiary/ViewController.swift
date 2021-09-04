//
//  ViewController.swift
//  SwiftDiary
//
//  Created by Master on 04.09.2021.
//

import UIKit
import FSCalendar
class ViewController: UIViewController, FSCalendarDelegate {
    @IBOutlet var calendar: FSCalendar!
    override func viewDidLoad() {
        super.viewDidLoad()
        calendar.delegate = self;
        func calendarFunc(_ calendar: FSCalendar, didDeselect date: Date, at: FSCalendarMonthPosition) {
            let formatter = DateFormatter()
            formatter.dateFormat = "EEEE dd-MM-YY"  //MM-dd-YY
            let string = formatter.string(from: date)
            print("\(string)")
        }
       
    }


}

