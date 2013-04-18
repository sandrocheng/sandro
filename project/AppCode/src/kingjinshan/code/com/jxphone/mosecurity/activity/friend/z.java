package com.jxphone.mosecurity.activity.friend;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.ImageView;
import android.widget.TextView;
import com.jxphone.mosecurity.c.c;
import com.jxphone.mosecurity.c.j;
import com.jxphone.mosecurity.logic.a.d;
import com.jxphone.mosecurity.logic.h;
import com.keniu.security.importx.k;
import com.keniu.security.util.i;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

final class z extends k
{
  protected final LayoutInflater a;
  protected final Context b;
  protected final List c = new ArrayList();
  protected final j[] d;
  protected final boolean e;

  public z(FriendCallLogActivity paramFriendCallLogActivity, Context paramContext, j[] paramArrayOfj, boolean paramBoolean)
  {
    this.b = paramContext;
    this.d = paramArrayOfj;
    this.a = LayoutInflater.from(paramContext);
    this.e = paramBoolean;
    a(paramArrayOfj);
  }

  private int a(b paramb)
  {
    int i = 0;
    j[] arrayOfj = this.d;
    int j = arrayOfj.length;
    int k = 0;
    while (i < j)
    {
      j localj = arrayOfj[i];
      if ((TextUtils.equals(localj.j(), paramb.c())) || ((!TextUtils.isEmpty(localj.j())) && (localj.j().endsWith(paramb.c()))))
        k++;
      i++;
    }
    return k;
  }

  private ab a(View paramView)
  {
    ab localab = new ab(this);
    paramView.setTag(localab);
    ab.a(localab, (ImageView)paramView.findViewById(2131230943));
    ab.b(localab, (ImageView)paramView.findViewById(2131230944));
    ab.a(localab, (TextView)paramView.findViewById(2131230947));
    ab.b(localab, (TextView)paramView.findViewById(2131230949));
    ab.c(localab, (TextView)paramView.findViewById(2131230950));
    ab.d(localab, (TextView)paramView.findViewById(2131230945));
    ab.e(localab, (TextView)paramView.findViewById(2131230948));
    return localab;
  }

  private b a(String paramString)
  {
    com.jxphone.mosecurity.c.b localb = h.c(this.b, this.e).a(paramString, true);
    if (localb != null);
    for (b localb1 = new b(localb); ; localb1 = null)
      return localb1;
  }

  private static void a(ab paramab, int paramInt)
  {
    ab.g(paramab).setImageResource(paramInt);
  }

  private static void a(ab paramab, com.jxphone.mosecurity.c.b paramb)
  {
    Bitmap localBitmap = paramb.g();
    if (localBitmap != null)
      ab.f(paramab).setImageBitmap(localBitmap);
    while (true)
    {
      return;
      ab.f(paramab).setImageResource(2130837635);
    }
  }

  private void a(j[] paramArrayOfj)
  {
    this.c.clear();
    int i = 0;
    int j;
    label97: b localb1;
    label145: b localb2;
    if (i < paramArrayOfj.length)
    {
      j localj = paramArrayOfj[i];
      Iterator localIterator = this.c.iterator();
      while (true)
        if (localIterator.hasNext())
        {
          b localb4 = (b)localIterator.next();
          if ((TextUtils.equals(localj.j(), localb4.c())) || ((!TextUtils.isEmpty(localj.j())) && (localj.j().endsWith(localb4.c()))))
          {
            j = 1;
            if (j == 0)
            {
              String str = localj.d();
              com.jxphone.mosecurity.c.b localb = h.c(this.b, this.e).a(str, true);
              if (localb == null)
                break label194;
              localb1 = new b(localb);
              if (localb1 != null)
                break label201;
              localb2 = new b();
              localb2.b(str);
            }
          }
        }
    }
    label194: label201: for (b localb3 = localb2; ; localb3 = localb1)
    {
      this.c.add(localb3);
      i++;
      break;
      j = 0;
      break label97;
      localb1 = null;
      break label145;
      return;
    }
  }

  private static boolean a(List paramList, j paramj)
  {
    Iterator localIterator = paramList.iterator();
    b localb;
    do
    {
      if (!localIterator.hasNext())
        break;
      localb = (b)localIterator.next();
    }
    while ((!TextUtils.equals(paramj.j(), localb.c())) && ((TextUtils.isEmpty(paramj.j())) || (!paramj.j().endsWith(localb.c()))));
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  private j b(com.jxphone.mosecurity.c.b paramb)
  {
    j[] arrayOfj = this.d;
    int i = arrayOfj.length;
    int j = 0;
    j localj2;
    if (j < i)
    {
      localj2 = arrayOfj[j];
      if ((!TextUtils.equals(localj2.d(), paramb.c())) && ((TextUtils.isEmpty(localj2.d())) || (!localj2.d().endsWith(paramb.c()))));
    }
    for (j localj1 = localj2; ; localj1 = null)
    {
      return localj1;
      j++;
      break;
    }
  }

  private static void c()
  {
  }

  public final b a(int paramInt)
  {
    return (b)this.c.get(paramInt);
  }

  public final List a()
  {
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator = this.c.iterator();
    while (localIterator.hasNext())
    {
      b localb = (b)localIterator.next();
      if (localb.a)
        localArrayList.addAll(a(localb));
    }
    return localArrayList;
  }

  public final List a(com.jxphone.mosecurity.c.b paramb)
  {
    ArrayList localArrayList = new ArrayList();
    for (j localj : this.d)
      if ((TextUtils.equals(localj.j(), paramb.c())) || ((!TextUtils.isEmpty(localj.j())) && (localj.j().endsWith(paramb.c()))))
        localArrayList.add(localj);
    return localArrayList;
  }

  public final void a(int paramInt, com.jxphone.mosecurity.c.b paramb)
  {
    this.c.set(paramInt, (b)paramb);
  }

  public final b c(int paramInt)
  {
    return (b)this.c.get(paramInt);
  }

  public final int getCount()
  {
    return this.c.size();
  }

  public final long getItemId(int paramInt)
  {
    return paramInt;
  }

  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    View localView1;
    Object localObject1;
    if (paramView == null)
    {
      View localView3 = this.a.inflate(2130903214, null);
      ab localab2 = a(localView3);
      ((TextView)localView3.findViewById(2131230946)).setText(null);
      localView1 = localView3;
      localObject1 = localab2;
    }
    while (true)
    {
      b localb = (b)this.c.get(paramInt);
      j[] arrayOfj = this.d;
      int i = arrayOfj.length;
      int j = 0;
      label75: j localj2;
      if (j < i)
      {
        localj2 = arrayOfj[j];
        if ((!TextUtils.equals(localj2.d(), localb.c())) && ((TextUtils.isEmpty(localj2.d())) || (!localj2.d().endsWith(localb.c()))));
      }
      View localView2;
      ab localab1;
      for (j localj1 = localj2; ; localj1 = null)
      {
        if (localj1 != null)
          break label194;
        localView1.setVisibility(8);
        localView2 = localView1;
        return localView2;
        localab1 = (ab)paramView.getTag();
        if (localab1 != null)
          break label795;
        localObject1 = a(paramView);
        localView1 = paramView;
        break;
        j++;
        break label75;
      }
      label194: int k = localj1.f();
      int m = 0;
      label232: int n;
      Object localObject2;
      label239: label378: CheckBox localCheckBox;
      switch (k)
      {
      default:
        n = m;
        localObject2 = null;
        ab.g((ab)localObject1).setImageResource(n);
        ab.a((ab)localObject1).setText(i.a(localj1.c(), this.b));
        TextView localTextView = ab.b((ab)localObject1);
        Context localContext2 = this.b;
        Object[] arrayOfObject2 = new Object[1];
        arrayOfObject2[0] = localj1.a(this.b);
        localTextView.setText(localContext2.getString(2131429005, arrayOfObject2));
        ab.b((ab)localObject1).setTextColor(this.b.getResources().getColor(2131296353));
        ab.c((ab)localObject1).setText((CharSequence)localObject2);
        ab.c((ab)localObject1).setVisibility(0);
        Bitmap localBitmap = localb.g();
        if (localBitmap != null)
        {
          ab.f((ab)localObject1).setImageBitmap(localBitmap);
          if (TextUtils.isEmpty(localb.b()))
            break label725;
          ab.d((ab)localObject1).setText(localb.b() + "(" + a(localb) + ")");
          ab.e((ab)localObject1).setText(localj1.d());
          label449: localCheckBox = (CheckBox)localView1.findViewById(2131231378);
          if (!FriendCallLogActivity.c(this.f))
            break label788;
        }
        break;
      case 1:
      case 2:
      case 3:
      }
      label788: for (int i1 = 0; ; i1 = 8)
      {
        localCheckBox.setVisibility(i1);
        localCheckBox.setChecked(localb.a);
        localCheckBox.setOnCheckedChangeListener(new aa(this, localb));
        localView2 = localView1;
        break;
        m = 2130837521;
        if (localj1.g().equals(c.c))
          break label232;
        Context localContext4 = localView1.getContext();
        Object[] arrayOfObject4 = new Object[1];
        arrayOfObject4[0] = Double.valueOf(localj1.i() / 1000.0D);
        String str3 = localContext4.getString(2131428991, arrayOfObject4);
        n = m;
        localObject2 = str3;
        break label239;
        Context localContext3 = localView1.getContext();
        Object[] arrayOfObject3 = new Object[1];
        arrayOfObject3[0] = Double.valueOf(localj1.i() / 1000.0D);
        String str2 = localContext3.getString(2131428991, arrayOfObject3);
        n = 2130837523;
        localObject2 = str2;
        break label239;
        m = 2130837522;
        if (localj1.g().equals(c.c))
          break label232;
        Context localContext1 = localView1.getContext();
        Object[] arrayOfObject1 = new Object[1];
        arrayOfObject1[0] = Double.valueOf(localj1.h() / 1000.0D);
        String str1 = localContext1.getString(2131428989, arrayOfObject1);
        n = m;
        localObject2 = str1;
        break label239;
        ab.f((ab)localObject1).setImageResource(2130837635);
        break label378;
        label725: ab.d((ab)localObject1).setText(localj1.d() + "(" + a(localb) + ")");
        ab.e((ab)localObject1).setText(localj1.d());
        break label449;
      }
      label795: localObject1 = localab1;
      localView1 = paramView;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.jxphone.mosecurity.activity.friend.z
 * JD-Core Version:    0.6.2
 */