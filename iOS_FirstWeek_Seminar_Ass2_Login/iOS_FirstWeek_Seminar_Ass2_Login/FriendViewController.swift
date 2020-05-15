//
//  FriendViewController.swift
//  iOS_FirstWeek_Seminar_Ass2_Login
//
//  Created by 노한솔 on 2020/05/12.
//  Copyright © 2020 노한솔. All rights reserved.
//

import UIKit

class FriendViewController: UIViewController {
    
    private var profileList: [TalkInformation] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        setProfile()
        talkTableView.dataSource = self
        talkTableView.delegate = self
        self.talkTableView.separatorColor = UIColor.clear
        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var talkTableView: UITableView!
    
    private func setProfile() {
        let profile1 = TalkInformation(name: "일솝트", message: "안녕하세요1", imageName: "profile1Img")
        let profile2 = TalkInformation(name: "이솝트", message: "안녕하세요22", imageName: "profile2Img")
        let profile3 = TalkInformation(name: "삼솝트", message: "안녕하세요333", imageName: "profile3Img")
        let profile4 = TalkInformation(name: "사솝트", message: "안녕하세요4444", imageName: "profile4Img")
        let profile5 = TalkInformation(name: "오솝트", message: "안녕하세요55555", imageName: "profile5Img")
        let profile6 = TalkInformation(name: "육솝트", message: "안녕하세요666666", imageName: "profile6Img")
        let profile7 = TalkInformation(name: "칠솝트", message: "안녕하세요777777", imageName: "profile7Img")
        let profile8 = TalkInformation(name: "팔솝트", message: "안녕하세요88888888", imageName: "profile8Img")
        let profile9 = TalkInformation(name: "구솝트", message: "안녕하세요999999999", imageName: "profile9Img")
        let profile10 = TalkInformation(name: "십솝트", message: "안녕하세요10", imageName: "profile8Img")
        let profile11 = TalkInformation(name: "일섭트", message: "안녕하세요", imageName: "profile1Img")
        let profile12 = TalkInformation(name: "이섭트", message: "안녕하세요", imageName: "profile2Img")
        let profile13 = TalkInformation(name: "삼섭트", message: "안녕하세요", imageName: "profile3Img")
        let profile14 = TalkInformation(name: "사섭트", message: "안녕하세요", imageName: "profile4Img")
        let profile15 = TalkInformation(name: "오섭트", message: "안녕하세요", imageName: "profile5Img")
        let profile16 = TalkInformation(name: "육섭트", message: "안녕하세요", imageName: "profile6Img")
        let profile17 = TalkInformation(name: "칠섭트", message: "안녕하세요", imageName: "profile7Img")
        let profile18 = TalkInformation(name: "팔섭트", message: "안녕하세요", imageName: "profile8Img")
        let profile19 = TalkInformation(name: "구섭트", message: "안녕하세요", imageName: "profile9Img")
        let profile20 = TalkInformation(name: "십섭트", message: "안녕하세요", imageName: "profile8Img")
        
        profileList = [profile1, profile2, profile3, profile4, profile5, profile6, profile7, profile8, profile9, profile10, profile11, profile12, profile13, profile14, profile15, profile16, profile17, profile18, profile19, profile20]
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

extension FriendViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return profileList.count }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell { guard let talkCell = tableView.dequeueReusableCell(withIdentifier: TalkCell.identifier, for: indexPath) as? TalkCell
        else { return UITableViewCell() }
        talkCell.set(profileList[indexPath.row])
        return talkCell
        
        }
    func tableView(_ tableView: UITableView, viewForHeaderInSection section:Int)->UIView? {
        let returnedView = UIView(frame: CGRect(x: 16, y: 10, width: 385, height: 17))
        returnedView.backgroundColor = .white

        let label = UILabel(frame: CGRect(x: 16, y: 10, width: 385, height: 17))
        label.text = "친구 20"
        label.textColor = .gray
        returnedView.addSubview(label)

        return returnedView
    }
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            profileList.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .automatic)
        }
        
    }
}
   

extension FriendViewController: UITableViewDelegate {
func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
return 80 }
}
