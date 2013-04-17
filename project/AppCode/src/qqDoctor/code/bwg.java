import android.bluetooth.BluetoothAdapter;
import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import android.net.ConnectivityManager;
import android.net.Uri;
import android.net.wifi.WifiManager;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import com.tencent.tmsecure.common.BaseManager;
import com.tencent.tmsecure.exception.OperationSecurityException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.List;

public final class bwg extends BaseManager
{
  public final Uri a = Uri.parse("content://telephony/carriers/preferapn");
  public Context b;
  public ContentResolver c;
  public TelephonyManager d;
  public WifiManager e;
  public BluetoothAdapter f;
  public ConnectivityManager g;
  private final Uri h = Uri.parse("content://telephony/carriers");
  private final Uri i = Uri.parse("content://telephony/carriers/current");
  private final String[] j = { "_id", "apn", "type" };

  public final List<bwg.a> a(String paramString)
    throws OperationSecurityException
  {
    String[] arrayOfString = { "_id", "apn", "type", "current" };
    ArrayList localArrayList1 = new ArrayList();
    ArrayList localArrayList2;
    try
    {
      Cursor localCursor = this.b.getContentResolver().query(this.h, arrayOfString, null, null, null);
      if (localCursor == null)
      {
        localArrayList2 = localArrayList1;
      }
      else
      {
        int k = localCursor.getColumnIndex("_id");
        int m = localCursor.getColumnIndex("type");
        int n = localCursor.getColumnIndex("current");
        int i1 = localCursor.getColumnIndex("apn");
        if (localCursor.moveToFirst());
        while (true)
        {
          boolean bool = localCursor.isAfterLast();
          if (bool)
          {
            if (localCursor != null)
              localCursor.close();
            localArrayList2 = localArrayList1;
            break;
          }
          bwg.a locala = new bwg.a();
          locala.a = localCursor.getString(k);
          locala.b = localCursor.getString(i1);
          locala.c = localCursor.getString(m);
          locala.d = localCursor.getString(n);
          if ((locala.d != null) && (locala.d.equals("1")) && (locala.b != null) && (locala.b.endsWith(paramString)) && (locala.c != null) && (!locala.c.toLowerCase().endsWith("mms")))
            localArrayList1.add(locala);
          localCursor.moveToNext();
        }
      }
    }
    catch (SecurityException localSecurityException)
    {
      localSecurityException.printStackTrace();
      throw new OperationSecurityException(localSecurityException);
    }
    return localArrayList2;
  }

  public final boolean a()
  {
    try
    {
      boolean bool2 = ((Boolean)this.g.getClass().getMethod("getMobileDataEnabled", new Class[0]).invoke(this.g, new Object[0])).booleanValue();
      bool1 = bool2;
      return bool1;
    }
    catch (SecurityException localSecurityException)
    {
      while (true)
      {
        localSecurityException.printStackTrace();
        boolean bool1 = false;
      }
    }
    catch (NoSuchMethodException localNoSuchMethodException)
    {
      while (true)
        localNoSuchMethodException.printStackTrace();
    }
    catch (IllegalAccessException localIllegalAccessException)
    {
      while (true)
        localIllegalAccessException.printStackTrace();
    }
    catch (InvocationTargetException localInvocationTargetException)
    {
      while (true)
        localInvocationTargetException.printStackTrace();
    }
  }

  public final boolean a(boolean paramBoolean)
  {
    boolean bool1 = true;
    if (this.d.getDataState() == 2);
    for (boolean bool2 = bool1; bool2 == paramBoolean; bool2 = false)
      return bool1;
    while (true)
    {
      Class localClass;
      try
      {
        Method localMethod1 = Class.forName(this.d.getClass().getName()).getDeclaredMethod("getITelephony", new Class[0]);
        localMethod1.setAccessible(true);
        Object localObject1 = localMethod1.invoke(this.d, new Object[0]);
        localClass = Class.forName(localObject1.getClass().getName());
        if (!paramBoolean)
          break label135;
        localObject2 = localClass.getDeclaredMethod("enableDataConnectivity", new Class[0]);
        ((Method)localObject2).setAccessible(true);
        ((Method)localObject2).invoke(localObject1, new Object[0]);
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
        bool1 = false;
      }
      break;
      label135: Method localMethod2 = localClass.getDeclaredMethod("disableDataConnectivity", new Class[0]);
      Object localObject2 = localMethod2;
    }
  }

  public final String b()
    throws OperationSecurityException
  {
    while (true)
    {
      try
      {
        Cursor localCursor = this.c.query(this.a, null, null, null, null);
        if ((localCursor != null) && (localCursor.moveToFirst()))
        {
          int k = localCursor.getColumnIndex("apn");
          if (k != -1)
          {
            String str2 = localCursor.getString(k);
            if (!TextUtils.isEmpty(str2))
            {
              String str3 = bwe.a(str2);
              str1 = str3;
              if (localCursor != null)
                localCursor.close();
              return str1;
            }
          }
        }
      }
      catch (SecurityException localSecurityException)
      {
        localSecurityException.printStackTrace();
        throw new OperationSecurityException(localSecurityException);
      }
      String str1 = null;
    }
  }

  public final boolean b(boolean paramBoolean)
  {
    boolean bool = true;
    try
    {
      Class localClass = this.g.getClass();
      Class[] arrayOfClass = new Class[1];
      arrayOfClass[0] = Boolean.TYPE;
      Method localMethod = localClass.getMethod("setMobileDataEnabled", arrayOfClass);
      ConnectivityManager localConnectivityManager = this.g;
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = new Boolean(paramBoolean);
      localMethod.invoke(localConnectivityManager, arrayOfObject);
      return bool;
    }
    catch (SecurityException localSecurityException)
    {
      while (true)
      {
        localSecurityException.printStackTrace();
        bool = false;
      }
    }
    catch (NoSuchMethodException localNoSuchMethodException)
    {
      while (true)
        localNoSuchMethodException.printStackTrace();
    }
    catch (IllegalAccessException localIllegalAccessException)
    {
      while (true)
        localIllegalAccessException.printStackTrace();
    }
    catch (InvocationTargetException localInvocationTargetException)
    {
      while (true)
        localInvocationTargetException.printStackTrace();
    }
  }

  public final boolean c()
    throws OperationSecurityException
  {
    while (true)
    {
      Cursor localCursor;
      int m;
      label60: String str;
      try
      {
        localCursor = this.c.query(this.i, this.j, null, null, null);
        if ((localCursor == null) || (!localCursor.moveToFirst()))
          break label161;
        int k = localCursor.getColumnIndex("type");
        m = 0;
        boolean bool2 = localCursor.isAfterLast();
        if (bool2)
        {
          bool1 = false;
          if (localCursor != null)
            localCursor.close();
          return bool1;
        }
        str = localCursor.getString(k);
        if (str == null)
        {
          localCursor.moveToNext();
          continue;
        }
      }
      catch (SecurityException localSecurityException)
      {
        localSecurityException.printStackTrace();
        throw new OperationSecurityException(localSecurityException);
      }
      int n;
      if ((str != null) && (str.endsWith("_suffix_apn")))
      {
        n = 1;
        break label166;
        label132: if (str.toLowerCase().endsWith("mms"))
          break label182;
        m++;
      }
      label161: label166: label180: label182: 
      while (m <= 0)
      {
        localCursor.moveToNext();
        break;
        bool1 = false;
        break label60;
        while (true)
        {
          if (n == 0)
            break label180;
          bool1 = false;
          break;
          n = 0;
        }
        break label132;
      }
      boolean bool1 = true;
    }
  }

  public final int getSingletonType()
  {
    return 0;
  }

  public final void onCreate(Context paramContext)
  {
    this.b = paramContext;
    this.c = this.b.getContentResolver();
    this.d = ((TelephonyManager)this.b.getSystemService("phone"));
    this.e = ((WifiManager)this.b.getSystemService("wifi"));
    this.f = BluetoothAdapter.getDefaultAdapter();
    this.g = ((ConnectivityManager)this.b.getSystemService("connectivity"));
  }

  public static final class a
  {
    public String a;
    public String b;
    public String c;
    public String d;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bwg
 * JD-Core Version:    0.6.2
 */