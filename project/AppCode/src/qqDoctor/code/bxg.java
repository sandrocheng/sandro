import com.tencent.tmsecure.module.permission.AbsDummyServiceCallback;
import com.tencent.tmsecure.module.permission.PermissionRequestInfo;

public final class bxg extends Thread
{
  public bxg(AbsDummyServiceCallback paramAbsDummyServiceCallback, PermissionRequestInfo paramPermissionRequestInfo)
  {
  }

  public final void run()
  {
    try
    {
      this.a.onHandleAslynRequest(this.b);
      return;
    }
    catch (Exception localException)
    {
      while (true)
        localException.printStackTrace();
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bxg
 * JD-Core Version:    0.6.2
 */