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
import com.jxphone.mosecurity.c.l;
import com.jxphone.mosecurity.logic.a.d;
import com.jxphone.mosecurity.logic.h;
import com.keniu.security.importx.k;

public class i extends k
{
  protected final LayoutInflater a;
  protected final l[] b;
  protected final b[] c;
  protected final boolean[] d;
  protected final boolean e;
  protected Context f;

  private i(Context paramContext, l[] paramArrayOfl)
  {
    this(paramContext, paramArrayOfl, false);
  }

  public i(Context paramContext, l[] paramArrayOfl, boolean paramBoolean)
  {
    this.a = LayoutInflater.from(paramContext);
    this.b = paramArrayOfl;
    this.f = paramContext;
    int i = paramArrayOfl.length;
    this.c = new b[i];
    this.d = new boolean[i];
    this.e = paramBoolean;
    int j = 0;
    if (j < i)
    {
      b[] arrayOfb = this.c;
      String str = paramArrayOfl[j].h();
      b localb1 = a(str);
      b localb2;
      if (localb1 == null)
      {
        localb2 = new b();
        localb2.b(str);
        this.d[j] = false;
      }
      for (b localb3 = localb2; ; localb3 = localb1)
      {
        this.c[j] = localb3;
        arrayOfb[j] = localb3;
        j++;
        break;
        this.d[j] = true;
      }
    }
  }

  private static int a()
  {
    return 2130903077;
  }

  private static j a(View paramView)
  {
    j localj = new j();
    paramView.setTag(localj);
    ImageView localImageView = (ImageView)paramView.findViewById(2131230943);
    TextView localTextView1 = (TextView)paramView.findViewById(2131230945);
    TextView localTextView2 = (TextView)paramView.findViewById(2131230949);
    TextView localTextView3 = (TextView)paramView.findViewById(2131230950);
    TextView localTextView4 = (TextView)paramView.findViewById(2131230948);
    localj.a = localImageView;
    localj.b = localTextView1;
    localj.c = localTextView2;
    localj.d = localTextView3;
    localj.e = localTextView4;
    return localj;
  }

  private b a(String paramString, int paramInt)
  {
    b localb = a(paramString);
    if (localb == null)
    {
      localb = new b();
      localb.b(paramString);
      this.d[paramInt] = false;
    }
    while (true)
    {
      this.c[paramInt] = localb;
      return localb;
      this.d[paramInt] = true;
    }
  }

  private void a(l paraml, j paramj)
  {
    String str = paraml.a(this.f);
    paramj.e.setText(this.f.getString(2131429005, new Object[] { str }));
    paramj.e.setTextColor(this.f.getResources().getColor(2131296353));
  }

  private static void a(String paramString, int paramInt, View paramView)
  {
    ((TextView)paramView.findViewById(2131230947)).setText(paramString);
    ImageView localImageView = (ImageView)paramView.findViewById(2131230944);
    if (paramInt == 1);
    for (int i = 2130837919; ; i = 2130837920)
    {
      localImageView.setImageResource(i);
      return;
    }
  }

  private static void a(String paramString, j paramj)
  {
    paramj.d.setText(paramString);
  }

  protected b a(String paramString)
  {
    return h.c(this.f, this.e).a(paramString, true);
  }

  public final l a(int paramInt)
  {
    return this.b[paramInt];
  }

  public final void a(int paramInt, b paramb)
  {
    this.c[paramInt] = paramb;
  }

  public final b b(int paramInt)
  {
    return this.c[paramInt];
  }

  public int getCount()
  {
    return this.b.length;
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
      j localj2 = a(localView2);
      localView1 = localView2;
      localObject1 = localj2;
    }
    while (true)
    {
      l locall = this.b[paramInt];
      b localb = this.c[paramInt];
      String str1 = locall.a(this.f);
      ((j)localObject1).e.setText(this.f.getString(2131429005, new Object[] { str1 }));
      ((j)localObject1).e.setTextColor(this.f.getResources().getColor(2131296353));
      label143: String str3;
      Object localObject2;
      String str4;
      label172: ImageView localImageView;
      if (this.d[paramInt] != 0)
      {
        this.c[paramInt] = localb;
        Bitmap localBitmap = localb.g();
        if (localBitmap != null)
        {
          ((j)localObject1).a.setImageBitmap(localBitmap);
          String str5 = localb.b();
          String str6 = locall.b();
          str3 = locall.c();
          localObject2 = str5;
          str4 = str6;
          int i = locall.f();
          ((TextView)localView1.findViewById(2131230947)).setText((CharSequence)localObject2);
          localImageView = (ImageView)localView1.findViewById(2131230944);
          if (i != 1)
            break label339;
        }
      }
      j localj1;
      label339: for (int j = 2130837919; ; j = 2130837920)
      {
        localImageView.setImageResource(j);
        ((j)localObject1).c.setText(str4);
        ((j)localObject1).d.setText(str3);
        ((j)localObject1).b.setText(com.keniu.security.util.i.a(locall.d(), this.f));
        return localView1;
        localj1 = (j)paramView.getTag();
        if (localj1 != null)
          break label346;
        localObject1 = a(paramView);
        localView1 = paramView;
        break;
        ((j)localObject1).a.setImageResource(2130837635);
        break label143;
        ((j)localObject1).a.setImageResource(2130837635);
        String str2 = locall.b();
        str3 = locall.c();
        localObject2 = str2;
        str4 = null;
        break label172;
      }
      label346: localObject1 = localj1;
      localView1 = paramView;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.jxphone.mosecurity.activity.a.i
 * JD-Core Version:    0.6.2
 */