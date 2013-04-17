import android.content.ContentValues;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.database.Cursor;
import com.tencent.qqpimsecure.service.QQPimApplication;
import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.module.permission.PermissionTableItem;
import com.tencent.tmsecure.module.software.AppEntity;
import com.tencent.tmsecure.module.software.SoftwareManager;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class jf
{
  public hs a = hs.a();
  public Context b = QQPimApplication.a();

  public final int a(int paramInt, byte[] paramArrayOfByte)
  {
    ContentValues localContentValues = new ContentValues();
    localContentValues.put("mStates", paramArrayOfByte);
    String[] arrayOfString = new String[1];
    arrayOfString[0] = String.valueOf(paramInt);
    int i = this.a.a("permission_info", localContentValues, "mUId=?", arrayOfString);
    this.a.b();
    return i;
  }

  public final List<kx> a(List<Integer> paramList)
  {
    ArrayList localArrayList = new ArrayList();
    Cursor localCursor = this.a.a("SELECT * FROM permission_info");
    label157: label203: label232: 
    while (true)
    {
      if ((localCursor != null) && (localCursor.moveToNext()))
      {
        Iterator localIterator = paramList.iterator();
        int j;
        do
        {
          if (!localIterator.hasNext())
            break;
          j = ((Integer)localIterator.next()).intValue();
        }
        while (localCursor.getBlob(3)[j] == -1);
      }
      for (int i = 1; ; i = 0)
      {
        if (i == 0)
          break label232;
        kx localkx = new kx();
        localkx.a = localCursor.getInt(0);
        localkx.b = localCursor.getString(1);
        localkx.c = localCursor.getString(2);
        localkx.e = localCursor.getBlob(3);
        boolean bool1;
        if (localCursor.getInt(4) == 1)
        {
          bool1 = true;
          localkx.f = bool1;
          if (localCursor.getInt(5) != 1)
            break label203;
        }
        for (boolean bool2 = true; ; bool2 = false)
        {
          localkx.g = bool2;
          localArrayList.add(localkx);
          break;
          bool1 = false;
          break label157;
        }
        if (localCursor != null)
          localCursor.close();
        this.a.b();
        return localArrayList;
      }
    }
  }

  public final List<kx> a(boolean paramBoolean)
  {
    String str1;
    Cursor localCursor;
    ArrayList localArrayList;
    label43: kx localkx;
    boolean bool1;
    if (paramBoolean)
    {
      str1 = "1";
      String str2 = "SELECT * FROM permission_info WHERE mIsSysApp=" + str1;
      localCursor = this.a.a(str2);
      localArrayList = new ArrayList();
      if ((localCursor == null) || (!localCursor.moveToNext()))
        break label194;
      localkx = new kx();
      localkx.a = localCursor.getInt(0);
      localkx.b = localCursor.getString(1);
      localkx.c = localCursor.getString(2);
      localkx.e = localCursor.getBlob(3);
      if (localCursor.getInt(4) != 1)
        break label182;
      bool1 = true;
      label134: localkx.f = bool1;
      if (localCursor.getInt(5) != 1)
        break label188;
    }
    label182: label188: for (boolean bool2 = true; ; bool2 = false)
    {
      localkx.g = bool2;
      localArrayList.add(localkx);
      break label43;
      str1 = "0";
      break;
      bool1 = false;
      break label134;
    }
    label194: if (localCursor != null)
      localCursor.close();
    this.a.b();
    return localArrayList;
  }

  public final List<PermissionTableItem> a(boolean paramBoolean1, boolean paramBoolean2)
  {
    String[] arrayOfString = { "mUId", "mPackageName", "mStates" };
    Cursor localCursor = this.a.a("permission_info", arrayOfString, null, null, null, null, null);
    ArrayList localArrayList = new ArrayList();
    int i;
    String str;
    byte[] arrayOfByte1;
    byte[] arrayOfByte2;
    if ((localCursor != null) && (localCursor.moveToFirst()))
      if (!localCursor.isAfterLast())
      {
        i = localCursor.getInt(0);
        str = localCursor.getString(1);
        arrayOfByte1 = localCursor.getBlob(2);
        if ((arrayOfByte1 != null) && (arrayOfByte1.length >= 13))
          break label289;
        arrayOfByte2 = new byte[13];
        for (int j = 0; j < arrayOfByte2.length; j++)
        {
          if (j < arrayOfByte1.length)
            arrayOfByte2[j] = arrayOfByte1[j];
          if (j == 12)
            arrayOfByte2[j] = 2;
        }
      }
    label289: for (byte[] arrayOfByte3 = arrayOfByte2; ; arrayOfByte3 = arrayOfByte1)
    {
      PermissionTableItem localPermissionTableItem;
      if ((paramBoolean1) && (paramBoolean2))
        localPermissionTableItem = xf.a(i, arrayOfByte3, str);
      while (true)
      {
        if (localPermissionTableItem != null)
          localArrayList.add(localPermissionTableItem);
        localCursor.moveToNext();
        break;
        if ((!paramBoolean1) && (paramBoolean2 == true))
        {
          localPermissionTableItem = xf.a(i, str);
        }
        else if ((paramBoolean1 == true) && (!paramBoolean2))
        {
          localPermissionTableItem = xf.b(i, arrayOfByte3, str);
          continue;
          if (localCursor != null)
            localCursor.close();
          this.a.b();
          return localArrayList;
        }
        else
        {
          localPermissionTableItem = null;
        }
      }
    }
  }

  public final List<kx> a(boolean paramBoolean1, boolean paramBoolean2, List<Integer> paramList)
  {
    ArrayList localArrayList = new ArrayList();
    String str1;
    String str2;
    label25: Cursor localCursor;
    if (paramBoolean1)
    {
      str1 = "1";
      if (!paramBoolean2)
        break label261;
      str2 = "1";
      String str3 = "SELECT * FROM permission_info WHERE mIsSysApp=" + str1 + " and mIsTrustApp=" + str2;
      localCursor = this.a.a(str3);
    }
    label261: label274: label306: 
    while (true)
    {
      label65: if ((localCursor != null) && (localCursor.moveToNext()))
      {
        Iterator localIterator = paramList.iterator();
        int j;
        do
        {
          if (!localIterator.hasNext())
            break;
          j = ((Integer)localIterator.next()).intValue();
        }
        while (localCursor.getBlob(3)[j] == -1);
      }
      for (int i = 1; ; i = 0)
      {
        if (i == 0)
          break label306;
        kx localkx = new kx();
        localkx.a = localCursor.getInt(0);
        localkx.b = localCursor.getString(1);
        localkx.c = localCursor.getString(2);
        localkx.e = localCursor.getBlob(3);
        boolean bool1;
        if (localCursor.getInt(4) == 1)
        {
          bool1 = true;
          label212: localkx.f = bool1;
          if (localCursor.getInt(5) != 1)
            break label274;
        }
        for (boolean bool2 = true; ; bool2 = false)
        {
          localkx.g = bool2;
          localArrayList.add(localkx);
          break label65;
          str1 = "0";
          break;
          str2 = "0";
          break label25;
          bool1 = false;
          break label212;
        }
        if (localCursor != null)
          localCursor.close();
        this.a.b();
        return localArrayList;
      }
    }
  }

  public final kx a(String paramString)
  {
    int i = 1;
    String str = "SELECT * FROM permission_info WHERE mPackageName='" + paramString + "'";
    Cursor localCursor = this.a.a(str);
    Object localObject = null;
    kx localkx;
    int j;
    if (localCursor != null)
    {
      boolean bool = localCursor.moveToNext();
      localObject = null;
      if (bool)
      {
        localkx = new kx();
        localkx.a = localCursor.getInt(0);
        localkx.b = localCursor.getString(i);
        localkx.c = localCursor.getString(2);
        localkx.e = localCursor.getBlob(3);
        if (localCursor.getInt(4) != i)
          break label186;
        j = i;
        localkx.f = j;
        if (localCursor.getInt(5) != i)
          break label192;
      }
    }
    while (true)
    {
      localkx.g = i;
      localObject = localkx;
      if (localCursor != null)
        localCursor.close();
      this.a.b();
      return localObject;
      label186: j = 0;
      break;
      label192: i = 0;
    }
  }

  public final void a(int paramInt)
  {
    String str = "DELETE FROM permission_info WHERE mUId=" + paramInt;
    this.a.b(str);
    this.a.b();
  }

  public final void a(int paramInt1, int paramInt2, int paramInt3)
  {
    ContentValues localContentValues = new ContentValues();
    localContentValues.put("mUId", Integer.valueOf(paramInt1));
    localContentValues.put("mRId", Integer.valueOf(paramInt2));
    localContentValues.put("mState", Integer.valueOf(paramInt3));
    localContentValues.put("mTimestamp", Long.valueOf(System.currentTimeMillis()));
    this.a.a("permission_log", null, localContentValues);
    this.a.b();
  }

  public final void a(int paramInt, boolean paramBoolean)
  {
    ContentValues localContentValues = new ContentValues();
    localContentValues.put("mIsTrustApp", Boolean.valueOf(paramBoolean));
    String[] arrayOfString = new String[1];
    arrayOfString[0] = String.valueOf(paramInt);
    this.a.a("permission_info", localContentValues, "mUId=?", arrayOfString);
    this.a.b();
  }

  public final void a(String paramString1, String paramString2)
  {
    ContentValues localContentValues = new ContentValues();
    localContentValues.put("mAppName", paramString2);
    String[] arrayOfString = { paramString1 };
    this.a.a("permission_info", localContentValues, "mPackageName=?", arrayOfString);
    this.a.b();
  }

  public final void a(kx paramkx)
  {
    ContentValues localContentValues = new ContentValues();
    localContentValues.put("mUId", Integer.valueOf(paramkx.a));
    localContentValues.put("mPackageName", paramkx.b);
    localContentValues.put("mAppName", paramkx.c);
    localContentValues.put("mStates", paramkx.e);
    localContentValues.put("mIsSysApp", Boolean.valueOf(paramkx.f));
    localContentValues.put("mIsTrustApp", Boolean.valueOf(paramkx.g));
    this.a.a("permission_info", null, localContentValues);
    this.a.b();
  }

  public final boolean a()
  {
    Cursor localCursor = this.a.a("SELECT count(*) FROM permission_info");
    if ((localCursor != null) && (localCursor.moveToNext()));
    for (int i = localCursor.getInt(0); ; i = 0)
    {
      if (localCursor != null)
        localCursor.close();
      this.a.b();
      boolean bool = false;
      if (i > 0)
        bool = true;
      return bool;
    }
  }

  public final kx b(int paramInt)
  {
    int i = 1;
    String str = "SELECT * FROM permission_info WHERE mUId=" + paramInt;
    Cursor localCursor = this.a.a(str);
    Object localObject = null;
    kx localkx;
    int j;
    if (localCursor != null)
    {
      boolean bool = localCursor.moveToNext();
      localObject = null;
      if (bool)
      {
        localkx = new kx();
        localkx.a = localCursor.getInt(0);
        localkx.b = localCursor.getString(i);
        localkx.c = localCursor.getString(2);
        localkx.e = localCursor.getBlob(3);
        if (localCursor.getInt(4) != i)
          break label181;
        j = i;
        localkx.f = j;
        if (localCursor.getInt(5) != i)
          break label187;
      }
    }
    while (true)
    {
      localkx.g = i;
      localObject = localkx;
      if (localCursor != null)
        localCursor.close();
      this.a.b();
      return localObject;
      label181: j = 0;
      break;
      label187: i = 0;
    }
  }

  public final void b()
  {
    new Exception().printStackTrace();
    List localList = this.b.getPackageManager().getInstalledPackages(4096);
    ArrayList localArrayList = new ArrayList();
    SoftwareManager localSoftwareManager = (SoftwareManager)ManagerCreator.getManager(SoftwareManager.class);
    Iterator localIterator = localList.iterator();
    while (localIterator.hasNext())
    {
      kx localkx = kx.a((PackageInfo)localIterator.next());
      if (localkx != null)
      {
        localkx.c = localSoftwareManager.getAppInfo(localkx.b, 1).getAppName();
        String str = localkx.b;
        if ((str != null) && (!str.contains(this.b.getPackageName())) && ((!localkx.f) || ((!str.startsWith("com.android")) && (!str.startsWith("com.google.android.")) && (!str.startsWith("android")))))
          localArrayList.add(localkx);
      }
    }
    this.a.a(new jg(this, localArrayList));
  }

  public final int c()
  {
    Cursor localCursor = this.a.a("SELECT count(*) FROM permission_info");
    int i = 0;
    if (localCursor != null)
    {
      boolean bool = localCursor.moveToNext();
      i = 0;
      if (bool)
        i = localCursor.getInt(0);
    }
    if (localCursor != null)
      localCursor.close();
    this.a.b();
    return i;
  }

  public final String c(int paramInt)
  {
    String str1 = "SELECT mPackageName FROM permission_info WHERE mUId=" + paramInt;
    Cursor localCursor = this.a.a(str1);
    String str2 = null;
    if (localCursor != null)
    {
      boolean bool = localCursor.moveToNext();
      str2 = null;
      if (bool)
        str2 = localCursor.getString(0);
    }
    if (localCursor != null)
      localCursor.close();
    this.a.b();
    return str2;
  }

  public final String d(int paramInt)
  {
    String str1 = "SELECT mAppName FROM permission_info WHERE mUId=" + paramInt;
    Cursor localCursor = this.a.a(str1);
    String str2 = null;
    if (localCursor != null)
    {
      boolean bool = localCursor.moveToNext();
      str2 = null;
      if (bool)
        str2 = localCursor.getString(0);
    }
    if (localCursor != null)
      localCursor.close();
    this.a.b();
    return str2;
  }

  // ERROR //
  public final List<lz> d()
  {
    // Byte code:
    //   0: new 54	java/util/ArrayList
    //   3: dup
    //   4: invokespecial 55	java/util/ArrayList:<init>	()V
    //   7: astore_1
    //   8: aconst_null
    //   9: astore_2
    //   10: new 133	java/lang/StringBuilder
    //   13: dup
    //   14: ldc_w 319
    //   17: invokespecial 138	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   20: invokevirtual 146	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   23: astore 11
    //   25: aload_0
    //   26: getfield 26	jf:a	Lhs;
    //   29: aload 11
    //   31: invokevirtual 60	hs:a	(Ljava/lang/String;)Landroid/database/Cursor;
    //   34: astore 12
    //   36: aload 12
    //   38: astore_2
    //   39: aload_2
    //   40: ifnull +406 -> 446
    //   43: aload_2
    //   44: invokeinterface 66 1 0
    //   49: ifeq +397 -> 446
    //   52: aload_2
    //   53: iconst_0
    //   54: invokeinterface 98 2 0
    //   59: istore 14
    //   61: aload_2
    //   62: iconst_1
    //   63: invokeinterface 98 2 0
    //   68: istore 15
    //   70: aload_2
    //   71: iconst_2
    //   72: invokeinterface 98 2 0
    //   77: istore 16
    //   79: new 321	lz
    //   82: dup
    //   83: invokespecial 322	lz:<init>	()V
    //   86: astore 17
    //   88: aload 17
    //   90: iload 14
    //   92: putfield 323	lz:a	I
    //   95: aload 17
    //   97: new 133	java/lang/StringBuilder
    //   100: dup
    //   101: invokespecial 324	java/lang/StringBuilder:<init>	()V
    //   104: aload_0
    //   105: getfield 19	jf:b	Landroid/content/Context;
    //   108: invokevirtual 328	android/content/Context:getResources	()Landroid/content/res/Resources;
    //   111: ldc_w 329
    //   114: invokevirtual 332	android/content/res/Resources:getString	(I)Ljava/lang/String;
    //   117: invokevirtual 142	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   120: iload 15
    //   122: invokestatic 334	xf:a	(I)Ljava/lang/String;
    //   125: invokevirtual 142	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   128: invokevirtual 146	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   131: putfield 336	lz:e	Ljava/lang/String;
    //   134: aload 17
    //   136: iload 16
    //   138: i2b
    //   139: invokestatic 339	xf:a	(B)Ljava/lang/String;
    //   142: putfield 341	lz:f	Ljava/lang/String;
    //   145: invokestatic 207	java/lang/System:currentTimeMillis	()J
    //   148: aload_2
    //   149: iconst_3
    //   150: invokeinterface 345 2 0
    //   155: lsub
    //   156: lstore 18
    //   158: lload 18
    //   160: ldc2_w 346
    //   163: ldiv
    //   164: lstore 20
    //   166: lload 20
    //   168: lconst_0
    //   169: lcmp
    //   170: ifeq +133 -> 303
    //   173: new 133	java/lang/StringBuilder
    //   176: dup
    //   177: invokespecial 324	java/lang/StringBuilder:<init>	()V
    //   180: lload 20
    //   182: invokevirtual 350	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   185: invokestatic 17	com/tencent/qqpimsecure/service/QQPimApplication:a	()Landroid/content/Context;
    //   188: invokevirtual 328	android/content/Context:getResources	()Landroid/content/res/Resources;
    //   191: ldc_w 351
    //   194: invokevirtual 332	android/content/res/Resources:getString	(I)Ljava/lang/String;
    //   197: invokevirtual 142	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   200: invokevirtual 146	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   203: astore 27
    //   205: aload 17
    //   207: aload 27
    //   209: putfield 353	lz:g	Ljava/lang/String;
    //   212: aload_1
    //   213: aload 17
    //   215: invokeinterface 125 2 0
    //   220: pop
    //   221: goto -182 -> 39
    //   224: astore 6
    //   226: aload_2
    //   227: ifnull +9 -> 236
    //   230: aload_2
    //   231: invokeinterface 128 1 0
    //   236: aload_0
    //   237: getfield 26	jf:a	Lhs;
    //   240: invokevirtual 51	hs:b	()V
    //   243: iconst_m1
    //   244: aload_1
    //   245: invokeinterface 356 1 0
    //   250: iadd
    //   251: istore 7
    //   253: iload 7
    //   255: iflt +261 -> 516
    //   258: aload_1
    //   259: iload 7
    //   261: invokeinterface 360 2 0
    //   266: checkcast 321	lz
    //   269: astore 8
    //   271: aload_0
    //   272: aload 8
    //   274: getfield 323	lz:a	I
    //   277: invokevirtual 362	jf:b	(I)Lkx;
    //   280: astore 9
    //   282: aload 9
    //   284: ifnull +211 -> 495
    //   287: aload 8
    //   289: aload 9
    //   291: getfield 110	kx:c	Ljava/lang/String;
    //   294: putfield 363	lz:c	Ljava/lang/String;
    //   297: iinc 7 255
    //   300: goto -47 -> 253
    //   303: lload 18
    //   305: ldc2_w 364
    //   308: ldiv
    //   309: lstore 22
    //   311: lload 22
    //   313: lconst_0
    //   314: lcmp
    //   315: ifeq +38 -> 353
    //   318: new 133	java/lang/StringBuilder
    //   321: dup
    //   322: invokespecial 324	java/lang/StringBuilder:<init>	()V
    //   325: lload 22
    //   327: invokevirtual 350	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   330: invokestatic 17	com/tencent/qqpimsecure/service/QQPimApplication:a	()Landroid/content/Context;
    //   333: invokevirtual 328	android/content/Context:getResources	()Landroid/content/res/Resources;
    //   336: ldc_w 366
    //   339: invokevirtual 332	android/content/res/Resources:getString	(I)Ljava/lang/String;
    //   342: invokevirtual 142	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   345: invokevirtual 146	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   348: astore 27
    //   350: goto -145 -> 205
    //   353: lload 18
    //   355: ldc2_w 367
    //   358: ldiv
    //   359: lstore 24
    //   361: lload 24
    //   363: lconst_0
    //   364: lcmp
    //   365: ifeq +38 -> 403
    //   368: new 133	java/lang/StringBuilder
    //   371: dup
    //   372: invokespecial 324	java/lang/StringBuilder:<init>	()V
    //   375: lload 24
    //   377: invokevirtual 350	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   380: invokestatic 17	com/tencent/qqpimsecure/service/QQPimApplication:a	()Landroid/content/Context;
    //   383: invokevirtual 328	android/content/Context:getResources	()Landroid/content/res/Resources;
    //   386: ldc_w 369
    //   389: invokevirtual 332	android/content/res/Resources:getString	(I)Ljava/lang/String;
    //   392: invokevirtual 142	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   395: invokevirtual 146	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   398: astore 27
    //   400: goto -195 -> 205
    //   403: new 133	java/lang/StringBuilder
    //   406: dup
    //   407: invokespecial 324	java/lang/StringBuilder:<init>	()V
    //   410: lload 18
    //   412: ldc2_w 370
    //   415: ldiv
    //   416: invokevirtual 350	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   419: invokestatic 17	com/tencent/qqpimsecure/service/QQPimApplication:a	()Landroid/content/Context;
    //   422: invokevirtual 328	android/content/Context:getResources	()Landroid/content/res/Resources;
    //   425: ldc_w 372
    //   428: invokevirtual 332	android/content/res/Resources:getString	(I)Ljava/lang/String;
    //   431: invokevirtual 142	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   434: invokevirtual 146	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   437: astore 26
    //   439: aload 26
    //   441: astore 27
    //   443: goto -238 -> 205
    //   446: aload_2
    //   447: ifnull +9 -> 456
    //   450: aload_2
    //   451: invokeinterface 128 1 0
    //   456: aload_0
    //   457: getfield 26	jf:a	Lhs;
    //   460: invokevirtual 51	hs:b	()V
    //   463: goto -220 -> 243
    //   466: astore_3
    //   467: aconst_null
    //   468: astore 4
    //   470: aload_3
    //   471: astore 5
    //   473: aload 4
    //   475: ifnull +10 -> 485
    //   478: aload 4
    //   480: invokeinterface 128 1 0
    //   485: aload_0
    //   486: getfield 26	jf:a	Lhs;
    //   489: invokevirtual 51	hs:b	()V
    //   492: aload 5
    //   494: athrow
    //   495: aload_1
    //   496: iload 7
    //   498: invokeinterface 375 2 0
    //   503: pop
    //   504: aload_0
    //   505: aload 8
    //   507: getfield 323	lz:a	I
    //   510: invokevirtual 377	jf:e	(I)V
    //   513: goto -216 -> 297
    //   516: aload_1
    //   517: areturn
    //   518: astore 13
    //   520: aload_2
    //   521: astore 4
    //   523: aload 13
    //   525: astore 5
    //   527: goto -54 -> 473
    //
    // Exception table:
    //   from	to	target	type
    //   10	36	224	java/lang/Exception
    //   43	221	224	java/lang/Exception
    //   303	439	224	java/lang/Exception
    //   10	36	466	finally
    //   43	221	518	finally
    //   303	439	518	finally
  }

  public final void e(int paramInt)
  {
    String str = "DELETE FROM permission_log WHERE mUId=" + paramInt;
    this.a.b(str);
    this.a.b();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     jf
 * JD-Core Version:    0.6.2
 */