import android.os.RemoteException;
import com.android.internal.telephony.ISms;
import com.android.internal.telephony.ITelephony;

public final class ao
{
  private static Object c = new Object();
  private static ao d = null;
  private an a;
  private ao.a b = ao.a.b;

  private ao()
  {
    String str1 = de.i();
    String str2 = de.j();
    if (str1 == null)
      str1 = "";
    String str3;
    if (str1.toLowerCase().equals("motorola"))
    {
      if (str2 != null)
        break label112;
      str3 = "";
      if (str3.toLowerCase().indexOf("xt800") != -1)
        this.b = ao.a.a;
    }
    switch (c()[this.b.ordinal()])
    {
    default:
    case 1:
    }
    for (this.a = new al(); ; this.a = new am())
    {
      b();
      return;
      label112: str3 = str2;
      break;
    }
  }

  public static ao a()
  {
    ao localao;
    if (d != null)
      localao = d;
    while (true)
    {
      return localao;
      synchronized (c)
      {
        if (d == null)
          d = new ao();
        localao = d;
      }
    }
  }

  private ao.b b(int paramInt)
  {
    ITelephony localITelephony;
    ao.b localb;
    if (this.a == null)
    {
      localITelephony = null;
      if (localITelephony != null)
        break label38;
      localb = ao.b.c;
    }
    while (true)
    {
      return localb;
      localITelephony = this.a.a(de.b, paramInt);
      break;
      try
      {
        label38: if (2 == localITelephony.getActivePhoneType())
          localb = ao.b.b;
        else if (1 == localITelephony.getActivePhoneType())
          localb = ao.b.a;
        else
          localb = ao.b.c;
      }
      catch (RemoteException localRemoteException)
      {
        localRemoteException.toString();
        localb = ao.b.c;
      }
    }
  }

  private void b()
  {
    int i;
    if (dc.a())
      i = 2;
    for (int j = 0; ; j++)
    {
      if (j >= i)
      {
        return;
        i = 1;
        break;
      }
      if ((!c(j)) || (b(j) == ao.b.b));
    }
  }

  private boolean c(int paramInt)
  {
    ITelephony localITelephony;
    boolean bool1;
    if (this.a == null)
    {
      localITelephony = null;
      bool1 = false;
      if (localITelephony != null)
        break label34;
    }
    while (true)
    {
      return bool1;
      localITelephony = this.a.a(de.b, paramInt);
      break;
      try
      {
        label34: boolean bool2 = localITelephony.isRadioOn();
        bool1 = bool2;
      }
      catch (RemoteException localRemoteException)
      {
        localRemoteException.toString();
        bool1 = false;
      }
    }
  }

  public final ISms a(int paramInt)
  {
    if (this.a == null);
    an localan;
    for (ISms localISms = null; ; localISms = localan.a(paramInt))
    {
      return localISms;
      localan = this.a;
    }
  }

  static enum a
  {
    static
    {
      a[] arrayOfa = new a[2];
      arrayOfa[0] = a;
      arrayOfa[1] = b;
    }
  }

  public static enum b
  {
    static
    {
      b[] arrayOfb = new b[3];
      arrayOfb[0] = a;
      arrayOfb[1] = b;
      arrayOfb[2] = c;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     ao
 * JD-Core Version:    0.6.2
 */