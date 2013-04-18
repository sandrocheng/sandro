package com.ijinshan.cleaner.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.CheckBox;
import android.widget.ImageView;
import android.widget.TextView;
import com.ijinshan.cleaner.a.c;
import com.keniu.security.util.aq;
import java.text.DecimalFormat;
import java.util.Collections;
import java.util.List;

public final class f extends BaseAdapter
{
  private Context a;
  private List b;

  public f(Context paramContext, List paramList)
  {
    this.b = paramList;
    this.a = paramContext;
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

  private void a(c paramc)
  {
    this.b.add(paramc);
  }

  private void a(String paramString, CheckBox paramCheckBox, c paramc)
  {
    aq localaq = new aq(this.a, (byte)0);
    localaq.a(2131427865);
    localaq.b(paramString);
    localaq.a(2131428994, new i(this, paramCheckBox, paramc));
    localaq.b(2131428995, new j(this, paramCheckBox, paramc));
    localaq.d();
  }

  private void b()
  {
    this.b.clear();
  }

  public final void a()
  {
    if (!this.b.isEmpty())
      Collections.sort(this.b, new g(this));
  }

  public final int getCount()
  {
    return this.b.size();
  }

  public final Object getItem(int paramInt)
  {
    return this.b.get(paramInt);
  }

  public final long getItemId(int paramInt)
  {
    return paramInt;
  }

  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    k localk = new k(this);
    c localc = (c)this.b.get(paramInt);
    View localView = LayoutInflater.from(this.a).inflate(2130903263, null);
    localk.d = ((CheckBox)localView.findViewById(2131231540));
    localk.b = ((TextView)localView.findViewById(2131231538));
    localk.a = ((ImageView)localView.findViewById(2131231537));
    localk.c = ((TextView)localView.findViewById(2131231539));
    localk.b.setText(localc.a());
    TextView localTextView = localk.c;
    StringBuilder localStringBuilder1 = new StringBuilder().append("大小：");
    long l = localc.e();
    float f;
    String str1;
    if (l >= 1024L)
    {
      f = (float)(l / 1024.0D);
      if (f < 1024.0F)
        break label343;
      str1 = "MB";
      f /= 1024.0F;
    }
    while (true)
    {
      if (f >= 1024.0F)
      {
        str1 = "GB";
        f /= 1024.0F;
      }
      StringBuilder localStringBuilder2 = new StringBuilder(new DecimalFormat("#0.00").format(f));
      if (str1 != null)
        localStringBuilder2.append(str1);
      while (true)
      {
        localTextView.setText(localStringBuilder2.toString());
        localk.d.setChecked(localc.c());
        String str2 = localc.a() + "在SD卡保存了大量的数据，删除后将无法找回。\n确定清理吗？";
        localk.d.setOnClickListener(new h(this, localc, str2));
        localView.setTag(localk);
        return localView;
        f = (float)l;
        str1 = null;
        break;
        localStringBuilder2.append("B");
      }
      label343: str1 = "KB";
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.cleaner.adapter.f
 * JD-Core Version:    0.6.2
 */