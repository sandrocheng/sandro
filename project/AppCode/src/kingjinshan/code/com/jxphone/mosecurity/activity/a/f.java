package com.jxphone.mosecurity.activity.a;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.jxphone.mosecurity.c.b;
import com.jxphone.mosecurity.c.c;
import com.jxphone.mosecurity.c.j;
import com.jxphone.mosecurity.logic.a.d;
import com.jxphone.mosecurity.logic.h;
import com.keniu.security.importx.k;
import com.keniu.security.util.i;

public class f extends k
{
  protected final LayoutInflater a;
  protected final Context b;
  protected final b[] c;
  protected final j[] d;
  protected final boolean e;
  protected final boolean[] f;

  private f(Context paramContext, j[] paramArrayOfj)
  {
    this(paramContext, paramArrayOfj, false);
  }

  public f(Context paramContext, j[] paramArrayOfj, boolean paramBoolean)
  {
    this.b = paramContext;
    this.d = paramArrayOfj;
    this.a = LayoutInflater.from(paramContext);
    int i = paramArrayOfj.length;
    this.e = paramBoolean;
    this.c = new b[i];
    this.f = new boolean[i];
    for (int j = 0; j < i; j++)
      this.c[j] = a(paramArrayOfj[j].j(), j);
  }

  private static g a(View paramView)
  {
    g localg = new g();
    paramView.setTag(localg);
    g.a(localg, (ImageView)paramView.findViewById(2131230943));
    g.b(localg, (ImageView)paramView.findViewById(2131230944));
    g.a(localg, (TextView)paramView.findViewById(2131230947));
    g.b(localg, (TextView)paramView.findViewById(2131230949));
    g.c(localg, (TextView)paramView.findViewById(2131230950));
    g.d(localg, (TextView)paramView.findViewById(2131230945));
    g.e(localg, (TextView)paramView.findViewById(2131230948));
    return localg;
  }

  private b a(String paramString, int paramInt)
  {
    b localb = a(paramString);
    if (localb == null)
    {
      localb = new b();
      localb.b(paramString);
      this.f[paramInt] = false;
    }
    while (true)
    {
      this.c[paramInt] = localb;
      return localb;
      this.f[paramInt] = true;
    }
  }

  private static void a(g paramg, int paramInt)
  {
    g.g(paramg).setImageResource(paramInt);
  }

  private static void a(g paramg, b paramb, boolean paramBoolean)
  {
    if (paramBoolean)
    {
      Bitmap localBitmap = paramb.g();
      if (localBitmap != null)
        g.f(paramg).setImageBitmap(localBitmap);
    }
    while (true)
    {
      return;
      g.f(paramg).setImageResource(2130837635);
      continue;
      g.f(paramg).setImageResource(2130837635);
    }
  }

  protected b a(String paramString)
  {
    return h.c(this.b, this.e).a(paramString, true);
  }

  public final j a(int paramInt)
  {
    return this.d[paramInt];
  }

  public final void a(int paramInt, b paramb)
  {
    this.c[paramInt] = paramb;
  }

  protected void a(b paramb, View paramView)
  {
  }

  public final b b(int paramInt)
  {
    return this.c[paramInt];
  }

  public int getCount()
  {
    return this.d.length;
  }

  public long getItemId(int paramInt)
  {
    return paramInt;
  }

  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    View localView1;
    Object localObject1;
    if (paramView == null)
    {
      View localView2 = this.a.inflate(2130903077, null);
      g localg2 = a(localView2);
      ((TextView)localView2.findViewById(2131230946)).setText(null);
      localView1 = localView2;
      localObject1 = localg2;
    }
    while (true)
    {
      j localj = this.d[paramInt];
      b localb = this.c[paramInt];
      int i = localj.f();
      int j = 0;
      label100: int k;
      Object localObject2;
      switch (i)
      {
      default:
        k = j;
        localObject2 = null;
        label107: g.g((g)localObject1).setImageResource(k);
        g.a((g)localObject1).setText(i.a(localj.c(), this.b));
        TextView localTextView = g.b((g)localObject1);
        Context localContext2 = this.b;
        Object[] arrayOfObject2 = new Object[1];
        arrayOfObject2[0] = localj.a(this.b);
        localTextView.setText(localContext2.getString(2131429005, arrayOfObject2));
        g.b((g)localObject1).setTextColor(this.b.getResources().getColor(2131296353));
        if (localb == null)
        {
          localView1.getContext();
          localb = a(localj.d(), paramInt);
        }
        if (this.f[paramInt] != 0)
        {
          Bitmap localBitmap = localb.g();
          if (localBitmap != null)
          {
            g.f((g)localObject1).setImageBitmap(localBitmap);
            label257: if (this.f[paramInt] == 0)
              break label566;
            g.c((g)localObject1).setText(localb.b());
            g.d((g)localObject1).setText(localj.d());
            g.e((g)localObject1).setText((CharSequence)localObject2);
            g.e((g)localObject1).setVisibility(0);
          }
        }
        break;
      case 1:
      case 2:
      case 3:
      }
      g localg1;
      while (true)
      {
        a(localb, localView1);
        return localView1;
        localg1 = (g)paramView.getTag();
        if (localg1 != null)
          break label602;
        localObject1 = a(paramView);
        localView1 = paramView;
        break;
        j = 2130837521;
        if (localj.g().equals(c.c))
          break label100;
        Context localContext4 = localView1.getContext();
        Object[] arrayOfObject4 = new Object[1];
        arrayOfObject4[0] = Double.valueOf(localj.i() / 1000.0D);
        String str3 = localContext4.getString(2131428991, arrayOfObject4);
        k = j;
        localObject2 = str3;
        break label107;
        Context localContext3 = localView1.getContext();
        Object[] arrayOfObject3 = new Object[1];
        arrayOfObject3[0] = Double.valueOf(localj.i() / 1000.0D);
        String str2 = localContext3.getString(2131428991, arrayOfObject3);
        k = 2130837523;
        localObject2 = str2;
        break label107;
        j = 2130837522;
        if (localj.g().equals(c.c))
          break label100;
        Context localContext1 = localView1.getContext();
        Object[] arrayOfObject1 = new Object[1];
        arrayOfObject1[0] = Double.valueOf(localj.h() / 1000.0D);
        String str1 = localContext1.getString(2131428989, arrayOfObject1);
        k = j;
        localObject2 = str1;
        break label107;
        g.f((g)localObject1).setImageResource(2130837635);
        break label257;
        g.f((g)localObject1).setImageResource(2130837635);
        break label257;
        label566: g.c((g)localObject1).setText(localj.d());
        g.d((g)localObject1).setText((CharSequence)localObject2);
        g.e((g)localObject1).setVisibility(8);
      }
      label602: localObject1 = localg1;
      localView1 = paramView;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.jxphone.mosecurity.activity.a.f
 * JD-Core Version:    0.6.2
 */