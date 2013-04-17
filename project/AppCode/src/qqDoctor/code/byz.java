import android.content.Context;
import android.os.Handler;
import com.tencent.tmsecure.common.BaseManager;

public final class byz extends BaseManager
{
  public Handler a;

  public final int getSingletonType()
  {
    return 1;
  }

  public final void onCreate(Context paramContext)
  {
    this.a = new bza(paramContext.getMainLooper());
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     byz
 * JD-Core Version:    0.6.2
 */