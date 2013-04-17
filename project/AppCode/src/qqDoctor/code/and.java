import android.os.Handler;
import android.os.Message;
import com.tencent.tmsecure.module.aresengine.CallLogEntity;
import java.util.List;

final class and
  implements Runnable
{
  and(ams paramams, List paramList1, List paramList2)
  {
  }

  public final void run()
  {
    int i = this.a.size();
    int j = 0;
    int k = 0;
    if (j < i)
    {
      CallLogEntity localCallLogEntity = (CallLogEntity)this.a.get(j);
      ams.C(this.c).getAllCallLog();
      if (!ams.C(this.c).remove(localCallLogEntity))
        break label205;
      ky localky = new ky(localCallLogEntity);
      ams.F(this.c).a(localky);
      ams.a(this.c, localCallLogEntity);
      ams.h(this.c).remove(localCallLogEntity);
      ams.G(this.c).remove(this.b.get(j));
    }
    label205: for (int m = k + 1; ; m = k)
    {
      j++;
      k = m;
      break;
      Message localMessage = ams.y(this.c).obtainMessage(33);
      localMessage.obj = Integer.valueOf(k);
      ams.y(this.c).sendMessage(localMessage);
      ams.w(this.c).c(1);
      ams.H(this.c).sendEmptyMessage(-1);
      return;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     and
 * JD-Core Version:    0.6.2
 */