package com.avast.android.mobilesecurity.app.globalactivitylog;

import android.content.Context;
import android.content.res.Resources;
import android.database.Cursor;
import android.support.v4.e.a;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.avast.android.generic.util.k;

class q extends a
{
  private LayoutInflater a;
  private Resources b;
  private int c;
  private int d;
  private int e;
  private int f;
  private int g;
  private int h;
  private int i;
  private int j;

  public q(Context paramContext)
  {
    super(paramContext, null, false);
    this.a = LayoutInflater.from(paramContext);
    this.b = paramContext.getResources();
  }

  private void a(r paramr)
  {
    paramr.c.setVisibility(8);
    paramr.d.setVisibility(8);
    paramr.e.setVisibility(8);
    paramr.f.setVisibility(8);
    paramr.g.setVisibility(8);
    paramr.h.setVisibility(8);
    paramr.c.setSingleLine(false);
    paramr.d.setSingleLine(false);
    paramr.h.setSingleLine(false);
  }

  public void a(int paramInt)
  {
    if (getCursor().moveToPosition(paramInt))
      y.a(getCursor().getInt(this.d)).a(this.mContext);
  }

  public boolean areAllItemsEnabled()
  {
    return true;
  }

  public void bindView(View paramView, Context paramContext, Cursor paramCursor)
  {
    r localr = (r)paramView.getTag();
    localr.b.setText(k.a(this.mContext, paramCursor.getLong(this.c), 65553));
    a(localr);
    y localy = y.a(paramCursor.getInt(this.d));
    if (localy != null)
    {
      paramView.setVisibility(0);
      localy.a(this.mContext, this.b, localr, paramCursor.getString(this.e), paramCursor.getString(this.f), paramCursor.getString(this.g), Long.valueOf(paramCursor.getLong(this.h)), Long.valueOf(paramCursor.getLong(this.i)), Long.valueOf(paramCursor.getLong(this.j)));
    }
    while (true)
    {
      return;
      paramView.setVisibility(8);
    }
  }

  public void changeCursor(Cursor paramCursor)
  {
    super.changeCursor(paramCursor);
    if (paramCursor != null)
    {
      this.c = paramCursor.getColumnIndex("date");
      this.d = paramCursor.getColumnIndex("type");
      this.e = paramCursor.getColumnIndex("text_primary");
      this.f = paramCursor.getColumnIndex("text_secondary");
      this.g = paramCursor.getColumnIndex("text_tertiary");
      this.h = paramCursor.getColumnIndex("number_primary");
      this.i = paramCursor.getColumnIndex("number_secondary");
      this.j = paramCursor.getColumnIndex("number_tertiary");
    }
  }

  public boolean isEnabled(int paramInt)
  {
    if (getCursor().moveToPosition(paramInt));
    for (boolean bool = y.a(getCursor().getInt(this.d)).b(); ; bool = false)
      return bool;
  }

  public View newView(Context paramContext, Cursor paramCursor, ViewGroup paramViewGroup)
  {
    View localView = this.a.inflate(2130903174, paramViewGroup, false);
    r localr = new r();
    localr.a = ((ImageView)localView.findViewById(2131165607));
    localr.b = ((TextView)localView.findViewById(2131165610));
    localr.c = ((TextView)localView.findViewById(2131165608));
    localr.d = ((TextView)localView.findViewById(2131165611));
    localr.e = ((TextView)localView.findViewById(2131165613));
    localr.f = ((TextView)localView.findViewById(2131165609));
    localr.g = ((TextView)localView.findViewById(2131165612));
    localr.h = ((TextView)localView.findViewById(2131165614));
    localView.setTag(localr);
    return localView;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.globalactivitylog.q
 * JD-Core Version:    0.6.2
 */