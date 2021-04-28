# Swift Package Manager for GoogleUserMessagingPlatform

Currently Google doesn't provide GoogleUserMessagingPlatform as Swift package manager.  
This repository is alternate for using that as Swift package manager.  
Framework is updated directly from the original library, ensuring security.  
You can completely rest assured to use.


## Workaround for Xcode 12.0...12.4

- There is an issue with device installation or archive uploading, see the discussion and various workaround scripts in official Firebase SPM  
https://github.com/firebase/firebase-ios-sdk/issues/6472

Add the following script to `Scheme -> Build -> Post-actions`.
```sh
rm -rf "${TARGET_BUILD_DIR}/${PRODUCT_NAME}.app/Frameworks/UserMessagingPlatform.framework"
rm -rf "${TARGET_BUILD_DIR}/${PRODUCT_NAME}.app/PlugIns/UserMessagingPlatform.framework"
rm -rf "${TARGET_BUILD_DIR}/${PRODUCT_NAME}.app/Watch/UserMessagingPlatform.framework"
rm -rf "${TARGET_BUILD_DIR}/${PRODUCT_NAME}.app/AppClips/AppClip.app/UserMessagingPlatform.framework"
```

## Official Information
https://developers.google.com/admob/ump/ios/download  
There are release notes, terms of service, SDK binary and more.  
You can download official xcframework and construct your own Swift package safely.  
