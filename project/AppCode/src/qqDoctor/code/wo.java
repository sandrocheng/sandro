import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.module.permission.PermissionManager;

final class wo extends Handler
{
  wo(wn paramwn, Looper paramLooper)
  {
    super(paramLooper);
  }

  public final void handleMessage(Message paramMessage)
  {
    switch (paramMessage.what)
    {
    default:
    case 0:
    case 1:
    }
    while (true)
    {
      return;
      if (paramMessage.obj != null)
      {
        PermissionManager localPermissionManager = (PermissionManager)ManagerCreator.getManager(PermissionManager.class);
        if ((localPermissionManager.isFinishInit()) && ((paramMessage.obj instanceof String)))
        {
          String str = (String)paramMessage.obj;
          kx localkx = new jf().a(str);
          if ((localkx != null) && (localkx.e.length > 12))
          {
            if (!ho.a().by())
              ja.a(localkx, 2);
            while (true)
            {
              localPermissionManager.updatePermissionTable(xf.a(localkx.a, localkx.e, localkx.b));
              break;
              localkx.e[12] = 2;
            }
            this.a.b();
          }
        }
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     wo
 * JD-Core Version:    0.6.2
 */