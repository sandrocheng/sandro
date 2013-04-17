import android.content.Context;
import android.os.Handler;
import android.os.Message;
import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.module.permission.PermissionManager;
import com.tencent.tmsecure.module.permission.PermissionTableItem;
import java.util.List;

public final class xi
{
  private static boolean a = false;
  private static boolean b = false;
  private static Context c;
  private static int d = 0;
  private static boolean e = false;
  private static Handler f;

  private static void a(int paramInt, xi.a parama)
  {
    if (f == null)
      f = new xl(c.getApplicationContext().getMainLooper());
    f.removeMessages(paramInt);
    Message localMessage = f.obtainMessage(paramInt);
    localMessage.obj = parama;
    f.sendMessageDelayed(localMessage, 500L);
  }

  public static void a(Context paramContext, xi.a parama)
  {
    c = paramContext;
    b = true;
    if (g())
      a(2, parama);
    while (true)
    {
      return;
      c(true);
      PermissionManager localPermissionManager = (PermissionManager)ManagerCreator.getManager(PermissionManager.class);
      if (!localPermissionManager.isFinishInit())
      {
        new Thread(new xk(parama)).start();
      }
      else
      {
        h();
        if (b)
          ho.a().z(localPermissionManager.isEnable());
        c(false);
        if (parama != null)
          parama.a(d);
      }
    }
  }

  public static void a(Context paramContext, boolean paramBoolean1, boolean paramBoolean2, xi.a parama)
  {
    c = paramContext;
    a = paramBoolean2;
    b = paramBoolean1;
    if (g())
      a(1, parama);
    while (true)
    {
      return;
      c(true);
      PermissionManager localPermissionManager = (PermissionManager)ManagerCreator.getManager(PermissionManager.class);
      wn.a(c);
      if (!localPermissionManager.isFinishInit())
      {
        new Thread(new xj(parama)).start();
      }
      else
      {
        c(false);
        if (parama != null)
          parama.a(d);
        c(false);
      }
    }
  }

  public static void a(PermissionTableItem paramPermissionTableItem)
  {
    if (!b);
    while (true)
    {
      return;
      PermissionManager localPermissionManager = (PermissionManager)ManagerCreator.getManager(PermissionManager.class);
      if ((localPermissionManager.isEnable()) && (localPermissionManager.isFinishInit()))
        localPermissionManager.updatePermissionTable(paramPermissionTableItem);
    }
  }

  public static void a(boolean paramBoolean)
  {
    PermissionManager localPermissionManager = (PermissionManager)ManagerCreator.getManager(PermissionManager.class);
    b = paramBoolean;
    ho localho = ho.a();
    if (b)
      localho.H(0);
    if (a)
      localho.I(0);
    if (!a)
      localPermissionManager.setEnable(paramBoolean);
    while (true)
    {
      return;
      h();
    }
  }

  public static boolean a()
  {
    if ((((PermissionManager)ManagerCreator.getManager(PermissionManager.class)).isEnable()) && (b));
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public static void b(Context paramContext, xi.a parama)
  {
    c = paramContext;
    a = true;
    if (g())
      a(3, parama);
    while (true)
    {
      return;
      c(true);
      PermissionManager localPermissionManager = (PermissionManager)ManagerCreator.getManager(PermissionManager.class);
      wn.a(c);
      if (!localPermissionManager.isFinishInit())
      {
        new Thread(new xm(parama)).start();
      }
      else
      {
        b(true);
        c(false);
        if (parama != null)
          parama.a(d);
        c(false);
        wn localwn = wn.a(c);
        if (localwn != null)
          localwn.b();
      }
    }
  }

  public static void b(PermissionTableItem paramPermissionTableItem)
  {
    PermissionManager localPermissionManager = (PermissionManager)ManagerCreator.getManager(PermissionManager.class);
    if (localPermissionManager.isEnable())
    {
      if (!b)
      {
        int i = paramPermissionTableItem.mRids.length;
        for (int j = 0; j < i; j++)
          paramPermissionTableItem.mRids[j] = 65535;
        paramPermissionTableItem.mRids[14] = 2;
      }
      localPermissionManager.addPermissionTableItem(paramPermissionTableItem);
    }
  }

  public static void b(boolean paramBoolean)
  {
    PermissionManager localPermissionManager = (PermissionManager)ManagerCreator.getManager(PermissionManager.class);
    a = paramBoolean;
    ho localho = ho.a();
    if (b)
      localho.H(0);
    if (a)
      localho.I(0);
    if (!b)
      localPermissionManager.setEnable(paramBoolean);
    while (true)
    {
      return;
      h();
    }
  }

  public static boolean b()
  {
    if ((((PermissionManager)ManagerCreator.getManager(PermissionManager.class)).isEnable()) && (a));
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  private static void c(boolean paramBoolean)
  {
    try
    {
      e = paramBoolean;
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  private static boolean g()
  {
    try
    {
      boolean bool = e;
      return bool;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  private static void h()
  {
    PermissionManager localPermissionManager = (PermissionManager)ManagerCreator.getManager(PermissionManager.class);
    if (!localPermissionManager.isFinishInit());
    while (true)
    {
      return;
      List localList = new jf().a(b, a);
      if (localList != null)
      {
        int i = localList.size();
        for (int j = 0; j < i; j++)
        {
          PermissionTableItem localPermissionTableItem = (PermissionTableItem)localList.get(j);
          if (localPermissionTableItem != null)
            localPermissionManager.updatePermissionTable(localPermissionTableItem);
        }
      }
    }
  }

  public static abstract interface a
  {
    public abstract void a(int paramInt);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     xi
 * JD-Core Version:    0.6.2
 */