package com.avast.android.mobilesecurity.app.filter;

import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.provider.ContactsContract.Contacts;
import android.support.v4.e.a;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import java.io.InputStream;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.regex.Pattern;

class t extends a
{
  LayoutInflater a;
  java.text.DateFormat b;
  java.text.DateFormat c;
  ContentResolver d;
  Pattern e = Pattern.compile(", ");
  Pattern f = Pattern.compile(";");
  int g;
  int h;
  int i;
  int j;
  int k;
  int l;
  int m;

  public t(Context paramContext, Cursor paramCursor)
  {
    super(paramContext, paramCursor, false);
    this.a = LayoutInflater.from(paramContext);
    this.b = android.text.format.DateFormat.getDateFormat(paramContext);
    this.c = android.text.format.DateFormat.getTimeFormat(paramContext);
    this.d = paramContext.getContentResolver();
    if ((this.b instanceof SimpleDateFormat))
    {
      SimpleDateFormat localSimpleDateFormat = (SimpleDateFormat)this.b;
      localSimpleDateFormat.applyPattern(localSimpleDateFormat.toPattern().replaceAll("\\s?[/\\-]?\\s?yyyy\\s?[/\\-\\.]?\\s?", ""));
    }
    c(paramCursor);
  }

  private void a(Cursor paramCursor, u paramu)
  {
    String str1 = paramCursor.getString(this.g);
    String str2 = str1.substring(1, -1 + str1.length());
    if ((!TextUtils.isEmpty(str2)) && (str2.indexOf(", ") < 0))
    {
      Uri localUri = ContactsContract.Contacts.lookupContact(this.d, Uri.parse(str2));
      InputStream localInputStream = ContactsContract.Contacts.openContactPhotoInputStream(this.d, localUri);
      if (localInputStream != null)
        u.e(paramu).setImageBitmap(BitmapFactory.decodeStream(localInputStream));
    }
    while (true)
    {
      return;
      u.e(paramu).setImageResource(2130837744);
      continue;
      u.e(paramu).setImageResource(2130837744);
    }
  }

  private void c(Cursor paramCursor)
  {
    this.g = paramCursor.getColumnIndex("contact_uris");
    this.h = paramCursor.getColumnIndex("names");
    this.i = paramCursor.getColumnIndex("text");
    this.j = paramCursor.getColumnIndex("date");
    this.k = paramCursor.getColumnIndex("read");
    this.l = paramCursor.getColumnIndex("addresses");
    this.m = paramCursor.getColumnIndex("count");
  }

  public ArrayList a(Cursor paramCursor)
  {
    ArrayList localArrayList = new ArrayList();
    String str1 = paramCursor.getString(this.g);
    String str2 = str1.substring(1, -1 + str1.length());
    if (!TextUtils.isEmpty(str2))
    {
      String[] arrayOfString = this.e.split(str2);
      int n = arrayOfString.length;
      for (int i1 = 0; i1 < n; i1++)
        localArrayList.add(arrayOfString[i1]);
    }
    return localArrayList;
  }

  public ArrayList b(Cursor paramCursor)
  {
    ArrayList localArrayList = new ArrayList();
    String str = paramCursor.getString(this.l);
    if (!TextUtils.isEmpty(str))
    {
      String[] arrayOfString = this.f.split(str);
      int n = arrayOfString.length;
      for (int i1 = 0; i1 < n; i1++)
        localArrayList.add(arrayOfString[i1]);
    }
    return localArrayList;
  }

  public void bindView(View paramView, Context paramContext, Cursor paramCursor)
  {
    String str1 = paramCursor.getString(this.h);
    int n = paramCursor.getInt(this.m);
    if (n > 1);
    for (String str2 = str1 + " (" + n + ")"; ; str2 = str1)
    {
      u localu = (u)paramView.getTag();
      u.a(localu).setText(str2);
      u.b(localu).setText(paramCursor.getString(this.i));
      Date localDate = new Date(paramCursor.getLong(this.j));
      u.c(localu).setText(this.b.format(localDate));
      u.d(localu).setText(this.c.format(localDate));
      if (paramCursor.getInt(this.k) == 0)
        u.a(localu).setTypeface(null, 1);
      while (true)
      {
        a(paramCursor, localu);
        return;
        u.a(localu).setTypeface(null, 0);
      }
    }
  }

  public View newView(Context paramContext, Cursor paramCursor, ViewGroup paramViewGroup)
  {
    View localView = this.a.inflate(2130903171, paramViewGroup, false);
    u localu = new u(null);
    u.a(localu, (ImageView)localView.findViewById(2131165601));
    u.a(localu, (TextView)localView.findViewById(2131165504));
    u.b(localu, (TextView)localView.findViewById(2131165457));
    u.c(localu, (TextView)localView.findViewById(2131165603));
    u.d(localu, (TextView)localView.findViewById(2131165602));
    localView.setTag(localu);
    return localView;
  }

  public Cursor swapCursor(Cursor paramCursor)
  {
    c(paramCursor);
    return super.swapCursor(paramCursor);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.filter.t
 * JD-Core Version:    0.6.2
 */