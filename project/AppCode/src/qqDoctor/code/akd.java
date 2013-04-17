import android.widget.ImageView;
import android.widget.ListView;
import java.util.List;

final class akd
  implements abu.a
{
  akd(akc paramakc, int paramInt)
  {
  }

  public final void onTaskFinish(mp parammp)
  {
    lv locallv = (lv)parammp;
    ImageView localImageView = (ImageView)akc.a(this.b).findViewWithTag(locallv.d);
    if ((localImageView != null) && (locallv.f != null))
    {
      localImageView.setImageDrawable(locallv.f);
      ((kw)locallv.h).setIcon(locallv.f);
      ((mn)akc.b(this.b).get(this.a)).b = locallv.f;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     akd
 * JD-Core Version:    0.6.2
 */