//
//  Use this file to import your target's public headers that you would like to expose to Swift.
//

/*
 
 ##documention and help reference: http://wiki.mob.com
-----------------------------usage-----------------------------
 1. pod install
    comment or comment the podfile only leave what you needed
 2. create bridging header, import the followings
 3. disable Bitcode(Buiding Settings) if needed (log: some share frameworks do not contain bitcode)
 4. add MOBAppkey & MOBAppSecret into info.plist(get in http://www.mob.com )
 5. modify the AppDelegate.swift
 5. add URL Sechems(TARGETS -> Info -> URL Types)
 6. back to http protocol
 6. trust the white list in info.plist
 
 */

#import <MOBFoundation/MOBFoundation.h>
//＝＝＝＝＝＝＝＝＝＝ShareSDK头文件＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝
#import <ShareSDK/ShareSDK.h>
#import <ShareSDK/ShareSDK+Base.h>
#import <ShareSDKConnector/ShareSDKConnector.h>
#import <ShareSDKExtension/SSEShareHelper.h>
#import <ShareSDKExtension/ShareSDK+Extension.h>


//＝＝＝＝＝＝＝＝＝＝ShareSDKUI头文件，使用ShareSDK提供的UI需要导入＝＝＝＝＝
#import <ShareSDKUI/ShareSDK+SSUI.h>
#import <ShareSDKUI/SSUIShareActionSheetCustomItem.h>
#import <ShareSDKUI/SSUIShareActionSheetStyle.h>
#import <ShareSDKUI/SSUIShareActionSheetItem.h>
#import <ShareSDKUI/SSUIShareActionSheetCustomItem.h>

//＝＝＝＝＝＝＝＝＝＝以下是各个平台SDK的头文件，根据需要继承的平台添加＝＝＝
//腾讯开放平台（对应QQ和QQ空间）SDK头文件
#import <TencentOpenAPI/TencentOAuth.h>
#import <TencentOpenAPI/QQApiInterface.h>

//微信SDK头文件
#import "WXApi.h"

//新浪微博SDK头文件
#import "WeiboSDK.h"
//MARK:- 新浪微博SDK需要在项目Build Settings中的Other Linker Flags添加"-ObjC"


////人人SDK头文件
//#import <RennSDK/RennSDK.h>
//
////Kakao SDK头文件
//#import <KakaoOpenSDK/KakaoOpenSDK.h>
//
////支付宝SDK
//#import "APOpenAPI.h"

