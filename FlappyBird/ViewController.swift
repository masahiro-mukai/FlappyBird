//
//  ViewController.swift
//  FlappyBird
//
//  Created by 向正裕 on 2020/01/25.
//  Copyright © 2020 masahiro.mukai. All rights reserved.
//

import UIKit
import SpriteKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // SKViewに型変換
        let skView = self.view as! SKView
        
        // FPS表示
        skView.showsFPS = true
        
        // ノードの数を表示する
        skView.showsNodeCount = true
        
        // ビューと同じサイズでシーンを作成する。
        let scene = GameScene(size:skView.frame.size)
        
        // ビューにシーンを表示する。
        skView.presentScene(scene)
    }
    
    // ステータスバーを消す
    override var prefersStatusBarHidden: Bool {
        get {
            return true
        }
    }


}

