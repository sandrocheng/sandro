import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.os.IBinder;
import com.tencent.tmsecure.common.BaseManager;
import com.tencent.tmsecure.common.BaseService;
import com.tencent.tmsecure.common.TMSService;
import com.tencent.tmsecure.module.tools.IPackageChangedListener;
import java.util.LinkedList;

public final class byr extends BaseManager
{
  private LinkedList<byr.b> a = new LinkedList();
  private Context b;
  private BaseService c;

  public final IPackageChangedListener a(IPackageChangedListener paramIPackageChangedListener)
  {
    LinkedList localLinkedList = this.a;
    if (paramIPackageChangedListener != null);
    try
    {
      for (byr.b localb = new byr.b(paramIPackageChangedListener); (localb != null) && (!this.a.contains(localb)); localb = null)
      {
        this.a.add(localb);
        return paramIPackageChangedListener;
      }
      paramIPackageChangedListener = null;
    }
    finally
    {
    }
  }

  public final IPackageChangedListener a(IPackageChangedListener paramIPackageChangedListener, int paramInt)
  {
    LinkedList localLinkedList = this.a;
    if (paramIPackageChangedListener != null);
    try
    {
      for (byr.b localb = new byr.b(paramIPackageChangedListener); (localb != null) && (!this.a.contains(localb)); localb = null)
      {
        this.a.add(paramInt, localb);
        return paramIPackageChangedListener;
      }
      paramIPackageChangedListener = null;
    }
    finally
    {
    }
  }

  public final IPackageChangedListener b(IPackageChangedListener paramIPackageChangedListener)
  {
    byr.b localb = new byr.b(paramIPackageChangedListener);
    synchronized (this.a)
    {
      if (this.a.contains(localb))
      {
        this.a.remove(localb);
        return paramIPackageChangedListener;
      }
      paramIPackageChangedListener = null;
    }
  }

  public final int getSingletonType()
  {
    return 1;
  }

  public final void onCreate(Context paramContext)
  {
    this.b = paramContext;
    this.c = new byr.c((byte)0);
    TMSService.startService(this.c, null);
  }

  static abstract interface a
  {
    public abstract void a(String paramString);
  }

  static final class b
    implements IPackageChangedListener
  {
    private IPackageChangedListener a;

    public b(IPackageChangedListener paramIPackageChangedListener)
    {
      this.a = paramIPackageChangedListener;
    }

    public final boolean equals(Object paramObject)
    {
      b localb;
      if ((paramObject != null) && ((paramObject instanceof b)))
        localb = (b)paramObject;
      for (boolean bool = this.a.getClass().equals(localb.a.getClass()); ; bool = false)
        return bool;
    }

    public final void onPackageAdded(String paramString)
    {
      new bys(this, paramString).start();
    }

    public final void onPackageReinstall(String paramString)
    {
      new byu(this, paramString).start();
    }

    public final void onPackageRemoved(String paramString)
    {
      new byt(this, paramString).start();
    }
  }

  final class c extends BaseService
  {
    private byr.d a;

    private c()
    {
    }

    public final IBinder onBind()
    {
      return null;
    }

    public final void onCreate(Context paramContext)
    {
      super.onCreate(paramContext);
      this.a = new byr.d(byr.this, (byte)0);
      this.a.a();
    }

    public final void onDestory()
    {
      this.a.b();
      super.onDestory();
    }
  }

  final class d extends BroadcastReceiver
  {
    private byr.a a = new byv(this);
    private byr.a b = new byw(this);
    private byr.a c = new byx(this);

    private d()
    {
    }

    public final void a()
    {
      IntentFilter localIntentFilter = new IntentFilter();
      localIntentFilter.addAction("android.intent.action.PACKAGE_REPLACED");
      localIntentFilter.addAction("android.intent.action.PACKAGE_ADDED");
      localIntentFilter.addAction("android.intent.action.PACKAGE_REMOVED");
      localIntentFilter.setPriority(2147483647);
      localIntentFilter.addDataScheme("package");
      byr.b(byr.this).registerReceiver(this, localIntentFilter);
    }

    public final void b()
    {
      byr.b(byr.this).unregisterReceiver(this);
    }

    public final void onReceive(Context paramContext, Intent paramIntent)
    {
      String str1 = paramIntent.getAction();
      Bundle localBundle = paramIntent.getExtras();
      int i = -1;
      if ((localBundle != null) && (localBundle.containsKey("android.intent.extra.REPLACING")))
      {
        if (localBundle.getBoolean("android.intent.extra.REPLACING"))
          i = 0;
      }
      else
      {
        if ((!str1.equals("android.intent.action.PACKAGE_ADDED")) || (i == 0))
          break label91;
        String str4 = paramIntent.getDataString().substring(8);
        new byy(this, this.a, str4).start();
      }
      while (true)
      {
        return;
        i = 1;
        break;
        label91: if ((str1.equals("android.intent.action.PACKAGE_REMOVED")) && (i != 0))
        {
          String str3 = paramIntent.getDataString().substring(8);
          new byy(this, this.b, str3).start();
        }
        else if (str1.equals("android.intent.action.PACKAGE_REPLACED"))
        {
          String str2 = paramIntent.getDataString().substring(8);
          new byy(this, this.c, str2).start();
        }
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     byr
 * JD-Core Version:    0.6.2
 */