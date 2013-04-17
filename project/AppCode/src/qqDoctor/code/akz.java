import android.graphics.drawable.Drawable;
import android.widget.ImageView;
import android.widget.ListView;

final class akz
  implements abu.a
{
  akz(akw paramakw)
  {
  }

  public final void onTaskFinish(mp parammp)
  {
    lv locallv = (lv)parammp;
    ImageView localImageView = (ImageView)akw.a(this.a).findViewWithTag(locallv.d);
    if ((localImageView != null) && (locallv.f != null))
    {
      Drawable localDrawable = akw.b(this.a).a(locallv.f);
      localImageView.setImageDrawable(localDrawable);
      ((kw)locallv.h).setIcon(localDrawable);
      this.a.notifyDataSetChanged();
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     akz
 * JD-Core Version:    0.6.2
 */