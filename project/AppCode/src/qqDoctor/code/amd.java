import android.graphics.drawable.Drawable;
import android.widget.ImageView;
import android.widget.ListView;

final class amd
  implements abu.a
{
  amd(amc paramamc)
  {
  }

  public final void onTaskFinish(mp parammp)
  {
    lv locallv = (lv)parammp;
    ImageView localImageView = (ImageView)amc.a(this.a).findViewWithTag(locallv.d);
    if ((localImageView != null) && (locallv.f != null))
    {
      Drawable localDrawable = amc.b(this.a).a(locallv.f);
      localImageView.setImageDrawable(localDrawable);
      ((kw)locallv.h).setIcon(localDrawable);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     amd
 * JD-Core Version:    0.6.2
 */