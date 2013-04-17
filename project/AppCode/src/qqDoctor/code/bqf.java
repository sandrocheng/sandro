import android.os.Handler;
import android.os.Message;
import com.tencent.tmsecure.module.software.SoftwareManager;
import java.util.ArrayList;

final class bqf
  implements pt.a
{
  bqf(bqb parambqb)
  {
  }

  public final void a()
  {
    bqb.L(this.a);
  }

  public final void a(kw paramkw)
  {
    int i;
    int j;
    if (paramkw.I() > 0L)
    {
      i = 0;
      if (i >= bqb.M(this.a).size())
        break label165;
      boolean bool = ((kw)bqb.M(this.a).get(i)).getPackageName().equals(paramkw.getPackageName());
      j = 0;
      if (!bool)
        break label159;
    }
    while (true)
    {
      if (j != 0)
      {
        bqb.N(this.a).getAppInfo(paramkw, 1);
        bqb.M(this.a).add(paramkw);
      }
      bqb.O(this.a);
      if ((bqb.P(this.a) % 5 == 0) && (bqb.u(this.a) < 95))
      {
        Message localMessage = new Message();
        localMessage.what = 11;
        bqb.Q(this.a);
        bqb.R(this.a).sendMessage(localMessage);
      }
      return;
      label159: i++;
      break;
      label165: j = 1;
    }
  }

  public final void b()
  {
    Message localMessage = new Message();
    if (bqb.M(this.a).size() <= 0)
    {
      localMessage.what = 9;
      bqb.R(this.a).sendMessage(localMessage);
    }
    while (true)
    {
      return;
      localMessage.what = 8;
      localMessage.arg1 = bqb.M(this.a).size();
      bqb.R(this.a).sendMessage(localMessage);
      if (!bqb.v(this.a))
        pt.a().a(new bqg(this));
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bqf
 * JD-Core Version:    0.6.2
 */