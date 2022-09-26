//
//  ToDoRepository.swift
//  Repository
//
//  Created by ashizawa.naoya on 2022/09/15.
//

import Foundation
import Entity

public class ToDoRepository: ToDoUserDefaults {

    public static let shared = ToDoRepository()

    private init(){}

}
