//
//  RankingViewController.swift
//  FlappyDragon
//
//  Created by m.marques.goncalves on 11/11/18.
//  Copyright © 2018 learning-spanish. All rights reserved.
//

import UIKit

class RankingViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

	@IBOutlet weak var titleLabel: UILabel!
	@IBOutlet weak var tableView: UITableView!

	override func viewDidLoad() {
		super.viewDidLoad()
		titleLabel.text = "Ranking"
	}

	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return 1
	}

	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		return UITableViewCell()
	}
}
