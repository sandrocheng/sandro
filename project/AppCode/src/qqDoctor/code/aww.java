import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Handler;
import android.widget.ImageView;
import com.tencent.qqpimsecure.uilib.view.InterceptMMSView;
import com.tencent.tmsecure.module.aresengine.MmsData;
import com.tencent.tmsecure.module.aresengine.MmsNotificationIndHeader;

final class aww extends BroadcastReceiver
{
  aww(awt paramawt)
  {
  }

  public final void onReceive(Context paramContext, Intent paramIntent)
  {
    mk localmk = (mk)paramIntent.getSerializableExtra("smslog");
    int i = paramIntent.getIntExtra("id", -1);
    awt.g(this.a).sendMessage(awt.f(this.a).obtainMessage(106));
    localmk.i = awt.a(localmk);
    if (localmk.i)
    {
      awt.h(this.a).setVisibility(0);
      awt.h(this.a).setBackgroundDrawable(awt.i(this.a).getResources().getDrawable(2130838070));
      awt.j(this.a);
      awt.k(this.a).setVisibility(8);
    }
    while (true)
    {
      return;
      if ((localmk.mmsData.mmsNotificationIndHeader != null) && (localmk.mmsData.mmsNotificationIndHeader.subject != null))
      {
        awt.h(this.a).setVisibility(0);
        awt.h(this.a).setBackgroundDrawable(awt.l(this.a).getResources().getDrawable(2130837673));
      }
      a.a(awt.m(this.a), new awx(this, localmk, i));
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     aww
 * JD-Core Version:    0.6.2
 */