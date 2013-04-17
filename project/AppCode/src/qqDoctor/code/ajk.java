import android.widget.GridView;
import android.widget.ImageView;

final class ajk
  implements abu.a
{
  ajk(aji paramaji)
  {
  }

  public final void onTaskFinish(mp parammp)
  {
    li localli = (li)parammp;
    ImageView localImageView = (ImageView)aji.a(this.a).findViewWithTag(localli.a);
    if ((localImageView != null) && (localli.b != null))
    {
      localImageView.setImageBitmap(localli.b);
      lj locallj = (lj)localli.h;
      if (locallj != null)
        locallj.i = localli.b;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     ajk
 * JD-Core Version:    0.6.2
 */