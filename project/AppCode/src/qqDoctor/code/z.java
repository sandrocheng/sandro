import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import android.net.Uri;
import android.os.IBinder;
import android.telephony.TelephonyManager;
import com.android.internal.telephony.ISms;
import com.android.internal.telephony.ISms.Stub;
import com.android.internal.telephony.ITelephony;
import com.android.internal.telephony.ITelephony.Stub;
import com.tencent.qqpimsecure.service.QQPimApplication;
import com.tencent.tmsecure.common.TMSApplication;
import java.lang.reflect.Constructor;
import java.lang.reflect.Method;

public class z extends q
{
  private static final int c(int paramInt)
  {
    Uri localUri = Uri.parse("content://telephony/siminfo");
    ContentResolver localContentResolver = QQPimApplication.a().getContentResolver();
    try
    {
      String[] arrayOfString1 = { "_id", "slot" };
      String[] arrayOfString2 = new String[1];
      arrayOfString2[0] = String.valueOf(paramInt);
      Cursor localCursor2 = localContentResolver.query(localUri, arrayOfString1, "slot = ?", arrayOfString2, null);
      localCursor1 = localCursor2;
      if (localCursor1 == null);
    }
    finally
    {
      try
      {
        int i;
        if (localCursor1.moveToFirst())
        {
          int j = localCursor1.getInt(0);
          i = j;
          if (localCursor1 != null)
            localCursor1.close();
        }
        while (true)
        {
          return i;
          if (localCursor1 != null)
            localCursor1.close();
          i = -1;
        }
        localObject1 = finally;
        Cursor localCursor1 = null;
        if (localCursor1 != null)
          localCursor1.close();
        throw localObject1;
      }
      finally
      {
      }
    }
  }

  public final ITelephony a(Context paramContext)
  {
    return ITelephony.Stub.asInterface(aak.a("phone"));
  }

  public final String a(int paramInt)
  {
    return String.valueOf(c(paramInt));
  }

  public final String a(Intent paramIntent)
  {
    String str;
    if (paramIntent != null)
      if (paramIntent.getIntExtra("simId", -1) == 0)
        str = "0";
    while (true)
    {
      return str;
      str = "1";
      continue;
      str = null;
    }
  }

  protected final void a()
  {
    this.a = "simid";
    this.b = "sim_id";
  }

  public final String b(int paramInt)
  {
    if (paramInt == 0)
      if (((TelephonyManager)TMSApplication.getApplicaionContext().getSystemService("phone")).getDataState() == 2)
        break label175;
    label175: for (String str = ""; ; str = "enableMMS")
      while (true)
      {
        return str;
        if (paramInt == 1)
          try
          {
            Class localClass = Class.forName("android.telephony.TelephonyManager");
            if (localClass != null)
            {
              Constructor localConstructor = localClass.getConstructor(new Class[] { Context.class });
              Object[] arrayOfObject1 = new Object[1];
              arrayOfObject1[0] = TMSApplication.getApplicaionContext();
              Object localObject = localConstructor.newInstance(arrayOfObject1);
              Class[] arrayOfClass = new Class[1];
              arrayOfClass[0] = Integer.TYPE;
              Method localMethod = localClass.getDeclaredMethod("getDataStateGemini", arrayOfClass);
              if (localMethod != null)
              {
                localMethod.setAccessible(true);
                Object[] arrayOfObject2 = new Object[1];
                arrayOfObject2[0] = Integer.valueOf(paramInt);
                int j = ((Integer)localMethod.invoke(localObject, arrayOfObject2)).intValue();
                i = j;
                if (i == 2)
                  break label175;
                str = "";
              }
            }
          }
          catch (Exception localException)
          {
            while (true)
            {
              localException.printStackTrace();
              int i = -1;
            }
          }
      }
  }

  public final v[] d()
  {
    v[] arrayOfv = new v[3];
    arrayOfv[0] = new v(new ab(), 0);
    arrayOfv[1] = new v(this);
    arrayOfv[2] = new v(new aa());
    return arrayOfv;
  }

  public final ISms g()
  {
    try
    {
      ISms localISms2 = ISms.Stub.asInterface((IBinder)Class.forName("android.os.ServiceManager").getMethod("getService", new Class[] { String.class }).invoke(null, new Object[] { "isms2" }));
      localISms1 = localISms2;
      return localISms1;
    }
    catch (Throwable localThrowable)
    {
      while (true)
      {
        localThrowable.printStackTrace();
        ISms localISms1 = null;
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     z
 * JD-Core Version:    0.6.2
 */