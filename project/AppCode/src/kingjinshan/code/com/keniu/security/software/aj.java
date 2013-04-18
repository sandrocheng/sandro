package com.keniu.security.software;

import android.graphics.drawable.Drawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import com.ijinshan.kinghelper.a.f;
import java.util.ArrayList;

final class aj extends BaseAdapter
{
  public ArrayList a;
  f b;

  public aj(SoftwareManager2 paramSoftwareManager2, ArrayList paramArrayList)
  {
    this.a = paramArrayList;
    this.b = f.a(paramSoftwareManager2.getApplicationContext());
  }

  private o b(int paramInt)
  {
    return (o)this.a.get(paramInt);
  }

  public final void a(int paramInt)
  {
    this.a.remove(paramInt);
    o localo = (o)this.a.get(0);
    if (localo.b().equalsIgnoreCase("appCate"))
    {
      SoftwareManager2.y(this.c);
      SoftwareManager2.p(this.c).notifyDataSetChanged();
    }
    while (true)
    {
      return;
      if (localo.b().equalsIgnoreCase("appSysCate"))
      {
        SoftwareManager2.z(this.c);
        SoftwareManager2.v(this.c).notifyDataSetChanged();
      }
      else if (localo.b().equalsIgnoreCase("appInnerSysCate"))
      {
        SoftwareManager2.A(this.c);
        SoftwareManager2.t(this.c).notifyDataSetChanged();
      }
    }
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
    String str3;
    View localView3;
    TextView localTextView3;
    if (paramInt == 0)
    {
      str3 = b(0).b();
      localView3 = SoftwareManager2.B(this.c).inflate(2130903103, null, false);
      localTextView3 = (TextView)localView3.findViewById(2131231028);
      localView3.findViewById(2131231029).setVisibility(0);
      Button localButton = (Button)localView3.findViewById(2131231030);
      localButton.setVisibility(0);
      localButton.setOnClickListener(new ak(this, str3));
      if (str3.equalsIgnoreCase("appCate"))
      {
        String str6 = this.c.getString(2131428699);
        Object[] arrayOfObject4 = new Object[1];
        arrayOfObject4[0] = Integer.valueOf(SoftwareManager2.q(this.c));
        localTextView3.setText(String.format(str6, arrayOfObject4));
      }
    }
    Object localObject2;
    Object localObject1;
    long l;
    double d;
    String str1;
    label483: int i;
    label569: label576: for (Object localObject3 = localView3; ; localObject3 = localObject2)
    {
      return localObject3;
      if (str3.equalsIgnoreCase("appInnerSysCate"))
      {
        String str5 = this.c.getString(2131428700);
        Object[] arrayOfObject3 = new Object[1];
        arrayOfObject3[0] = Integer.valueOf(SoftwareManager2.u(this.c));
        localTextView3.setText(String.format(str5, arrayOfObject3));
        break;
      }
      if (!str3.equalsIgnoreCase("appSysCate"))
        break;
      String str4 = this.c.getString(2131428701);
      Object[] arrayOfObject2 = new Object[1];
      arrayOfObject2[0] = Integer.valueOf(SoftwareManager2.w(this.c));
      localTextView3.setText(String.format(str4, arrayOfObject2));
      break;
      if (paramView != null)
        break label583;
      localObject2 = this.c.getLayoutInflater().inflate(2130903102, null, false);
      aq localaq3 = new aq(this);
      localaq3.a = ((ImageView)((View)localObject2).findViewById(2131231025));
      localaq3.b = ((TextView)((View)localObject2).findViewById(2131230854));
      localaq3.c = ((TextView)((View)localObject2).findViewById(2131231026));
      localaq3.d = ((TextView)((View)localObject2).findViewById(2131231027));
      localaq3.e = ((Button)((View)localObject2).findViewById(2131231024));
      ((View)localObject2).setTag(localaq3);
      localObject1 = localaq3;
      ((aq)localObject1).e.setOnClickListener(new ap(this, paramInt));
      o localo = b(paramInt);
      Drawable localDrawable = this.b.a(localo.a(), ((aq)localObject1).a, new q());
      if (localDrawable != null)
        ((aq)localObject1).a.setImageDrawable(localDrawable);
      ((aq)localObject1).b.setText(localo.b());
      l = localo.c();
      if (l <= 1048576L)
        break label720;
      d = (0.0D + l) / 1048576.0D;
      str1 = "MB";
      TextView localTextView1 = ((aq)localObject1).c;
      String str2 = this.c.getString(2131428737);
      Object[] arrayOfObject1 = new Object[2];
      arrayOfObject1[0] = Double.valueOf(d);
      arrayOfObject1[1] = str1;
      localTextView1.setText(String.format(str2, arrayOfObject1));
      if (!b(0).b().equalsIgnoreCase("appCate"))
        break label745;
      TextView localTextView2 = ((aq)localObject1).d;
      if (localo.d() != 0)
        break label738;
      i = 2131428711;
      localTextView2.setText(i);
    }
    label583: aq localaq1 = (aq)paramView.getTag();
    View localView2;
    aq localaq2;
    if (localaq1 == null)
    {
      localView2 = this.c.getLayoutInflater().inflate(2130903102, null, false);
      localaq2 = new aq(this);
      localView2.setTag(localaq2);
    }
    for (View localView1 = localView2; ; localView1 = paramView)
    {
      localaq2.e = ((Button)localView1.findViewById(2131231024));
      localaq2.d = ((TextView)localView1.findViewById(2131231027));
      localaq2.a = ((ImageView)localView1.findViewById(2131231025));
      localaq2.b = ((TextView)localView1.findViewById(2131230854));
      localaq2.c = ((TextView)localView1.findViewById(2131231026));
      localObject1 = localaq2;
      localObject2 = localView1;
      break;
      label720: d = (0.0D + l) / 1024.0D;
      str1 = "KB";
      break label483;
      label738: i = 2131428710;
      break label569;
      label745: ((aq)localObject1).d.setText(2131428588);
      break label576;
      localaq2 = localaq1;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.software.aj
 * JD-Core Version:    0.6.2
 */