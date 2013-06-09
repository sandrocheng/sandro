package org.antivirus.tuneup;

import android.content.Context;
import android.content.res.Resources;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.BaseAdapter;
import android.widget.CheckBox;
import android.widget.ImageView;
import android.widget.LinearLayout.LayoutParams;
import android.widget.TextView;
import java.text.DateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Locale;
import org.antivirus.AVSettings;
import org.antivirus.Strings;
import org.antivirus.core.compatibility.DonutTools;

final class ap extends BaseAdapter
{
  private LayoutInflater b;
  private int c;

  public ap(DataPlanSettingsActivity paramDataPlanSettingsActivity, Context paramContext)
  {
    this.b = LayoutInflater.from(paramContext);
    this.c = (9 * DonutTools.getDisplayDensity(((WindowManager)paramDataPlanSettingsActivity.getSystemService("window")).getDefaultDisplay()) / 160);
  }

  public final int getCount()
  {
    return 7;
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
    ar localar1;
    if (paramView == null)
    {
      paramView = this.b.inflate(2130903054, null);
      LinearLayout.LayoutParams localLayoutParams = new LinearLayout.LayoutParams(-1, -2);
      localLayoutParams.leftMargin = this.c;
      ar localar2 = new ar(this);
      localar2.a = ((ImageView)paramView.findViewById(2131230827));
      localar2.b = ((TextView)paramView.findViewById(2131230828));
      localar2.c = ((TextView)paramView.findViewById(2131230829));
      localar2.d = ((CheckBox)paramView.findViewById(2131230831));
      localar2.d.setLayoutParams(localLayoutParams);
      paramView.findViewById(2131230832).setVisibility(8);
      paramView.setTag(localar2);
      localar1 = localar2;
      localar1.b.setVisibility(0);
      localar1.b.setEnabled(true);
      localar1.c.setVisibility(0);
      localar1.a.setVisibility(0);
      localar1.d.setVisibility(8);
      localar1.d.setOnCheckedChangeListener(new aq(this, localar1, paramInt));
      switch (paramInt)
      {
      default:
      case 0:
      case 1:
      case 2:
      case 3:
      case 4:
      case 5:
      case 6:
      }
    }
    while (true)
    {
      return paramView;
      localar1 = (ar)paramView.getTag();
      break;
      String[] arrayOfString3 = this.a.getResources().getStringArray(2131361796);
      localar1.b.setText(Strings.getString(2131296531));
      localar1.c.setText(DataPlanSettingsActivity.f(this.a) + arrayOfString3[DataPlanSettingsActivity.c(this.a)]);
      localar1.a.setImageResource(2130837740);
      continue;
      String[] arrayOfString2 = this.a.getResources().getStringArray(2131361797);
      localar1.b.setText(Strings.getString(2131296596));
      localar1.c.setText(DataPlanSettingsActivity.g(this.a) + " " + arrayOfString2[DataPlanSettingsActivity.d(this.a)]);
      localar1.a.setImageResource(2130837740);
      continue;
      localar1.b.setText(Strings.getString(2131296532));
      localar1.c.setText(DateFormat.getDateInstance(1, Locale.getDefault()).format(new Date(DataPlanSettingsActivity.b(this.a).getTimeInMillis())));
      localar1.a.setImageResource(2130837740);
      continue;
      String[] arrayOfString1 = this.a.getResources().getStringArray(2131361798);
      localar1.b.setText(Strings.getString(2131296597));
      localar1.c.setText(arrayOfString1[DataPlanSettingsActivity.h(this.a)]);
      localar1.a.setImageResource(2130837740);
      continue;
      localar1.b.setVisibility(8);
      localar1.a.setVisibility(8);
      localar1.c.setVisibility(8);
      localar1.d.setVisibility(0);
      localar1.d.setText(Strings.getString(2131296599));
      localar1.d.setChecked(AVSettings.isDataCountRestart());
      continue;
      localar1.b.setText(Strings.getString(2131296534));
      if (AVSettings.isQuotaWarningNotificationOn())
        localar1.c.setText(DataPlanSettingsActivity.i(this.a) + "%");
      while (true)
      {
        localar1.a.setImageResource(2130837740);
        break;
        localar1.c.setText(Strings.getString(2131296257));
      }
      localar1.b.setVisibility(8);
      localar1.a.setVisibility(8);
      localar1.c.setVisibility(8);
      localar1.d.setVisibility(0);
      localar1.d.setText(Strings.getString(2131296557));
      localar1.d.setChecked(AVSettings.isQuotaOngoingNotification());
    }
  }

  public final boolean isEnabled(int paramInt)
  {
    return true;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.tuneup.ap
 * JD-Core Version:    0.6.2
 */