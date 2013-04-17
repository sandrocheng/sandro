import android.widget.ImageView;
import android.widget.ListView;

final class aim
  implements abu.a
{
  aim(aik paramaik)
  {
  }

  public final void onTaskFinish(mp parammp)
  {
    lv locallv = (lv)parammp;
    ImageView localImageView = (ImageView)aik.d(this.a).findViewWithTag(locallv.d);
    if ((localImageView != null) && (locallv.f != null))
    {
      localImageView.setImageDrawable(locallv.f);
      mb localmb = (mb)((kw)locallv.h).A();
      if (localmb != null)
        aik.a(this.a, localmb.a, locallv.f);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     aim
 * JD-Core Version:    0.6.2
 */