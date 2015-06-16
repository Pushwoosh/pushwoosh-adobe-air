package{
	
import flash.display.Sprite;
import flash.events.MouseEvent;
import flash.text.TextField;

public class CustomButton extends Sprite {
	private var wsize:uint = 100;
	private var hsize:uint = 120;
	private var overColor:uint = 0xBBBBBB;
	private var downColor:uint = 0x00CCFF;
	private var tf:TextField;
	
	public function CustomButton(str:String="Button") {
		this.mouseChildren=false;		
		draw(wsize, hsize, overColor);
		tf=new TextField();
		tf.text=str;		
		this.addChild(tf);
		addEventListener(MouseEvent.MOUSE_DOWN, mouseDownHandler);
		addEventListener(MouseEvent.MOUSE_UP, mouseUpHandler);
	}
	
	public function draw(w:uint, h:uint, bgColor:uint):void {
		graphics.clear();
		graphics.beginFill(bgColor);
		graphics.drawRect(0, 0, w, h);
		graphics.endFill();
	}	
	
	public function mouseDownHandler(event:MouseEvent):void {		
		draw(wsize, hsize, downColor);	
	}
	
	public function mouseUpHandler(event:MouseEvent):void {	
		draw(wsize, hsize, overColor);
	}
}
}
