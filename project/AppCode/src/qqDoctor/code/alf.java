import android.graphics.drawable.Drawable;
import android.widget.ImageView;
import com.tencent.qqpimsecure.uilib.view.PinnedHeaderListView;

final class alf
  implements abu.a
{
  alf(ald paramald)
  {
  }

  public final void onTaskFinish(mp parammp)
  {
    lv locallv = (lv)parammp;
    ImageView localImageView = (ImageView)ald.b(this.a).findViewWithTag(locallv.d);
    if ((localImageView != null) && (locallv.f != null))
    {
      Drawable localDrawable = ald.c(this.a).a(locallv.f);
      localImageView.setImageDrawable(localDrawable);
      ((kw)locallv.h).setIcon(localDrawable);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     alf
 * JD-Core Version:    0.6.2
 */