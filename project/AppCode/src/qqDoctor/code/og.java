import android.os.Handler;
import android.os.Message;
import com.tencent.tmsecure.module.networkload.NetworkLoadTaskListener;
import java.util.List;

final class og extends NetworkLoadTaskListener<kv>
{
  og(of paramof)
  {
  }

  public final void onDeleted(List<kv> paramList)
  {
    Message localMessage = of.a(this.a).obtainMessage(8);
    localMessage.obj = paramList;
    of.a(this.a).sendMessage(localMessage);
  }

  public final void onPaused(List<kv> paramList)
  {
    Message localMessage = of.a(this.a).obtainMessage(7);
    localMessage.obj = paramList;
    of.a(this.a).sendMessage(localMessage);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     og
 * JD-Core Version:    0.6.2
 */