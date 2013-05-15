package com.avast.android.mobilesecurity.app.filter.core;

import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.provider.ContactsContract.Contacts;
import com.avast.android.mobilesecurity.j;

public class d
{
  public static e a(Context paramContext, long paramLong)
  {
    e locale = new e();
    Cursor localCursor = paramContext.getContentResolver().query(j.a(paramLong), null, null, null, null);
    try
    {
      if (localCursor.moveToFirst())
        if (localCursor.getInt(localCursor.getColumnIndex("hiddenNumbers")) <= 0)
          break label120;
      label120: for (boolean bool1 = true; ; bool1 = false)
      {
        locale.b = bool1;
        if (localCursor.getInt(localCursor.getColumnIndex("unknownNumbers")) <= 0)
          break;
        bool2 = true;
        locale.a = bool2;
        locale.c = localCursor.getString(localCursor.getColumnIndex("name"));
        return locale;
      }
      boolean bool2 = false;
    }
    finally
    {
      localCursor.close();
    }
  }

  public static String a(Context paramContext, String paramString)
  {
    Uri localUri = Uri.withAppendedPath(ContactsContract.Contacts.CONTENT_LOOKUP_URI, paramString);
    Cursor localCursor = paramContext.getContentResolver().query(localUri, new String[] { "display_name" }, null, null, null);
    try
    {
      if (localCursor.moveToFirst())
      {
        String str2 = localCursor.getString(0);
        str1 = str2;
        return str1;
      }
      localCursor.close();
      String str1 = "";
    }
    finally
    {
      localCursor.close();
    }
  }

  public static String a(String paramString)
  {
    return paramString.replaceAll("\\*+", "*").replaceAll("[^0-9+\\.?\\*]", "");
  }

  public static String a(String paramString, boolean paramBoolean)
  {
    if (paramBoolean);
    for (String str = paramString.replaceAll("[ *.]", ""); ; str = paramString.replaceAll("[^0-9+]", ""))
      return str;
  }

  public static String b(String paramString)
  {
    return paramString.replaceAll("\\.", "\\\\d").replaceAll("\\*", ".*");
  }

  public static int c(String paramString)
  {
    return a(paramString, true).length();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.filter.core.d
 * JD-Core Version:    0.6.2
 */