//
//  ViewController.swift
//  sampleSwif
//
//  Created by Pro-tek on 11/9/16.
//  Copyright © 2016 sarweshwar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
        let emptyString = ""
              if emptyString.isEmpty {
            print("Nothing to show here")
        }
        //TO Print characters
        for  Character in "Dog".characters{
            print(Character)
        }
        let blackHeart = "\u{24}"
        print(blackHeart)
        
       //To print  characters count
        let word = "cafe"
        print("number of characters in \(word)  is \(word.characters.count) ")
        
        //Equality Operation
        let word2 = "cae"
        if word != word2{
            print("both are not  equal")
            
        }
        
        //creating default array
        let  shoppingList: [String] = ["Eggs", "Milk"]
        print(shoppingList)
        
        var value:Int = 10
        value += 1
        print("increment by1 then \(value)");
        
        
        var decvalue:Int = 10
        decvalue -= 1
        print("10 decrement by 1 then \(decvalue)");
        let a :Int = 10;
        let b:Int = 20;
        print((a*100)+(b*100));
        
        //Model to create list of people
        let retValue = jediGreet("old friend", ability: "Force")
        print(retValue.farewell)
        print(retValue.mayTheForceBeWithYou)
        
        let sum1 = sum(10,y: 20)
        print(sum1)
       
        let numbers:[Int] = [1,5,3,4,2,7,6,9,10]
        let  sortedNames = numbers.sort()
        print(sortedNames)
        var str = [String:AnyObject]();
        let task = NSURLSession.sharedSession().dataTaskWithURL(NSURL(string: "http://data.in.bookmyshow.com/getData.aspx?cc=&cmd=GETEVENTLIST&dt=&et=MT&f=json&lg=78.456360&lt=17.384050&rc=HYDERABAD&sr=&t=a54a7b3aba576256614a")!,completionHandler: { (data, response, error) -> Void in
            do{
                str = try NSJSONSerialization.JSONObjectWithData(data!, options: NSJSONReadingOptions.AllowFragments) as! [String:AnyObject]
                print(str)
            }
            catch {
                print("json error: \(error)")
            }
        })
        task.resume()
    }
    
    func power(a: Int, b: Int) -> Int {
        var result:Int = a
        
        for _ in 1..<b {
            result = result * a
        }
        
        return result
    }
    
    func jediGreet(name: String, ability: String) -> (farewell: String, mayTheForceBeWithYou: String) {
        
        return ("Good bye, \(name).", " May the \(ability) be with you.")
    }
    func sum(x: Int, y: Int) -> (Int) {
        return x + y
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

