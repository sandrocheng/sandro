import android.content.ContentResolver;
import android.content.ContentUris;
import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.provider.Contacts.GroupMembership;
import android.provider.Contacts.Groups;
import java.util.HashMap;
import java.util.List;

public class br extends bq
{
  private static ContentResolver a;
  private static br d = null;
  private HashMap<Integer, String> b = new HashMap();
  private HashMap<String, Integer> c = new HashMap();

  private br(Context paramContext)
  {
    a = paramContext.getContentResolver();
  }

  public static br a(Context paramContext)
  {
    if (d == null);
    try
    {
      if (d == null)
        d = new br(paramContext);
      return d;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public static boolean a(long paramLong, int paramInt)
  {
    ContentValues localContentValues = new ContentValues();
    localContentValues.put("group_id", Integer.valueOf(paramInt));
    localContentValues.put("person", Long.valueOf(paramLong));
    if (a.insert(Contacts.GroupMembership.CONTENT_URI, localContentValues) != null);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public static long b(String paramString)
  {
    ContentValues localContentValues = new ContentValues();
    localContentValues.put("name", paramString);
    if (ci.n)
      localContentValues.put("_sync_account", "phone");
    Uri localUri = a.insert(Contacts.Groups.CONTENT_URI, localContentValues);
    if (localUri == null);
    for (long l = -2L; ; l = ContentUris.parseId(localUri))
      return l;
  }

  public final int a(String paramString)
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

  public final String a(String paramString, List<Integer> paramList)
  {
    StringBuffer localStringBuffer = new StringBuffer("");
    Cursor localCursor = a.query(Contacts.GroupMembership.CONTENT_URI, new String[] { "group_id" }, "person = " + paramString, null, null);
    String str1 = null;
    label59: int i;
    if (localCursor == null)
    {
      return str1;
      i = localCursor.getInt(localCursor.getColumnIndex("group_id"));
      if (-1 != i)
      {
        paramList.add(Integer.valueOf(i));
        if (this.b != null)
          break label152;
      }
    }
    label152: for (String str2 = null; ; str2 = (String)this.b.get(Integer.valueOf(i)))
    {
      if (localStringBuffer.length() > 0)
        localStringBuffer.append(",");
      localStringBuffer.append(str2);
      if (localCursor.moveToNext())
        break label59;
      localCursor.close();
      str1 = localStringBuffer.toString();
      break;
    }
  }

  // ERROR //
  public final void a()
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 26	br:b	Ljava/util/HashMap;
    //   4: ifnull +10 -> 14
    //   7: aload_0
    //   8: getfield 28	br:c	Ljava/util/HashMap;
    //   11: ifnonnull +4 -> 15
    //   14: return
    //   15: aload_0
    //   16: getfield 26	br:b	Ljava/util/HashMap;
    //   19: invokevirtual 176	java/util/HashMap:clear	()V
    //   22: aload_0
    //   23: getfield 28	br:c	Ljava/util/HashMap;
    //   26: invokevirtual 176	java/util/HashMap:clear	()V
    //   29: getstatic 36	br:a	Landroid/content/ContentResolver;
    //   32: getstatic 96	android/provider/Contacts$Groups:CONTENT_URI	Landroid/net/Uri;
    //   35: iconst_2
    //   36: anewarray 123	java/lang/String
    //   39: dup
    //   40: iconst_0
    //   41: ldc 178
    //   43: aastore
    //   44: dup
    //   45: iconst_1
    //   46: ldc 80
    //   48: aastore
    //   49: aconst_null
    //   50: aconst_null
    //   51: aconst_null
    //   52: invokevirtual 140	android/content/ContentResolver:query	(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   55: astore 4
    //   57: aload 4
    //   59: astore_2
    //   60: aload_2
    //   61: ifnonnull +16 -> 77
    //   64: aload_2
    //   65: ifnull -51 -> 14
    //   68: aload_2
    //   69: invokeinterface 170 1 0
    //   74: goto -60 -> 14
    //   77: aload_2
    //   78: invokeinterface 181 1 0
    //   83: ifeq +64 -> 147
    //   86: aload_2
    //   87: iconst_0
    //   88: invokeinterface 149 2 0
    //   93: istore 5
    //   95: aload_2
    //   96: iconst_1
    //   97: invokeinterface 185 2 0
    //   102: astore 6
    //   104: aload_0
    //   105: getfield 26	br:b	Ljava/util/HashMap;
    //   108: iload 5
    //   110: invokestatic 51	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   113: aload 6
    //   115: invokevirtual 188	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   118: pop
    //   119: aload_0
    //   120: getfield 28	br:c	Ljava/util/HashMap;
    //   123: aload 6
    //   125: iload 5
    //   127: invokestatic 51	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   130: invokevirtual 188	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   133: pop
    //   134: aload_2
    //   135: invokeinterface 167 1 0
    //   140: istore 9
    //   142: iload 9
    //   144: ifne -58 -> 86
    //   147: aload_2
    //   148: ifnull -134 -> 14
    //   151: aload_2
    //   152: invokeinterface 170 1 0
    //   157: goto -143 -> 14
    //   160: astore_3
    //   161: aconst_null
    //   162: astore_2
    //   163: ldc 190
    //   165: new 125	java/lang/StringBuilder
    //   168: dup
    //   169: ldc 192
    //   171: invokespecial 128	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   174: aload_3
    //   175: invokevirtual 193	java/lang/Exception:toString	()Ljava/lang/String;
    //   178: invokevirtual 132	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   181: invokevirtual 136	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   184: invokestatic 197	dk:c	(Ljava/lang/String;Ljava/lang/String;)V
    //   187: aload_2
    //   188: ifnull -174 -> 14
    //   191: aload_2
    //   192: invokeinterface 170 1 0
    //   197: goto -183 -> 14
    //   200: astore_1
    //   201: aconst_null
    //   202: astore_2
    //   203: aload_2
    //   204: ifnull +9 -> 213
    //   207: aload_2
    //   208: invokeinterface 170 1 0
    //   213: aload_1
    //   214: athrow
    //   215: astore_1
    //   216: goto -13 -> 203
    //   219: astore_3
    //   220: goto -57 -> 163
    //
    // Exception table:
    //   from	to	target	type
    //   29	57	160	java/lang/Exception
    //   29	57	200	finally
    //   77	142	215	finally
    //   163	187	215	finally
    //   77	142	219	java/lang/Exception
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     br
 * JD-Core Version:    0.6.2
 */