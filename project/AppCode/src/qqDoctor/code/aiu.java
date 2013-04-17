import android.view.View;
import android.widget.ListView;
import com.tencent.qqpimsecure.uilib.view.SecureSpaceMMSView;
import java.util.ArrayList;
import java.util.HashMap;

final class aiu
  implements abu.a
{
  aiu(ait paramait, int paramInt1, int paramInt2)
  {
  }

  public final void onTaskFinish(mp parammp)
  {
    fo localfo = (fo)parammp;
    View localView = ait.a(this.c).findViewWithTag(Integer.valueOf(parammp.g));
    if ((localView instanceof SecureSpaceMMSView))
    {
      SecureSpaceMMSView localSecureSpaceMMSView = (SecureSpaceMMSView)localView;
      if ((localSecureSpaceMMSView != null) && (localfo.a != null) && (localfo.a.size() > 0))
      {
        localSecureSpaceMMSView.setBitmap(localfo.a);
        ait.b(this.c).put(new Integer(this.a), localfo.a);
        new StringBuilder().append(this.b).toString();
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     aiu
 * JD-Core Version:    0.6.2
 */