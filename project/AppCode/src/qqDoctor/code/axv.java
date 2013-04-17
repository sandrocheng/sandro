import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.os.Message;
import java.util.Map;

final class axv
  implements abu.a
{
  axv(axj paramaxj)
  {
  }

  public final void onTaskFinish(mp parammp)
  {
    synchronized (this.a)
    {
      lv locallv = (lv)parammp;
      if (locallv.f != null)
      {
        axj.g(this.a).sendEmptyMessage(4);
        Map localMap = axj.y(this.a);
        Integer localInteger = Integer.valueOf(locallv.d.hashCode());
        Drawable localDrawable = locallv.f;
        axj.a(this.a, Integer.valueOf(locallv.d.hashCode()));
        localMap.put(localInteger, new ku(localDrawable));
        new StringBuilder(" ").append(locallv.f).toString();
      }
      axj.g(this.a).sendEmptyMessage(0);
      Message localMessage = axj.g(this.a).obtainMessage(1, Integer.valueOf(0));
      axj.g(this.a).sendMessage(localMessage);
      return;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     axv
 * JD-Core Version:    0.6.2
 */