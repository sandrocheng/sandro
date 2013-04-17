import android.widget.ImageView;
import android.widget.ListView;

final class aio
  implements abu.a
{
  aio(ain paramain)
  {
  }

  public final void onTaskFinish(mp parammp)
  {
    lv locallv = (lv)parammp;
    ImageView localImageView = (ImageView)ain.a(this.a).findViewWithTag(locallv.d);
    if ((localImageView != null) && (locallv.f != null))
    {
      localImageView.setImageDrawable(locallv.f);
      mb localmb = (mb)((kw)locallv.h).A();
      if (localmb != null)
        ain.a(this.a, localmb.a, locallv.f);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     aio
 * JD-Core Version:    0.6.2
 */