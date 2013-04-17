import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.widget.TabHost.OnTabChangeListener;
import com.tencent.qqpimsecure.ui.activity.filesafe.FileSafeListActivity;
import com.tencent.qqpimsecure.uilib.ui.activity.BaseUIActivity;
import java.util.List;

final class atj
  implements TabHost.OnTabChangeListener
{
  atj(atb paramatb)
  {
  }

  public final void onTabChanged(String paramString)
  {
    try
    {
      int j = Integer.parseInt(paramString);
      i = j;
      if ((i == -1) || (i == this.a.h))
        return;
    }
    catch (Exception localException)
    {
      while (true)
      {
        int i = -1;
        continue;
        if ((i == 0) || (i == 1))
        {
          this.a.h = i;
          this.a.g.clear();
          atb.l(this.a).sendEmptyMessage(-1);
        }
        else if (i == 2)
        {
          Intent localIntent = new Intent(atb.m(this.a), FileSafeListActivity.class);
          atb.n(this.a).startActivity(localIntent);
          this.a.getActivity().startActivityWithAnim();
        }
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     atj
 * JD-Core Version:    0.6.2
 */