# ShareSDKDemo
## A demo used to show the function realization of the ShareSDK 
 1. pod install    
    comment or comment the podfile only leave what you needed    
 2. create bridging header, import the followings    
 3. disable Bitcode(Buiding Settings) if needed (log: some share frameworks do not contain bitcode)    
 4. add MOBAppkey & MOBAppSecret into info.plist(get in http://www.mob.com )    
 5. modify the AppDelegate.swift    
 5. add URL Sechems(TARGETS -> Info -> URL Types)    
 6. back to http protocol    
 6. trust the white list in info.plist    
