package com.ijinshan.kinghelper.a;

import android.content.ContentResolver;
import android.content.ContentUris;
import android.database.Cursor;
import android.net.Uri;
import android.provider.ContactsContract.CommonDataKinds.Phone;
import android.provider.ContactsContract.Contacts;
import android.provider.ContactsContract.PhoneLookup;

public final class e
{
  public static final String a = "com.android.contacts";
  public static final Uri b = Uri.parse("content://com.android.contacts");
  public static final Uri c = ContactsContract.PhoneLookup.CONTENT_FILTER_URI;
  public static final Uri d = ContactsContract.Contacts.CONTENT_URI;
  public static final String e = "data1";
  public static final String f = "display_name";
  public static final String g = "_id";
  public static final Uri h = ContactsContract.CommonDataKinds.Phone.CONTENT_URI;

  public static Uri a(ContentResolver paramContentResolver, Uri paramUri)
  {
    Object localObject1;
    if (paramUri == null)
      localObject1 = null;
    while (true)
    {
      return localObject1;
      Cursor localCursor = paramContentResolver.query(paramUri, new String[] { "_id" }, null, null, null);
      if (localCursor == null)
      {
        localObject1 = null;
        continue;
      }
      try
      {
        if (localCursor.moveToFirst())
        {
          long l = localCursor.getLong(0);
          Uri localUri = ContentUris.withAppendedId(d, l);
          localCursor.close();
          localObject1 = localUri;
          continue;
        }
        localCursor.close();
        localObject1 = null;
      }
      finally
      {
        localCursor.close();
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.kinghelper.a.e
 * JD-Core Version:    0.6.2
 */