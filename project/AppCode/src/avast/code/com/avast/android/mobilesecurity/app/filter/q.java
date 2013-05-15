package com.avast.android.mobilesecurity.app.filter;

import android.content.Context;
import android.database.Cursor;
import android.support.v4.app.FragmentActivity;
import android.support.v4.e.a;
import android.telephony.PhoneNumberUtils;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.avast.android.generic.util.k;
import com.avast.android.mobilesecurity.app.filter.core.d;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.TimeZone;

class q extends a
{
  private final SimpleDateFormat b = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");

  public q(FilterLogsFragment paramFilterLogsFragment, Context paramContext)
  {
    super(paramContext, null, false);
    this.b.setTimeZone(TimeZone.getTimeZone("UTC"));
  }

  public void bindView(View paramView, Context paramContext, Cursor paramCursor)
  {
    int i = paramCursor.getInt(paramCursor.getColumnIndex("type"));
    int j = paramCursor.getInt(paramCursor.getColumnIndex("direction"));
    String str1 = paramCursor.getString(paramCursor.getColumnIndex("lookupKey"));
    String str2 = paramCursor.getString(paramCursor.getColumnIndex("phone"));
    String str3 = paramCursor.getString(paramCursor.getColumnIndex("text"));
    String str4 = paramCursor.getString(paramCursor.getColumnIndex("time"));
    Object localObject = this.a.getString(2131493553);
    if (str1 != null)
      localObject = d.a(this.a.getActivity(), str1);
    while (true)
    {
      r localr = (r)paramView.getTag();
      localr.c.setText((CharSequence)localObject);
      int n;
      label167: int m;
      if (j == 0)
      {
        ImageView localImageView2 = localr.d;
        if (i == 1)
        {
          n = 2130837746;
          localImageView2.setImageResource(n);
        }
      }
      else if (j == 1)
      {
        ImageView localImageView1 = localr.d;
        if (i != 1)
          break label322;
        m = 2130837747;
        localImageView1.setImageResource(m);
      }
      try
      {
        CharSequence localCharSequence = k.a(this.b.parse(str4).getTime(), System.currentTimeMillis(), 60000L, 131089, this.a.getActivity());
        localr.b.setText(localCharSequence);
        localr.a.setText(str3);
        TextView localTextView = localr.a;
        if (str3 != null)
        {
          k = 0;
          localTextView.setVisibility(k);
          return;
          if ((str2 == null) || (TextUtils.isEmpty(str2)))
            continue;
          try
          {
            String str5 = PhoneNumberUtils.formatNumber(str2);
            localObject = str5;
          }
          catch (Exception localException)
          {
            localObject = str2;
          }
          continue;
          n = 2130837740;
          break label167;
          label322: m = 2130837741;
        }
      }
      catch (ParseException localParseException)
      {
        while (true)
        {
          localr.b.setText("");
          continue;
          int k = 8;
        }
      }
    }
  }

  public View newView(Context paramContext, Cursor paramCursor, ViewGroup paramViewGroup)
  {
    View localView = this.a.getActivity().getLayoutInflater().inflate(2130903170, paramViewGroup, false);
    r localr = new r(this, null);
    localr.d = ((ImageView)localView.findViewById(2131165605));
    localr.c = ((TextView)localView.findViewById(2131165504));
    localr.b = ((TextView)localView.findViewById(2131165602));
    localr.a = ((TextView)localView.findViewById(2131165350));
    localView.setTag(localr);
    return localView;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.filter.q
 * JD-Core Version:    0.6.2
 */