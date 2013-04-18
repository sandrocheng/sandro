package com.keniu.security.process;

import android.content.Context;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.graphics.drawable.Drawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.CheckBox;
import android.widget.ImageView;
import android.widget.TextView;
import com.jxphone.mosecurity.d.m;
import com.keniu.security.d.e;
import com.keniu.security.util.ax;
import java.util.List;

final class o extends BaseAdapter
{
  public List a;
  protected View.OnClickListener b = new p(this);
  private LayoutInflater d;
  private PackageManager e;

  public o(ProcessManagerActivity paramProcessManagerActivity, Context paramContext, List paramList)
  {
    this.d = LayoutInflater.from(paramContext);
    this.a = paramList;
    this.e = paramContext.getPackageManager();
  }

  public final List a()
  {
    return this.a;
  }

  public final void a(int paramInt)
  {
    this.a.remove(paramInt);
    notifyDataSetChanged();
  }

  public final e b(int paramInt)
  {
    return (e)this.a.get(paramInt);
  }

  public final int getCount()
  {
    return this.a.size();
  }

  public final long getItemId(int paramInt)
  {
    return paramInt;
  }

  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    View localView;
    q localq2;
    if ((paramView == null) || ((q)paramView.getTag() == null))
    {
      localView = this.d.inflate(2130903154, null, false);
      q localq1 = new q(this);
      localq1.a = ((ImageView)localView.findViewById(2131231213));
      localq1.b = ((TextView)localView.findViewById(2131231214));
      localq1.d = ((TextView)localView.findViewById(2131231215));
      localq1.c = ((CheckBox)localView.findViewById(2131230898));
      localView.setTag(localq1);
      localq2 = localq1;
    }
    while (true)
    {
      e locale = b(paramInt);
      try
      {
        Drawable localDrawable2 = this.e.getApplicationIcon(locale.b());
        localDrawable1 = localDrawable2;
        localq2.a.setImageDrawable(localDrawable1);
        localq2.b.setText(locale.c());
        if (locale.d() == 0L)
        {
          localq2.d.setText("");
          if (!ProcessManagerActivity.l(this.c).e(locale.b()))
            break label296;
          localq2.c.setVisibility(8);
          localq2.c.setChecked(false);
          locale.a(false);
          return localView;
          localq2 = (q)paramView.getTag();
          localView = paramView;
        }
      }
      catch (PackageManager.NameNotFoundException localNameNotFoundException)
      {
        while (true)
        {
          Drawable localDrawable1 = null;
          continue;
          TextView localTextView = localq2.d;
          String str = this.c.getString(2131428664);
          Object[] arrayOfObject = new Object[1];
          arrayOfObject[0] = ax.f(locale.d());
          localTextView.setText(String.format(str, arrayOfObject));
          continue;
          label296: localq2.c.setVisibility(0);
          localq2.c.setChecked(locale.a());
          localq2.c.setTag(Integer.valueOf(paramInt));
          localq2.c.setOnClickListener(this.b);
        }
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.process.o
 * JD-Core Version:    0.6.2
 */