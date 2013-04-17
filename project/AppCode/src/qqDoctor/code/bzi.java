import com.tencent.tmsecure.utils.ScriptHelper;
import com.tencent.tmsecure.utils.ScriptHelper.Callback;

public final class bzi extends Thread
{
  public bzi(ScriptHelper.Callback paramCallback)
  {
  }

  public final void run()
  {
    this.a.onFinish(ScriptHelper.canRunAtRoot(1));
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bzi
 * JD-Core Version:    0.6.2
 */