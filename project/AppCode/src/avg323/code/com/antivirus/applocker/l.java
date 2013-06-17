package com.antivirus.applocker;

import android.content.Context;
import android.content.pm.ActivityInfo;
import android.content.pm.ResolveInfo;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import java.util.ArrayList;

class l extends BaseAdapter
{
  private LayoutInflater b;

  public l(g paramg, Context paramContext)
  {
    this.b = LayoutInflater.from(paramContext);
  }

  public int getCount()
  {
    return g.a(this.a).size();
  }

  public Object getItem(int paramInt)
  {
    return g.a(this.a).get(paramInt);
  }

  public long getItemId(int paramInt)
  {
    return paramInt;
  }

  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    m localm;
    k localk;
    String str;
    if (paramView == null)
    {
      paramView = this.b.inflate(2130903053, null);
      localm = new m(this);
      localm.a = ((TextView)paramView.findViewById(2131230807));
      localm.b = ((TextView)paramView.findViewById(2131230808));
      localm.c = ((ImageView)paramView.findViewById(2131230806));
      localm.d = ((ImageView)paramView.findViewById(2131230809));
      paramView.setTag(localm);
      localk = (k)g.a(this.a).get(paramInt);
      if (!TextUtils.isEmpty(localk.a))
        localm.a.setText(localk.a);
      if (!localk.b.activityInfo.packageName.startsWith("com.sec.android.app."))
        break label238;
      str = localk.b.activityInfo.packageName.replace("com.sec.android.app.", "");
      label166: localm.b.setText(str);
      localm.c.setImageDrawable(null);
      if (localk.c != null)
        localm.c.setImageDrawable(localk.c);
      if (!localk.d)
        break label254;
      localm.d.setImageResource(2130837648);
    }
    while (true)
    {
      return paramView;
      localm = (m)paramView.getTag();
      break;
      label238: str = localk.b.activityInfo.packageName;
      break label166;
      label254: localm.d.setImageResource(2130837642);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.applocker.l
 * JD-Core Version:    0.6.2
 */