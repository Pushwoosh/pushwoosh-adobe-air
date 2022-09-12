package
{
	import com.pushwoosh.nativeExtensions.*;
	import com.pushwoosh.geozones.nativeExtensions.*;

	import flash.display.Sprite;
	import flash.display.StageAlign;
	import flash.display.StageScaleMode;
	import flash.events.*;
	import flash.events.Event;
	import flash.text.TextField;
	import flash.text.TextFormat;
	import flash.ui.Multitouch;
	import flash.ui.MultitouchInputMode;

	
	[SWF(width="1280", height="752", frameRate="60")]
	
	public class TestPushNotifications extends Sprite
	{
		private var notiStyles:Vector.<String> = new Vector.<String>;;
		private var textField:TextField = new TextField();
		private var textFormat:TextFormat = new TextFormat();
		
		public function TestPushNotifications()
		{
			super();
			
			Multitouch.inputMode = MultitouchInputMode.TOUCH_POINT;
			stage.align = StageAlign.TOP_LEFT;
			stage.scaleMode = StageScaleMode.NO_SCALE;
			
			textFormat.size = 20;
			textFormat.bold = true;
			
			
			textField.x=0;
			textField.y =150;
			textField.height = stage.stageHeight;
			textField.width = stage.stageWidth;
			textField.border = true;
		    textField.defaultTextFormat = textFormat;
			
			addChild(textField);
			
			//register for push notifications
			var pushwoosh:PushNotification = PushNotification.getInstance();
			pushwoosh.addEventListener(PushNotificationEvent.PERMISSION_GIVEN_WITH_TOKEN_EVENT, onToken);
			pushwoosh.addEventListener(PushNotificationEvent.PERMISSION_REFUSED_EVENT, onError);
			pushwoosh.addEventListener(PushNotificationEvent.PUSH_NOTIFICATION_RECEIVED_EVENT, onPushReceived);
			
			//Important! must call this functions after callbacks have been set. It will trigger all pending push notifications to be delivered.
			pushwoosh.onDeviceReady();
			
			//register for push
			pushwoosh.registerForPushNotification();
			pushwoosh.postEvent("test", { "buttonNumber" : "4", "buttonLabel" : "Banner" } );
			
			var pushToken:String = pushwoosh.getPushToken();
			if(pushToken == null)
				textField.appendText("\n Push TOKEN: not registered");
			else
				textField.appendText("\n Registered for pushes: " + pushwoosh.getPushToken() + " ");
			
			textField.appendText("\n Pushwoosh HWID: " + pushwoosh.getPushwooshHWID() + " ");

			//PushwooshGeozones.getInstance().startLocationTracking();
			
			this.stage.addEventListener(Event.ACTIVATE,activateHandler);
		}
		
		public function activateHandler(e:Event):void{
		}
		
		public function onToken(e:PushNotificationEvent):void{
			textField.appendText("\n TOKEN received: " + e.token + " ");
		}

		public function onError(e:PushNotificationEvent):void{
			textField.appendText("\n TOKEN error: " + e.errorMessage+ " ");
		}

		public function onPushReceived(e:PushNotificationEvent):void{
			textField.appendText("\n Push Received: " + JSON.stringify(e.parameters) + " ");
		}
	}
}