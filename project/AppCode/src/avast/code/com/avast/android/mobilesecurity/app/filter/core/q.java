package com.avast.android.mobilesecurity.app.filter.core;

import android.content.ContentResolver;
import android.content.ContentUris;
import android.content.Context;
import android.database.Cursor;
import android.database.MatrixCursor;
import android.database.MatrixCursor.RowBuilder;
import android.net.Uri;
import android.net.Uri.Builder;
import android.provider.ContactsContract.Contacts;
import android.provider.ContactsContract.PhoneLookup;
import android.text.TextUtils;
import com.avast.android.generic.b;
import com.avast.android.generic.util.m;
import java.util.ArrayList;

public class q extends b
{
  private static final Uri f = y.a.buildUpon().appendQueryParameter("simple", "true").build();
  private static final String[] g = arrayOfString;
  private static final Uri h = Uri.withAppendedPath(t.a, "canonical-address");
  private ContentResolver i;

  static
  {
    String[] arrayOfString = new String[6];
    arrayOfString[0] = "_id";
    arrayOfString[1] = y.c;
    arrayOfString[2] = y.b;
    arrayOfString[3] = y.f;
    arrayOfString[4] = y.d;
    arrayOfString[5] = y.e;
  }

  public q(Context paramContext)
  {
    super(paramContext);
  }

  private Cursor a(String paramString)
  {
    Uri localUri = Uri.withAppendedPath(ContactsContract.PhoneLookup.CONTENT_FILTER_URI, Uri.encode(paramString));
    return this.i.query(localUri, new String[] { "lookup", "display_name" }, null, null, null);
  }

  private String a(int paramInt)
  {
    String str = null;
    if (paramInt > 0)
    {
      Uri localUri = ContentUris.withAppendedId(h, paramInt);
      ContentResolver localContentResolver = this.i;
      String[] arrayOfString = new String[1];
      arrayOfString[0] = s.a;
      Cursor localCursor = localContentResolver.query(localUri, arrayOfString, null, null, null);
      str = null;
      if (localCursor != null)
      {
        boolean bool = localCursor.moveToFirst();
        str = null;
        if (bool)
          str = localCursor.getString(localCursor.getColumnIndex(s.a));
      }
    }
    return str;
  }

  public Cursor f()
  {
    this.i = j().getContentResolver();
    Cursor localCursor1 = this.i.query(f, g, null, null, v.a);
    MatrixCursor localMatrixCursor = new MatrixCursor(new String[] { "_id", "contact_uris", "names", "addresses", "date", "text", "read", "count" });
    int i3;
    String str1;
    String str2;
    long l1;
    long l2;
    String str3;
    int i4;
    int i5;
    ArrayList localArrayList;
    String str4;
    String str7;
    String str5;
    if (localCursor1 != null)
      if (localCursor1.moveToFirst())
      {
        int j = localCursor1.getColumnIndex("_id");
        int k = localCursor1.getColumnIndex(y.c);
        int m = localCursor1.getColumnIndex(y.b);
        int n = localCursor1.getColumnIndex(y.f);
        int i1 = localCursor1.getColumnIndex(y.e);
        int i2 = localCursor1.getColumnIndex(y.d);
        i3 = 0;
        str1 = "";
        str2 = "";
        l1 = localCursor1.getLong(j);
        l2 = localCursor1.getLong(m);
        str3 = localCursor1.getString(n);
        i4 = localCursor1.getInt(i1);
        i5 = localCursor1.getInt(i2);
        localArrayList = new ArrayList();
        str4 = localCursor1.getString(k);
        if (TextUtils.isEmpty(str4))
          break label687;
        String[] arrayOfString = str4.split(" ");
        int i7 = arrayOfString.length;
        for (int i8 = 0; i8 < i7; i8++)
        {
          String str8 = a(Integer.parseInt(arrayOfString[i8]));
          if (str8 != null)
          {
            Cursor localCursor2 = a(str8);
            String str9 = null;
            if (localCursor2 != null)
            {
              boolean bool = localCursor2.moveToFirst();
              str9 = null;
              if (bool)
              {
                str9 = localCursor2.getString(localCursor2.getColumnIndex("display_name"));
                String str10 = localCursor2.getString(localCursor2.getColumnIndex("lookup"));
                localArrayList.add(Uri.withAppendedPath(ContactsContract.Contacts.CONTENT_LOOKUP_URI, str10));
              }
              localCursor2.close();
            }
            if (TextUtils.isEmpty(str9))
            {
              str2 = str2 + str8 + ";";
              str9 = str8;
            }
            str1 = str1 + str9 + ", ";
          }
        }
        if (str1.length() > 2)
          str1 = str1.substring(0, -2 + str1.length());
        if (str2.length() <= 1)
          break label687;
        str7 = str2.substring(0, -1 + str2.length());
        str5 = str1;
      }
    for (String str6 = str7; ; str6 = str2)
    {
      Object[] arrayOfObject = new Object[8];
      arrayOfObject[0] = Long.valueOf(l1);
      arrayOfObject[1] = str4;
      arrayOfObject[2] = str5;
      arrayOfObject[3] = str6;
      arrayOfObject[4] = localArrayList.toString();
      arrayOfObject[5] = Long.valueOf(l2);
      arrayOfObject[6] = Integer.valueOf(i4);
      arrayOfObject[7] = str3;
      m.b("SmsMmsThreadsLoader", String.format("Thread: %d; %s; %s; %s; %s; %d; %s; %s", arrayOfObject));
      MatrixCursor.RowBuilder localRowBuilder = localMatrixCursor.newRow();
      int i6 = i3 + 1;
      localRowBuilder.add(Integer.valueOf(i3)).add(localArrayList.toString()).add(str5).add(str6).add(Long.valueOf(l2)).add(str3).add(Integer.valueOf(i4)).add(Integer.valueOf(i5));
      if (!localCursor1.moveToNext())
      {
        localCursor1.close();
        return localMatrixCursor;
      }
      i3 = i6;
      break;
      label687: str5 = str1;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.filter.core.q
 * JD-Core Version:    0.6.2
 */