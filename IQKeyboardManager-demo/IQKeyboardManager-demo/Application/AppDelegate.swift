//
//  AppDelegate.swift
//  IQKeyboardManager-demo
//
//  Created by kazunori.aoki on 2021/11/12.
//

import UIKit
import IQKeyboardManagerSwift

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {

        // キーボードが表示されたときに画面をスクロールし、
        IQKeyboardManager.shared.enable = true

        // デバッグログの表示
//        IQKeyboardManager.shared.enableDebugging = true

        // toolbarを表示するか
//        IQKeyboardManager.shared.enableAutoToolbar = false

        // Appearanceの有効化
        IQKeyboardManager.shared.overrideKeyboardAppearance = true
        IQKeyboardManager.shared.keyboardAppearance = .dark

        // keyboardとtextFieldの距離？有効にならない。
        IQKeyboardManager.shared.keyboardDistanceFromTextField = 100

        // toolbar tint color
        IQKeyboardManager.shared.toolbarTintColor = .red

        // done button text
        IQKeyboardManager.shared.toolbarDoneBarButtonItemText = "Dismiss"

        // done button image
//        IQKeyboardManager.shared.toolbarDoneBarButtonItemImage = UIImage(named: "ButtonDone")

        // textFieldのPlaceholderをtoolbarに表示 default: true
        IQKeyboardManager.shared.shouldShowToolbarPlaceholder = true

        // placeholderのfont
        IQKeyboardManager.shared.placeholderFont = UIFont(name: "Times New Roman", size: 15)

        // textField以外をtapでkeyboardを消すか
        IQKeyboardManager.shared.shouldResignOnTouchOutside = true

        // クリック音の再生 default: false
        IQKeyboardManager.shared.shouldPlayInputClicks = true

        return true
    }
}

