package com.jxphone.mosecurity.activity.a;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.util.SparseIntArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.jxphone.mosecurity.c.b;
import com.jxphone.mosecurity.c.l;
import com.keniu.security.util.i;

public final class c extends BaseAdapter
{
  private final LayoutInflater a;
  private final l[] b;
  private final b c;
  private final Context d;
  private final SparseIntArray e;

  public c(Context paramContext, b paramb, l[] paramArrayOfl)
  {
    this.b = paramArrayOfl;
    this.d = paramContext;
    this.c = paramb;
    this.a = LayoutInflater.from(paramContext);
    this.e = new SparseIntArray(4);
    this.e.put(-1, 2130837922);
    this.e.put(0, 2130837927);
    this.e.put(1, 2130837926);
    this.e.put(2, 2130837924);
  }

  private l a(int paramInt)
  {
    return this.b[paramInt];
  }

  private void a(l paraml, e parame)
  {
    int i = paraml.g();
    switch (i)
    {
    default:
      e.c(parame).setVisibility(8);
    case -1:
    case 0:
    case 1:
    case 2:
    }
    while (true)
    {
      return;
      e.c(parame).setVisibility(0);
      e.c(parame).setImageResource(this.e.get(i));
    }
  }

  public final int getCount()
  {
    return this.b.length;
  }

  public final long getItemId(int paramInt)
  {
    return paramInt;
  }

  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    View localView;
    e locale1;
    l locall;
    int i;
    int j;
    if (paramView == null)
    {
      localView = this.a.inflate(2130903248, null);
      e locale2 = new e();
      localView.setTag(locale2);
      e.a(locale2, (ImageView)localView.findViewById(2131231498));
      e.b(locale2, (ImageView)localView.findViewById(2131231499));
      e.c(locale2, (ImageView)localView.findViewById(2131231501));
      e.a(locale2, (RelativeLayout)localView.findViewById(2131231500));
      e.a(locale2, (TextView)localView.findViewById(2131230947));
      e.b(locale2, (TextView)localView.findViewById(2131230946));
      e.c(locale2, (TextView)localView.findViewById(2131230949));
      Bitmap localBitmap = this.c.g();
      if (localBitmap != null)
        e.a(locale2).setImageBitmap(localBitmap);
      locale1 = locale2;
      locall = this.b[paramInt];
      switch (locall.f())
      {
      default:
        i = 2131428915;
        e.a(locale1).setVisibility(8);
        e.b(locale1).setVisibility(0);
        j = locall.g();
        switch (j)
        {
        default:
          e.c(locale1).setVisibility(8);
        case -1:
        case 0:
        case 1:
        case 2:
        }
        break;
      case 1:
      }
    }
    while (true)
    {
      e.d(locale1).getBackground().setLevel(locall.f());
      TextView localTextView = e.e(locale1);
      Context localContext = this.d;
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = this.c.b();
      localTextView.setText(localContext.getString(i, arrayOfObject));
      e.f(locale1).setText(i.a(locall.d(), this.d));
      e.g(locale1).setText(locall.c());
      return localView;
      locale1 = (e)paramView.getTag();
      localView = paramView;
      break;
      i = 2131428914;
      e.a(locale1).setVisibility(0);
      e.b(locale1).setVisibility(8);
      e.c(locale1).setVisibility(8);
      continue;
      e.c(locale1).setVisibility(0);
      e.c(locale1).setImageResource(this.e.get(j));
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.jxphone.mosecurity.activity.a.c
 * JD-Core Version:    0.6.2
 */