import android.os.Handler;
import android.os.Message;
import com.tencent.tmsecure.module.networkload.NetworkLoadTaskListener;
import java.util.List;

final class ayx extends NetworkLoadTaskListener<kv>
{
  ayx(ayp paramayp)
  {
  }

  public final void onDeleted(List<kv> paramList)
  {
    if (ayp.a(this.a).contains(paramList.get(0)))
    {
      Message localMessage = ayp.u(this.a).obtainMessage(10);
      localMessage.obj = paramList;
      ayp.u(this.a).sendMessage(localMessage);
    }
  }

  public final void onPaused(List<kv> paramList)
  {
    if (ayp.a(this.a).contains(paramList.get(0)))
    {
      Message localMessage = ayp.u(this.a).obtainMessage(9);
      localMessage.obj = paramList;
      ayp.u(this.a).sendMessage(localMessage);
    }
  }

  public final void onWaiting(List<kv> paramList)
  {
    if (ayp.a(this.a).contains(paramList.get(0)))
    {
      Message localMessage = ayp.u(this.a).obtainMessage(8);
      localMessage.obj = paramList;
      ayp.u(this.a).sendMessage(localMessage);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     ayx
 * JD-Core Version:    0.6.2
 */