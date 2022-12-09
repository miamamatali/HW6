//
//  main.swift
//  HW6
//
//  Created by Indira on 7/12/22.
//

import Foundation

print("Hello, World!")

var array = [String] ()
for i in 1...5{
    print("Введите слово")
    let word = readLine()!
    array.append(word)
}
print(array)
array = array.sorted()
print(array)
var maxwordsarray: [String] = []
var minwordsarray: [String] = []
var maxwords = array [0]
var minwords = array [0]

for (index, item) in array.enumerated(){
    if item.count > maxwords.count{
        maxwordsarray.removeAll()
        maxwords = item
        maxwordsarray.append(maxwords)
    }else if item.count == maxwords.count{
        maxwordsarray.append(item)
    }else if item.count < minwords.count{
        minwords = item
        minwordsarray.append(minwords)
        }
}
print(maxwords)
print(minwords)


var contactList = [[String]]()
var sortedContactList = [[String]]()
func contactSorting(nameNum:String){
    let firstLetter = nameNum.first!
    var a = false
    for (index,item) in contactList.enumerated(){
    for (index2,item2) in item.enumerated(){
    if index2 == 0 && item2 == String(firstLetter) && a == false{
    contactList[index].append(nameNum)
    a = true
    }else{
    continue
            }}}
    if a == false{
        var contacts = [String]()
        contacts.append(String(firstLetter))
        contacts.append(nameNum)
        contactList.append(contacts)
    }
}
contactSorting(nameNum: "Лера - 0700087654")
contactSorting(nameNum: "Даша - 0556712233")
contactSorting(nameNum: "Байда - 0706407272")
contactSorting(nameNum: "Я - 0700087654")
contactSorting(nameNum: "Ты - 0505879800")
contactSorting(nameNum: "Тима - 0222456789 ")
contactSorting(nameNum: "Бина - 0550987654")
contactSorting(nameNum: "Элдос - 0776320087")
contactSorting(nameNum: "Кама - 0708455312")
contactSorting(nameNum: "Нуни - 0552389077")
contactSorting(nameNum: "Женя - 0995001177")
contactSorting(nameNum: "Айназ - 0706723145")
contactSorting(nameNum: "Али -0999678391")
contactSorting(nameNum: "Магда - 0500881215")
contactSorting(nameNum: "Кантик - 0225118023")
let alfavit = ["А","Б","В","Г","Д","Е","Ж","З","И","К","Л","М","Н","П","Р","С","Т","О","У","Ф","Х","Ц","Ч","Ш","Щ","Э","Ю","Я"]
var b = 0

for (index2,item2) in sortedContactList.enumerated(){
        print("\(item2[0])-\(sortedContactList[index2].count - 1) контактов")
}
print(sortedContactList)
