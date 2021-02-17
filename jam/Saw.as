package jam
{
   import punk.core.Spritemap;

   public class Saw extends Block
   {

      private static const ImgSaw:Class = Library.Saw_ImgSaw;

      private static const SprSaw:Spritemap = FP.getSprite(ImgSaw,16,16,true);


      public function Saw(x:int, y:int, flip:Boolean)
      {
         super(x,y,16,16);
         sprite = SprSaw;
         delay = 3;
         flipX = flip;
         depth = 10;
      }
   }
}
