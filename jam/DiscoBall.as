package jam
{
   import punk.Acrobat;
   import punk.core.Spritemap;

   public class DiscoBall extends Acrobat
   {

      private static const ImgBall:Class = Library.DiscoBall_ImgBall;

      public static const SprBall:Spritemap = FP.getSprite(ImgBall,64,64,false,false,32,32);


      private var appear:Boolean = false;

      public function DiscoBall(x:int, y:int)
      {
         super();
         this.x = x;
         this.y = y;
         sprite = SprBall;
         delay = 0;
         alpha = 0.1;
      }

      override public function update() : void
      {
         if(scaleX > 1)
         {
            scaleX = scaleY = Math.max(1,scaleX - 0.05);
         }
         else if(this.appear)
         {
            (FP.world as MenuWorld).createParticles(1,x,y,35,16777215,4,2,0.2,0.1,0,180,40,10);
         }
      }

      public function start() : void
      {
         delay = 10;
         alpha = 1;
         scaleX = scaleY = 1.4;
         this.appear = true;
         (FP.world as MenuWorld).createParticles(30,x,y,35,16777215,4,2,0.2,0.1,0,180,40,10);
         (FP.world as MenuWorld).createParticles(30,x,y,35,16777215,4,2,0.2,0.1,0,180,40,10,5);
      }
   }
}
