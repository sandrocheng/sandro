package android.a;

import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.provider.BaseColumns;

public final class t
  implements aa, BaseColumns
{
  public static final Uri a = Uri.parse("content://sms");
  public static final String b = "date DESC";

  public static final Cursor a(ContentResolver paramContentResolver)
  {
    return paramContentResolver.query(a, null, null, null, "date DESC");
  }

  private static Cursor a(ContentResolver paramContentResolver, String[] paramArrayOfString)
  {
    return paramContentResolver.query(a, paramArrayOfString, null, null, "date DESC");
  }

  public static Uri a(ContentResolver paramContentResolver, Uri paramUri, String paramString1, String paramString2, String paramString3, Long paramLong, boolean paramBoolean)
  {
    return a(paramContentResolver, paramUri, paramString1, paramString2, paramString3, paramLong, paramBoolean, false, -1L);
  }

  public static Uri a(ContentResolver paramContentResolver, Uri paramUri, String paramString1, String paramString2, String paramString3, Long paramLong, boolean paramBoolean1, boolean paramBoolean2, long paramLong1)
  {
    ContentValues localContentValues = new ContentValues(7);
    localContentValues.put("address", paramString1);
    if (paramLong != null)
      localContentValues.put("date", paramLong);
    if (paramBoolean1);
    for (Integer localInteger = Integer.valueOf(1); ; localInteger = Integer.valueOf(0))
    {
      localContentValues.put("read", localInteger);
      localContentValues.put("subject", paramString3);
      localContentValues.put("body", paramString2);
      if (paramBoolean2)
        localContentValues.put("status", Integer.valueOf(64));
      if (paramLong1 != -1L)
        localContentValues.put("thread_id", Long.valueOf(paramLong1));
      return paramContentResolver.insert(paramUri, localContentValues);
    }
  }

  public static boolean a(int paramInt)
  {
    if ((paramInt == 5) || (paramInt == 4) || (paramInt == 2) || (paramInt == 6));
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  private static boolean a(Context paramContext, Uri paramUri, int paramInt)
  {
    boolean bool;
    if (paramUri == null)
      bool = false;
    while (true)
    {
      return bool;
      int j;
      int i;
      label59: ContentValues localContentValues;
      switch (paramInt)
      {
      default:
        bool = false;
        break;
      case 1:
      case 3:
        j = 0;
        i = 0;
        localContentValues = new ContentValues(2);
        localContentValues.put("type", Integer.valueOf(paramInt));
        if (i != 0)
          localContentValues.put("read", Integer.valueOf(0));
      case 2:
      case 4:
      case 5:
      case 6:
        while (true)
        {
          if (1 != b.a(paramContext, paramContext.getContentResolver(), paramUri, localContentValues))
            break label151;
          bool = true;
          break;
          j = 1;
          i = 0;
          break label59;
          i = 1;
          j = 0;
          break label59;
          if (j != 0)
            localContentValues.put("read", Integer.valueOf(1));
        }
        label151: bool = false;
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     android.a.t
 * JD-Core Version:    0.6.2
 */