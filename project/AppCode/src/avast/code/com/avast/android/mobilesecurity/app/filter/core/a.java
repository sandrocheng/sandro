package com.avast.android.mobilesecurity.app.filter.core;

import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import android.database.MatrixCursor;
import android.database.MatrixCursor.RowBuilder;
import android.net.Uri;
import android.provider.CallLog.Calls;
import android.provider.ContactsContract.Contacts;
import android.provider.ContactsContract.PhoneLookup;
import android.text.TextUtils;
import com.avast.android.generic.b;
import java.util.Calendar;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

public class a extends b
{
  private static final String[] f = { "_id", "number", "date", "new" };
  private ContentResolver g;
  private int h;

  public a(Context paramContext)
  {
    super(paramContext);
    this.g = paramContext.getContentResolver();
    this.h = 3;
  }

  private Cursor a(String paramString)
  {
    Uri localUri = Uri.withAppendedPath(ContactsContract.PhoneLookup.CONTENT_FILTER_URI, Uri.encode(paramString));
    return this.g.query(localUri, new String[] { "lookup", "display_name" }, null, null, null);
  }

  public int f()
  {
    return this.h;
  }

  public Cursor w()
  {
    MatrixCursor localMatrixCursor = new MatrixCursor(new String[] { "_id", "contact_uri", "name", "number", "count", "date", "new" });
    HashMap localHashMap = new HashMap();
    LinkedList localLinkedList = new LinkedList();
    Calendar localCalendar = Calendar.getInstance();
    localCalendar.add(2, -this.h);
    ContentResolver localContentResolver = this.g;
    Uri localUri = CallLog.Calls.CONTENT_URI;
    String[] arrayOfString1 = f;
    String[] arrayOfString2 = new String[1];
    arrayOfString2[0] = String.valueOf(localCalendar.getTimeInMillis());
    Cursor localCursor1 = localContentResolver.query(localUri, arrayOfString1, "NOT type=2 AND date>?", arrayOfString2, "date DESC");
    if ((localCursor1 != null) && (localCursor1.moveToFirst()))
    {
      int i = localCursor1.getColumnIndex("_id");
      int j = localCursor1.getColumnIndex("number");
      int k = localCursor1.getColumnIndex("date");
      int m = localCursor1.getColumnIndex("new");
      while (true)
      {
        String str1 = localCursor1.getString(j);
        if (localHashMap.containsKey(str1))
        {
          c localc3 = (c)localHashMap.get(str1);
          localc3.e = (1 + localc3.e);
        }
        while (!localCursor1.moveToNext())
        {
          Iterator localIterator = localLinkedList.iterator();
          while (localIterator.hasNext())
          {
            c localc2 = (c)localIterator.next();
            localMatrixCursor.newRow().add(Long.valueOf(localc2.a)).add(localc2.b).add(localc2.c).add(localc2.d).add(Integer.valueOf(localc2.e)).add(Long.valueOf(localc2.f)).add(Integer.valueOf(localc2.g));
          }
          c localc1 = new c(null);
          localc1.d = str1;
          localc1.a = localCursor1.getLong(i);
          localc1.e = 1;
          localc1.c = "";
          localc1.f = localCursor1.getLong(k);
          localc1.g = localCursor1.getInt(m);
          localc1.b = null;
          Cursor localCursor2 = a(str1);
          if ((localCursor2 != null) && (localCursor2.moveToFirst()))
          {
            localc1.c = localCursor2.getString(localCursor2.getColumnIndex("display_name"));
            String str2 = localCursor2.getString(localCursor2.getColumnIndex("lookup"));
            localc1.b = Uri.withAppendedPath(ContactsContract.Contacts.CONTENT_LOOKUP_URI, str2);
          }
          if (TextUtils.isEmpty(localc1.c))
            localc1.c = localc1.d;
          localHashMap.put(str1, localc1);
          localLinkedList.add(localc1);
        }
      }
    }
    return localMatrixCursor;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.filter.core.a
 * JD-Core Version:    0.6.2
 */