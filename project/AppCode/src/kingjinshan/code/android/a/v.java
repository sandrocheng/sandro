package android.a;

import android.content.ContentResolver;
import android.content.ContentValues;
import android.net.Uri;
import android.provider.BaseColumns;

public final class v
  implements aa, BaseColumns
{
  public static final Uri a = Uri.parse("content://sms/draft");
  public static final String b = "date DESC";

  private static Uri a(ContentResolver paramContentResolver, String paramString1, String paramString2, String paramString3, Long paramLong)
  {
    return t.a(paramContentResolver, a, paramString1, paramString2, paramString3, paramLong, true);
  }

  private static boolean a(ContentResolver paramContentResolver, Uri paramUri, String paramString)
  {
    ContentValues localContentValues = new ContentValues(2);
    localContentValues.put("body", paramString);
    localContentValues.put("date", Long.valueOf(System.currentTimeMillis()));
    if (paramContentResolver.update(paramUri, localContentValues, null, null) == 1);
    for (boolean bool = true; ; bool = false)
      return bool;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     android.a.v
 * JD-Core Version:    0.6.2
 */