//
//  APIConstants.swift
//  iOS_FirstWeek_Seminar_Ass2_Login
//
//  Created by 노한솔 on 2020/05/16.
//  Copyright © 2020 노한솔. All rights reserved.
//

struct APIConstants {
    static let baseURL = "http://13.209.144.115:3333"
    static let signinURL = APIConstants.baseURL + "/user/signin"
    static let signupURL = APIConstants.baseURL + "/user/signup"
}
