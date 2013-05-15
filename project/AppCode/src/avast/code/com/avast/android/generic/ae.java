package com.avast.android.generic;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.SharedPreferences.OnSharedPreferenceChangeListener;
import android.text.TextUtils;
import com.avast.android.generic.util.e;
import com.avast.android.generic.util.m;
import com.avast.android.generic.util.t;
import java.io.IOException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.UUID;

public abstract class ae
{
  public static final Object a = new Object();
  public static String b = b(a("0000".getBytes()));
  private Context c;
  private SharedPreferences d;
  private SharedPreferences e;
  private SharedPreferences.Editor f = null;
  private Object g = new Object();
  private HashMap h = null;
  private Set i = null;

  public ae(Context paramContext)
  {
    this(paramContext, af.a);
  }

  public ae(Context paramContext, af paramaf)
  {
    this.c = paramContext;
    if (paramaf == af.a)
      this.d = paramContext.getSharedPreferences("prefs", 0);
    for (this.e = paramContext.getSharedPreferences("prefs_sync", 0); ; this.e = paramContext.getSharedPreferences("temporary_sync", 0))
    {
      return;
      this.d = paramContext.getSharedPreferences("temporary", 0);
    }
  }

  private void S()
  {
    synchronized (this.g)
    {
      if (this.f == null)
      {
        this.f = this.d.edit();
        this.h = new HashMap();
        this.i = new HashSet();
      }
      return;
    }
  }

  private String T()
  {
    String str = UUID.randomUUID().toString();
    a("guid", str);
    a("guid", str);
    b();
    return str;
  }

  public static void a(Context paramContext)
  {
    ae localae1 = (ae)ad.a(paramContext, ah.class);
    ae localae2 = (ae)ad.a(paramContext, ag.class);
    if ((localae1 != null) && (localae2 != null))
    {
      HashMap localHashMap = new HashMap();
      localae1.a(localae2, localae1, localHashMap, af.b);
      localae2.a(localae2, localae1, localHashMap, af.a);
      localHashMap.put("c2dmowner", localae1.G());
      localHashMap.put("c2dmri", localae1.F());
      localHashMap.put("restorechecked", Boolean.valueOf(true));
      localHashMap.put("encaccesscode", localae2.f());
      localHashMap.put("paswordProtection", Boolean.valueOf(localae2.o()));
      localHashMap.put("guid", localae2.r());
      localHashMap.put("language", localae2.q());
      localHashMap.put("splitcdma", Boolean.valueOf(localae2.L()));
      localHashMap.put("accountEmail", localae2.w());
      localHashMap.put("auid", localae2.x());
      localHashMap.put("accountEncKey", localae2.y());
      localHashMap.put("accountCommPassword", localae2.z());
      localHashMap.put("accountReport", Boolean.valueOf(localae2.A()));
      localHashMap.put("accountReportFrequency", Integer.valueOf(localae2.B()));
      localHashMap.put("accountLuid", localae2.H());
      localHashMap.put("accountSmsGateway", localae2.I());
      if (localae2.D())
        localHashMap.put("accountSmsSending", Boolean.valueOf(localae2.C()));
      a(paramContext, localHashMap, false);
    }
  }

  @SuppressLint({"UseValueOf"})
  private static void a(Context paramContext, HashMap paramHashMap, boolean paramBoolean)
  {
    if ((paramHashMap == null) || (paramHashMap.isEmpty()));
    while (true)
    {
      return;
      Intent localIntent = new Intent();
      localIntent.setAction("com.avast.android.generic.action.PROPERTY_CHANGED");
      t.a(paramContext, "ALL", "KEY CHANGE START");
      Iterator localIterator = paramHashMap.keySet().iterator();
      while (localIterator.hasNext())
      {
        String str = (String)localIterator.next();
        if (f.a(str))
        {
          Object localObject = paramHashMap.get(str);
          t.a(paramContext, "ALL", str + " -> " + localObject);
          if (localObject != null)
          {
            if ((localObject instanceof String))
              localIntent.putExtra(str, (String)localObject);
            else if ((localObject instanceof Boolean))
              localIntent.putExtra(str, new Boolean(((Boolean)localObject).booleanValue()));
            else if ((localObject instanceof Integer))
              localIntent.putExtra(str, new Integer(((Integer)localObject).intValue()));
            else if ((localObject instanceof Long))
              localIntent.putExtra(str, new Long(((Long)localObject).longValue()));
            else if ((localObject instanceof byte[]))
              localIntent.putExtra(str, (byte[])localObject);
          }
          else
            localIntent.putExtra(str, "-NULL-");
        }
      }
      t.a(paramContext, "ALL", "KEY CHANGE END");
      localIntent.putExtra("sourcePackage", paramContext.getPackageName());
      localIntent.putExtra("com.avast.android.generic.action.SHARE_SETTINGS", paramBoolean);
      com.avast.android.generic.util.ae.a(localIntent);
      paramContext.sendBroadcast(localIntent, "com.avast.android.generic.COMM_PERMISSION");
    }
  }

  public static void a(Context paramContext, boolean paramBoolean)
  {
    ae localae1 = (ae)ad.a(paramContext, ah.class);
    ae localae2 = (ae)ad.a(paramContext, ag.class);
    if ((localae1 != null) && (localae2 != null))
    {
      HashMap localHashMap = new HashMap();
      localae1.a(localae2, localae1, localHashMap, af.b);
      localae2.a(localae2, localae1, localHashMap, af.a);
      localHashMap.put("c2dmowner", localae1.G());
      localHashMap.put("c2dmri", localae1.F());
      localHashMap.put("id", Long.valueOf(localae2.K()));
      localHashMap.put("restorechecked", Boolean.valueOf(true));
      localHashMap.put("encaccesscode", localae2.f());
      localHashMap.put("enctempaccesscode", localae2.g());
      localHashMap.put("tempaccesscodeissuetime", Long.valueOf(localae2.h()));
      localHashMap.put("tempaccesscodelastknowntime", Long.valueOf(localae2.j()));
      localHashMap.put("tempaccesscodetimeouttime", Long.valueOf(localae2.i()));
      localHashMap.put("tempaccesscoderecoverynumber", localae2.k());
      localHashMap.put("tempaccesscodereceivertickauthtoken", localae2.l());
      localHashMap.put("tempaccesscodereceiversmsauthtoken", localae2.m());
      localHashMap.put("paswordProtection", Boolean.valueOf(localae2.o()));
      localHashMap.put("communityIQEnabled", Boolean.valueOf(localae2.p()));
      localHashMap.put("guid", localae2.r());
      localHashMap.put("language", localae2.q());
      localHashMap.put("splitcdma", Boolean.valueOf(localae2.L()));
      localHashMap.put("accountEmail", localae2.w());
      localHashMap.put("auid", localae2.x());
      localHashMap.put("accountEncKey", localae2.y());
      localHashMap.put("accountCommPassword", localae2.z());
      localHashMap.put("accountReport", Boolean.valueOf(localae2.A()));
      localHashMap.put("accountReportFrequency", Integer.valueOf(localae2.B()));
      localHashMap.put("accountLuid", localae2.H());
      localHashMap.put("accountSmsGateway", localae2.I());
      localHashMap.put("not1", localae2.M());
      localHashMap.put("not2", localae2.N());
      if (localae2.D())
        localHashMap.put("accountSmsSending", Boolean.valueOf(localae2.C()));
      a(paramContext, localHashMap, paramBoolean);
    }
  }

  private void a(String paramString, Object paramObject)
  {
    if (this.h != null)
      this.h.put(paramString, paramObject);
  }

  private void a(Set paramSet)
  {
    if ((paramSet == null) || (paramSet.isEmpty()))
      return;
    while (true)
    {
      SharedPreferences.Editor localEditor;
      synchronized (this.g)
      {
        try
        {
          long l = System.currentTimeMillis() - 1L;
          localEditor = this.e.edit();
          Iterator localIterator = paramSet.iterator();
          if (localIterator.hasNext())
          {
            String str = (String)localIterator.next();
            t.a("AvastGenericSync", "Storing change time for key " + str + " at " + l);
            localEditor.putLong(str, l);
            continue;
          }
        }
        catch (Exception localException)
        {
          t.a("AvastGenericSync", "Can not store change times", localException);
        }
      }
      localEditor.commit();
    }
  }

  private void a(Set paramSet, long paramLong)
  {
    if ((paramSet == null) || (paramSet.isEmpty()))
      return;
    while (true)
    {
      SharedPreferences.Editor localEditor;
      synchronized (this.g)
      {
        try
        {
          localEditor = this.e.edit();
          Iterator localIterator = paramSet.iterator();
          if (localIterator.hasNext())
          {
            String str = (String)localIterator.next();
            t.a("AvastGenericSync", "Storing change time for key " + str + " at " + paramLong);
            localEditor.putLong(str, paramLong);
            continue;
          }
        }
        catch (Exception localException)
        {
          t.a("AvastGenericSync", "Can not store change times", localException);
        }
      }
      localEditor.commit();
    }
  }

  public static byte[] a(byte[] paramArrayOfByte)
  {
    try
    {
      MessageDigest localMessageDigest = MessageDigest.getInstance("SHA-1");
      new byte[40];
      localMessageDigest.update(paramArrayOfByte, 0, paramArrayOfByte.length);
      byte[] arrayOfByte = localMessageDigest.digest();
      paramArrayOfByte = arrayOfByte;
      label29: return paramArrayOfByte;
    }
    catch (NoSuchAlgorithmException localNoSuchAlgorithmException)
    {
      break label29;
    }
  }

  public static String b(byte[] paramArrayOfByte)
  {
    StringBuffer localStringBuffer = new StringBuffer();
    int j = paramArrayOfByte.length;
    int k = 0;
    if (k < j)
    {
      int m = 0xF & paramArrayOfByte[k] >>> 4;
      if ((m >= 0) && (m <= 9))
        localStringBuffer.append((char)(m + 48));
      while (true)
      {
        (0xF & paramArrayOfByte[k]);
        k++;
        break;
        localStringBuffer.append((char)(97 + (m - 10)));
      }
    }
    return localStringBuffer.toString();
  }

  private void l(String paramString)
  {
    synchronized (this.g)
    {
      if ((this.i != null) && (paramString != null))
        this.i.add(paramString);
      return;
    }
  }

  public boolean A()
  {
    try
    {
      boolean bool = b("accountReport", true);
      return bool;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public int B()
  {
    try
    {
      int j = b("accountReportFrequency", 60);
      return j;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public boolean C()
  {
    try
    {
      boolean bool = b("accountSmsSending", true);
      return bool;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public boolean D()
  {
    try
    {
      if (d() != null)
      {
        boolean bool2 = d().containsKey("accountSmsSending");
        if (bool2)
        {
          bool1 = true;
          return bool1;
        }
      }
      boolean bool1 = false;
    }
    finally
    {
    }
  }

  public void E()
  {
    a("c2dmri");
    a("c2dmowner");
    a("c2dmri", "-DEL-");
    a("c2dmowner", "-DEL-");
  }

  public String F()
  {
    return b("c2dmri", null);
  }

  public String G()
  {
    return b("c2dmowner", null);
  }

  public String H()
  {
    return b("accountLuid", null);
  }

  public String I()
  {
    return b("accountSmsGateway", null);
  }

  public void J()
  {
    a("accountSmsGateway");
    a("accountSmsGateway", "-DEL-");
  }

  public long K()
  {
    return b("id", 0L);
  }

  public boolean L()
  {
    return b("splitcdma", false);
  }

  public String M()
  {
    return b("not1", "");
  }

  public String N()
  {
    return b("not2", "");
  }

  public Context O()
  {
    return this.c;
  }

  public void P()
  {
    synchronized (this.g)
    {
      try
      {
        t.a("AvastGenericSync", "Removing sync data");
        SharedPreferences.Editor localEditor = this.e.edit();
        localEditor.clear();
        localEditor.commit();
        return;
      }
      catch (Exception localException)
      {
        while (true)
          t.a("AvastGenericSync", "Can not remove sync data", localException);
      }
    }
  }

  public boolean Q()
  {
    return b("gSettingsNotificationAlwaysOn", true);
  }

  public int R()
  {
    return b("gSettingsNotificationType", 1);
  }

  public void a()
  {
    try
    {
      S();
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public void a(int paramInt)
  {
    try
    {
      a("accountReportFrequency", paramInt);
      a("accountReportFrequency", Integer.valueOf(paramInt));
      b();
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public void a(Context paramContext, String paramString)
  {
    a("c2dmowner", paramContext.getPackageName());
    a("c2dmri", paramString);
    a("c2dmri", paramString);
    a("c2dmowner", paramContext.getPackageName());
  }

  public void a(Context paramContext, String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6)
  {
    try
    {
      a("accountEmail", paramString1);
      a("accountEmail", paramString1);
      a("auid", paramString2);
      a("auid", paramString2);
      a("accountEncKey", paramString3);
      a("accountEncKey", paramString3);
      a("accountCommPassword", paramString4);
      a("accountCommPassword", paramString4);
      if (!TextUtils.isEmpty(paramString5))
      {
        a("accountSmsGateway", paramString5);
        a("accountSmsGateway", paramString5);
      }
      while (true)
      {
        ae localae = (ae)ad.a(paramContext, ah.class);
        localae.a(paramContext, paramString6);
        localae.b();
        b();
        return;
        a("accountSmsGateway");
        a("accountSmsGateway", "-DEL-");
      }
    }
    finally
    {
    }
  }

  public void a(SharedPreferences.OnSharedPreferenceChangeListener paramOnSharedPreferenceChangeListener)
  {
    this.d.registerOnSharedPreferenceChangeListener(paramOnSharedPreferenceChangeListener);
  }

  public abstract void a(ae paramae1, ae paramae2, HashMap paramHashMap, af paramaf);

  public void a(String paramString)
  {
    try
    {
      synchronized (this.g)
      {
        S();
        this.f.remove(paramString);
        l(paramString);
        return;
      }
    }
    finally
    {
    }
  }

  public void a(String paramString, int paramInt)
  {
    if (paramString != null);
    try
    {
      if (TextUtils.isEmpty(paramString))
        throw new IllegalArgumentException("Key must be not null and non empty!");
    }
    finally
    {
    }
    synchronized (this.g)
    {
      S();
      this.f.putInt(paramString, paramInt);
      l(paramString);
      return;
    }
  }

  public void a(String paramString, long paramLong)
  {
    if (paramString != null);
    try
    {
      if (TextUtils.isEmpty(paramString))
        throw new IllegalArgumentException("Key must be not null and non empty!");
    }
    finally
    {
    }
    synchronized (this.g)
    {
      S();
      this.f.putLong(paramString, paramLong);
      l(paramString);
      return;
    }
  }

  public void a(String paramString1, String paramString2)
  {
    if (paramString1 != null);
    try
    {
      if (TextUtils.isEmpty(paramString1))
        throw new IllegalArgumentException("Key must be not null and non empty!");
    }
    finally
    {
    }
    synchronized (this.g)
    {
      S();
      this.f.putString(paramString1, paramString2);
      l(paramString1);
      return;
    }
  }

  public void a(String paramString, boolean paramBoolean)
  {
    if (paramString != null);
    try
    {
      if (TextUtils.isEmpty(paramString))
        throw new IllegalArgumentException("Key must be not null and non empty!");
    }
    finally
    {
    }
    synchronized (this.g)
    {
      S();
      this.f.putBoolean(paramString, paramBoolean);
      l(paramString);
      return;
    }
  }

  public void a(String paramString, byte[] paramArrayOfByte)
  {
    if (paramString != null);
    try
    {
      if (TextUtils.isEmpty(paramString))
        throw new IllegalArgumentException("Key must be not null and non empty!");
    }
    finally
    {
    }
    synchronized (this.g)
    {
      S();
      this.f.putString(paramString, e.a(paramArrayOfByte));
      l(paramString);
      return;
    }
  }

  public void a(boolean paramBoolean)
  {
    try
    {
      a("logcatavailable", paramBoolean);
      a("logcatavailable", Boolean.valueOf(paramBoolean));
      b();
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public boolean a(long paramLong)
  {
    boolean bool = true;
    try
    {
      synchronized (this.g)
      {
        try
        {
          if (this.f != null)
          {
            bool = this.f.commit();
            a(this.c, this.h, false);
            a(this.i, paramLong);
            this.f = null;
            this.h = null;
            this.i = null;
          }
          return bool;
        }
        catch (Exception localException)
        {
          while (true)
          {
            t.a("AvastGeneric", "Error in committing preference store", localException);
            bool = false;
          }
        }
      }
    }
    finally
    {
    }
  }

  // ERROR //
  public int b(String paramString, int paramInt)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 72	com/avast/android/generic/ae:d	Landroid/content/SharedPreferences;
    //   6: aload_1
    //   7: iload_2
    //   8: invokeinterface 581 3 0
    //   13: istore 5
    //   15: iload 5
    //   17: istore_2
    //   18: aload_0
    //   19: monitorexit
    //   20: iload_2
    //   21: ireturn
    //   22: astore 4
    //   24: aload_0
    //   25: monitorexit
    //   26: aload 4
    //   28: athrow
    //   29: astore_3
    //   30: goto -12 -> 18
    //
    // Exception table:
    //   from	to	target	type
    //   2	15	22	finally
    //   2	15	29	java/lang/ClassCastException
  }

  // ERROR //
  public long b(String paramString, long paramLong)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 72	com/avast/android/generic/ae:d	Landroid/content/SharedPreferences;
    //   6: aload_1
    //   7: lload_2
    //   8: invokeinterface 584 4 0
    //   13: lstore 6
    //   15: lload 6
    //   17: lstore_2
    //   18: aload_0
    //   19: monitorexit
    //   20: lload_2
    //   21: lreturn
    //   22: astore 5
    //   24: aload_0
    //   25: monitorexit
    //   26: aload 5
    //   28: athrow
    //   29: astore 4
    //   31: goto -13 -> 18
    //
    // Exception table:
    //   from	to	target	type
    //   2	15	22	finally
    //   2	15	29	java/lang/ClassCastException
  }

  // ERROR //
  public String b(String paramString1, String paramString2)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 72	com/avast/android/generic/ae:d	Landroid/content/SharedPreferences;
    //   6: aload_1
    //   7: aload_2
    //   8: invokeinterface 587 3 0
    //   13: astore 5
    //   15: aload 5
    //   17: astore_2
    //   18: aload_0
    //   19: monitorexit
    //   20: aload_2
    //   21: areturn
    //   22: astore 4
    //   24: aload_0
    //   25: monitorexit
    //   26: aload 4
    //   28: athrow
    //   29: astore_3
    //   30: goto -12 -> 18
    //
    // Exception table:
    //   from	to	target	type
    //   2	15	22	finally
    //   2	15	29	java/lang/ClassCastException
  }

  public void b(long paramLong)
  {
    try
    {
      a("tempaccesscodeissuetime", paramLong);
      a("tempaccesscodeissuetime", Long.valueOf(paramLong));
      b();
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public void b(SharedPreferences.OnSharedPreferenceChangeListener paramOnSharedPreferenceChangeListener)
  {
    this.d.unregisterOnSharedPreferenceChangeListener(paramOnSharedPreferenceChangeListener);
  }

  public void b(boolean paramBoolean)
  {
    try
    {
      a("paswordProtection", paramBoolean);
      a("paswordProtection", Boolean.valueOf(paramBoolean));
      b();
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public boolean b()
  {
    boolean bool = true;
    try
    {
      synchronized (this.g)
      {
        try
        {
          if (this.f != null)
          {
            bool = this.f.commit();
            a(this.c, this.h, false);
            a(this.i);
            this.f = null;
            this.h = null;
            this.i = null;
          }
          return bool;
        }
        catch (Exception localException)
        {
          while (true)
          {
            t.a("AvastGeneric", "Error in committing preference store", localException);
            bool = false;
          }
        }
      }
    }
    finally
    {
    }
  }

  public boolean b(String paramString)
  {
    if (paramString == null)
      paramString = "";
    String str = b(a(paramString.getBytes()));
    return f().equals(str);
  }

  // ERROR //
  public boolean b(String paramString, boolean paramBoolean)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 72	com/avast/android/generic/ae:d	Landroid/content/SharedPreferences;
    //   6: aload_1
    //   7: iload_2
    //   8: invokeinterface 600 3 0
    //   13: istore 5
    //   15: iload 5
    //   17: istore_2
    //   18: aload_0
    //   19: monitorexit
    //   20: iload_2
    //   21: ireturn
    //   22: astore 4
    //   24: aload_0
    //   25: monitorexit
    //   26: aload 4
    //   28: athrow
    //   29: astore_3
    //   30: goto -12 -> 18
    //
    // Exception table:
    //   from	to	target	type
    //   2	15	22	finally
    //   2	15	29	java/lang/ClassCastException
  }

  public SharedPreferences c()
  {
    return this.d;
  }

  public void c(long paramLong)
  {
    try
    {
      a("tempaccesscodetimeouttime", paramLong);
      a("tempaccesscodetimeouttime", Long.valueOf(paramLong));
      b();
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public void c(boolean paramBoolean)
  {
    a("communityIQEnabled", paramBoolean);
    a("communityIQEnabled", Boolean.valueOf(paramBoolean));
    b();
  }

  public boolean c(String paramString)
  {
    if (paramString == null)
      paramString = "";
    String str = b(a(paramString.getBytes()));
    return g().equals(str);
  }

  public boolean c(String paramString, long paramLong)
  {
    boolean bool1 = true;
    boolean bool2 = false;
    while (true)
    {
      synchronized (this.g)
      {
        if (TextUtils.isEmpty(paramString))
          return bool2;
      }
      try
      {
        t.a("AvastGenericSync", "Checking for sync for " + paramString + " at time " + paramLong);
        long l1 = this.e.getLong("lastSync", -1L);
        if (l1 == -1L)
        {
          t.a("AvastGenericSync", "Sync necessary for " + paramString + " (no sync done yet)");
          bool2 = bool1;
        }
        else
        {
          long l2 = this.e.getLong(paramString, -1L);
          if (l2 == -1L)
          {
            t.a("AvastGenericSync", "No sync necessary for " + paramString + " (no change done yet)");
            bool2 = false;
            continue;
            localObject2 = finally;
            throw localObject2;
          }
          else if ((l1 > paramLong) || (l2 > paramLong))
          {
            SharedPreferences.Editor localEditor = this.e.edit();
            localEditor.putLong(paramString, paramLong);
            localEditor.commit();
            t.a("AvastGenericSync", "Sync necessary for " + paramString + " (time has been changed to the past)");
            bool2 = bool1;
          }
          else
          {
            if (l1 < l2)
            {
              label298: if (!bool1)
                break label373;
              t.a("AvastGenericSync", "Sync necessary for " + paramString + " (" + l1 + " < " + l2 + ")");
            }
            while (true)
            {
              bool2 = bool1;
              break;
              bool1 = false;
              break label298;
              label373: t.a("AvastGenericSync", "No sync necessary for " + paramString + " (" + l1 + " >= " + l2 + ")");
            }
          }
        }
      }
      catch (Exception localException)
      {
        t.a("AvastGenericSync", "Can not store change time for key " + paramString, localException);
        bool2 = false;
      }
    }
  }

  public Map d()
  {
    try
    {
      Map localMap = this.d.getAll();
      return localMap;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public void d(long paramLong)
  {
    try
    {
      a("tempaccesscodelastknowntime", paramLong);
      a("tempaccesscodelastknowntime", Long.valueOf(paramLong));
      b();
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public void d(String paramString)
  {
    try
    {
      String str = b(a(paramString.getBytes()));
      a("encaccesscode", str);
      a("encaccesscode", str);
      b();
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public void d(boolean paramBoolean)
  {
    try
    {
      a("accountReport", paramBoolean);
      a("accountReport", Boolean.valueOf(paramBoolean));
      b();
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public void e(long paramLong)
  {
    a("amsLastUpdateTime", paramLong);
    b();
  }

  public void e(String paramString)
  {
    if (paramString == null);
    while (true)
    {
      return;
      try
      {
        String str = "";
        if (!"".equals(paramString))
          str = b(a(paramString.getBytes()));
        a("enctempaccesscode", str);
        a("enctempaccesscode", str);
        b();
      }
      finally
      {
      }
    }
  }

  public void e(boolean paramBoolean)
  {
    a("gSettingsNotificationAlwaysOn", paramBoolean);
    b();
  }

  public boolean e()
  {
    if (!b("0000"));
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public String f()
  {
    try
    {
      String str = b("encaccesscode", null);
      if ((str == null) || (str.equals("")))
        str = b;
      return str;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public void f(long paramLong)
  {
    synchronized (this.g)
    {
      try
      {
        if (this.e.getLong("lastSync", -1L) < paramLong)
        {
          SharedPreferences.Editor localEditor = this.e.edit();
          t.a("AvastGenericSync", "Notifying sync done at " + paramLong);
          localEditor.putLong("lastSync", paramLong);
          localEditor.commit();
        }
        return;
      }
      catch (Exception localException)
      {
        while (true)
          t.a("AvastGenericSync", "Can not store sync time", localException);
      }
    }
  }

  public void f(String paramString)
  {
    try
    {
      a("tempaccesscoderecoverynumber", paramString);
      a("tempaccesscoderecoverynumber", paramString);
      b();
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public String g()
  {
    try
    {
      String str = b("enctempaccesscode", "");
      return str;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public void g(String paramString)
  {
    try
    {
      a("tempaccesscodereceivertickauthtoken", paramString);
      a("tempaccesscodereceivertickauthtoken", paramString);
      b();
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public long h()
  {
    try
    {
      long l = b("tempaccesscodeissuetime", -1L);
      return l;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public void h(String paramString)
  {
    try
    {
      a("tempaccesscodereceiversmsauthtoken", paramString);
      a("tempaccesscodereceiversmsauthtoken", paramString);
      b();
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public long i()
  {
    try
    {
      long l = b("tempaccesscodetimeouttime", -1L);
      return l;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public void i(String paramString)
  {
    a("language", paramString);
    a("language", paramString);
    b();
  }

  public long j()
  {
    try
    {
      long l = b("tempaccesscodelastknowntime", -1L);
      return l;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public void j(String paramString)
  {
    a("accountLuid", paramString);
    a("accountLuid", paramString);
  }

  public String k()
  {
    try
    {
      String str = b("tempaccesscoderecoverynumber", "");
      return str;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public void k(String paramString)
  {
    a("accountSmsGateway", paramString);
    a("accountSmsGateway", paramString);
  }

  public String l()
  {
    try
    {
      String str = b("tempaccesscodereceivertickauthtoken", "");
      return str;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public String m()
  {
    try
    {
      String str = b("tempaccesscodereceiversmsauthtoken", "");
      return str;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public boolean n()
  {
    try
    {
      boolean bool = b("logcatavailable", true);
      return bool;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public boolean o()
  {
    return b("paswordProtection", false);
  }

  public boolean p()
  {
    return b("communityIQEnabled", true);
  }

  public String q()
  {
    return b("language", "");
  }

  public String r()
  {
    try
    {
      Object localObject2 = b("guid", null);
      if ((localObject2 == null) || ("".equals(localObject2)))
      {
        String str = T();
        localObject2 = str;
      }
      return localObject2;
    }
    finally
    {
      localObject1 = finally;
      throw localObject1;
    }
  }

  public String s()
  {
    try
    {
      String str = b("guid", null);
      if (str != null)
      {
        boolean bool = "".equals(str);
        if (!bool);
      }
      else
      {
        str = null;
      }
      return str;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public long t()
  {
    return b("amsLastUpdateTime", 0L);
  }

  public boolean u()
  {
    try
    {
      boolean bool1 = TextUtils.isEmpty(z());
      if (!bool1)
      {
        bool2 = true;
        return bool2;
      }
      boolean bool2 = false;
    }
    finally
    {
    }
  }

  public void v()
  {
    try
    {
      a("accountEmail");
      a("accountEmail", "-DEL-");
      a("auid");
      a("auid", "-DEL-");
      a("accountEncKey");
      a("accountEncKey", "-DEL-");
      a("accountCommPassword");
      a("accountCommPassword", "-DEL-");
      a("accountSmsGateway");
      a("accountSmsGateway", "-DEL-");
      b();
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public String w()
  {
    try
    {
      String str = b("accountEmail", null);
      return str;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public String x()
  {
    try
    {
      String str = b("auid", null);
      return str;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public byte[] y()
  {
    try
    {
      String str = b("accountEncKey", null);
      try
      {
        byte[] arrayOfByte2 = e.a(str);
        arrayOfByte1 = arrayOfByte2;
        return arrayOfByte1;
      }
      catch (IOException localIOException)
      {
        while (true)
        {
          m.a("SettingsApi", "Can't convert encryption key to byte array.", localIOException);
          byte[] arrayOfByte1 = null;
        }
      }
    }
    finally
    {
    }
  }

  public String z()
  {
    try
    {
      String str = b("accountCommPassword", null);
      return str;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.ae
 * JD-Core Version:    0.6.2
 */