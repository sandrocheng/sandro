package com.ijinshan.cleaner.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.CheckBox;
import android.widget.ImageView;
import android.widget.TextView;
import com.ijinshan.cleaner.a.a;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.List;

public final class c extends BaseAdapter
{
  private static final int c = 1;
  private static final int d = 2;
  private static final int e = 3;
  private static final int f = 4;
  public List a = new ArrayList();
  private LayoutInflater b;

  private c(Context paramContext)
  {
    this.b = LayoutInflater.from(paramContext);
  }

  private static String a(long paramLong)
  {
    String str;
    float f1;
    StringBuilder localStringBuilder;
    if (paramLong >= 1024L)
    {
      str = "KB";
      f1 = (float)(paramLong / 1024.0D);
      if (f1 >= 1024.0F)
      {
        str = "MB";
        f1 /= 1024.0F;
      }
      if (f1 >= 1024.0F)
      {
        str = "GB";
        f1 /= 1024.0F;
      }
      localStringBuilder = new StringBuilder(new DecimalFormat("#0.00").format(f1));
      if (str == null)
        break label97;
      localStringBuilder.append(str);
    }
    while (true)
    {
      return localStringBuilder.toString();
      f1 = (float)paramLong;
      str = null;
      break;
      label97: localStringBuilder.append("B");
    }
  }

  private void a()
  {
    this.a.clear();
  }

  private void a(List paramList1, List paramList2)
  {
    int i = paramList1.size();
    if (i > 0)
    {
      d locald1 = new d(this);
      locald1.a = 1;
      this.a.add(locald1);
      for (int j = 0; j < i; j++)
      {
        d locald2 = new d(this);
        locald2.b = ((a)paramList1.get(j));
        locald2.a = 3;
        this.a.add(locald2);
      }
    }
    int k = paramList2.size();
    if (k > 0)
    {
      d locald3 = new d(this);
      locald3.a = 2;
      this.a.add(locald3);
      for (int m = 0; m < k; m++)
      {
        d locald4 = new d(this);
        locald4.c = ((com.ijinshan.cleaner.a.c)paramList2.get(m));
        locald4.a = 4;
        this.a.add(locald4);
      }
    }
  }

  private int b()
  {
    int i = 0;
    int j = this.a.size();
    int k = 0;
    if (i < j)
      if (((d)this.a.get(i)).b == null)
        break label54;
    label54: for (int m = k + 1; ; m = k)
    {
      i++;
      k = m;
      break;
      return k;
    }
  }

  private int c()
  {
    int i = 0;
    int j = this.a.size();
    int k = 0;
    if (i < j)
      if (((d)this.a.get(i)).c == null)
        break label54;
    label54: for (int m = k + 1; ; m = k)
    {
      i++;
      k = m;
      break;
      return k;
    }
  }

  public final int getCount()
  {
    return this.a.size();
  }

  public final Object getItem(int paramInt)
  {
    return this.a.get(paramInt);
  }

  public final long getItemId(int paramInt)
  {
    return paramInt;
  }

  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    e locale = new e(this);
    d locald = (d)this.a.get(paramInt);
    Object localObject;
    switch (locald.a)
    {
    default:
      localObject = paramView;
    case 1:
    case 2:
    case 3:
    case 4:
    }
    while (true)
    {
      ((View)localObject).setTag(locale);
      return localObject;
      View localView4 = this.b.inflate(2130903088, null);
      locale.b = ((TextView)localView4.findViewById(2131230992));
      locale.b.setText("缓存文件(" + b() + ")");
      localObject = localView4;
      continue;
      View localView3 = this.b.inflate(2130903088, null);
      locale.b = ((TextView)localView3.findViewById(2131230992));
      locale.b.setText("SD卡垃圾文件 (" + c() + ")");
      localObject = localView3;
      continue;
      View localView2 = this.b.inflate(2130903086, null);
      locale.b = ((TextView)localView2.findViewById(2131230988));
      locale.a = ((ImageView)localView2.findViewById(2131230987));
      locale.c = ((TextView)localView2.findViewById(2131230989));
      locale.d = null;
      locale.a.setImageDrawable(locald.b.a());
      locale.b.setText(locald.b.c());
      locale.c.setText(a(locald.b.d()));
      localObject = localView2;
      continue;
      View localView1 = this.b.inflate(2130903087, null);
      locale.d = ((CheckBox)localView1.findViewById(2131230990));
      locale.b = ((TextView)localView1.findViewById(2131230953));
      locale.a = ((ImageView)localView1.findViewById(2131230952));
      locale.c = ((TextView)localView1.findViewById(2131230954));
      locale.a.setImageResource(2130837709);
      locale.b.setText(locald.c.d());
      locale.c.setText(a(locald.c.e()));
      localObject = localView1;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.cleaner.adapter.c
 * JD-Core Version:    0.6.2
 */