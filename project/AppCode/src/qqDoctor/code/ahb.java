import android.os.Handler;
import android.os.Message;
import com.tencent.qqpimsecure.ui.activity.pickproof.PickproofAccountLoginActivity.a;

public final class ahb extends Thread
{
  public ahb(PickproofAccountLoginActivity.a parama, String paramString)
  {
  }

  public final void run()
  {
    mw localmw = PickproofAccountLoginActivity.a.i(this.b);
    localmw.c = this.a;
    int i = localmw.a(localmw.a, localmw.b);
    if (i == 0)
    {
      Message localMessage2 = PickproofAccountLoginActivity.a.D(this.b).obtainMessage(100000);
      PickproofAccountLoginActivity.a.E(this.b).sendMessage(localMessage2);
    }
    while (true)
    {
      return;
      Message localMessage1 = PickproofAccountLoginActivity.a.F(this.b).obtainMessage(100003, Integer.valueOf(i));
      PickproofAccountLoginActivity.a.G(this.b).sendMessage(localMessage1);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     ahb
 * JD-Core Version:    0.6.2
 */