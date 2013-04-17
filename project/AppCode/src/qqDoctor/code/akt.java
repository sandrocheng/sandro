import android.widget.ImageView;
import android.widget.ListView;

final class akt
  implements abu.a
{
  akt(akp paramakp)
  {
  }

  public final void onTaskFinish(mp parammp)
  {
    lv locallv = (lv)parammp;
    ImageView localImageView = (ImageView)akp.f(this.a).findViewWithTag(locallv.d);
    if ((localImageView != null) && (locallv.f != null))
    {
      localImageView.setImageDrawable(locallv.f);
      mf localmf = (mf)((kw)locallv.h).A();
      if (localmf != null)
        localmf.c = locallv.f;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     akt
 * JD-Core Version:    0.6.2
 */