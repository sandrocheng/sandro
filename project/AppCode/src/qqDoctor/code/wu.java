import android.database.ContentObserver;
import android.os.Handler;
import com.tencent.tmsecure.module.aresengine.SmsEntity;

final class wu extends ContentObserver
{
  wu(wr paramwr, Handler paramHandler)
  {
    super(paramHandler);
  }

  public final void onChange(boolean paramBoolean)
  {
    super.onChange(paramBoolean);
    SmsEntity localSmsEntity1;
    if (!paramBoolean)
    {
      localSmsEntity1 = wr.n(this.a).a(15, 1);
      if ((localSmsEntity1 != null) && (localSmsEntity1.phonenum != null))
        break label35;
    }
    while (true)
    {
      return;
      label35: localSmsEntity1.phonenum = localSmsEntity1.phonenum.replace("+86", "");
      int i = wr.b(this.a).A();
      wr.n();
      if (((!wr.c(this.a)) || (Math.abs(System.currentTimeMillis() - wr.d(this.a)) >= 1000 * (i * 60))) && (wr.a(this.a, localSmsEntity1)))
      {
        ff.a("kfc", "sms observered by ContentObserver");
        ff.a("kfc", "from: " + localSmsEntity1.phonenum + ", body: " + localSmsEntity1.body);
        wr.n(this.a).remove(localSmsEntity1);
        if (2 != wr.h(this.a))
        {
          if (wr.i(this.a) == 0)
          {
            int j = (int)((System.currentTimeMillis() - wr.j(this.a)) / 1000L);
            if (j > 0)
              wr.b(this.a).l(j);
          }
          wr.a(this.a, 1);
          SmsEntity localSmsEntity2 = wr.k(this.a).a(localSmsEntity1);
          if ((localSmsEntity2 != null) && (localSmsEntity2.body != null))
            if (!localSmsEntity2.body.equals(wr.l(this.a)))
            {
              wr.b(this.a, localSmsEntity2.phonenum);
              wr.c(this.a, localSmsEntity2.body);
              wr.a(this.a, wr.m(this.a), wr.l(this.a));
            }
            else
            {
              ff.a("kfc", "repeated sms, AresEngine's bug xxxxxxx");
            }
        }
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     wu
 * JD-Core Version:    0.6.2
 */