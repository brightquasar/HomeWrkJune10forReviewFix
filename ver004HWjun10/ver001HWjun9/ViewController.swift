//  ViewController.swift
//  ver001HWjun9
//
//  Created by Richard H Woolley on 6/9/15.
//  Copyright (c) 2015 Bright Quasar Software, R.Woolley.

import UIKit

class ViewController: UIViewController, UITableViewDataSource {

  @IBOutlet var tableView: UITableView!

  let numberOfSections = 7
  var returnValue = 0
  var sectionLable = " "

  var saneScientists = ["Richard P. Feynman", "Erwin Schrodinger", "Francis Crick", "Victor J. Stenger", "Steven Weinberg", "Cinton Richard Dawkins", "Carl Sagan", "Niel DeGrasse Tyson", "Aubrey David Nicholas Jasper de Grey"]
  var mostlySaneScientist = ["Paul Dirac", "Paul Erdos"]
  var partiallyInsaneScientists = ["Francis Collins"]
  var scientistsWentBonkers = ["George Robert Price"]
  var technologists = ["Alan Turing", "William Shockley", "Marvin Lee Minsky"]
  var greatProgrammers = ["Brad Johnson", "Linus Torvalds", "Richard Stallman"]
  var socialScientist = ["Steven Pinker", "Andrew McAfee", "Christopher Hitchens", "Jacque Fresco", "Daniel Edwin Barker", "Aubrey David Nicholas Jasper de Grey", "James Hamilton Zwinge, aka: James Randi", "Steven Gibson", "Robert McNair Price"]

/*
  var arrayOfGreatMen = [["Richard P. Feynman", "Erwin Schrodinger", "Francis Crick", "Victor J. Stenger", "Steven Weinberg", "Cinton Richard Dawkins", "Carl Sagan", "Niel DeGrasse Tyson", "Aubrey David Nicholas Jasper de Grey"], ["Paul Dirac", "Paul Erdos"], ["Francis Collins"], ["George Robert Price"], ["Alan Turing", "William Shockley", "Marvin Lee Minsky"], ["Brad Johnson", "Linus Torvalds", "Richard Stallman"], ["Steven Pinker", "Andrew McAfee", "Christopher Hitchens", "Jacque Fresco", "Daniel Edwin Barker", "Aubrey David Nicholas Jasper de Grey", "James Hamilton Zwinge, aka: James Randi", "Steven Gibson", "Robert McNair Price"]]
*/

/* --- SEVEN SECTIONS ---
  saneScientists
  mostlySaneScientist
  partiallyInsaneScientists
  scientistsWentBonkers
  technologists
  greatProgrammers
  socialScientist
*/

  override func viewDidLoad() {
    super.viewDidLoad()
    tableView.dataSource = self
    println("view did load")

/*
      arrayOfGreatMen[0].append("Bill Nye")
      arrayOfGreatMen[1].append("Rick Woolley")
      arrayOfGreatMen[2].append("Rick Woolley")
      arrayOfGreatMen[3].append("Rick Woolley")
      arrayOfGreatMen[4].append("Steve Jobs")
      arrayOfGreatMen[5].append("Matthijs Hollemans")
      arrayOfGreatMen[6].append("Rick Woolley")
*/

    view.backgroundColor = UIColor.yellowColor()
    //println("view did load")
  }


  override func viewWillAppear(animated: Bool) {
    super.viewWillAppear(animated)
    self.view.backgroundColor = UIColor.grayColor()
    //println("view will appear")
  }

  override func viewDidAppear(animated: Bool) {
    super.viewDidAppear(animated)
    //println("view did appear")
  }

  func numberOfSectionsInTableView(tableView: UITableView) -> Int {
    return numberOfSections
  }

  func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

/*
    var returnVal = 0
    if section == 0 {
      returnVal = saneScientists.count
    } else if section == 1 {
      returnVal = mostlySaneScientist.count
    }  else if section == 2 {
      returnVal = partiallyInsaneScientists.count
    }   else if section == 3 {
      returnVal = scientistsWentBonkers.count
    } else if section == 4 {
      returnVal = technologists.count
    }  else if section == 5 {
      returnVal = greatProgrammers.count
    }   else if section == 6 {
      returnVal = socialScientist.count
    }
    return returnVal
  }
*/
/*  this switch in a for-in never worked, with any range, Xcode always complained that the swith was not exaustive
//    ... and when given a default, I would get a runtime error.

    var section = -1
//    for sectionNumberReturnValue in 0...6 {
//      section = section + 1    // section is init as -1, so switch gets 0 as first case.

      switch (section) {
        case 0:
          returnValue = arrayOfGreatMen[0].count
          println(returnValue)
        case 1:
          returnValue =  arrayOfGreatMen[1].count
          println(returnValue)
        case 2:
          returnValue =  arrayOfGreatMen[2].count
          println(returnValue)
        case 3:
          returnValue =  arrayOfGreatMen[3].count
          println(returnValue)
        case 4:
          returnValue =  arrayOfGreatMen[4].count
          println(returnValue)
        case 5:
          returnValue =  arrayOfGreatMen[5].count
          println(returnValue)
        case 6:
          returnValue =  arrayOfGreatMen[6].count
          println(returnValue)
        default:
          println("defaut case is hit")
      }
    }
      return returnValue
  }
*/
    //return arrayOfGreatMen.count
/*
    var section = 0  // -1
    for sectionNumberReturnValue in 0...7 {  // But, no matter what range I try, Xcode always claims the switch is not exaustive ????
      section = section + 1    // section is init as -1, so switch gets 0 as first case.
*/
      switch (section) {
        case 0:
          returnValue = saneScientists.count
          println(returnValue)
        case 1:
          returnValue = mostlySaneScientist.count
          println(returnValue)
        case 2:
          returnValue = partiallyInsaneScientists.count
          println(returnValue)
        case 3:
          returnValue = scientistsWentBonkers.count
          println(returnValue)
        case 4:
          returnValue = technologists.count
          println(returnValue)
        case 5:
          returnValue = greatProgrammers.count
          println(returnValue)
        case 6:
          returnValue = socialScientist.count
          println(returnValue)
        default:
          break
        //println("defaut case is hit")
      }
//      section = section + 1
//    }
    return returnValue
  }


  func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as! UITableViewCell
    cell.backgroundColor = UIColor.whiteColor()
/*
    if indexPath.section == 0 {
      let nameToDisplay = saneScientists[indexPath.row]
      cell.textLabel?.text = nameToDisplay
    } else if indexPath.section == 1 {
      let nameToDisplay = mostlySaneScientist[indexPath.row]
      cell.textLabel?.text = nameToDisplay
    } else if indexPath.section == 2 {
      let nameToDisplay = partiallyInsaneScientists[indexPath.row]
      cell.textLabel?.text = nameToDisplay
    } else if indexPath.section == 3 {
      let nameToDisplay = scientistsWentBonkers[indexPath.row]
      cell.textLabel?.text = nameToDisplay
    } else if indexPath.section == 4 {
      let nameToDisplay = technologists[indexPath.row]
      cell.textLabel?.text = nameToDisplay
    } else if indexPath.section == 5 {
      let nameToDisplay = greatProgrammers[indexPath.row]
      cell.textLabel?.text = nameToDisplay
    } else if indexPath.section == 6 {
      let nameToDisplay = socialScientist[indexPath.row]
      cell.textLabel?.text = nameToDisplay
    }
    return cell
  }
*/


    //let nameToDisplay = arrayOfGreatMen[returnValue][indexPath.row]  // this is a potential ... unknown statement ?????????
    //let nameToDisplay = arrayOfGreatMen[indexPath.row]


/*  this switch in a for-in never worked, with any range, Xcode always complained that the swith was not exaustive
    ... and when given a default, I would get a runtime error.

    var section = -1
    for sectionLableReturnValue in 0...6 {
      section = section + 1  // section is init as -1, so switch gets 0 as first case.
*/
      switch (indexPath.section) {
        case 0:
          let nameToDisplay = self.saneScientists[indexPath.row]
          cell.textLabel?.text = nameToDisplay
        case 1:
          let nameToDisplay = self.mostlySaneScientist[indexPath.row]
          cell.textLabel?.text = nameToDisplay
        case 2:
          let nameToDisplay = self.partiallyInsaneScientists[indexPath.row]
          cell.textLabel?.text = nameToDisplay
        case 3:
          let nameToDisplay = self.scientistsWentBonkers[indexPath.row]
          cell.textLabel?.text = nameToDisplay
        case 4:
          let nameToDisplay = self.technologists[indexPath.row]
          cell.textLabel?.text = nameToDisplay
        case 5:
          let nameToDisplay = self.greatProgrammers[indexPath.row]
          cell.textLabel?.text = nameToDisplay
        case 6:
          let nameToDisplay = self.socialScientist[indexPath.row]
          cell.textLabel?.text = nameToDisplay
        default:
          break
          //let nameToDisplay = self.mostlySaneScientist[indexPath.row]
          //cell.textLabel?.text = nameToDisplay
          //println("defaut case is hit")
      }
      return cell
  }


/*  this switch in a for-in never worked, with any range, Xcode always complained that the swith was not exaustive
  ... and when given a default, I would get a runtime error.

      var section = -1
    for sectionLableReturnValue in 0...6 {
      section = section + 1  // section is init as -1, so switch gets 0 as first case.

      switch (section) {
      case 0:
        sectionLable = "saneScientists"
        println(sectionLable)
      case 1:
        sectionLable = "mostlySaneScientist"
        println(sectionLable)
      case 2:
        sectionLable = "partiallyInsaneScientists"
        println(sectionLable)
      case 3:
        sectionLable = "scientistsWentBonkers"
        println(sectionLable)
      case 4:
        sectionLable = "technologists"
        println(sectionLable)
      case 5:
        sectionLable = "greatProgrammers"
        println(sectionLable)
      case 6:
        sectionLable = "socialScientist"
        println(sectionLable)
      default:
        sectionLable = "defautl case is hit"
        println("defaut case is hit")
      }
    }
        return sectionLable
*/

  func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
    switch (section) {
      case 0:
        sectionLable = "Scientists who were very Sane"
        println(sectionLable)
      case 1:
        sectionLable = "Scientist who were sane, mostly"
        println(sectionLable)
      case 2:
        sectionLable = "Partially Insane Scientists"
        println(sectionLable)
      case 3:
        sectionLable = "Scientists who Went Bonkers"
        println(sectionLable)
      case 4:
        sectionLable = "Technologists"
        println(sectionLable)
      case 5:
        sectionLable = "Great Programmers, living"
        println(sectionLable)
      case 6:
        sectionLable = "Social Scientists, living"
        println(sectionLable)
      default:
        sectionLable = "default case is hit"
        //println("defaut case is hit")
    }
      return sectionLable
  }
/*
    var returnVal = ""
    if section == 0 {
      returnVal = "Scientists who were Sane"
    } else if section == 1 {
      returnVal = "Scientists who were mostly Sane"
    } else if section == 2 {
      returnVal = "Partially Insane Scientists"
    } else if section == 3 {
      returnVal = "Scientists who Went Bonkers"
    } else if section == 4 {
      returnVal = "Technologists"
    } else if section == 5 {
      returnVal = "Great Programmers"
    } else if section == 6 {
      returnVal = "Social Scientists"
    }
    return returnVal
  }
*/

  /* --- SEVEN SECTIONS ---
  saneScientists
  mostlySaneScientist
  partiallyInsaneScientists
  scientistsWentBonkers
  technologists
  greatProgrammers
  socialScientist
  */
}
