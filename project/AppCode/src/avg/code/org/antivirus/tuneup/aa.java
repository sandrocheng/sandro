package org.antivirus.tuneup;

import android.content.Context;
import android.content.pm.PackageManager;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import org.antivirus.Strings;

final class aa extends BaseAdapter
{
  private LayoutInflater b;
  private int[] c;

  public aa(BatteryStateActivity paramBatteryStateActivity, Context paramContext)
  {
    this.b = LayoutInflater.from(paramContext);
    if (paramContext.getPackageManager().hasSystemFeature("android.hardware.telephony"));
    for (this.c = new int[] { 0, 1, 2, 3, 4, 5 }; ; this.c = new int[] { 0, 3, 4, 5 })
      return;
  }

  public final int getCount()
  {
    return this.c.length;
  }

  public final Object getItem(int paramInt)
  {
    return null;
  }

  public final long getItemId(int paramInt)
  {
    return paramInt;
  }

  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    ab localab1;
    if (paramView == null)
    {
      paramView = this.b.inflate(2130903054, null);
      ab localab2 = new ab(this);
      localab2.a = ((ImageView)paramView.findViewById(2131230827));
      localab2.b = ((TextView)paramView.findViewById(2131230828));
      localab2.c = ((TextView)paramView.findViewById(2131230832));
      paramView.setTag(localab2);
      localab1 = localab2;
      switch (this.c[paramInt])
      {
      default:
      case 1:
      case 2:
      case 3:
      case 5:
      case 4:
      case 0:
      }
    }
    while (true)
    {
      return paramView;
      localab1 = (ab)paramView.getTag();
      break;
      localab1.b.setText(Strings.getString(2131296471));
      localab1.a.setImageResource(2130837596);
      localab1.c.setText(BatteryStateActivity.b(this.a).f);
      continue;
      localab1.b.setText(Strings.getString(2131296472));
      localab1.a.setImageResource(2130837595);
      localab1.c.setText(BatteryStateActivity.b(this.a).g);
      continue;
      localab1.b.setText(Strings.getString(2131296473));
      localab1.a.setImageResource(2130837597);
      localab1.c.setText(BatteryStateActivity.b(this.a).h);
      continue;
      localab1.b.setText(Strings.getString(2131296475));
      localab1.a.setImageResource(2130837600);
      localab1.c.setText(BatteryStateActivity.b(this.a).j);
      continue;
      localab1.b.setText(Strings.getString(2131296474));
      localab1.a.setImageResource(2130837599);
      localab1.c.setText(BatteryStateActivity.b(this.a).i);
      continue;
      localab1.b.setText(Strings.getString(2131296476));
      localab1.a.setImageResource(2130837598);
      localab1.c.setText(BatteryStateActivity.b(this.a).k);
    }
  }

  public final boolean isEnabled(int paramInt)
  {
    return false;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.tuneup.aa
 * JD-Core Version:    0.6.2
 */