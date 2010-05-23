package typeoneerror.document
{
    import flash.display.Sprite;
    import flash.display.Stage;
    import flash.display.StageAlign;
    import flash.display.StageScaleMode;
    import flash.text.TextField;
    import flash.text.TextFormat;
    import flash.text.TextFormatAlign;

    [SWF(width="320",height="480")]
    public class HelloWorld extends Sprite
    {
        private var __bg:Sprite;
        private var __textField:TextField;

        public function HelloWorld():void
        {
            stage.align = StageAlign.TOP_LEFT;
            stage.scaleMode = StageScaleMode.NO_SCALE;
            
            _createChildren();
        }

        private function _createChildren():void
        {
            trace("Where do traces go?");
            
            __bg = new Sprite();
            __bg.graphics.beginFill(0xEFEFEF, 1);
            __bg.graphics.drawRect(0, 0, 320, 480);
            __bg.graphics.endFill();
            
            addChild(__bg);
            
            __textField = new TextField();

            var textFormat:TextFormat = new TextFormat();
            textFormat.size = 24;
            textFormat.font = "Arial";
            textFormat.bold = true;
            textFormat.align = TextFormatAlign.CENTER;

            __textField.width = stage.stageWidth;
            __textField.text = "Hello, World!";
            __textField.y = stage.stageHeight / 2;
            __textField.setTextFormat(textFormat);

            stage.addChild(__textField);
        }
    }
}