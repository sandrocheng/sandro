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
import java.util.Date;

class b extends a
{
  LayoutInflater a;
  java.text.DateFormat b;
  java.text.DateFormat c;
  ContentResolver d;
  int e;
  int f;
  int g;
  int h;
  int i;

  public b(Context paramContext, Cursor paramCursor)
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

  private void a(Cursor paramCursor, c paramc)
  {
    String str = paramCursor.getString(this.e);
    if (!TextUtils.isEmpty(str))
    {
      Uri localUri = ContactsContract.Contacts.lookupContact(this.d, Uri.parse(str));
      InputStream localInputStream = ContactsContract.Contacts.openContactPhotoInputStream(this.d, localUri);
      if (localInputStream != null)
        c.d(paramc).setImageBitmap(BitmapFactory.decodeStream(localInputStream));
    }
    while (true)
    {
      return;
      c.d(paramc).setImageResource(2130837744);
      continue;
      c.d(paramc).setImageResource(2130837744);
    }
  }

  private void c(Cursor paramCursor)
  {
    this.e = paramCursor.getColumnIndex("contact_uri");
    this.f = paramCursor.getColumnIndex("name");
    this.h = paramCursor.getColumnIndex("date");
    this.g = paramCursor.getColumnIndex("number");
    this.i = paramCursor.getColumnIndex("count");
  }

  public Uri a(Cursor paramCursor)
  {
    String str = paramCursor.getString(this.e);
    if (!TextUtils.isEmpty(str));
    for (Uri localUri = Uri.parse(str); ; localUri = null)
      return localUri;
  }

  public String b(Cursor paramCursor)
  {
    return paramCursor.getString(this.g);
  }

  public void bindView(View paramView, Context paramContext, Cursor paramCursor)
  {
    c localc = (c)paramView.getTag();
    String str = paramCursor.getString(this.f);
    int j = paramCursor.getInt(this.i);
    if (j > 1)
      str = str + " (" + j + ")";
    c.a(localc).setText(str);
    Date localDate = new Date(paramCursor.getLong(this.h));
    c.b(localc).setText(this.b.format(localDate));
    c.c(localc).setText(this.c.format(localDate));
    a(paramCursor, localc);
  }

  public View newView(Context paramContext, Cursor paramCursor, ViewGroup paramViewGroup)
  {
    View localView = this.a.inflate(2130903165, paramViewGroup, false);
    c localc = new c(null);
    c.a(localc, (ImageView)localView.findViewById(2131165601));
    c.a(localc, (TextView)localView.findViewById(2131165504));
    c.b(localc, (TextView)localView.findViewById(2131165603));
    c.c(localc, (TextView)localView.findViewById(2131165602));
    localView.setTag(localc);
    return localView;
  }

  public Cursor swapCursor(Cursor paramCursor)
  {
    c(paramCursor);
    return super.swapCursor(paramCursor);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.filter.b
 * JD-Core Version:    0.6.2
 */