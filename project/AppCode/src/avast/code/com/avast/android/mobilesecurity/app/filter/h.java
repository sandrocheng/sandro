package com.avast.android.mobilesecurity.app.filter;

import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.provider.ContactsContract.Contacts;
import android.support.v4.app.FragmentActivity;
import android.support.v4.e.a;
import android.telephony.PhoneNumberUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import java.io.InputStream;

class h extends a
{
  public h(FilterContactsFragment paramFilterContactsFragment, Context paramContext)
  {
    super(paramContext, null, false);
  }

  public void bindView(View paramView, Context paramContext, Cursor paramCursor)
  {
    int i = paramCursor.getInt(paramCursor.getColumnIndex("type"));
    ImageView localImageView = (ImageView)paramView.findViewById(2131165601);
    TextView localTextView = (TextView)paramView.findViewById(2131165504);
    Cursor localCursor;
    if (i == 0)
    {
      String str1 = paramCursor.getString(paramCursor.getColumnIndex("lookupKey"));
      Uri localUri1 = Uri.withAppendedPath(ContactsContract.Contacts.CONTENT_LOOKUP_URI, str1);
      localCursor = this.a.getActivity().getContentResolver().query(localUri1, new String[] { "_id", "display_name" }, null, null, null);
    }
    while (true)
    {
      try
      {
        if (!localCursor.moveToFirst())
          break label311;
        str2 = localCursor.getString(1);
        long l2 = localCursor.getLong(0);
        l1 = l2;
        localCursor.close();
        Uri localUri2 = Uri.withAppendedPath(ContactsContract.Contacts.CONTENT_URI, Long.toString(l1));
        InputStream localInputStream = ContactsContract.Contacts.openContactPhotoInputStream(this.a.getActivity().getContentResolver(), localUri2);
        if (localInputStream != null)
        {
          localImageView.setImageBitmap(BitmapFactory.decodeStream(localInputStream));
          localTextView.setText(str2);
          if (i == 10)
          {
            localImageView.setImageResource(2130837742);
            localTextView.setText(PhoneNumberUtils.formatNumber(paramCursor.getString(paramCursor.getColumnIndex("phone"))));
          }
          if (i == 21)
          {
            localImageView.setImageResource(2130837745);
            localTextView.setText(this.a.getString(2131493541));
          }
          if (i == 22)
          {
            localImageView.setImageResource(2130837743);
            localTextView.setText(this.a.getString(2131493540));
          }
          return;
        }
      }
      finally
      {
        localCursor.close();
      }
      localImageView.setImageResource(2130837744);
      continue;
      label311: long l1 = 0L;
      String str2 = null;
    }
  }

  public View newView(Context paramContext, Cursor paramCursor, ViewGroup paramViewGroup)
  {
    return this.a.getActivity().getLayoutInflater().inflate(2130903167, paramViewGroup, false);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.filter.h
 * JD-Core Version:    0.6.2
 */