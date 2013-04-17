import QQPIM.STNetLocal;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.os.Message;
import java.util.ArrayList;
import java.util.HashMap;

final class wk extends BroadcastReceiver
{
  wk(wh paramwh)
  {
  }

  public final void onReceive(Context paramContext, Intent paramIntent)
  {
    fl localfl;
    if (paramIntent.getAction().equals("android.net.conn.CONNECTIVITY_CHANGE"))
    {
      localfl = a.g(this.a.b);
      new StringBuilder("^^ net change, now ").append(localfl).append(" old ").append(this.a.f).toString();
      if (localfl != this.a.f)
      {
        STNetLocal localSTNetLocal = (STNetLocal)this.a.e.get(this.a.f);
        if ((localSTNetLocal != null) && (localSTNetLocal.vecData.size() < 10))
          synchronized (this.a.e)
          {
            this.a.e.remove(this.a.f);
          }
      }
    }
    synchronized (this.a.d)
    {
      this.a.d.clear();
      this.a.f = localfl;
      if (!this.a.e.containsKey(this.a.f))
      {
        wh localwh = this.a;
        if (!localwh.a(wh.a(this.a.f)))
          new Thread(new wl(this.a, this.a.f)).start();
      }
      new Thread(new wm(this.a)).start();
      if (wh.a(this.a))
        this.a.h.obtainMessage(1).sendToTarget();
      return;
      localObject1 = finally;
      throw localObject1;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     wk
 * JD-Core Version:    0.6.2
 */