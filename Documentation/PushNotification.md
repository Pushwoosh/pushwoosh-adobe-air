
# <a name="heading"></a>class PushNotification  

## Members  

<table>
	<tr>
		<td><a href="#1a2cb12a606924276880f131cc71abbabf">static function getInstance():PushNotification</a></td>
	</tr>
	<tr>
		<td><a href="#1acf6aead53df76a08e46340a2cf015868">function PushNotification()</a></td>
	</tr>
	<tr>
		<td><a href="#1a6c22bdd020ab6220d117bc4dc96db50d">function clearLocalNotifications():void</a></td>
	</tr>
	<tr>
		<td><a href="#1a2a0950d4b73e52ca5394d96c7a6d3239">function presentInboxUI():void</a></td>
	</tr>
	<tr>
		<td><a href="#1a342fedacd245a470db23ccc4a1d84b54">function clearLocalNotification(id:int):void</a></td>
	</tr>
	<tr>
		<td><a href="#1a8669188a9e83371ca1ab1eb2a73e6011">function isPushNotificationSupported():Boolean</a></td>
	</tr>
	<tr>
		<td><a href="#1ae432b1bbd664897d4c2a577df0270516">function onDeviceReady():void</a></td>
	</tr>
	<tr>
		<td><a href="#1a02e8858a9ac194a95889c12c42fc3636">function getPushToken():String</a></td>
	</tr>
	<tr>
		<td><a href="#1a4ca1b1a35a35feed8a0271681e05893a">function getPushwooshHWID():String</a></td>
	</tr>
	<tr>
		<td><a href="#1a1d22098097c6e0111f06bd97baca74a4">function registerForPushNotification():void</a></td>
	</tr>
	<tr>
		<td><a href="#1a0aa2a74263972a59c82e94d48aa48d4e">function setBadgeNumberValue(value:int):void</a></td>
	</tr>
	<tr>
		<td><a href="#1acca7828a05fc95306dc26c33e741d6e5">function setMultiNotificationMode():void</a></td>
	</tr>
	<tr>
		<td><a href="#1a15fe66f20be22d409ac5e8c4b70962cc">function setSimpleNotificationMode():void</a></td>
	</tr>
	<tr>
		<td><a href="#1ae4e9ebaaf1b88b10337a9fb12ecd3543">function setSoundType(value:int):void</a></td>
	</tr>
	<tr>
		<td><a href="#1a60df3c0a9a0d388e50e45906d4ff0caa">function setVibrateType(value:int):void</a></td>
	</tr>
	<tr>
		<td><a href="#1a608939d6aed90ae3762c173bbd5d4af1">function setEnableLed(value:Boolean):void</a></td>
	</tr>
	<tr>
		<td><a href="#1a969501243b35e996d46b618483941e81">function setIntTag(name:String, value:int):void</a></td>
	</tr>
	<tr>
		<td><a href="#1afc190f31e7ab0c8714d9106e00b610d3">function scheduleLocalNotification(seconds:int, alertJson:String):int</a></td>
	</tr>
	<tr>
		<td><a href="#1a9ea4b8333d600d0b318a7f80abd83b66">function getTags(success:Function, error:Function):void</a></td>
	</tr>
	<tr>
		<td><a href="#1aaac8dec12eec90d7a8b84d2d3108f42d">function unregisterFromPushNotification():void</a></td>
	</tr>
	<tr>
		<td><a href="#1a9aaec9f868a4e3d443b73847bd1bc382">function sendPurchase(productId:String, price:Number, currency:String):void</a></td>
	</tr>
	<tr>
		<td><a href="#1a73393146b3eaaf94cb527a74eed5df7b">function setUserId(userId:String):void</a></td>
	</tr>
	<tr>
		<td><a href="#1a88062eb702eb59fe8bd53c6cc8295ec8">function postEvent(eventId:String, attributes:Object):void</a></td>
	</tr>
	<tr>
		<td><a href="#1a88d4e3ae187eb38e5f64c9637ce7b60d">function setCommunicationEnabled(enable:Boolean, success:Function, error:Function):void</a></td>
	</tr>
	<tr>
		<td><a href="#1aa899bf508503ba6c30a4221e47156cb8">function removeAllDeviceData(success:Function, error:Function):void</a></td>
	</tr>
	<tr>
		<td><a href="#1a8bbd76dc4bb3fb0c36b7d04140b19e9b">function showGDPRDeletionUI():void</a></td>
	</tr>
	<tr>
		<td><a href="#1ab42a31bb0c0f5fd36aa0942aa1c77c63">function showGDPRConsentUI():void</a></td>
	</tr>
	<tr>
		<td><a href="#1a80aa6bc08dfc6a9f286ef704e75e023a">function isDeviceDataRemoved():Boolean</a></td>
	</tr>
	<tr>
		<td><a href="#1a16faacf3557e7a6cf491db7b64ca21cf">function isCommunicationEnabled():Boolean</a></td>
	</tr>
	<tr>
		<td><a href="#1a15b1e6b4adc601b9875452b6ad50e2f5">function isAvailableGDPR():Boolean</a></td>
	</tr>
	<tr>
		<td><a href="#1a055967d6c58109f67912cb391c2ad85d">function setStringTag(name:String, value:String):void</a></td>
	</tr>
</table>


----------  
  

#### <a name="1a2cb12a606924276880f131cc71abbabf"></a>static function getInstance():<a href="#heading">PushNotification</a>  
<strong>Returns</strong> instance of PushNotification 

----------  
  

#### <a name="1acf6aead53df76a08e46340a2cf015868"></a>function PushNotification()  
Constructor. Do not call directly. Use <a href="PushNotification.md#1a2cb12a606924276880f131cc71abbabf">getInstance()</a> method. 
```ActionScript
var pushwoosh:PushNotification = PushNotification.getInstance();
```


----------  
  

#### <a name="1a6c22bdd020ab6220d117bc4dc96db50d"></a>function clearLocalNotifications():void  
Removes all local notifications 

----------  
  

#### <a name="1a2a0950d4b73e52ca5394d96c7a6d3239"></a>function presentInboxUI():void  
Opens Inbox screen. 

----------  
  

#### <a name="1a342fedacd245a470db23ccc4a1d84b54"></a>function clearLocalNotification(id:int):void  
Android only: removes local notification with given id 

----------  
  

#### <a name="1a8669188a9e83371ca1ab1eb2a73e6011"></a>function isPushNotificationSupported():Boolean  
Checks if push notifications supported on the platform 

----------  
  

#### <a name="1ae432b1bbd664897d4c2a577df0270516"></a>function onDeviceReady():void  
Call this after all the callbacks have been set<br/>Example: 
```ActionScript
var pushwoosh:PushNotification = PushNotification.getInstance();
pushwoosh.addEventListener(PushNotificationEvent.PERMISSION_GIVEN_WITH_TOKEN_EVENT, onToken);
pushwoosh.addEventListener(PushNotificationEvent.PERMISSION_REFUSED_EVENT, onError);
pushwoosh.addEventListener(PushNotificationEvent.PUSH_NOTIFICATION_RECEIVED_EVENT, onPushReceived);
pushwoosh.addEventListener(PushNotificationEvent.PUSH_NOTIFICATION_OPENED_EVENT, onPushOpened);

pushwoosh.onDeviceReady();

pushwoosh.registerForPushNotification();
```


----------  
  

#### <a name="1a02e8858a9ac194a95889c12c42fc3636"></a>function getPushToken():String  
Returns push token if available. May return null. 

----------  
  

#### <a name="1a4ca1b1a35a35feed8a0271681e05893a"></a>function getPushwooshHWID():String  
Returns unique identifier of the device 

----------  
  

#### <a name="1a1d22098097c6e0111f06bd97baca74a4"></a>function registerForPushNotification():void  
Registers for push notifications 

----------  
  

#### <a name="1a0aa2a74263972a59c82e94d48aa48d4e"></a>function setBadgeNumberValue(value:int):void  
Sets the app icon badge value 

----------  
  

#### <a name="1acca7828a05fc95306dc26c33e741d6e5"></a>function setMultiNotificationMode():void  
Android only: enables multiple notification in the notification center 

----------  
  

#### <a name="1a15fe66f20be22d409ac5e8c4b70962cc"></a>function setSimpleNotificationMode():void  
Android only: enables single notification only in the notification center 

----------  
  

#### <a name="1ae4e9ebaaf1b88b10337a9fb12ecd3543"></a>function setSoundType(value:int):void  
Android only: sets sound type for push notifications. <br/><br/><strong>Parameters</strong><br/>
<table>
	<tr>
		<td><strong>value</strong></td>
		<td>0 - default, 1 - no sound, 2 - always </td>
	</tr>
</table>


----------  
  

#### <a name="1a60df3c0a9a0d388e50e45906d4ff0caa"></a>function setVibrateType(value:int):void  
Android only: sets vibration type for push notifications. <br/><br/><strong>Parameters</strong><br/>
<table>
	<tr>
		<td><strong>value</strong></td>
		<td>0 - default, 1 - no vibration, 2 - always</td>
	</tr>
</table>

Make sure you add <a href="https://developer.android.com/reference/android/Manifest.permission.html#VIBRATE">VIBRATE</a> permission to AndroidManifest.xml 

----------  
  

#### <a name="1a608939d6aed90ae3762c173bbd5d4af1"></a>function setEnableLed(value:Boolean):void  
Android only: enables led blinking when push notification arrives 

----------  
  

#### <a name="1a969501243b35e996d46b618483941e81"></a>function setIntTag(name:String, value:int):void  
Sets integer tag on a device<br/><br/><br/><strong>Parameters</strong><br/>
<table>
	<tr>
		<td><strong>name</strong></td>
		<td>is the name of the tag </td>
	</tr>
	<tr>
		<td><strong>value</strong></td>
		<td>is the value of the tag </td>
	</tr>
</table>


----------  
  

#### <a name="1afc190f31e7ab0c8714d9106e00b610d3"></a>function scheduleLocalNotification(seconds:int, alertJson:String):int  
Schedules local notification<br/><br/><br/><strong>Parameters</strong><br/>
<table>
	<tr>
		<td><strong>seconds</strong></td>
		<td>delay for the local notification in seconds </td>
	</tr>
	<tr>
		<td><strong>alertJson</strong></td>
		<td>JSON with the local notification</td>
	</tr>
</table>

Example: 
```ActionScript
pushwoosh.scheduleLocalNotification(30, "{\"alertBody\": \"Time to collect coins!\",
        \"alertAction\":\"Collect!\", \"soundName\":\"sound.caf\", \"badge\": 5, \"custom\": {\"a\":\"json\"}}");
```


----------  
  

#### <a name="1a9ea4b8333d600d0b318a7f80abd83b66"></a>function getTags(success:Function, error:Function):void  
Returns tags<br/><br/><br/><strong>Parameters</strong><br/>
<table>
	<tr>
		<td><strong>success</strong></td>
		<td>success callback </td>
	</tr>
	<tr>
		<td><strong>error</strong></td>
		<td>error callback</td>
	</tr>
</table>

Example: 
```ActionScript
 pushwoosh.getTags(function(tags:Object) {
        trace("Application tags: " + JSON.stringify(tags));
    },
    function(error:String) {
        trace("Failed to get tags: " + error);
    }
);
```


----------  
  

#### <a name="1aaac8dec12eec90d7a8b84d2d3108f42d"></a>function unregisterFromPushNotification():void  
Unregisters the device from push notifications 

----------  
  

#### <a name="1a9aaec9f868a4e3d443b73847bd1bc382"></a>function sendPurchase(productId:String, price:Number, currency:String):void  
Send purchase information. This will set default tags "In-app Product", "In-app Purchase" and "Last In-app Purchase date"<br/><br/><br/><strong>Parameters</strong><br/>
<table>
	<tr>
		<td><strong>productId</strong></td>
		<td>identifier of purchased product </td>
	</tr>
	<tr>
		<td><strong>price</strong></td>
		<td>product price </td>
	</tr>
	<tr>
		<td><strong>currency</strong></td>
		<td>currency for price number </td>
	</tr>
</table>


----------  
  

#### <a name="1a73393146b3eaaf94cb527a74eed5df7b"></a>function setUserId(userId:String):void  
Set User indentifier. This could be Facebook ID, username or email, or any other user ID. This allows data and events to be matched across multiple user devices. 

----------  
  

#### <a name="1a88062eb702eb59fe8bd53c6cc8295ec8"></a>function postEvent(eventId:String, attributes:Object):void  
Post events for In-App Messages. This can trigger In-App message display as specified in Pushwoosh Control Panel.<br/>Example: 
```ActionScript
pushwoosh.postEvent("buttonPressed", { "buttonNumber" : "4", "buttonLabel" : "Banner" } );
```


----------  
  

#### <a name="1a88d4e3ae187eb38e5f64c9637ce7b60d"></a>function setCommunicationEnabled(enable:Boolean, success:Function, error:Function):void  
Enable/disable all communication with Pushwoosh. Enabled by default. 

----------  
  

#### <a name="1aa899bf508503ba6c30a4221e47156cb8"></a>function removeAllDeviceData(success:Function, error:Function):void  
Removes all device data from Pushwoosh and stops all interactions and communication permanently. 

----------  
  

#### <a name="1a8bbd76dc4bb3fb0c36b7d04140b19e9b"></a>function showGDPRDeletionUI():void  
Show inApp for all device data from Pushwoosh and stops all interactions and communication permanently. 

----------  
  

#### <a name="1ab42a31bb0c0f5fd36aa0942aa1c77c63"></a>function showGDPRConsentUI():void  
Show inApp for change setting Enable/disable all communication with Pushwoosh 

----------  
  

#### <a name="1a80aa6bc08dfc6a9f286ef704e75e023a"></a>function isDeviceDataRemoved():Boolean  
Indicates availability of the GDPR compliance solution. 

----------  
  

#### <a name="1a16faacf3557e7a6cf491db7b64ca21cf"></a>function isCommunicationEnabled():Boolean  
Return flag is enable communication with server 

----------  
  

#### <a name="1a15b1e6b4adc601b9875452b6ad50e2f5"></a>function isAvailableGDPR():Boolean  
Return flag is enabled GDPR on server 

----------  
  

#### <a name="1a055967d6c58109f67912cb391c2ad85d"></a>function setStringTag(name:String, value:String):void  
Sets string tag on a device<br/><br/><br/><strong>Parameters</strong><br/>
<table>
	<tr>
		<td><strong>name</strong></td>
		<td>is the name of the tag </td>
	</tr>
	<tr>
		<td><strong>value</strong></td>
		<td>is the value of the tag </td>
	</tr>
</table>
