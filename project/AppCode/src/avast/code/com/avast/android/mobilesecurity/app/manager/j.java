package com.avast.android.mobilesecurity.app.manager;

import android.content.Context;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.res.Resources;
import android.database.Cursor;
import android.graphics.drawable.Drawable;
import android.support.v4.app.FragmentActivity;
import android.support.v4.e.a;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.avast.android.mobilesecurity.app.manager.a.a.c;
import com.avast.android.mobilesecurity.app.manager.a.e;
import java.text.NumberFormat;

class j extends a
{
  private int b;
  private int c;
  private int d;
  private int e;
  private NumberFormat f = NumberFormat.getNumberInstance();
  private int g;
  private int h;
  private int i;
  private String j;
  private String k;

  public j(ManagerAppFragment paramManagerAppFragment, Context paramContext, Cursor paramCursor)
  {
    super(paramContext, paramCursor, false);
    this.f.setMaximumFractionDigits(1);
    this.g = paramManagerAppFragment.getResources().getColor(2131296305);
    this.h = paramManagerAppFragment.getResources().getColor(2131296299);
    ManagerAppFragment.a(paramManagerAppFragment, new e(paramContext));
    ManagerAppFragment.a(paramManagerAppFragment).c(9);
    ManagerAppFragment.a(paramManagerAppFragment).a(new k(this, paramManagerAppFragment));
    this.j = paramManagerAppFragment.getString(2131493073);
    this.k = paramManagerAppFragment.getString(2131493074);
  }

  private void a(Context paramContext, Cursor paramCursor, l paraml)
  {
    double d1 = paramCursor.getLong(this.d);
    if (ManagerAppFragment.b(this.a) == 2)
    {
      paraml.e.setProgress((int)(100.0F * ((float)d1 / (float)ManagerAppFragment.c(this.a))));
      d1 /= 1024.0D;
      paraml.f.setText(this.f.format(d1) + " " + this.k);
    }
    if (ManagerAppFragment.b(this.a) == 3)
    {
      paraml.h.setText((int)d1 + "%");
      paraml.g.setProgress((int)d1);
    }
    double d7;
    label389: label486: double d3;
    if (ManagerAppFragment.b(this.a) == 1)
    {
      paraml.i.setProgress((int)(100.0F * ((float)d1 / (float)ManagerAppFragment.c(this.a))));
      d7 = d1 / 1024.0D;
      if (d7 > 1024.0D)
        paraml.j.setText(this.f.format(d7 / 1024.0D) + " " + this.k);
    }
    else
    {
      if (ManagerAppFragment.b(this.a) != 2)
      {
        double d5 = ManagerAppFragment.a(this.a).a(paramCursor.getInt(this.i));
        if (d5 <= -1.0D)
          break label692;
        if (ManagerAppFragment.a(this.a).a() > -1)
          paraml.e.setVisibility(0);
        paraml.f.setVisibility(0);
        paraml.e.setProgress((int)(100.0F * ((float)d5 / ManagerAppFragment.a(this.a).a())));
        double d6 = d5 / 1024.0D;
        paraml.f.setText(this.f.format(d6) + " " + this.k);
      }
      if (ManagerAppFragment.b(this.a) != 3)
      {
        double d4 = ManagerAppFragment.a(this.a).b(paramCursor.getInt(this.i));
        if (d4 <= -1.0D)
          break label711;
        paraml.g.setVisibility(0);
        paraml.h.setVisibility(0);
        paraml.g.setProgress((int)d4);
        paraml.h.setText((int)d4 + "%");
      }
      if (ManagerAppFragment.b(this.a) != 1)
      {
        double d2 = ManagerAppFragment.a(this.a).a(paramCursor.getString(this.c));
        if (d2 <= -1.0D)
          break label774;
        if (ManagerAppFragment.a(this.a).b() > -1)
          paraml.i.setVisibility(0);
        paraml.j.setVisibility(0);
        paraml.i.setProgress((int)(100.0F * ((float)d2 / ManagerAppFragment.a(this.a).b())));
        d3 = d2 / 1024.0D;
        if (d3 <= 1024.0D)
          break label730;
        paraml.j.setText(this.f.format(d3 / 1024.0D) + " " + this.k);
      }
    }
    while (true)
    {
      return;
      paraml.j.setText(this.f.format(d7) + " " + this.j);
      break;
      label692: paraml.e.setVisibility(4);
      paraml.f.setVisibility(4);
      break label389;
      label711: paraml.g.setVisibility(4);
      paraml.h.setVisibility(4);
      break label486;
      label730: paraml.j.setText(this.f.format(d3) + " " + this.j);
      continue;
      label774: paraml.i.setVisibility(4);
      paraml.j.setVisibility(4);
    }
  }

  private void b(Context paramContext, Cursor paramCursor, l paraml)
  {
    if (ManagerAppFragment.b(this.a) == 0)
    {
      paraml.c.setVisibility(8);
      paraml.d.setVisibility(8);
    }
    while (true)
    {
      return;
      paraml.c.setVisibility(0);
      paraml.d.setVisibility(0);
      if ((ManagerAppFragment.b(this.a) == 1) || (ManagerAppFragment.b(this.a) == 2))
      {
        long l = paramCursor.getLong(this.d);
        if (l <= -1L)
          break label239;
        paraml.c.setProgress((int)(100.0F * ((float)l / (float)ManagerAppFragment.c(this.a))));
        if (ManagerAppFragment.b(this.a) == 1)
          l /= 1024L;
        paraml.d.setText(this.f.format(l) + " " + this.j);
      }
      while (true)
      {
        if (ManagerAppFragment.b(this.a) != 3)
          break label262;
        int m = (int)paramCursor.getLong(this.d);
        if (m < 0)
          break label264;
        paraml.d.setText(m + "%");
        paraml.c.setProgress(m);
        break;
        label239: paraml.c.setVisibility(8);
        paraml.d.setText(paramContext.getText(2131493591));
      }
      label262: continue;
      label264: paraml.d.setText(paramContext.getText(2131493596));
      paraml.c.setVisibility(8);
    }
  }

  public void bindView(View paramView, Context paramContext, Cursor paramCursor)
  {
    l locall = (l)paramView.getTag();
    locall.a.setText(paramCursor.getString(this.b));
    if (paramCursor.getInt(this.e) == 1)
      locall.a.setTextColor(this.g);
    try
    {
      Drawable localDrawable = this.a.getActivity().getPackageManager().getApplicationIcon(this.a.getActivity().getPackageManager().getApplicationInfo(paramCursor.getString(this.c), 128));
      locall.b.setImageDrawable(localDrawable);
      label104: if (locall.g == null)
        b(paramContext, paramCursor, locall);
      while (true)
      {
        return;
        locall.a.setTextColor(this.h);
        break;
        a(paramContext, paramCursor, locall);
      }
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException)
    {
      break label104;
    }
  }

  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    synchronized (this.mCursor)
    {
      View localView = super.getView(paramInt, paramView, paramViewGroup);
      return localView;
    }
  }

  public View newView(Context paramContext, Cursor paramCursor, ViewGroup paramViewGroup)
  {
    View localView = this.a.getActivity().getLayoutInflater().inflate(2130903156, paramViewGroup, false);
    l locall = new l(this);
    locall.b = ((ImageView)localView.findViewById(2131165273));
    locall.a = ((TextView)localView.findViewById(2131165504));
    locall.c = ((ProgressBar)localView.findViewById(2131165456));
    locall.d = ((TextView)localView.findViewById(2131165582));
    locall.g = ((ProgressBar)localView.findViewById(2131165583));
    if (locall.g != null)
    {
      locall.h = ((TextView)localView.findViewById(2131165584));
      locall.e = ((ProgressBar)localView.findViewById(2131165585));
      locall.f = ((TextView)localView.findViewById(2131165586));
      locall.i = ((ProgressBar)localView.findViewById(2131165587));
      locall.j = ((TextView)localView.findViewById(2131165588));
    }
    localView.setTag(locall);
    return localView;
  }

  public Cursor swapCursor(Cursor paramCursor)
  {
    if (paramCursor != null)
    {
      this.b = paramCursor.getColumnIndex(c.k);
      this.i = paramCursor.getColumnIndex(c.l);
      this.c = paramCursor.getColumnIndex(c.i);
      this.d = paramCursor.getColumnIndex(c.t);
      this.e = paramCursor.getColumnIndex(c.u);
    }
    if (this.a.getActivity().getLayoutInflater().inflate(2130903156, null, false).findViewById(2131165583) != null)
      ManagerAppFragment.a(this.a).a(paramCursor, this.c, this.i, this.d, ManagerAppFragment.b(this.a));
    return super.swapCursor(paramCursor);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.manager.j
 * JD-Core Version:    0.6.2
 */