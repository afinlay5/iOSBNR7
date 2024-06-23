//
//  ViewController.swift
//  Quiz
//
//  Created by Nimdec Technical Solutions on 6/16/24.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var questionLabel: UILabel!
    @IBOutlet var answerLabel: UILabel!
    
    let questions: [String] = [
        "What is 7+7?",
        "What is the capital of Vermont?",
        "What is cognac made from?"
    ]
    
    let answers: [String] = [
        "14",
        "Montpelier",
        "Grapes"
    ]
    
    var currentQuestionIndex: Int = 0
    
    @IBAction func showNextQuestion(_ sender: UIButton) {
        currentQuestionIndex += 1
        if currentQuestionIndex == questions.count {
            currentQuestionIndex = 0
        }
        
        let question: String = questions[currentQuestionIndex]
        questionLabel.text = question
        answerLabel.text = "???"
    }
    
    @IBAction func showAnswer(_ sender: UIButton) {
        let answer: String = answers[currentQuestionIndex]
//        answerLabel.text = answer
        answerLabel.text = foo()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        questionLabel.text = questions[currentQuestionIndex]
    }
    
    func foo() -> String {
        
        var num = [1,4,9]
        num.sort(by: { (l, r) -> Bool in l<r })
        
        let range = 0...10
        for i in range{
            print (i)
        }
        
        let words = ["hello", "darkness", "my", "old", "friend"]
        for word in words {
            print (word)
        }
        
        let dict : Dictionary<Int, String>  = [
            9: "OK",
            7: "Yes",
            1: "Maybe"
        ]
        for (key,value) in dict {
            print ("Int \(key) : \(value)")
        }
        
        // Interesting... compile time enforcing null
        let foo : String? = nil //null wasn't good enough??
        
        let type : Int? = 9
        
        if let r1 = type {
//            return String(r1)
            return String(type!)
        }
        else {
            return "whoops"
        }
    }
    
    
    enum RGB {
        case RED
        case BLUE
        case GREEN
    }
    
    func foob(ocean: RGB) {
        let name : String
        switch ocean {
        case .RED:
            name = "Burgungy"
        case .BLUE:
                name = "Ocean"
        case .GREEN:
                name = "Cholorphyll"
        }
        
        print (name)
        
        let bar = 1...3
        switch 1 {
            case 0...8:
                print("c")
        default:
            print ("default")
        }
    }
    
}
