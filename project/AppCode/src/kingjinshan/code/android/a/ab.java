package android.a;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.net.Uri.Builder;
import android.util.Log;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

public final class ab
  implements ac
{
  public static final Uri a = localUri;
  public static final Uri b = Uri.withAppendedPath(localUri, "obsolete");
  public static final int c = 0;
  public static final int d = 1;
  private static final String[] n = { "_id" };
  private static final String o = "UTF-8";
  private static final Uri p = Uri.parse("content://mms-sms/threadID");

  static
  {
    Uri localUri = Uri.withAppendedPath(r.b, "conversations");
  }

  public static long a(Context paramContext, String paramString)
  {
    HashSet localHashSet = new HashSet();
    localHashSet.add(paramString);
    return a(paramContext, localHashSet);
  }

  private static long a(Context paramContext, Set paramSet)
  {
    Uri.Builder localBuilder = p.buildUpon();
    Iterator localIterator = paramSet.iterator();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      if (h.b(str))
        str = h.a(str);
      localBuilder.appendQueryParameter("recipient", str);
    }
    Uri localUri = localBuilder.build();
    Log.v("Telephony", "getOrCreateThreadId uri: " + localUri);
    Cursor localCursor = b.a(paramContext, paramContext.getContentResolver(), localUri, n);
    Log.v("Telephony", "getOrCreateThreadId cursor cnt: " + localCursor.getCount());
    if (localCursor != null);
    try
    {
      if (localCursor.moveToFirst())
      {
        long l = localCursor.getLong(0);
        return l;
      }
      Log.e("Telephony", "getOrCreateThreadId returned no rows!");
      localCursor.close();
      Log.e("Telephony", "getOrCreateThreadId failed with uri " + localUri.toString());
      throw new IllegalArgumentException("Unable to find or allocate a thread ID.");
    }
    finally
    {
      localCursor.close();
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     android.a.ab
 * JD-Core Version:    0.6.2
 */