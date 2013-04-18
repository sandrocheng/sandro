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
import com.jxphone.mosecurity.c.l;
import com.jxphone.mosecurity.logic.a.d;
import com.jxphone.mosecurity.logic.h;
import com.keniu.security.importx.k;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

final class au extends k
{
  protected final LayoutInflater a;
  protected final l[] b;
  protected final ArrayList c = new ArrayList();
  protected final boolean d;
  protected Context e;

  public au(FriendSmsActivity paramFriendSmsActivity, Context paramContext, l[] paramArrayOfl, boolean paramBoolean)
  {
    this.a = LayoutInflater.from(paramContext);
    this.b = paramArrayOfl;
    this.e = paramContext;
    this.d = paramBoolean;
    a(this.b);
  }

  private static aw a(View paramView)
  {
    aw localaw = new aw();
    paramView.setTag(localaw);
    ImageView localImageView = (ImageView)paramView.findViewById(2131230943);
    TextView localTextView1 = (TextView)paramView.findViewById(2131230945);
    TextView localTextView2 = (TextView)paramView.findViewById(2131230949);
    TextView localTextView3 = (TextView)paramView.findViewById(2131230950);
    TextView localTextView4 = (TextView)paramView.findViewById(2131230948);
    localaw.a = localImageView;
    localaw.b = localTextView1;
    localaw.c = localTextView2;
    localaw.d = localTextView3;
    localaw.e = localTextView4;
    return localaw;
  }

  private b a(String paramString)
  {
    com.jxphone.mosecurity.c.b localb = h.c(this.e, this.d).a(paramString, true);
    if (localb != null);
    for (b localb1 = new b(localb); ; localb1 = null)
      return localb1;
  }

  private void a(l paraml, aw paramaw)
  {
    String str = paraml.a(this.e);
    paramaw.e.setText(this.e.getString(2131429005, new Object[] { str }));
    paramaw.e.setTextColor(this.e.getResources().getColor(2131296353));
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

  private static void a(String paramString, aw paramaw)
  {
    paramaw.d.setText(paramString);
  }

  private void a(l[] paramArrayOfl)
  {
    this.c.clear();
    int i = paramArrayOfl.length;
    int j = 0;
    if (j < i)
    {
      l locall = paramArrayOfl[j];
      Iterator localIterator = this.c.iterator();
      int k;
      label107: com.jxphone.mosecurity.c.b localb;
      while (true)
        if (localIterator.hasNext())
        {
          b localb2 = (b)localIterator.next();
          if ((TextUtils.equals(com.ijinshan.kinghelper.a.i.a(locall.h()), com.ijinshan.kinghelper.a.i.a(localb2.c()))) || ((!TextUtils.isEmpty(locall.h())) && (locall.h().endsWith(localb2.c()))))
          {
            k = 1;
            if (k == 0)
            {
              String str = com.ijinshan.kinghelper.a.i.a(locall.b());
              localb = h.c(this.e, this.d).a(str, true);
              if (localb == null)
                break label215;
            }
          }
        }
      label215: for (b localb1 = new b(localb); ; localb1 = null)
      {
        if (localb1 == null)
        {
          localb1 = new b();
          localb1.b(locall.b());
        }
        localb1.b(locall.b());
        this.c.add(localb1);
        j++;
        break;
        k = 0;
        break label107;
      }
    }
  }

  private static boolean a(List paramList, l paraml)
  {
    Iterator localIterator = paramList.iterator();
    b localb;
    do
    {
      if (!localIterator.hasNext())
        break;
      localb = (b)localIterator.next();
    }
    while ((!TextUtils.equals(com.ijinshan.kinghelper.a.i.a(paraml.h()), com.ijinshan.kinghelper.a.i.a(localb.c()))) && ((TextUtils.isEmpty(paraml.h())) || (!paraml.h().endsWith(localb.c()))));
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  private l b(com.jxphone.mosecurity.c.b paramb)
  {
    l[] arrayOfl = this.b;
    int i = arrayOfl.length;
    int j = 0;
    l locall2;
    if (j < i)
    {
      locall2 = arrayOfl[j];
      if ((!TextUtils.equals(com.ijinshan.kinghelper.a.i.a(locall2.h()), com.ijinshan.kinghelper.a.i.a(paramb.c()))) && ((TextUtils.isEmpty(locall2.h())) || (!locall2.h().endsWith(paramb.c()))));
    }
    for (l locall1 = locall2; ; locall1 = null)
    {
      return locall1;
      j++;
      break;
    }
  }

  private int c(com.jxphone.mosecurity.c.b paramb)
  {
    int i = 0;
    l[] arrayOfl = this.b;
    int j = arrayOfl.length;
    int k = 0;
    while (i < j)
    {
      l locall = arrayOfl[i];
      if ((TextUtils.equals(com.ijinshan.kinghelper.a.i.a(locall.h()), com.ijinshan.kinghelper.a.i.a(paramb.c()))) || ((!TextUtils.isEmpty(locall.h())) && (locall.h().endsWith(paramb.c()))))
        k++;
      i++;
    }
    return k;
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
    for (l locall : this.b)
      if ((TextUtils.equals(com.ijinshan.kinghelper.a.i.a(locall.h()), com.ijinshan.kinghelper.a.i.a(paramb.c()))) || ((!TextUtils.isEmpty(locall.h())) && (locall.h().endsWith(paramb.c()))))
        localArrayList.add(locall);
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
      View localView2 = this.a.inflate(2130903214, null);
      aw localaw2 = a(localView2);
      localView1 = localView2;
      localObject1 = localaw2;
    }
    while (true)
    {
      b localb = (b)this.c.get(paramInt);
      l[] arrayOfl = this.b;
      int i = arrayOfl.length;
      int j = 0;
      label58: l locall1;
      label125: String str3;
      label215: Object localObject2;
      Object localObject3;
      label278: int m;
      label322: CheckBox localCheckBox;
      if (j < i)
      {
        l locall2 = arrayOfl[j];
        if ((TextUtils.equals(com.ijinshan.kinghelper.a.i.a(locall2.h()), com.ijinshan.kinghelper.a.i.a(localb.c()))) || ((!TextUtils.isEmpty(locall2.h())) && (locall2.h().endsWith(localb.c()))))
        {
          locall1 = locall2;
          String str1 = locall1.a(this.e);
          ((aw)localObject1).e.setText(this.e.getString(2131429005, new Object[] { str1 }));
          ((aw)localObject1).e.setTextColor(this.e.getResources().getColor(2131296353));
          if (TextUtils.isEmpty(localb.b()))
            break label482;
          Bitmap localBitmap = localb.g();
          if (localBitmap == null)
            break label468;
          ((aw)localObject1).a.setImageBitmap(localBitmap);
          String str5 = localb.b() + "(" + c(localb) + ")";
          str3 = locall1.b();
          String str6 = locall1.c();
          localObject2 = str5;
          localObject3 = str6;
          int k = locall1.f();
          ((TextView)localView1.findViewById(2131230947)).setText((CharSequence)localObject2);
          ImageView localImageView = (ImageView)localView1.findViewById(2131230944);
          if (k != 1)
            break label559;
          m = 2130837919;
          localImageView.setImageResource(m);
          ((aw)localObject1).c.setText(str3);
          ((aw)localObject1).d.setText((CharSequence)localObject3);
          ((aw)localObject1).b.setText(com.keniu.security.util.i.a(locall1.d(), this.e));
          localCheckBox = (CheckBox)localView1.findViewById(2131231378);
          if (!FriendSmsActivity.c(this.f))
            break label566;
        }
      }
      aw localaw1;
      label559: label566: for (int n = 0; ; n = 8)
      {
        localCheckBox.setVisibility(n);
        localCheckBox.setChecked(localb.a);
        localCheckBox.setOnCheckedChangeListener(new av(this, localb));
        return localView1;
        localaw1 = (aw)paramView.getTag();
        if (localaw1 != null)
          break label573;
        localObject1 = a(paramView);
        localView1 = paramView;
        break;
        j++;
        break label58;
        locall1 = null;
        break label125;
        label468: ((aw)localObject1).a.setImageResource(2130837635);
        break label215;
        label482: ((aw)localObject1).a.setImageResource(2130837635);
        String str2 = locall1.b() + "(" + c(localb) + ")";
        str3 = locall1.b();
        String str4 = locall1.c();
        localObject2 = str2;
        localObject3 = str4;
        break label278;
        m = 2130837920;
        break label322;
      }
      label573: localObject1 = localaw1;
      localView1 = paramView;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.jxphone.mosecurity.activity.friend.au
 * JD-Core Version:    0.6.2
 */