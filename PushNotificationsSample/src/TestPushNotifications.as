package
{
	import com.pushwoosh.nativeExtensions.*;
	
	import flash.desktop.*;
	import flash.display.Sprite;
	import flash.display.StageAlign;
	import flash.display.StageScaleMode;
	import flash.events.*;
	import flash.events.Event;
	import flash.events.IOErrorEvent;
	import flash.events.MouseEvent;
	import flash.events.StatusEvent;
	import flash.net.*;
	import flash.text.TextField;
	import flash.text.TextFormat;
	import flash.ui.Multitouch;
	import flash.ui.MultitouchInputMode;

	
	[SWF(width="1280", height="752", frameRate="60")]
	
	public class TestPushNotifications extends Sprite
	{
		private var notiStyles:Vector.<String> = new Vector.<String>;;
		private var tt:TextField = new TextField();
		private var tf:TextFormat = new TextFormat();
		
		public function TestPushNotifications()
		{
			super();
			
			Multitouch.inputMode = MultitouchInputMode.TOUCH_POINT;
			stage.align = StageAlign.TOP_LEFT;
			stage.scaleMode = StageScaleMode.NO_SCALE;
			
			tf.size = 20;
			tf.bold = true;
			
			
			tt.x=0;
			tt.y =150;
			tt.height = stage.stageHeight;
			tt.width = stage.stageWidth;
			tt.border = true;
		    tt.defaultTextFormat = tf;
			
			addChild(tt);
			
			//register for push notifications
			var pushwoosh:PushNotification = PushNotification.getInstance();
			pushwoosh.addEventListener(PushNotificationEvent.PERMISSION_GIVEN_WITH_TOKEN_EVENT, onToken);
			pushwoosh.addEventListener(PushNotificationEvent.PERMISSION_REFUSED_EVENT, onError);
			pushwoosh.addEventListener(PushNotificationEvent.PUSH_NOTIFICATION_RECEIVED_EVENT, onPushReceived);
			
			//Important! must call this functions after callbacks have been set. It will trigger all pending push notifications to be delivered.
			pushwoosh.onDeviceReady();
			
			//register for push
			pushwoosh.registerForPushNotification();
			
			var pushToken:String = pushwoosh.getPushToken();
			if(pushToken == null)
				tt.text += "\n Push TOKEN: not registered";
			else
				tt.text += "\n Registered for pushes: " + pushwoosh.getPushToken() + " ";
			
			tt.text += "\n Pushwoosh HWID: " + pushwoosh.getPushwooshHWID() + " ";
			
			pushwoosh.scheduleLocalNotification(30, "{\"alertBody\": \"Time to collect coins!\", \"alertAction\":\"Collect!\", \"soundName\":\"sound.caf\", \"badge\": 5, \"custom\": {\"a\":\"json\"}}");
			
			this.stage.addEventListener(Event.ACTIVATE,activateHandler);
		}
		
		public function activateHandler(e:Event):void{
		}
		
		public function onToken(e:PushNotificationEvent):void{
			tt.text += "\n TOKEN received: " + e.token + " ";
		}

		public function onError(e:PushNotificationEvent):void{
			tt.text += "\n TOKEN error: " + e.errorMessage+ " ";
		}

		public function onPushReceived(e:PushNotificationEvent):void{
			tt.text += "\n Push Received: " + JSON.stringify(e.parameters) + " ";
		}
	}
}