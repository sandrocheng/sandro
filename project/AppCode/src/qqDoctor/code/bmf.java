import android.os.Handler;
import android.os.Message;
import com.tencent.tmsecure.module.networkload.NetworkLoadTaskListener;
import java.util.List;

final class bmf extends NetworkLoadTaskListener<kv>
{
  bmf(bmd parambmd)
  {
  }

  public final void onDeleted(List<kv> paramList)
  {
    if (bmd.m(this.a).contains(paramList.get(0)))
    {
      Message localMessage = bmd.b(this.a).obtainMessage(10);
      localMessage.obj = paramList;
      bmd.b(this.a).sendMessage(localMessage);
    }
  }

  public final void onPaused(List<kv> paramList)
  {
    if (bmd.i(this.a).contains(paramList.get(0)))
    {
      Message localMessage = bmd.b(this.a).obtainMessage(9);
      localMessage.obj = paramList;
      bmd.b(this.a).sendMessage(localMessage);
    }
  }

  public final void onWaiting(List<kv> paramList)
  {
    if (bmd.c(this.a).contains(paramList.get(0)))
    {
      Message localMessage = bmd.b(this.a).obtainMessage(8);
      localMessage.obj = paramList;
      bmd.b(this.a).sendMessage(localMessage);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bmf
 * JD-Core Version:    0.6.2
 */