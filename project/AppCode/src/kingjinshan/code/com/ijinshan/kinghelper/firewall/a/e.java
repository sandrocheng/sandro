package com.ijinshan.kinghelper.firewall.a;

import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.net.Uri;
import android.os.Build.VERSION;
import android.provider.Contacts.People;
import android.text.TextUtils;
import android.util.Log;
import com.ijinshan.kinghelper.firewall.dd;
import com.keniu.security.f.ab;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
import king.org.apache.commons.codec.digest.DigestUtils;

public final class e
{
  public static final String a = "FirewallRuleManager";
  public static final boolean b = true;
  public static final Object c = new Object();
  public static final String d = "firewall_user_rules.db";
  public static final String e = "firewall_sys_rules.db";
  private static final int f = 1;
  private static Context g;
  private static SQLiteDatabase h;
  private static SQLiteDatabase i;
  private static l j;

  public static int a(int paramInt1, int paramInt2, String paramString1, String paramString2, int paramInt3)
  {
    try
    {
      int k = a(paramInt1, paramInt2, paramString1, paramString2, paramInt3, 1);
      return k;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public static int a(int paramInt1, int paramInt2, String paramString1, String paramString2, int paramInt3, int paramInt4)
  {
    while (true)
    {
      try
      {
        i.beginTransaction();
        try
        {
          ContentValues localContentValues = new ContentValues();
          localContentValues.put("rule_type", Integer.valueOf(paramInt2));
          if (paramInt4 == 1)
          {
            str1 = com.ijinshan.kinghelper.a.i.a(paramString1);
            String str2 = g.getString(2131427550);
            if (paramInt2 != 2)
              str2 = g.getString(2131427551);
            localContentValues.put("matcher", str1);
            localContentValues.put("owner", paramString2);
            localContentValues.put("desc", str2);
            localContentValues.put("apply_mode", Integer.valueOf(paramInt3));
            localContentValues.put("match_mode", Integer.valueOf(paramInt4));
            String str3 = "_id=" + paramInt1;
            int k = i.update("datable", localContentValues, str3, null);
            i.setTransactionSuccessful();
            i.endTransaction();
            return k;
          }
        }
        finally
        {
          localObject2 = finally;
          i.endTransaction();
          throw localObject2;
        }
      }
      finally
      {
      }
      String str1 = paramString1;
    }
  }

  public static int a(long paramLong)
  {
    try
    {
      i.beginTransaction();
      try
      {
        String str = "_id=" + paramLong;
        int k = i.delete("datable", str, null);
        i.setTransactionSuccessful();
        i.endTransaction();
        return k;
      }
      finally
      {
        localObject2 = finally;
        i.endTransaction();
        throw localObject2;
      }
    }
    finally
    {
    }
  }

  public static long a(int paramInt1, String paramString1, String paramString2, int paramInt2)
  {
    return a(paramInt1, paramString1, paramString2, paramInt2, 1);
  }

  public static long a(int paramInt1, String paramString1, String paramString2, int paramInt2, int paramInt3)
  {
    while (true)
    {
      try
      {
        ContentValues localContentValues = new ContentValues();
        localContentValues.put("rule_type", Integer.valueOf(paramInt1));
        localContentValues.put("apply_mode", Integer.valueOf(paramInt2));
        localContentValues.put("match_mode", Integer.valueOf(paramInt3));
        if (paramInt3 == 1)
        {
          str1 = com.ijinshan.kinghelper.a.i.a(paramString1);
          String str2 = g.getString(2131427550);
          if (paramInt1 != 2)
            str2 = g.getString(2131427551);
          localContentValues.put("matcher", str1);
          localContentValues.put("owner", paramString2);
          localContentValues.put("desc", str2);
          i.beginTransaction();
          try
          {
            long l = i.insert("datable", null, localContentValues);
            i.setTransactionSuccessful();
            i.endTransaction();
            return l;
          }
          finally
          {
            localObject2 = finally;
            i.endTransaction();
            throw localObject2;
          }
        }
      }
      finally
      {
      }
      String str1 = paramString1;
    }
  }

  private static Cursor a(boolean paramBoolean)
  {
    SQLiteDatabase localSQLiteDatabase = h;
    if (paramBoolean);
    for (String[] arrayOfString = g.j; ; arrayOfString = g.k)
      return localSQLiteDatabase.query("datable", null, "apply_mode=? or apply_mode =?", arrayOfString, null, null, null);
  }

  private static Cursor a(boolean paramBoolean, int paramInt)
  {
    String[] arrayOfString2;
    if (paramBoolean)
    {
      arrayOfString2 = new String[3];
      arrayOfString2[0] = String.valueOf(paramInt);
      arrayOfString2[1] = String.valueOf(1);
      arrayOfString2[2] = String.valueOf(2);
    }
    String[] arrayOfString1;
    for (Object localObject = arrayOfString2; ; localObject = arrayOfString1)
    {
      return h.query("datable", null, "match_mode=? and (apply_mode=? or apply_mode =?)", (String[])localObject, null, null, "_id DESC");
      arrayOfString1 = new String[3];
      arrayOfString1[0] = String.valueOf(paramInt);
      arrayOfString1[1] = String.valueOf(1);
      arrayOfString1[2] = String.valueOf(3);
    }
  }

  private static Cursor a(boolean paramBoolean, String paramString)
  {
    Log.e("FirewallRuleManager", "querySystemRuleByNumber selection=" + "regx = 1 and match_mode = ? and matcher = ? and (apply_mode=? or apply_mode =?)");
    String[] arrayOfString2;
    if (paramBoolean)
    {
      arrayOfString2 = new String[4];
      arrayOfString2[0] = String.valueOf(1);
      arrayOfString2[1] = paramString;
      arrayOfString2[2] = String.valueOf(1);
      arrayOfString2[3] = String.valueOf(2);
    }
    String[] arrayOfString1;
    for (Object localObject = arrayOfString2; ; localObject = arrayOfString1)
    {
      Cursor localCursor = h.query("datable", null, "regx = 1 and match_mode = ? and matcher = ? and (apply_mode=? or apply_mode =?)", (String[])localObject, null, null, null);
      if ((localCursor == null) || (localCursor.getCount() == 0))
      {
        if (localCursor != null)
          localCursor.close();
        localCursor = h.query("datable", null, "regx = 2 and match_mode=? and matcher=substr(?,1,length(matcher))  and ( apply_mode=? or apply_mode =?)", (String[])localObject, null, null, "length(matcher) desc");
      }
      return localCursor;
      arrayOfString1 = new String[4];
      arrayOfString1[0] = String.valueOf(1);
      arrayOfString1[1] = paramString;
      arrayOfString1[2] = String.valueOf(1);
      arrayOfString1[3] = String.valueOf(3);
    }
  }

  public static g a(String paramString)
  {
    Object localObject;
    if (TextUtils.isEmpty(paramString))
      localObject = null;
    while (true)
    {
      return localObject;
      String str = com.ijinshan.kinghelper.a.i.a(paramString);
      Cursor localCursor = b(false, str);
      if (localCursor != null)
      {
        Log.d("FirewallRuleManager", "begin macht user rule:phoneNumber=" + str + ",found:" + localCursor.getCount());
        g localg = g.a(localCursor);
        localg.i = (-localg.i);
        localg.h = g.getString(2131427600);
        localg.g = g.getString(2131427600);
        if (localg.c == 2)
        {
          localCursor.close();
          Log.d("FirewallRuleManager", "Found BLACK in user rule,number=" + str + ",rule=" + localg);
          localObject = localg;
        }
        else
        {
          Log.d("FirewallRuleManager", "Found white or normal in user rule,number=" + str + ",rule=" + localg);
          localCursor.close();
          localObject = null;
        }
      }
      else if (str.startsWith("106"))
      {
        localObject = null;
      }
      else if (a(g, str))
      {
        localObject = null;
      }
      else if (f(str))
      {
        localObject = null;
      }
      else
      {
        localObject = new g();
        ((g)localObject).i = 0;
        ((g)localObject).d = 3;
        ((g)localObject).h = g.getString(2131427597);
        ((g)localObject).f = "";
        ((g)localObject).e = 1;
        ((g)localObject).g = g.getString(2131427597);
        ((g)localObject).c = 2;
      }
    }
  }

  public static g a(String paramString1, String paramString2, boolean paramBoolean)
  {
    Object localObject;
    if (TextUtils.isEmpty(paramString1))
      localObject = null;
    while (true)
    {
      return localObject;
      String str1 = com.ijinshan.kinghelper.a.i.a(paramString1);
      Cursor localCursor = b(paramBoolean, str1);
      if (localCursor != null)
      {
        g localg = g.a(localCursor);
        localg.i = (-localg.i);
        localg.h = g.getString(2131427600);
        localg.g = g.getString(2131427600);
        if (localg.c == 2)
        {
          localCursor.close();
          Log.d("FirewallRuleManager", "Found BLACK in user rule,number=" + str1 + ",rule=" + localg);
          localObject = localg;
        }
        else
        {
          Log.d("FirewallRuleManager", "Found white or normal in user rule,number=" + str1 + ",rule=" + localg);
          localCursor.close();
          localObject = null;
        }
      }
      else if (a(g, str1))
      {
        localObject = null;
      }
      else if (f(str1))
      {
        localObject = null;
      }
      else if (!TextUtils.isEmpty(paramString2))
      {
        String str2 = dd.h();
        Log.d("FirewallRuleManager", "Mache user key,body=" + paramString2 + ",userKeyWord=" + str2);
        if (com.ijinshan.kinghelper.a.i.b(str2, paramString2))
        {
          Log.d("FirewallRuleManager", "Found in user rules keyword macher,body=" + paramString2 + ",userKeyWord=" + str2);
          localObject = new g();
          ((g)localObject).i = 0;
          ((g)localObject).d = 3;
          ((g)localObject).h = g.getString(2131427594);
          ((g)localObject).f = str2;
          ((g)localObject).e = 2;
          ((g)localObject).g = g.getString(2131427594);
          ((g)localObject).c = 2;
        }
      }
      else
      {
        localObject = b(str1, paramString2, paramBoolean);
      }
    }
  }

  public static void a()
  {
    synchronized (c)
    {
      if (g != null)
        g = null;
      if (h != null)
      {
        h.close();
        h = null;
      }
      if (i != null)
      {
        i.close();
        i = null;
      }
      return;
    }
  }

  public static void a(Context paramContext)
  {
    synchronized (c)
    {
      if (g == null)
        g = paramContext.getApplicationContext();
      dd.a(paramContext);
      if (h == null)
      {
        File localFile = new File(com.keniu.security.f.f.c());
        if (!localFile.exists())
          ab.a().a("firewall_sys_rules.db", com.keniu.security.f.f.c());
        h = SQLiteDatabase.openOrCreateDatabase(localFile, null);
      }
      if (i == null)
        i = new m(paramContext).getWritableDatabase();
      if (j == null)
      {
        j = new l();
        com.keniu.security.monitor.a.a().a(com.keniu.security.monitor.a.q, j, 1342177279);
      }
      return;
    }
  }

  public static boolean a(int paramInt)
  {
    String[] arrayOfString = new String[1];
    arrayOfString[0] = Integer.toString(paramInt);
    Cursor localCursor = h.query("sptype", null, "id=?", arrayOfString, null, null, null);
    if (localCursor != null)
      if (localCursor.moveToFirst())
        localCursor.close();
    for (boolean bool = true; ; bool = false)
    {
      return bool;
      localCursor.close();
    }
  }

  public static boolean a(Context paramContext, String paramString)
  {
    boolean bool1;
    if (TextUtils.isEmpty(paramString))
      bool1 = false;
    while (true)
    {
      return bool1;
      Uri localUri;
      label31: Cursor localCursor;
      if (Integer.parseInt(Build.VERSION.SDK) < 5)
      {
        localUri = Uri.withAppendedPath(Contacts.People.CONTENT_FILTER_URI, paramString);
        localCursor = paramContext.getContentResolver().query(localUri, null, null, null, null);
        if (localCursor == null)
          break label90;
        if (!localCursor.moveToFirst())
          break label84;
      }
      label84: for (boolean bool2 = true; ; bool2 = false)
      {
        localCursor.close();
        bool1 = bool2;
        break;
        localUri = Uri.withAppendedPath(com.ijinshan.kinghelper.a.e.c, paramString);
        break label31;
      }
      label90: bool1 = false;
    }
  }

  public static boolean a(String paramString, int paramInt)
  {
    String[] arrayOfString = new String[3];
    arrayOfString[0] = paramString;
    arrayOfString[1] = String.valueOf(1);
    arrayOfString[2] = String.valueOf(paramInt);
    Cursor localCursor = i.query("datable", null, "matcher= ? and match_mode=? and rule_type=?", arrayOfString, null, null, null);
    boolean bool2;
    if (localCursor != null)
      if (localCursor.getCount() > 0)
      {
        bool2 = true;
        localCursor.close();
      }
    for (boolean bool1 = bool2; ; bool1 = false)
    {
      return bool1;
      bool2 = false;
      break;
    }
  }

  public static boolean a(String paramString, int paramInt, long paramLong)
  {
    String str;
    Object localObject;
    boolean bool2;
    if (paramLong != -1L)
    {
      String[] arrayOfString2 = new String[4];
      arrayOfString2[0] = paramString;
      arrayOfString2[1] = String.valueOf(1);
      arrayOfString2[2] = String.valueOf(paramInt);
      arrayOfString2[3] = String.valueOf(paramLong);
      str = "matcher= ? and match_mode=? and rule_type=?" + " and " + "_id" + " != ? ";
      localObject = arrayOfString2;
      Cursor localCursor = i.query("datable", null, str, (String[])localObject, null, null, null);
      if (localCursor == null)
        break label178;
      if (localCursor.getCount() <= 0)
        break label172;
      bool2 = true;
      label119: localCursor.close();
    }
    label172: label178: for (boolean bool1 = bool2; ; bool1 = false)
    {
      return bool1;
      String[] arrayOfString1 = new String[3];
      arrayOfString1[0] = paramString;
      arrayOfString1[1] = String.valueOf(1);
      arrayOfString1[2] = String.valueOf(paramInt);
      str = "matcher= ? and match_mode=? and rule_type=?";
      localObject = arrayOfString1;
      break;
      bool2 = false;
      break label119;
    }
  }

  public static boolean a(String paramString, long paramLong)
  {
    String str;
    Object localObject;
    boolean bool2;
    if (paramLong != -1L)
    {
      String[] arrayOfString2 = new String[4];
      arrayOfString2[0] = paramString;
      arrayOfString2[1] = String.valueOf(6);
      arrayOfString2[2] = String.valueOf(2);
      arrayOfString2[3] = String.valueOf(paramLong);
      str = "matcher= ? and match_mode=? and rule_type=?" + " and " + "_id" + " != ? ";
      localObject = arrayOfString2;
      Cursor localCursor = i.query("datable", null, str, (String[])localObject, null, null, null);
      if (localCursor == null)
        break label175;
      if (localCursor.getCount() <= 0)
        break label169;
      bool2 = true;
      label120: localCursor.close();
    }
    label169: label175: for (boolean bool1 = bool2; ; bool1 = false)
    {
      return bool1;
      String[] arrayOfString1 = new String[3];
      arrayOfString1[0] = paramString;
      arrayOfString1[1] = String.valueOf(6);
      arrayOfString1[2] = String.valueOf(2);
      str = "matcher= ? and match_mode=? and rule_type=?";
      localObject = arrayOfString1;
      break;
      bool2 = false;
      break label120;
    }
  }

  private static boolean a(String paramString1, String paramString2)
  {
    return paramString1.startsWith(paramString2);
  }

  public static boolean a(String paramString, boolean paramBoolean)
  {
    boolean bool;
    if (TextUtils.isEmpty(paramString))
      bool = false;
    while (true)
    {
      return bool;
      String str = com.ijinshan.kinghelper.a.i.a(paramString);
      Cursor localCursor = b(paramBoolean, str);
      if (localCursor != null)
      {
        if (g.a(localCursor).c == 1)
        {
          localCursor.close();
          Log.d("FirewallRuleManager", "Found BLACK in user rule,number=" + str);
          bool = true;
        }
        else
        {
          Log.d("FirewallRuleManager", "Found white or normal in user rule,number=" + str);
          localCursor.close();
          bool = false;
        }
      }
      else
        bool = false;
    }
  }

  public static int b(String paramString)
  {
    return i(paramString).b;
  }

  public static Cursor b(int paramInt)
  {
    String str = "rule_type=" + paramInt;
    return i.query("datable", null, str, null, null, null, null);
  }

  private static Cursor b(boolean paramBoolean)
  {
    String[] arrayOfString2;
    if (paramBoolean)
    {
      arrayOfString2 = new String[3];
      arrayOfString2[0] = String.valueOf(2);
      arrayOfString2[1] = String.valueOf(1);
      arrayOfString2[2] = String.valueOf(2);
    }
    String[] arrayOfString1;
    for (Object localObject = arrayOfString2; ; localObject = arrayOfString1)
    {
      return h.query("datable", null, "match_mode=? and (apply_mode=? or apply_mode =?)", (String[])localObject, null, null, null);
      arrayOfString1 = new String[3];
      arrayOfString1[0] = String.valueOf(2);
      arrayOfString1[1] = String.valueOf(1);
      arrayOfString1[2] = String.valueOf(3);
    }
  }

  private static Cursor b(boolean paramBoolean, String paramString)
  {
    String[] arrayOfString6;
    if (paramBoolean)
    {
      arrayOfString6 = new String[4];
      arrayOfString6[0] = paramString;
      arrayOfString6[1] = String.valueOf(1);
      arrayOfString6[2] = String.valueOf(2);
      arrayOfString6[3] = String.valueOf(1);
    }
    Cursor localCursor1;
    String[] arrayOfString1;
    for (Object localObject1 = arrayOfString6; ; localObject1 = arrayOfString1)
    {
      localCursor1 = i.query("datable", null, "matcher=? and (apply_mode=? or apply_mode =? ) and match_mode =? ", (String[])localObject1, null, null, null);
      if ((localCursor1 != null) && (!localCursor1.moveToFirst()))
      {
        localCursor1.close();
        localCursor1 = null;
      }
      if (localCursor1 == null)
      {
        if (!a(g, paramString))
          break;
        localCursor1 = null;
      }
      return localCursor1;
      arrayOfString1 = new String[4];
      arrayOfString1[0] = paramString;
      arrayOfString1[1] = String.valueOf(1);
      arrayOfString1[2] = String.valueOf(3);
      arrayOfString1[3] = String.valueOf(1);
    }
    Object localObject2;
    label179: String str3;
    if (paramBoolean)
    {
      String[] arrayOfString5 = new String[3];
      arrayOfString5[0] = String.valueOf(5);
      arrayOfString5[1] = String.valueOf(1);
      arrayOfString5[2] = String.valueOf(2);
      localObject2 = arrayOfString5;
      Cursor localCursor2 = i.query("datable", null, "match_mode =? and (apply_mode=? or apply_mode =? )", (String[])localObject2, null, null, null);
      if (localCursor2 == null)
        break label556;
      if (!localCursor2.moveToFirst())
        break label550;
      str3 = null;
      do
        if (paramString.startsWith(localCursor2.getString(localCursor2.getColumnIndex("matcher"))))
          str3 = localCursor2.getString(localCursor2.getColumnIndex("_id"));
      while ((TextUtils.isEmpty(str3)) && (localCursor2.moveToNext()));
      label276: localCursor2.close();
    }
    label550: label556: for (String str1 = str3; ; str1 = null)
    {
      if (!TextUtils.isEmpty(str1))
      {
        localCursor1 = i.query("datable", null, "_id =? ", new String[] { str1 }, null, null, null);
        if (localCursor1 != null)
        {
          if (localCursor1.moveToFirst())
            break label346;
          localCursor1.close();
        }
      }
      localCursor1 = null;
      label346: if (localCursor1 != null)
        break;
      String str2 = com.jxphone.mosecurity.d.a.a(g).a(paramString);
      if (TextUtils.isEmpty(str2))
      {
        localCursor1 = null;
        break;
        String[] arrayOfString2 = new String[3];
        arrayOfString2[0] = String.valueOf(5);
        arrayOfString2[1] = String.valueOf(1);
        arrayOfString2[2] = String.valueOf(3);
        localObject2 = arrayOfString2;
        break label179;
      }
      String[] arrayOfString4;
      if (paramBoolean)
      {
        arrayOfString4 = new String[4];
        arrayOfString4[0] = String.valueOf(6);
        arrayOfString4[1] = str2;
        arrayOfString4[2] = String.valueOf(1);
        arrayOfString4[3] = String.valueOf(2);
      }
      String[] arrayOfString3;
      for (Object localObject3 = arrayOfString4; ; localObject3 = arrayOfString3)
      {
        localCursor1 = i.query("datable", null, "match_mode=? and matcher=substr(?,1,length(matcher)) and (apply_mode=? or apply_mode =?)", (String[])localObject3, null, null, null);
        if ((localCursor1 == null) || (localCursor1.moveToFirst()))
          break;
        localCursor1.close();
        localCursor1 = null;
        break;
        arrayOfString3 = new String[4];
        arrayOfString3[0] = String.valueOf(6);
        arrayOfString3[1] = str2;
        arrayOfString3[2] = String.valueOf(1);
        arrayOfString3[3] = String.valueOf(3);
      }
      str3 = null;
      break label276;
    }
  }

  public static g b(String paramString1, String paramString2, boolean paramBoolean)
  {
    Object localObject2;
    if (TextUtils.isEmpty(paramString1))
      localObject2 = null;
    label395: label402: label1053: 
    while (true)
    {
      return localObject2;
      String str1 = com.ijinshan.kinghelper.a.i.a(paramString1);
      Log.e("FirewallRuleManager", "querySystemRuleByNumber selection=" + "regx = 1 and match_mode = ? and matcher = ? and (apply_mode=? or apply_mode =?)");
      String[] arrayOfString8;
      if (paramBoolean)
      {
        arrayOfString8 = new String[4];
        arrayOfString8[0] = String.valueOf(1);
        arrayOfString8[1] = str1;
        arrayOfString8[2] = String.valueOf(1);
        arrayOfString8[3] = String.valueOf(2);
      }
      Cursor localCursor1;
      g localg4;
      String[] arrayOfString1;
      for (Object localObject1 = arrayOfString8; ; localObject1 = arrayOfString1)
      {
        localCursor1 = h.query("datable", null, "regx = 1 and match_mode = ? and matcher = ? and (apply_mode=? or apply_mode =?)", (String[])localObject1, null, null, null);
        if ((localCursor1 == null) || (localCursor1.getCount() == 0))
        {
          if (localCursor1 != null)
            localCursor1.close();
          localCursor1 = h.query("datable", null, "regx = 2 and match_mode=? and matcher=substr(?,1,length(matcher))  and ( apply_mode=? or apply_mode =?)", (String[])localObject1, null, null, "length(matcher) desc");
        }
        if (localCursor1 == null)
          break label402;
        Log.e("FirewallRuleManager", "querySystemRuleByNumber(" + str1 + ")=" + localCursor1.getCount());
        if (!localCursor1.moveToFirst())
          break label395;
        localg4 = g.a(localCursor1);
        if (localg4.c != 2)
          break label316;
        Log.d("FirewallRuleManager", "Found in system rules,number=" + str1 + ",rule=" + localg4);
        localCursor1.close();
        localObject2 = localg4;
        break;
        arrayOfString1 = new String[4];
        arrayOfString1[0] = String.valueOf(1);
        arrayOfString1[1] = str1;
        arrayOfString1[2] = String.valueOf(1);
        arrayOfString1[3] = String.valueOf(3);
      }
      label316: if (localg4.c == 1)
      {
        Log.d("FirewallRuleManager", "Found in system rules,number=" + str1 + ",rule=" + localg4);
        String str3 = DigestUtils.md5Hex(localg4.f);
        com.jxphone.mosecurity.a.a.b(g, "mg_sms_spused", str3);
        localCursor1.close();
        localObject2 = null;
      }
      else
      {
        localCursor1.close();
        if (!TextUtils.isEmpty(paramString2))
        {
          String[] arrayOfString7;
          if (paramBoolean)
          {
            arrayOfString7 = new String[3];
            arrayOfString7[0] = String.valueOf(2);
            arrayOfString7[1] = String.valueOf(1);
            arrayOfString7[2] = String.valueOf(2);
          }
          Cursor localCursor2;
          String[] arrayOfString2;
          for (Object localObject3 = arrayOfString7; ; localObject3 = arrayOfString2)
          {
            localCursor2 = h.query("datable", null, "match_mode=? and (apply_mode=? or apply_mode =?)", (String[])localObject3, null, null, null);
            if (localCursor2 == null)
              break label606;
            g localg3;
            do
            {
              if (!localCursor2.moveToNext())
                break;
              localg3 = g.a(localCursor2);
            }
            while (!com.ijinshan.kinghelper.a.i.b(localg3.f, paramString2));
            localCursor2.close();
            Log.d("FirewallRuleManager", "Found in system rules keyword macher,body=" + paramString2 + ",rule=" + localg3);
            localg3.h = g.getString(2131427594);
            localObject2 = localg3;
            break;
            arrayOfString2 = new String[3];
            arrayOfString2[0] = String.valueOf(2);
            arrayOfString2[1] = String.valueOf(1);
            arrayOfString2[2] = String.valueOf(3);
          }
          localCursor2.close();
          label606: if (!paramBoolean)
          {
            com.ijinshan.kinghelper.firewall.core.e.a(g);
            com.ijinshan.kinghelper.firewall.core.f localf = com.ijinshan.kinghelper.firewall.core.e.a(str1, paramString2);
            if (!TextUtils.isEmpty(localf.j))
              paramString2 = localf.j;
            if (localf.a)
            {
              localObject2 = null;
            }
            else
            {
              String[] arrayOfString6;
              if (paramBoolean)
              {
                arrayOfString6 = new String[3];
                arrayOfString6[0] = String.valueOf(6);
                arrayOfString6[1] = String.valueOf(1);
                arrayOfString6[2] = String.valueOf(2);
              }
              Cursor localCursor4;
              String[] arrayOfString5;
              for (Object localObject5 = arrayOfString6; ; localObject5 = arrayOfString5)
              {
                localCursor4 = h.query("datable", null, "match_mode=? and (apply_mode=? or apply_mode =?)", (String[])localObject5, null, null, null);
                if (localCursor4 == null)
                  break label851;
                g localg2;
                do
                {
                  if (!localCursor4.moveToNext())
                    break;
                  localg2 = g.a(localCursor4);
                  Log.i("baibaibaibaibai", localg2.f);
                }
                while (com.ijinshan.kinghelper.a.i.c(localg2.f, paramString2));
                localCursor4.close();
                Log.d("FirewallRuleManager", "Found in white system rules keyword macher,body=" + paramString2 + ",rule=" + localg2);
                localObject2 = null;
                break;
                arrayOfString5 = new String[3];
                arrayOfString5[0] = String.valueOf(6);
                arrayOfString5[1] = String.valueOf(1);
                arrayOfString5[2] = String.valueOf(3);
              }
              localCursor4.close();
            }
          }
          else
          {
            String str2 = paramString2;
            String[] arrayOfString4;
            if (paramBoolean)
            {
              arrayOfString4 = new String[3];
              arrayOfString4[0] = String.valueOf(5);
              arrayOfString4[1] = String.valueOf(1);
              arrayOfString4[2] = String.valueOf(2);
            }
            Cursor localCursor3;
            String[] arrayOfString3;
            for (Object localObject4 = arrayOfString4; ; localObject4 = arrayOfString3)
            {
              localCursor3 = h.query("datable", null, "match_mode=? and (apply_mode=? or apply_mode =?)", (String[])localObject4, null, null, null);
              if (localCursor3 == null)
                break label1053;
              g localg1;
              do
              {
                if (!localCursor3.moveToNext())
                  break;
                localg1 = g.a(localCursor3);
              }
              while (com.ijinshan.kinghelper.a.i.c(localg1.f, str2));
              localCursor3.close();
              Log.d("FirewallRuleManager", "Found in system rules keyword macher,body=" + str2 + ",rule=" + localg1);
              localg1.h = g.getString(2131427594);
              localObject2 = localg1;
              break;
              arrayOfString3 = new String[3];
              arrayOfString3[0] = String.valueOf(5);
              arrayOfString3[1] = String.valueOf(1);
              arrayOfString3[2] = String.valueOf(3);
            }
            localCursor3.close();
          }
        }
        else
        {
          label851: localObject2 = null;
        }
      }
    }
  }

  public static g b(String paramString, boolean paramBoolean)
  {
    Object localObject;
    if (TextUtils.isEmpty(paramString))
      localObject = null;
    while (true)
    {
      return localObject;
      String str = com.ijinshan.kinghelper.a.i.a(paramString);
      Cursor localCursor = b(paramBoolean, str);
      if (localCursor != null)
      {
        g localg = g.a(localCursor);
        if (localg.c == 2)
        {
          localCursor.close();
          Log.d("FirewallRuleManager", "Found BLACK in user rule,number=" + str);
          localObject = localg;
        }
        else
        {
          Log.d("FirewallRuleManager", "Found white or normal in user rule,number=" + str);
          localCursor.close();
          localObject = null;
        }
      }
      else
      {
        localObject = null;
      }
    }
  }

  public static List b()
  {
    ArrayList localArrayList = new ArrayList();
    Cursor localCursor = h.query("sptype", null, null, null, null, null, null);
    if ((localCursor != null) && (localCursor.moveToFirst()))
      do
      {
        k localk = new k();
        localk.a = localCursor.getInt(localCursor.getColumnIndex("id"));
        localk.b = localCursor.getString(localCursor.getColumnIndex("name"));
        localk.c = localCursor.getString(localCursor.getColumnIndex("desc"));
        localArrayList.add(localk);
      }
      while (localCursor.moveToNext());
    if (localCursor != null)
      localCursor.close();
    return localArrayList;
  }

  public static void b(Context paramContext)
  {
    SQLiteDatabase localSQLiteDatabase1 = new m(paramContext).getWritableDatabase();
    synchronized (c)
    {
      SQLiteDatabase localSQLiteDatabase2 = i;
      i = localSQLiteDatabase1;
      localSQLiteDatabase2.close();
      return;
    }
  }

  public static boolean b(String paramString, long paramLong)
  {
    String str;
    Object localObject;
    boolean bool2;
    if (paramLong != -1L)
    {
      String[] arrayOfString2 = new String[4];
      arrayOfString2[0] = paramString;
      arrayOfString2[1] = String.valueOf(5);
      arrayOfString2[2] = String.valueOf(2);
      arrayOfString2[3] = String.valueOf(paramLong);
      str = "matcher= ? and match_mode=? and rule_type=?" + " and " + "_id" + " != ? ";
      localObject = arrayOfString2;
      Cursor localCursor = i.query("datable", null, str, (String[])localObject, null, null, null);
      if (localCursor == null)
        break label173;
      if (localCursor.getCount() <= 0)
        break label167;
      bool2 = true;
      label119: localCursor.close();
    }
    label167: label173: for (boolean bool1 = bool2; ; bool1 = false)
    {
      return bool1;
      String[] arrayOfString1 = new String[3];
      arrayOfString1[0] = paramString;
      arrayOfString1[1] = String.valueOf(5);
      arrayOfString1[2] = String.valueOf(2);
      str = "matcher= ? and match_mode=? and rule_type=?";
      localObject = arrayOfString1;
      break;
      bool2 = false;
      break label119;
    }
  }

  private static Cursor c(boolean paramBoolean)
  {
    String[] arrayOfString2;
    if (paramBoolean)
    {
      arrayOfString2 = new String[3];
      arrayOfString2[0] = String.valueOf(3);
      arrayOfString2[1] = String.valueOf(1);
      arrayOfString2[2] = String.valueOf(2);
    }
    String[] arrayOfString1;
    for (Object localObject = arrayOfString2; ; localObject = arrayOfString1)
    {
      return h.query("datable", null, "match_mode=? and (apply_mode=? or apply_mode =?)", (String[])localObject, null, null, null);
      arrayOfString1 = new String[3];
      arrayOfString1[0] = String.valueOf(3);
      arrayOfString1[1] = String.valueOf(1);
      arrayOfString1[2] = String.valueOf(3);
    }
  }

  private static Cursor c(boolean paramBoolean, String paramString)
  {
    String[] arrayOfString2;
    if (paramBoolean)
    {
      arrayOfString2 = new String[4];
      arrayOfString2[0] = paramString;
      arrayOfString2[1] = String.valueOf(1);
      arrayOfString2[2] = String.valueOf(2);
      arrayOfString2[3] = String.valueOf(1);
    }
    String[] arrayOfString1;
    for (Object localObject = arrayOfString2; ; localObject = arrayOfString1)
    {
      Cursor localCursor = i.query("datable", null, "matcher=? and (apply_mode=? or apply_mode =? ) and match_mode =? ", (String[])localObject, null, null, null);
      if ((localCursor != null) && (!localCursor.moveToFirst()))
      {
        localCursor.close();
        localCursor = null;
      }
      return localCursor;
      arrayOfString1 = new String[4];
      arrayOfString1[0] = paramString;
      arrayOfString1[1] = String.valueOf(1);
      arrayOfString1[2] = String.valueOf(3);
      arrayOfString1[3] = String.valueOf(1);
    }
  }

  public static g c(String paramString, boolean paramBoolean)
  {
    Object localObject;
    if (TextUtils.isEmpty(paramString))
      localObject = null;
    while (true)
    {
      return localObject;
      String str = com.ijinshan.kinghelper.a.i.a(paramString);
      Cursor localCursor = b(paramBoolean, str);
      if (localCursor != null)
      {
        g localg = g.a(localCursor);
        if (localg.c == 2)
        {
          localCursor.close();
          Log.d("FirewallRuleManager", "Found BLACK in user rule,number=" + str);
          localObject = localg;
        }
        else
        {
          Log.d("FirewallRuleManager", "Found white or normal in user rule,number=" + str);
          localCursor.close();
          localObject = null;
        }
      }
      else if (a(g, str))
      {
        localObject = null;
      }
      else
      {
        localObject = new g();
        ((g)localObject).i = 0;
        ((g)localObject).d = 1;
        ((g)localObject).h = g.getString(2131427597);
        ((g)localObject).e = 1;
        ((g)localObject).f = "";
        ((g)localObject).g = g.getString(2131427597);
        ((g)localObject).c = 2;
      }
    }
  }

  private static k c(int paramInt)
  {
    String[] arrayOfString = new String[1];
    arrayOfString[0] = Integer.toString(paramInt);
    Cursor localCursor = h.query("sptype", null, "id=?", arrayOfString, null, null, null);
    k localk2;
    if (localCursor != null)
      if (localCursor.moveToFirst())
      {
        localk2 = new k();
        localk2.a = localCursor.getInt(localCursor.getColumnIndex("id"));
        localk2.b = localCursor.getString(localCursor.getColumnIndex("name"));
        localk2.c = localCursor.getString(localCursor.getColumnIndex("desc"));
        localCursor.close();
      }
    for (k localk1 = localk2; ; localk1 = null)
    {
      return localk1;
      localCursor.close();
    }
  }

  public static String c(String paramString)
  {
    String str;
    if (TextUtils.isEmpty(paramString))
      str = null;
    while (true)
    {
      return str;
      j localj = i.a(paramString);
      if (localj == null)
        str = "";
      else
        str = localj.d;
    }
  }

  private static int d(int paramInt)
  {
    Cursor localCursor = b(paramInt);
    int k = 0;
    if (localCursor != null)
    {
      k = localCursor.getCount();
      localCursor.close();
    }
    return k;
  }

  private static Cursor d(boolean paramBoolean)
  {
    String[] arrayOfString2;
    if (paramBoolean)
    {
      arrayOfString2 = new String[3];
      arrayOfString2[0] = String.valueOf(4);
      arrayOfString2[1] = String.valueOf(1);
      arrayOfString2[2] = String.valueOf(2);
    }
    String[] arrayOfString1;
    for (Object localObject = arrayOfString2; ; localObject = arrayOfString1)
    {
      return h.query("datable", null, "match_mode=? and (apply_mode=? or apply_mode =?)", (String[])localObject, null, null, null);
      arrayOfString1 = new String[3];
      arrayOfString1[0] = String.valueOf(4);
      arrayOfString1[1] = String.valueOf(1);
      arrayOfString1[2] = String.valueOf(3);
    }
  }

  private static Cursor d(boolean paramBoolean, String paramString)
  {
    Object localObject;
    String str2;
    if (paramBoolean)
    {
      String[] arrayOfString2 = new String[3];
      arrayOfString2[0] = String.valueOf(5);
      arrayOfString2[1] = String.valueOf(1);
      arrayOfString2[2] = String.valueOf(2);
      localObject = arrayOfString2;
      Cursor localCursor1 = i.query("datable", null, "match_mode =? and (apply_mode=? or apply_mode =? )", (String[])localObject, null, null, null);
      if (localCursor1 == null)
        break label243;
      if (!localCursor1.moveToFirst())
        break label237;
      str2 = null;
      do
        if (paramString.startsWith(localCursor1.getString(localCursor1.getColumnIndex("matcher"))))
          str2 = localCursor1.getString(localCursor1.getColumnIndex("_id"));
      while ((TextUtils.isEmpty(str2)) && (localCursor1.moveToNext()));
      label133: localCursor1.close();
    }
    label203: label237: label243: for (String str1 = str2; ; str1 = null)
    {
      if (!TextUtils.isEmpty(str1))
      {
        localCursor2 = i.query("datable", null, "_id =? ", new String[] { str1 }, null, null, null);
        if (localCursor2 != null)
        {
          if (localCursor2.moveToFirst())
            break label203;
          localCursor2.close();
        }
      }
      Cursor localCursor2 = null;
      return localCursor2;
      String[] arrayOfString1 = new String[3];
      arrayOfString1[0] = String.valueOf(5);
      arrayOfString1[1] = String.valueOf(1);
      arrayOfString1[2] = String.valueOf(3);
      localObject = arrayOfString1;
      break;
      str2 = null;
      break label133;
    }
  }

  public static String d(String paramString)
  {
    j localj = i(paramString);
    if (localj == null);
    for (String str = ""; ; str = localj.d)
      return str;
  }

  private static int e(int paramInt)
  {
    try
    {
      i.beginTransaction();
      try
      {
        String str = "rule_type=" + paramInt;
        int k = i.delete("datable", str, null);
        i.setTransactionSuccessful();
        i.endTransaction();
        return k;
      }
      finally
      {
        localObject2 = finally;
        i.endTransaction();
        throw localObject2;
      }
    }
    finally
    {
    }
  }

  public static Cursor e(String paramString)
  {
    Log.e("FirewallRuleManager", "querySystemRuleByNumber selection=" + "_id>? and _id<? and match_mode=? and ((matcher=substr(?,1,length(matcher))and regx = 2) or (regx =1 and matcher= ?)) and (apply_mode=? or apply_mode =?)");
    String[] arrayOfString = new String[7];
    arrayOfString[0] = String.valueOf(90000);
    arrayOfString[1] = String.valueOf(100000);
    arrayOfString[2] = String.valueOf(1);
    arrayOfString[3] = paramString;
    arrayOfString[4] = paramString;
    arrayOfString[5] = String.valueOf(1);
    arrayOfString[6] = String.valueOf(2);
    return h.query("datable", null, "_id>? and _id<? and match_mode=? and ((matcher=substr(?,1,length(matcher))and regx = 2) or (regx =1 and matcher= ?)) and (apply_mode=? or apply_mode =?)", arrayOfString, null, null, "length(matcher) desc");
  }

  private static Cursor e(boolean paramBoolean)
  {
    String[] arrayOfString2;
    if (paramBoolean)
    {
      arrayOfString2 = new String[3];
      arrayOfString2[0] = String.valueOf(5);
      arrayOfString2[1] = String.valueOf(1);
      arrayOfString2[2] = String.valueOf(2);
    }
    String[] arrayOfString1;
    for (Object localObject = arrayOfString2; ; localObject = arrayOfString1)
    {
      return h.query("datable", null, "match_mode=? and (apply_mode=? or apply_mode =?)", (String[])localObject, null, null, null);
      arrayOfString1 = new String[3];
      arrayOfString1[0] = String.valueOf(5);
      arrayOfString1[1] = String.valueOf(1);
      arrayOfString1[2] = String.valueOf(3);
    }
  }

  private static Cursor e(boolean paramBoolean, String paramString)
  {
    String str = com.jxphone.mosecurity.d.a.a(g).a(paramString);
    Cursor localCursor;
    if (TextUtils.isEmpty(str))
    {
      localCursor = null;
      return localCursor;
    }
    String[] arrayOfString2;
    if (paramBoolean)
    {
      arrayOfString2 = new String[4];
      arrayOfString2[0] = String.valueOf(6);
      arrayOfString2[1] = str;
      arrayOfString2[2] = String.valueOf(1);
      arrayOfString2[3] = String.valueOf(2);
    }
    String[] arrayOfString1;
    for (Object localObject = arrayOfString2; ; localObject = arrayOfString1)
    {
      localCursor = i.query("datable", null, "match_mode=? and matcher=substr(?,1,length(matcher)) and (apply_mode=? or apply_mode =?)", (String[])localObject, null, null, null);
      if ((localCursor == null) || (localCursor.moveToFirst()))
        break;
      localCursor.close();
      localCursor = null;
      break;
      arrayOfString1 = new String[4];
      arrayOfString1[0] = String.valueOf(6);
      arrayOfString1[1] = str;
      arrayOfString1[2] = String.valueOf(1);
      arrayOfString1[3] = String.valueOf(3);
    }
  }

  private static Cursor f(boolean paramBoolean)
  {
    String[] arrayOfString2;
    if (paramBoolean)
    {
      arrayOfString2 = new String[3];
      arrayOfString2[0] = String.valueOf(6);
      arrayOfString2[1] = String.valueOf(1);
      arrayOfString2[2] = String.valueOf(2);
    }
    String[] arrayOfString1;
    for (Object localObject = arrayOfString2; ; localObject = arrayOfString1)
    {
      return h.query("datable", null, "match_mode=? and (apply_mode=? or apply_mode =?)", (String[])localObject, null, null, null);
      arrayOfString1 = new String[3];
      arrayOfString1[0] = String.valueOf(6);
      arrayOfString1[1] = String.valueOf(1);
      arrayOfString1[2] = String.valueOf(3);
    }
  }

  public static boolean f(String paramString)
  {
    boolean bool;
    if (com.ijinshan.kinghelper.a.j.c(g, paramString) > 0)
      bool = true;
    while (true)
    {
      return bool;
      if (com.ijinshan.kinghelper.a.j.b(g, paramString) >= 3)
        bool = true;
      else
        bool = false;
    }
  }

  private static Cursor g(boolean paramBoolean)
  {
    SQLiteDatabase localSQLiteDatabase = i;
    if (paramBoolean);
    for (String[] arrayOfString = g.j; ; arrayOfString = g.k)
      return localSQLiteDatabase.query("datable", null, "apply_mode=? or apply_mode =?", arrayOfString, null, null, null);
  }

  public static boolean g(String paramString)
  {
    if (i(paramString).e == 1);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  private static k h(String paramString)
  {
    j localj = i(paramString);
    Cursor localCursor;
    k localk1;
    if (localj.b != 0)
    {
      int k = localj.b;
      String[] arrayOfString = new String[1];
      arrayOfString[0] = Integer.toString(k);
      localCursor = h.query("sptype", null, "id=?", arrayOfString, null, null, null);
      if (localCursor != null)
        if (localCursor.moveToFirst())
        {
          k localk2 = new k();
          localk2.a = localCursor.getInt(localCursor.getColumnIndex("id"));
          localk2.b = localCursor.getString(localCursor.getColumnIndex("name"));
          localk2.c = localCursor.getString(localCursor.getColumnIndex("desc"));
          localCursor.close();
          localk1 = localk2;
        }
    }
    while (true)
    {
      return localk1;
      localCursor.close();
      localk1 = null;
      continue;
      localk1 = null;
    }
  }

  private static j i(String paramString)
  {
    Object localObject1;
    if (TextUtils.isEmpty(paramString))
      localObject1 = null;
    while (true)
    {
      return localObject1;
      localObject1 = i.a(paramString);
      if (localObject1 != null)
        continue;
      j localj = new j();
      String[] arrayOfString = { paramString };
      try
      {
        localCursor2 = h.query("datable", null, "regx = 1 and matcher = ?", arrayOfString, null, null, null);
        if (localCursor2 == null);
      }
      catch (Exception localException1)
      {
        try
        {
          if (localCursor2.getCount() == 0)
          {
            if (localCursor2 != null)
              localCursor2.close();
            Cursor localCursor3 = h.query("datable", null, "regx = 2 and matcher=substr(?, 1, length(matcher))", arrayOfString, null, null, "length(matcher) desc");
            for (localObject2 = localCursor3; ; localObject2 = localCursor1)
            {
              localObject3 = "";
              if (localObject2 == null)
                break label305;
              if (!((Cursor)localObject2).moveToFirst())
                break label288;
              str2 = ((Cursor)localObject2).getString(((Cursor)localObject2).getColumnIndex("owner"));
              int i2 = ((Cursor)localObject2).getInt(((Cursor)localObject2).getColumnIndex("sptype"));
              String str3 = ((Cursor)localObject2).getString(((Cursor)localObject2).getColumnIndex("apply_mode"));
              i1 = ((Cursor)localObject2).getInt(((Cursor)localObject2).getColumnIndex("rule_type"));
              n = i2;
              localObject4 = str3;
              ((Cursor)localObject2).close();
              str1 = str2;
              localObject3 = localObject4;
              k = n;
              m = i1;
              localj.b = k;
              localj.c = ((String)localObject3);
              localj.d = str1;
              localj.e = m;
              i.a(paramString, localj);
              localObject1 = localj;
              break;
              localException1 = localException1;
              localCursor1 = null;
              localException1.printStackTrace();
            }
          }
        }
        catch (Exception localException2)
        {
          while (true)
          {
            Cursor localCursor2;
            Object localObject3;
            Cursor localCursor1 = localCursor2;
            continue;
            label288: Object localObject4 = localObject3;
            String str2 = "";
            int n = 0;
            int i1 = 0;
            continue;
            label305: String str1 = "";
            int k = 0;
            int m = 0;
            continue;
            Object localObject2 = localCursor2;
          }
        }
      }
    }
  }

  private static String j(String paramString)
  {
    return com.jxphone.mosecurity.d.a.a(g).a(paramString);
  }

  private static boolean k(String paramString)
  {
    return a(g, paramString);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.kinghelper.firewall.a.e
 * JD-Core Version:    0.6.2
 */