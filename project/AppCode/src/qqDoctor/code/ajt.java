import android.widget.ImageView;
import android.widget.ListView;
import com.tencent.qqpimsecure.uilib.view.BaseListView;

final class ajt
  implements abu.a
{
  ajt(ajs paramajs)
  {
  }

  public final void onTaskFinish(mp parammp)
  {
    lv locallv = (lv)parammp;
    ImageView localImageView = (ImageView)((BaseListView)ajs.a(this.a)).getListView().findViewWithTag(locallv.d);
    if ((localImageView != null) && (locallv.f != null))
    {
      localImageView.setImageDrawable(locallv.f);
      ((la)locallv.h).a(locallv.f);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     ajt
 * JD-Core Version:    0.6.2
 */