//
//  GameViewController.swift
//  FlappyDragon
//
//  Created by m.marques.goncalves on 10/11/18.
//  Copyright © 2018 learning-spanish. All rights reserved.
//

import UIKit
import SpriteKit
import GameplayKit
import AVFoundation

class GameViewController: UIViewController {

	var stage: SKView!
	var musicPlayer: AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
		stage = view as! SKView
		stage.ignoresSiblingOrder = true

		presentScene()
		playMusic()
    }

	func playMusic() {
		if let musicURL = Bundle.main.url(forResource: "music", withExtension: "m4a") {
			musicPlayer = try! AVAudioPlayer(contentsOf: musicURL)
			musicPlayer.numberOfLoops = -1
			musicPlayer.volume = 0.1
			musicPlayer.play()
		}
	}

	func presentScene() {
		let scene = GameScene(size: CGSize(width: 320, height: 568))
		scene.scaleMode = .aspectFill
		scene.gameViewController = self
		stage.presentScene(scene, transition: .doorsOpenVertical(withDuration: 0.5))
	}

    override var prefersStatusBarHidden: Bool {
        return true
    }
}
