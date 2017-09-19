//
//  ViewController.swift
//  ShareSDK
//
//  Created by Weslie on 2017/8/20.
//  Copyright © 2017年 Weslie. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var shareURL = URL(string: "https://github.com/iWeslie")
    
    var shareText: String = "the content to share"
    var shareTitle: String = "Share Title"
    var thumbImage: UIImage = #imageLiteral(resourceName: "brown")
    
    @IBAction func qq(_ sender: UIButton) {
        let shareParams = NSMutableDictionary()
        
        shareParams.ssdkSetupQQParams(byText: shareText, title: shareTitle, url: shareURL, thumbImage: thumbImage, image: nil, type: .auto, forPlatformSubType: .subTypeQQFriend)
        ShareSDK.share(platform: .subTypeQQFriend, parameters: shareParams)
    }
    
    @IBAction func qzone(_ sender: UIButton) {
        
        let shareParams = NSMutableDictionary()
        
        shareParams.ssdkSetupQQParams(byText: shareTitle, title: shareTitle, url: shareURL, thumbImage: thumbImage, image: nil, type: .auto, forPlatformSubType: .subTypeQZone)
        
        ShareSDK.share(platform: .subTypeQZone, parameters: shareParams)
    }
    
    
    @IBAction func friends(_ sender: UIButton) {
        let shareParams = NSMutableDictionary()
        shareParams.ssdkSetupWeChatParams(byText: shareTitle, title: shareTitle, url: shareURL, thumbImage: thumbImage, image: nil, musicFileURL: nil, extInfo: nil, fileData: nil, emoticonData: nil, type: .webPage, forPlatformSubType: .subTypeWechatSession)
        ShareSDK.share(platform: .subTypeWechatSession, parameters: shareParams)
    }
    
    @IBAction func moments(_ sender: UIButton) {
        let shareParams = NSMutableDictionary()
        
        shareParams.ssdkSetupWeChatParams(byText: shareText, title: shareTitle, url: shareURL, thumbImage: thumbImage, image: nil, musicFileURL: nil, extInfo: nil, fileData: nil, emoticonData: nil, type: .auto, forPlatformSubType: .subTypeWechatTimeline)
        
        ShareSDK.share(platform: .subTypeWechatTimeline, parameters: shareParams)
    }
    
    @IBAction func favourite(_ sender: UIButton) {
        let shareParames = NSMutableDictionary()
        
        shareParames.ssdkSetupWeChatParams(byText: shareText, title: shareTitle, url: shareURL, thumbImage: thumbImage, image: nil, musicFileURL: nil, extInfo: nil, fileData: nil, emoticonData: nil, type: .auto, forPlatformSubType: .subTypeWechatFav)
        
        ShareSDK.share(platform: .subTypeWechatFav, parameters: shareParames)
    }
    
    
    @IBAction func sinaweibo(_ sender: UIButton) {
        let shareParams = NSMutableDictionary()
        shareParams.ssdkSetupShareParams(byText: shareText, images : nil, url : shareURL, title : shareTitle, type : SSDKContentType.auto)
        ShareSDK.share(platform: .typeSinaWeibo, parameters: shareParams)
    }
    
    
    @IBAction func more(_ sender: UIButton) {
        let shareParames = NSMutableDictionary()
        shareParames.ssdkSetupShareParams(byText: shareText, images: nil, url: shareURL, title: shareTitle, type: .auto)
        
        SSUIShareActionSheetStyle.setShareActionSheetStyle(.simple)
        ShareSDK.showShareActionSheet(view: sender, shareParams: shareParames)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }


}

