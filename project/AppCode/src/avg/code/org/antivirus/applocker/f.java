package org.antivirus.applocker;

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

final class f extends BaseAdapter
{
  private LayoutInflater b;

  public f(AppLockerActivity paramAppLockerActivity, Context paramContext)
  {
    this.b = LayoutInflater.from(paramContext);
  }

  public final int getCount()
  {
    return AppLockerActivity.a(this.a).size();
  }

  public final Object getItem(int paramInt)
  {
    return AppLockerActivity.a(this.a).get(paramInt);
  }

  public final long getItemId(int paramInt)
  {
    return paramInt;
  }

  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    g localg;
    e locale;
    String str;
    if (paramView == null)
    {
      paramView = this.b.inflate(2130903049, null);
      localg = new g(this);
      localg.a = ((TextView)paramView.findViewById(2131230799));
      localg.b = ((TextView)paramView.findViewById(2131230800));
      localg.c = ((ImageView)paramView.findViewById(2131230798));
      localg.d = ((ImageView)paramView.findViewById(2131230801));
      paramView.setTag(localg);
      locale = (e)AppLockerActivity.a(this.a).get(paramInt);
      if (!TextUtils.isEmpty(locale.a))
        localg.a.setText(locale.a);
      if (!locale.b.activityInfo.packageName.startsWith("com.sec.android.app."))
        break label238;
      str = locale.b.activityInfo.packageName.replace("com.sec.android.app.", "");
      label166: localg.b.setText(str);
      localg.c.setImageDrawable(null);
      if (locale.c != null)
        localg.c.setImageDrawable(locale.c);
      if (!locale.d)
        break label254;
      localg.d.setImageResource(2130837624);
    }
    while (true)
    {
      return paramView;
      localg = (g)paramView.getTag();
      break;
      label238: str = locale.b.activityInfo.packageName;
      break label166;
      label254: localg.d.setImageResource(2130837618);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.applocker.f
 * JD-Core Version:    0.6.2
 */