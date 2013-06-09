package org.antivirus.ui.performance;

import android.content.Context;
import android.content.res.Resources;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import java.util.ArrayList;
import org.antivirus.AVSettings;
import org.antivirus.Strings;

final class i extends a
{
  private LayoutInflater c;
  private Context d;

  public i(PerformanceActivity paramPerformanceActivity, Context paramContext, ArrayList paramArrayList)
  {
    super(paramArrayList);
    this.c = LayoutInflater.from(paramContext);
    this.d = paramContext;
  }

  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    c localc1;
    if (paramView == null)
    {
      paramView = this.c.inflate(2130903084, null);
      c localc2 = new c(this);
      localc2.a = ((ImageView)paramView.findViewById(2131230874));
      localc2.b = ((TextView)paramView.findViewById(2131230731));
      localc2.d = ((TextView)paramView.findViewById(2131230932));
      localc2.f = ((ImageView)paramView.findViewById(2131230875));
      LinearLayout localLinearLayout = (LinearLayout)paramView.findViewById(2131230930);
      localc2.e = new TextView(this.d);
      ((TextView)localc2.e).setTextAppearance(this.d, 2131099664);
      localLinearLayout.addView(localc2.e);
      paramView.setTag(localc2);
      localc1 = localc2;
      localc1.e.setVisibility(8);
      switch (((b)this.a.get(paramInt)).a)
      {
      default:
      case 0:
      case 1:
      case 2:
      case 3:
      }
    }
    while (true)
    {
      return paramView;
      localc1 = (c)paramView.getTag();
      break;
      a(localc1, 0, 2130837735, 2131296353, 2131296354);
      localc1.e.setVisibility(0);
      ((TextView)localc1.e).setText(PerformanceActivity.e(this.b));
      ((TextView)localc1.e).setTextColor(-1);
      continue;
      a(localc1, 1, 2130837732, 2131296675, 2131296676);
      String str1 = Strings.getString(2131296482) + " " + PerformanceActivity.f(this.b) + "\n";
      String str2 = str1 + Strings.getString(2131296677) + " " + PerformanceActivity.g(this.b) + "%";
      ((TextView)localc1.e).setText(str2);
      localc1.e.setVisibility(0);
      if ((AVSettings.isPowerSavingMode()) && (PerformanceActivity.g(this.b) <= AVSettings.getPowerSavingModeThreshold()))
      {
        ((TextView)localc1.e).setTextColor(this.b.getResources().getColor(2131165245));
      }
      else
      {
        ((TextView)localc1.e).setTextColor(-1);
        continue;
        a(localc1, 2, 2130837736, 2131296678, 2131296679);
        if (!PerformanceActivity.h(this.b).equals(""))
        {
          localc1.e.setVisibility(0);
          ((TextView)localc1.e).setText(PerformanceActivity.h(this.b));
          ((TextView)localc1.e).setTextColor(PerformanceActivity.i(this.b));
          continue;
          a(localc1, 3, 2130837734, 2131296680, 2131296681);
          localc1.e.setVisibility(0);
          ((TextView)localc1.e).setText(PerformanceActivity.j(this.b));
          ((TextView)localc1.e).setTextColor(-1);
        }
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.ui.performance.i
 * JD-Core Version:    0.6.2
 */