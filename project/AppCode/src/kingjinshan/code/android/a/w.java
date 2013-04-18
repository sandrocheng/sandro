package android.a;

import android.content.ContentResolver;
import android.net.Uri;
import android.provider.BaseColumns;

public final class w
  implements aa, BaseColumns
{
  public static final Uri a = Uri.parse("content://sms/inbox");
  public static final String b = "date DESC";

  private static Uri a(ContentResolver paramContentResolver, String paramString1, String paramString2, String paramString3, Long paramLong, boolean paramBoolean)
  {
    return t.a(paramContentResolver, a, paramString1, paramString2, paramString3, paramLong, paramBoolean);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     android.a.w
 * JD-Core Version:    0.6.2
 */