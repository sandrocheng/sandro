import android.widget.ImageView;
import android.widget.ListView;

final class aki
  implements abu.a
{
  aki(akh paramakh)
  {
  }

  public final void onTaskFinish(mp parammp)
  {
    lv locallv = (lv)parammp;
    ImageView localImageView = (ImageView)akh.a(this.a).findViewWithTag(locallv.d);
    if ((localImageView != null) && (locallv.f != null))
    {
      localImageView.setImageDrawable(locallv.f);
      kx localkx = (kx)((kw)locallv.h).A();
      if (localkx != null)
        localkx.d = locallv.f;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     aki
 * JD-Core Version:    0.6.2
 */