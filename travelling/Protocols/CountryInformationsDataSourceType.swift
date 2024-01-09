//
//  CountryInformationsDataSourceType.swift
//  travelling
//
//  Created by Jackson Matheus on 08/01/24.
//

import Foundation
import UIKit

protocol CountryInformationsDataSourceType: UITableViewDelegate, UITableViewDataSource {
    var getTitle: ((Int) -> String)?{ get set }
    var getDetail: ((Int) -> String)? { get set }
    var getLocation: (() -> CountryLocation)? { get set }
    func numberOfSections(in tableView: UITableView) -> Int
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView?
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat
}
