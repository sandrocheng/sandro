import android.os.IBinder;
import com.tencent.tmsecure.common.BaseService;

public class fc<T extends fh> extends BaseService
{
  public IBinder onBind()
  {
    return new fe();
  }

  public void onDestory()
  {
    ((fe)getBinder()).d();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     fc
 * JD-Core Version:    0.6.2
 */