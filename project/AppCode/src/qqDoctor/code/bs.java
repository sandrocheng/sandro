import android.content.ContentResolver;
import android.content.ContentUris;
import android.content.ContentValues;
import android.content.Context;
import android.database.SQLException;
import android.net.Uri;
import android.provider.ContactsContract.Groups;
import java.util.HashMap;

public class bs extends bq
{
  private static ContentResolver a;
  private static bs d = null;
  private HashMap<Integer, String> b = new HashMap();
  private HashMap<String, Integer> c = new HashMap();

  private bs(Context paramContext)
  {
    new HashMap();
    new HashMap();
    a = paramContext.getContentResolver();
  }

  public static long a(String paramString)
  {
    long l1 = -2L;
    ContentValues localContentValues = new ContentValues();
    localContentValues.put("title", paramString);
    localContentValues.put("group_visible", Integer.valueOf(1));
    if (ci.k)
    {
      localContentValues.put("account_name", "Phone");
      localContentValues.put("account_type", "com.android.acersync");
      localContentValues.put("should_sync", Integer.valueOf(0));
    }
    try
    {
      while (true)
      {
        Uri localUri2 = a.insert(ContactsContract.Groups.CONTENT_URI, localContentValues);
        localUri1 = localUri2;
        if (localUri1 != null)
          break;
        return l1;
        if (ci.q)
        {
          localContentValues.put("account_name", "pcsc");
          localContentValues.put("account_type", "com.htc.android.pcsc");
        }
        else if (ci.r)
        {
          localContentValues.put("account_name", "Contacts");
          localContentValues.put("account_type", "com.motorola.blur.contacts.UNCONNECTED_ACCOUNT");
          localContentValues.put("should_sync", Integer.valueOf(0));
          localContentValues.put("dirty", Integer.valueOf(0));
        }
        else if (ci.v)
        {
          localContentValues.put("account_name", "Contacts");
          localContentValues.put("account_type", "com.motorola.blur.contacts.UNCONNECTED_ACCOUNT");
          localContentValues.put("should_sync", Integer.valueOf(1));
          localContentValues.put("dirty", Integer.valueOf(1));
          localContentValues.put("sync3", "blur");
        }
        else if (ci.y)
        {
          localContentValues.put("account_name", "vnd.sec.contact.phone");
          localContentValues.put("account_type", "vnd.sec.contact.phone");
        }
        else if (ci.B)
        {
          localContentValues.put("account_name", "local-contacts");
          localContentValues.put("account_type", "com.local.contacts");
        }
        else if (ci.F)
        {
          localContentValues.put("account_name", "LG PC Suite");
          localContentValues.put("account_type", "com.mobileleader.sync");
        }
      }
    }
    catch (SQLException localSQLException)
    {
      while (true)
      {
        dk.c("SYSContactGroupDaoV2", "addGroup(), " + localSQLException.toString());
        Uri localUri1 = null;
        continue;
        try
        {
          long l2 = ContentUris.parseId(localUri1);
          l1 = l2;
        }
        catch (Exception localException)
        {
          dk.c("SYSContactGroupDaoV2", "addGroup(), " + localException.toString());
        }
      }
    }
  }

  public static bs a(Context paramContext)
  {
    if (d == null);
    try
    {
      if (d == null)
        d = new bs(paramContext);
      return d;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final String a(int paramInt)
  {
    if (this.b == null);
    for (String str = null; ; str = (String)this.b.get(Integer.valueOf(paramInt)))
      return str;
  }

  // ERROR //
  public final void a()
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_1
    //   2: aload_0
    //   3: getfield 26	bs:b	Ljava/util/HashMap;
    //   6: ifnull +10 -> 16
    //   9: aload_0
    //   10: getfield 28	bs:c	Ljava/util/HashMap;
    //   13: ifnonnull +4 -> 17
    //   16: return
    //   17: aload_0
    //   18: getfield 26	bs:b	Ljava/util/HashMap;
    //   21: invokevirtual 175	java/util/HashMap:clear	()V
    //   24: aload_0
    //   25: getfield 28	bs:c	Ljava/util/HashMap;
    //   28: invokevirtual 175	java/util/HashMap:clear	()V
    //   31: getstatic 178	ci:o	Z
    //   34: ifeq +64 -> 98
    //   37: getstatic 36	bs:a	Landroid/content/ContentResolver;
    //   40: getstatic 85	android/provider/ContactsContract$Groups:CONTENT_URI	Landroid/net/Uri;
    //   43: iconst_2
    //   44: anewarray 172	java/lang/String
    //   47: dup
    //   48: iconst_0
    //   49: ldc 180
    //   51: aastore
    //   52: dup
    //   53: iconst_1
    //   54: ldc 48
    //   56: aastore
    //   57: ldc 182
    //   59: iconst_1
    //   60: anewarray 172	java/lang/String
    //   63: dup
    //   64: iconst_0
    //   65: ldc 184
    //   67: aastore
    //   68: aconst_null
    //   69: invokevirtual 188	android/content/ContentResolver:query	(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   72: astore 11
    //   74: aload 11
    //   76: astore 4
    //   78: aload 4
    //   80: ifnonnull +54 -> 134
    //   83: aload 4
    //   85: ifnull -69 -> 16
    //   88: aload 4
    //   90: invokeinterface 193 1 0
    //   95: goto -79 -> 16
    //   98: getstatic 36	bs:a	Landroid/content/ContentResolver;
    //   101: getstatic 85	android/provider/ContactsContract$Groups:CONTENT_URI	Landroid/net/Uri;
    //   104: iconst_2
    //   105: anewarray 172	java/lang/String
    //   108: dup
    //   109: iconst_0
    //   110: ldc 180
    //   112: aastore
    //   113: dup
    //   114: iconst_1
    //   115: ldc 48
    //   117: aastore
    //   118: ldc 195
    //   120: aconst_null
    //   121: aconst_null
    //   122: invokevirtual 188	android/content/ContentResolver:query	(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   125: astore 5
    //   127: aload 5
    //   129: astore 4
    //   131: goto -53 -> 78
    //   134: aload 4
    //   136: invokeinterface 199 1 0
    //   141: ifeq +67 -> 208
    //   144: aload 4
    //   146: iconst_0
    //   147: invokeinterface 203 2 0
    //   152: istore 6
    //   154: aload 4
    //   156: iconst_1
    //   157: invokeinterface 206 2 0
    //   162: astore 7
    //   164: aload_0
    //   165: getfield 26	bs:b	Ljava/util/HashMap;
    //   168: iload 6
    //   170: invokestatic 60	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   173: aload 7
    //   175: invokevirtual 209	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   178: pop
    //   179: aload_0
    //   180: getfield 28	bs:c	Ljava/util/HashMap;
    //   183: aload 7
    //   185: iload 6
    //   187: invokestatic 60	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   190: invokevirtual 209	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   193: pop
    //   194: aload 4
    //   196: invokeinterface 212 1 0
    //   201: istore 10
    //   203: iload 10
    //   205: ifne -61 -> 144
    //   208: aload 4
    //   210: ifnull -194 -> 16
    //   213: aload 4
    //   215: invokeinterface 193 1 0
    //   220: goto -204 -> 16
    //   223: astore_3
    //   224: aconst_null
    //   225: astore 4
    //   227: ldc 135
    //   229: new 137	java/lang/StringBuilder
    //   232: dup
    //   233: ldc 214
    //   235: invokespecial 142	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   238: aload_3
    //   239: invokevirtual 162	java/lang/Exception:toString	()Ljava/lang/String;
    //   242: invokevirtual 150	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   245: invokevirtual 151	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   248: invokestatic 155	dk:c	(Ljava/lang/String;Ljava/lang/String;)V
    //   251: aload 4
    //   253: ifnull -237 -> 16
    //   256: aload 4
    //   258: invokeinterface 193 1 0
    //   263: goto -247 -> 16
    //   266: astore_2
    //   267: aload_1
    //   268: ifnull +9 -> 277
    //   271: aload_1
    //   272: invokeinterface 193 1 0
    //   277: aload_2
    //   278: athrow
    //   279: astore_2
    //   280: aload 4
    //   282: astore_1
    //   283: goto -16 -> 267
    //   286: astore_3
    //   287: goto -60 -> 227
    //
    // Exception table:
    //   from	to	target	type
    //   31	74	223	java/lang/Exception
    //   98	127	223	java/lang/Exception
    //   31	74	266	finally
    //   98	127	266	finally
    //   134	203	279	finally
    //   227	251	279	finally
    //   134	203	286	java/lang/Exception
  }

  public final int b(String paramString)
  {
    int i;
    if (this.c == null)
      i = -1;
    while (true)
    {
      return i;
      Integer localInteger = (Integer)this.c.get(paramString);
      if (localInteger == null)
        i = -1;
      else
        i = localInteger.intValue();
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bs
 * JD-Core Version:    0.6.2
 */