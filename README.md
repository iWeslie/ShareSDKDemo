# ShareSDKDemo
A demo used to show the function realization of the ShareSDK 

1.Download the ShareSDK and copy it into the project.
2.Create the Bridging file that can use the apis in the OC header file in Swift.
    add the Linker Bineries with Liberaries.
3.Add Other Linker Flages(-ObjC -all_load)
    When use the SinaWeibo API, you must do the third step, otherwise the projrct will possibly broken(-all_load that ensure the .....)
4.Add the white list.
5.Add the MOBAppkey and MOBAppSecret to the info.plist.
6.Initialize the ShareSDK
7.
