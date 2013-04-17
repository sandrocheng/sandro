import android.os.Handler;
import android.os.Message;
import com.tencent.qqpimsecure.ui.activity.pickproof.PickproofAccountLoginActivity.a;

public final class ahg extends Thread
{
  public ahg(PickproofAccountLoginActivity.a parama, String paramString1, String paramString2)
  {
  }

  public final void run()
  {
    mw localmw = PickproofAccountLoginActivity.a.i(this.c);
    String str1 = this.a;
    String str2 = this.b;
    localmw.a = str1;
    localmw.b = mw.a(str2);
    int i = localmw.a(localmw.a, localmw.b);
    if (i == 0)
    {
      Message localMessage2 = PickproofAccountLoginActivity.a.k(this.c).obtainMessage(100000);
      PickproofAccountLoginActivity.a.l(this.c).sendMessage(localMessage2);
    }
    while (true)
    {
      return;
      Message localMessage1 = PickproofAccountLoginActivity.a.m(this.c).obtainMessage(100003, Integer.valueOf(i));
      PickproofAccountLoginActivity.a.n(this.c).sendMessage(localMessage1);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     ahg
 * JD-Core Version:    0.6.2
 */