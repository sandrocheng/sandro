import android.widget.ImageView;
import com.tencent.qqpimsecure.ui.activity.market.SoftwareScreenShotActivity;
import java.util.List;

public final class agi
  implements abu.a
{
  public agi(SoftwareScreenShotActivity paramSoftwareScreenShotActivity, ImageView paramImageView)
  {
  }

  public final void onTaskFinish(mp parammp)
  {
    lv locallv = (lv)parammp;
    if (locallv.f != null);
    synchronized (this.b)
    {
      this.a.setBackgroundDrawable(locallv.f);
      int i = 0;
      if (i < bnd.b.size())
      {
        if (((String)bnd.b.get(i)).hashCode() == parammp.g)
        {
          SoftwareScreenShotActivity.a(this.b).remove(i);
          SoftwareScreenShotActivity.a(this.b).add(i, locallv.f);
        }
      }
      else
        return;
      i++;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     agi
 * JD-Core Version:    0.6.2
 */