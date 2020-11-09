//
//  SelectDateTimeView.swift
//  Ferofly-Assignment
//
//  Created by Subhronil Saha on 08/11/20.
//

import UIKit
import FSCalendar

class SelectDateTimeViewController: UIViewController, FSCalendarDelegate, FSCalendarDelegateAppearance {
    
    @IBOutlet var calendar : FSCalendar!
    @IBOutlet var datePicker : UIDatePicker!
    
    var primaryColor = UIColor(red: 0.71, green: 0.64, blue: 0.59, alpha: 1.00)
        
    fileprivate lazy var dateFormatter1: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd"
        return formatter
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        calendar.delegate = self
        calendar.allowsMultipleSelection = true
        calendar.appearance.weekdayTextColor = self.primaryColor
        calendar.appearance.headerTitleColor = self.primaryColor
        calendar.appearance.selectionColor = self.primaryColor
        calendar.appearance.todayColor = self.primaryColor
        
        datePicker.setValue(primaryColor, forKeyPath: "textColor")
    }
    
    func calendar(_ calendar: FSCalendar, didSelect date: Date, at monthPosition: FSCalendarMonthPosition) {
        
    }

}


