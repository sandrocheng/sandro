import android.widget.ImageView;
import android.widget.ListView;

final class akf
  implements abu.a
{
  akf(ake paramake)
  {
  }

  public final void onTaskFinish(mp parammp)
  {
    lv locallv = (lv)parammp;
    ImageView localImageView = (ImageView)ake.a(this.a).findViewWithTag(locallv.d);
    if ((localImageView != null) && (locallv.f != null))
    {
      localImageView.setImageDrawable(locallv.f);
      ((kw)locallv.h).setIcon(locallv.f);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     akf
 * JD-Core Version:    0.6.2
 */