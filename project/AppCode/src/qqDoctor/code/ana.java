import android.os.Handler;
import android.os.Message;
import com.tencent.tmsecure.module.aresengine.CallLogEntity;
import java.util.Iterator;
import java.util.List;

final class ana
  implements Runnable
{
  ana(ams paramams, List paramList)
  {
  }

  public final void run()
  {
    Iterator localIterator = this.a.iterator();
    while (localIterator.hasNext())
    {
      CallLogEntity localCallLogEntity = (CallLogEntity)localIterator.next();
      ams.a(this.b, localCallLogEntity);
    }
    ams.w(this.b).c(1);
    Message localMessage = ams.y(this.b).obtainMessage(33);
    ams.y(this.b).sendMessage(localMessage);
    ams.z(this.b).sendEmptyMessage(-1);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     ana
 * JD-Core Version:    0.6.2
 */