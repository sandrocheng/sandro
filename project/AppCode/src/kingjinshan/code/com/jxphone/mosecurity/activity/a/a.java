package com.jxphone.mosecurity.activity.a;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.jxphone.mosecurity.logic.a.d;
import com.jxphone.mosecurity.logic.h;
import com.keniu.security.importx.k;

public class a extends k
{
  protected LayoutInflater a;
  protected Context b;
  private com.jxphone.mosecurity.c.b[] c;

  private a(Context paramContext, com.jxphone.mosecurity.c.b[] paramArrayOfb)
  {
    this(paramContext, paramArrayOfb, false);
  }

  public a(Context paramContext, com.jxphone.mosecurity.c.b[] paramArrayOfb, boolean paramBoolean)
  {
    this.a = LayoutInflater.from(paramContext);
    this.b = paramContext;
    this.c = paramArrayOfb;
    d locald = h.c(paramContext, paramBoolean);
    int i = paramArrayOfb.length;
    for (int j = 0; j < i; j++)
    {
      com.jxphone.mosecurity.c.b localb1 = paramArrayOfb[j];
      com.jxphone.mosecurity.c.b localb2 = locald.a(localb1.c(), false);
      if (localb2 != null)
      {
        localb1.a(localb2.e());
        localb1.a(localb2.a());
      }
    }
  }

  private static int a()
  {
    return 2130903077;
  }

  private b a(View paramView)
  {
    b localb = new b();
    paramView.setTag(localb);
    localb.a = ((ImageView)paramView.findViewById(2131230943));
    localb.b = ((TextView)paramView.findViewById(2131230947));
    localb.c = ((TextView)paramView.findViewById(2131230949));
    b.a(localb, (TextView)paramView.findViewById(2131230945));
    localb.d = ((TextView)paramView.findViewById(2131230948));
    localb.d.setTextColor(this.b.getResources().getColor(2131296353));
    return localb;
  }

  public final com.jxphone.mosecurity.c.b a(int paramInt)
  {
    return this.c[paramInt];
  }

  public final void a(int paramInt, com.jxphone.mosecurity.c.b paramb)
  {
    this.c[paramInt] = paramb;
  }

  public final com.jxphone.mosecurity.c.b b(int paramInt)
  {
    return this.c[paramInt];
  }

  public int getCount()
  {
    return this.c.length;
  }

  public long getItemId(int paramInt)
  {
    return paramInt;
  }

  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    View localView;
    b localb1;
    com.jxphone.mosecurity.c.b localb;
    if (paramView == null)
    {
      localView = this.a.inflate(2130903077, null);
      b localb2 = new b();
      localView.setTag(localb2);
      localb2.a = ((ImageView)localView.findViewById(2131230943));
      localb2.b = ((TextView)localView.findViewById(2131230947));
      localb2.c = ((TextView)localView.findViewById(2131230949));
      b.a(localb2, (TextView)localView.findViewById(2131230945));
      localb2.d = ((TextView)localView.findViewById(2131230948));
      localb2.d.setTextColor(this.b.getResources().getColor(2131296353));
      localView.findViewById(2131230944).setVisibility(8);
      localView.findViewById(2131230946).setVisibility(8);
      localb1 = localb2;
      localb = this.c[paramInt];
      String str = localb.a(this.b);
      Bitmap localBitmap = localb.g();
      if (localBitmap == null)
        break label299;
      localb1.a.setImageBitmap(localBitmap);
      label197: localb1.d.setText(this.b.getString(2131429005, new Object[] { str }));
      if ((localb.b() == null) || (localb.b().trim() == "") || (localb.b().length() == 0))
        break label312;
      localb1.b.setText(localb.b());
    }
    while (true)
    {
      localb1.c.setText(localb.c());
      return localView;
      localb1 = (b)paramView.getTag();
      localView = paramView;
      break;
      label299: localb1.a.setImageResource(2130837635);
      break label197;
      label312: localb1.b.setText(localb.c());
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.jxphone.mosecurity.activity.a.a
 * JD-Core Version:    0.6.2
 */