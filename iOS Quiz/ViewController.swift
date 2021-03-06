//
//  ViewController.swift
//  iOS Quiz
//
//  Created by Aloufi Saud on 25/04/1443 AH.
//

import UIKit

class ViewController: UIViewController {
    
    //initialize
    @IBOutlet weak var labelQuestion: UILabel!
    @IBOutlet weak var btnAnswer: UIButton!
    
    @IBOutlet weak var btnNext: UIButton!
    
    @IBOutlet weak var tvAnswe: UITextView!
    
    @IBOutlet weak var bgImage: UIImageView!
    
    let quizBank = [
            ("What is the first step of iOS development?", "Create the user interface. As we create the UI, we will get a better understanding of our application. Then we breath life into our application."),
            ("Why do we use Autolayout?", "We use Autolayout to set constraints on our View objects so that it can adapt to different screen sizes and to different orientations (portrait or landscape)"),
            ("What is the difference between IBAction and IBOutlet?", "Both IBAction and IBOutlets are connections from View elements on our storyboard. IBOutlet connects a property in our code to an object in a storyboard while an IBAction connects an event generated by an object in a storyboard to a method in our code."),
            ("What is the Model in MVC responsible for?", "Model objects are responsible for the data of our application. It is important to note that Model objects know nothing about the user interface. An example of a Model could be a list of questions and answers."),
            ("What is the View in MVC responsible for?", "View objects are objects that can be seen by the user (objects you drag into the storyboard). Some examples are labels and buttons."),
            ("What is the Controller in MVC responsible for?", "Controller objects facilitate the communication between the Model and the View since the Model and the View should never directly talk to each other (remember the Model knows nothing about the user interface).")]
        
        var currentQuestion = 0
    
    
    
    
    @IBAction func btnAnswerAction(_ sender: UIButton) {
        if (tvAnswe.isHidden == false) {
            tvAnswe.isHidden = true
                }else {
                    tvAnswe.isHidden = false
                }
    }
    
    
    @IBAction func btnNextAction(_ sender: UIButton) {
        if (currentQuestion < quizBank.count - 1) {
                    currentQuestion += 1
                }
                else {
                    currentQuestion = 0
                }
                updateUI()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func updateUI() {
        labelQuestion.text = quizBank[currentQuestion].0
        tvAnswe.text = quizBank[currentQuestion].1
        tvAnswe.isHidden = true
        }


}

