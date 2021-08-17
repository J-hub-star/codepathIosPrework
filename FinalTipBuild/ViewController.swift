//
//  ViewController.swift
//  FinalTipBuild
//
//  Created by Behl, Jai on 8/17/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var Header: UILabel!
    @IBOutlet weak var BillAmountLabel: UILabel!
    @IBOutlet weak var PercentLabel: UILabel!
    @IBOutlet weak var BillTxt: UITextField!
    @IBOutlet weak var CalBtn: UIButton!
    @IBOutlet weak var TipTxt: UITextField!
    @IBOutlet weak var TIPOtput: UILabel!
    @IBOutlet weak var BillOutput: UILabel!
    @IBAction func Resetbtn(_ sender: Any) {
        TIPOtput.text = "$"
        BillOutput.text = "$"
    }
    
    @IBAction func CalBtnAction(_ sender: Any) {
        let billInput:Double = Double(BillTxt.text!)!
        let tipAmount:Double =  (Double(TipTxt.text!)!/100) * billInput
        TIPOtput.text = "$\(tipAmount)"
        BillOutput.text = "$\(tipAmount+billInput)"
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = .cyan
    }


}

