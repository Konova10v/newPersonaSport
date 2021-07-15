//
//  MainScreenModel.swift
//  Persona Sport
//
//  Created by Кирилл Коновалов on 29.06.2021.
//

import Foundation

struct MainScreenModel: Decodable {
    var status: Int?
    var message: String?
    var length: Int?
    var total: Int?
    var userInfo: UserInfo?
    var userContent: UserContent?
    var userStatistic: UserStatistic?
    var userTrainingsCalendar: UserTrainingsCalendar?
    
    enum CodingKeys: String, CodingKey {
        case status = "status"
        case message = "message"
        case length = "length"
        case total = "total"
        case userInfo = "UserInfo"
        case userContent = "UserContent"
        case userStatistic = "UserStatistic"
        case userTrainingsCalendar = "UserTrainingsCalendar"
    }
    
    static var placeholder: Self {
        return MainScreenModel()
    }
}

class UserInfo: Decodable {
    var userAccessToken: String?
    var userName: String?
    var userPatronymic: String?
    var userLastname: String?
    var userSex: String?
    var userBirthday: String?
    var userAvatar: String?
    var userQRCode: String?
    var userNotifications: UserNotifications?
    var userClubs: UserClubs
    var userChild: UserChild
    
    enum CodingKeys: String, CodingKey {
        case userAccessToken = "UserAccessToken"
        case userName = "UserName"
        case userPatronymic = "UserPatronymic"
        case userLastname = "UserLastname"
        case userSex = "UserSex"
        case userBirthday = "UserBirthday"
        case userAvatar = "UserAvatar"
        case userQRCode = "UserQRCode"
        case userNotifications = "UserNotifications"
        case userClubs = "UserClubs"
        case userChild = "UserChild"
    }
}

class UserNotifications: Decodable {
    var length: Int?
    var body: [Body]?

    enum CodingKeys: String, CodingKey {
        case length = "length"
        case body = "Body"
    }
}

class Body: Decodable {
    var title: String?
    var content: Contents?

    enum CodingKeys: String, CodingKey {
        case title = "Title"
        case content = "Content"
    }
}

class Contents: Decodable {
    var text: String?
    var action: String?
    var targetToken: String?

    enum CodingKeys: String, CodingKey {
        case text = "Text"
        case action = "Action"
        case targetToken = "TargetToken"
    }
}

class UserClubs: Decodable {
    var length: Int?
    var body: [UserClubsBody]?
    var activeClub: String?
    
    enum CodingKeys: String, CodingKey {
        case length = "length"
        case body = "Body"
        case activeClub = "ActiveClub"
    }
}

class UserClubsBody: Decodable {
    var title: String?
    var clubID: String?
    var cardIMG: String?
    var userBalance: Int?
    var userBonus: Int?
    var userDiscount: Int?
    var userMember: Int?
    var userMemberExpire: String?
    
    enum CodingKeys: String, CodingKey {
        case title = "Title"
        case clubID = "ClubID"
        case cardIMG = "CardIMG"
        case userBalance = "UserBalance"
        case userBonus = "UserBonus"
        case userDiscount = "UserDiscount"
        case userMember = "UserMember"
        case userMemberExpire = "UserMemberExpire"
    }
}

class UserChild: Decodable {
    var length: Int?
    var body: [Child]?

    enum CodingKeys: String, CodingKey {
        case length = "length"
        case body = "Body"
    }
}

class Child: Decodable {
    var accessToken: String?
    var childName: String?
    var childPatronymic: String?
    var childLastname: String?
    var childMemberStatus: Int?
    var childBirthday: String?
    var childMemberExpires: String?

    enum CodingKeys: String, CodingKey {
        case accessToken = "AccessToken"
        case childName = "ChildName"
        case childPatronymic = "ChildPatronymic"
        case childLastname = "ChildLastname"
        case childMemberStatus = "ChildMemberStatus"
        case childBirthday = "ChildBirthday"
        case childMemberExpires = "ChildMemberExpires"
    }
}


class UserContent: Decodable {
    var headerSlider: HeaderSlider?
    var mainContent: HeaderSlider?

    enum CodingKeys: String, CodingKey {
        case headerSlider = "HeaderSlider"
        case mainContent = "MainContent"
    }
}

class HeaderSlider: Decodable {
    var title: String?
    var explode: Int
    var explodeText: String?
    var length: Int?
    var headerBody: [HeaderBody]?

    enum CodingKeys: String, CodingKey {
        case title = "Title"
        case explode = "Explode"
        case explodeText = "ExplodeText"
        case length = "length"
        case headerBody = "Body"
    }
}

class HeaderBody: Decodable {
    var img: String?
    var text: String?
    var action: String?
    var target: String?

    enum CodingKeys: String, CodingKey {
        case img = "Img"
        case text = "Text"
        case action = "Action"
        case target = "Target"
    }
}


class UserStatistic: Decodable {
    var userStatisticText: String?
    var userStatisticCurrent: Int?
    var userStatisticBefore: Int?
    var userStatisticBest: Int?

    enum CodingKeys: String, CodingKey {
        case userStatisticText = "UserStatisticText"
        case userStatisticCurrent = "UserStatisticCurrent"
        case userStatisticBefore = "UserStatisticBefore"
        case userStatisticBest = "UserStatisticBest"
    }
}


class UserTrainingsCalendar: Decodable {
    var length: Int
    var body: [TrainingsBody]

    enum CodingKeys: String, CodingKey {
        case length = "length"
        case body = "Body"
    }
}

class TrainingsBody: Decodable {
    var img: String?
    var title: String?
    var type: String?
    var remain: Int?
    var next: String?
    var action: String?
    var target: String?

    enum CodingKeys: String, CodingKey {
        case img = "Img"
        case title = "Title"
        case type = "Type"
        case remain = "Remain"
        case next = "Next"
        case action = "Action"
        case target = "Target"
    }
}
