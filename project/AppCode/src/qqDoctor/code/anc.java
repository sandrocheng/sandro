import android.os.Handler;
import android.os.Message;
import java.util.List;

final class anc
  implements Runnable
{
  anc(ams paramams, List paramList1, List paramList2)
  {
  }

  public final void run()
  {
    int i = 0;
    int j = 0;
    while (i < this.a.size())
    {
      mk localmk = (mk)this.a.get(i);
      if (ams.B(this.c).a(localmk, false) > 0L)
      {
        ams.C(this.c).remove(localmk);
        ams.a(this.c, localmk);
        ams.h(this.c).remove(localmk);
        ams.D(this.c).remove(this.b.get(i));
        j++;
      }
      i++;
    }
    Message localMessage = ams.y(this.c).obtainMessage(33);
    localMessage.obj = Integer.valueOf(j);
    ams.y(this.c).sendMessage(localMessage);
    ams.w(this.c).c(0);
    ams.E(this.c).sendEmptyMessage(-1);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     anc
 * JD-Core Version:    0.6.2
 */