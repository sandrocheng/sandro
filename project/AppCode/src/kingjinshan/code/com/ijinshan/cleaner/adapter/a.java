package com.ijinshan.cleaner.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import java.text.DecimalFormat;
import java.util.List;

public final class a extends BaseAdapter
{
  public List a;
  private LayoutInflater b;

  public a(Context paramContext, List paramList)
  {
    this.a = paramList;
    this.b = LayoutInflater.from(paramContext);
  }

  private static String a(long paramLong)
  {
    String str;
    float f;
    StringBuilder localStringBuilder;
    if (paramLong >= 1024L)
    {
      str = "KB";
      f = (float)(paramLong / 1024.0D);
      if (f >= 1024.0F)
      {
        str = "MB";
        f /= 1024.0F;
      }
      if (f >= 1024.0F)
      {
        str = "GB";
        f /= 1024.0F;
      }
      localStringBuilder = new StringBuilder(new DecimalFormat("#0.00").format(f));
      if (str == null)
        break label97;
      localStringBuilder.append(str);
    }
    while (true)
    {
      return localStringBuilder.toString();
      f = (float)paramLong;
      str = null;
      break;
      label97: localStringBuilder.append("B");
    }
  }

  private void a()
  {
    this.a.clear();
  }

  private void a(com.ijinshan.cleaner.a.a parama)
  {
    this.a.add(parama);
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
    b localb = new b(this);
    com.ijinshan.cleaner.a.a locala = (com.ijinshan.cleaner.a.a)this.a.get(paramInt);
    View localView = this.b.inflate(2130903079, null);
    localb.a = ((ImageView)localView.findViewById(2131230952));
    localb.b = ((TextView)localView.findViewById(2131230953));
    localb.c = ((TextView)localView.findViewById(2131230954));
    localb.a.setImageDrawable(locala.a());
    localb.b.setText(locala.c());
    TextView localTextView = localb.c;
    long l = locala.d();
    float f2;
    float f3;
    String str;
    if (l >= 1024L)
    {
      f2 = (float)(l / 1024.0D);
      if (f2 < 1024.0F)
        break label262;
      f3 = f2 / 1024.0F;
      str = "MB";
    }
    for (float f1 = f3; ; f1 = f2)
    {
      if (f1 >= 1024.0F)
      {
        str = "GB";
        f1 /= 1024.0F;
      }
      StringBuilder localStringBuilder = new StringBuilder(new DecimalFormat("#0.00").format(f1));
      if (str != null)
        localStringBuilder.append(str);
      while (true)
      {
        localTextView.setText(localStringBuilder.toString());
        localView.setTag(localb);
        return localView;
        f1 = (float)l;
        str = null;
        break;
        localStringBuilder.append("B");
      }
      label262: str = "KB";
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.cleaner.adapter.a
 * JD-Core Version:    0.6.2
 */