import android.graphics.drawable.Drawable;
import android.widget.ImageView;
import com.tencent.qqpimsecure.uilib.view.PinnedHeaderListView;

final class ajz
  implements abu.a
{
  ajz(ajx paramajx)
  {
  }

  public final void onTaskFinish(mp parammp)
  {
    lv locallv = (lv)parammp;
    ImageView localImageView = (ImageView)ajx.f(this.a).findViewWithTag(locallv.d);
    if ((localImageView != null) && (locallv.f != null))
    {
      Drawable localDrawable = ajx.g(this.a).a(locallv.f);
      localImageView.setImageDrawable(localDrawable);
      ((kw)locallv.h).setIcon(localDrawable);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     ajz
 * JD-Core Version:    0.6.2
 */