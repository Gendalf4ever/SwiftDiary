//
//  ViewController.swift
//  SwiftDiary
//
//  Created by Master on 04.09.2021.
//

import UIKit
import FSCalendar
var hoursInDay: [String] = ["1","2","3","4"]
class ViewController: UIViewController, FSCalendarDelegate, UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        hours.count
    }
  
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       let cell = tableView.dequeueReusableCell(withIdentifier: "cell_ID", for: indexPath)
     cell.textLabel?.text = hours[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true) //метод отключения графы нажатия
        print(hours[indexPath.row])
    }
   @IBOutlet  var calendar: FSCalendar!
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        calendar.delegate = self;
      //  calendar.scrollDirection = .vertical
        calendar.scrollDirection = .horizontal
        func calendarFunc(_ calendar: FSCalendar, didDeselect date: Date, at: FSCalendarMonthPosition) {
            let formatter = DateFormatter()
            formatter.dateFormat = "EEEE dd-MM-YY"  //MM-dd-YY
            let string = formatter.string(from: date)
            print("\(string)")
        }
      
        
   
//
//        let hourDate = Date()
//        let hourCalendar = Calendar.current
//        let hour = hourCalendar.component(.hour, from: hourDate)
//        for hours in 1...23{
//            print("\(hours):00 - \(hours+1):00" )
//        }
//        print("Текущее время: \(hour)")
    }

 
}

