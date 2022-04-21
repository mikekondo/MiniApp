//
//  ViewController.swift
//  MiniApp-HairetuSave
//
//  Created by 近藤米功 on 2022/04/21.
//

import UIKit

class ViewController: UIViewController {
    var taskArray: [Task] = []

    @IBOutlet var detailTextField: UITextField!
    @IBOutlet var categoryNameTextField: UITextField!
    @IBOutlet var photoTextField: UITextField!
    @IBOutlet var detail2TextField: UITextField!
    @IBOutlet var categoryName2TextField: UITextField!
    @IBOutlet var photo2TextField: UITextField!

    @IBOutlet var detailLabel: UILabel!
    @IBOutlet var categoryNameLabel: UILabel!
    @IBOutlet var photoLabel: UILabel!

    @IBOutlet var detail2Label: UILabel!
    @IBOutlet var categoryName2Label: UILabel!
    @IBOutlet var photo2Label: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        // UserDefalutsで保存した値を代入
        // if文を書く
        let tasklist: [Task] = JsonEncoder.readItemsFromUserUserDefault(key: "hoge")
        for i in 0..<tasklist.count{
            if (i == 0){
                detailLabel.text = tasklist[i].detail
                categoryNameLabel.text = tasklist[i].categoryName
                photoLabel.text  = tasklist[i].photos
            }else if(i == 1){
                detail2Label.text = tasklist[i].detail
                categoryName2Label.text = tasklist[i].categoryName
                photo2Label.text  = tasklist[i].photos
            }
        }
    }

    @IBAction func tappedButton1(_ sender: Any) {
        detailLabel.text = detailTextField.text
        categoryNameLabel.text = categoryNameTextField.text
        photoLabel.text = photoTextField.text
        // Task型を初期化
        let task: Task = Task(detail: detailLabel.text ?? "", categoryName: categoryNameLabel.text ?? "", photos: photoLabel.text ?? "")
        print("taskを追加:",task.detail!)
        // Task型をTaskArrayに追加
        taskArray.append(task)
        print("taskArray[0].detail:",taskArray[0].detail!)
    }

    @IBAction func tappedButton2(_ sender: Any) {
        detail2Label.text = detail2TextField.text
        categoryName2Label.text = categoryName2TextField.text
        photo2Label.text = photo2TextField.text
        // Task型を初期化
        let task: Task = Task(detail: detail2Label.text ?? "", categoryName: categoryName2Label.text ?? "", photos: photo2Label.text ?? "")
        taskArray.append(task)
        print("taskを追加:",task.detail!)
        print("taskArraydddddddd:",taskArray)
    }
    @IBAction func tappedSaveButton(_ sender: Any) {
        JsonEncoder.saveItemsToUserDefaults(list: taskArray, key: "hoge")
        print("saved")
    }

    @IBAction func savedkakunin(_ sender: Any) {
        let tasklist: [Task] = JsonEncoder.readItemsFromUserUserDefault(key: "hoge")
    }
}

