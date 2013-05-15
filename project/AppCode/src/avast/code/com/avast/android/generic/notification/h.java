package com.avast.android.generic.notification;

import android.content.Context;
import android.database.Cursor;
import android.support.v4.app.FragmentActivity;
import android.support.v4.e.a;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.avast.android.generic.t;
import com.avast.android.generic.v;
import java.text.DateFormat;
import java.util.Date;

class h extends a
{
  public h(AvastNotificationFragment paramAvastNotificationFragment)
  {
    super(paramAvastNotificationFragment.getActivity(), null, 0);
  }

  public void bindView(View paramView, Context paramContext, Cursor paramCursor)
  {
    i locali = (i)paramView.getTag();
    locali.a.setText(paramCursor.getString(paramCursor.getColumnIndex("contentTitle")));
    locali.b.setText(paramCursor.getString(paramCursor.getColumnIndex("contentText")));
    locali.d.setImageResource(AvastNotificationFragment.b(this.a).a(paramCursor.getInt(paramCursor.getColumnIndex("_id"))));
    if (paramCursor.getInt(paramCursor.getColumnIndex("ongoing")) > 0)
    {
      float f = paramCursor.getFloat(paramCursor.getColumnIndex("percentage"));
      if (f > -1.0F)
      {
        TextView localTextView = locali.c;
        Object[] arrayOfObject = new Object[1];
        arrayOfObject[0] = Float.valueOf(f);
        localTextView.setText(String.format("%.0f %%", arrayOfObject));
        AvastPendingIntent localAvastPendingIntent = new AvastPendingIntent(paramCursor);
        locali.f = localAvastPendingIntent;
        if (localAvastPendingIntent.a(this.a.getActivity()) != null)
          break label256;
        locali.e.setVisibility(4);
      }
    }
    while (true)
    {
      return;
      locali.c.setVisibility(4);
      break;
      locali.c.setText(AvastNotificationFragment.c(this.a).format(new Date(paramCursor.getLong(paramCursor.getColumnIndex("timestamp")))));
      break;
      label256: locali.e.setVisibility(0);
    }
  }

  public View newView(Context paramContext, Cursor paramCursor, ViewGroup paramViewGroup)
  {
    View localView = this.a.getActivity().getLayoutInflater().inflate(v.u, paramViewGroup, false);
    i locali = new i(this.a, null);
    locali.a = ((TextView)localView.findViewById(t.aq));
    locali.b = ((TextView)localView.findViewById(t.E));
    locali.d = ((ImageView)localView.findViewById(t.P));
    locali.c = ((TextView)localView.findViewById(t.R));
    locali.e = ((ImageView)localView.findViewById(t.a));
    localView.setTag(locali);
    return localView;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.notification.h
 * JD-Core Version:    0.6.2
 */