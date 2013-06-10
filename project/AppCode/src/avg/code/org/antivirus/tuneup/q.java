package org.antivirus.tuneup;

import android.content.Context;
import android.os.Build.VERSION;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.CheckBox;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.SeekBar;
import android.widget.TextView;
import org.antivirus.Strings;

final class q extends BaseAdapter
{
  private LayoutInflater b;

  public q(BatterySaveSettingsActivity paramBatterySaveSettingsActivity, Context paramContext)
  {
    this.b = LayoutInflater.from(paramContext);
  }

  public final int getCount()
  {
    if (BatterySaveSettingsActivity.a(this.a) != null);
    for (int i = BatterySaveSettingsActivity.a(this.a).length; ; i = 0)
      return i;
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
    t localt;
    if (paramView == null)
    {
      paramView = this.b.inflate(2130903054, null);
      localt = new t(this);
      localt.a = ((ImageView)paramView.findViewById(2131230827));
      localt.b = ((TextView)paramView.findViewById(2131230828));
      localt.c = ((TextView)paramView.findViewById(2131230829));
      localt.d = ((CheckBox)paramView.findViewById(2131230831));
      localt.e = ((SeekBar)paramView.findViewById(2131230830));
      localt.f = ((LinearLayout)paramView.findViewById(2131230825));
      paramView.findViewById(2131230832).setVisibility(8);
      paramView.setTag(localt);
    }
    while (true)
    {
      localt.d.setOnCheckedChangeListener(new r(this, localt, paramInt));
      localt.e.setVisibility(8);
      localt.d.setVisibility(8);
      localt.c.setVisibility(0);
      localt.f.setVisibility(8);
      localt.d.setEnabled(true);
      switch (BatterySaveSettingsActivity.a(this.a)[paramInt])
      {
      default:
        return paramView;
        localt = (t)paramView.getTag();
      case 0:
      case 1:
      case 2:
      case 3:
      case 4:
      case 5:
      case 6:
      case 7:
      case 8:
      case 9:
      case 10:
      case 11:
      case 12:
      }
    }
    localt.a.setImageResource(2130837746);
    localt.b.setText(Strings.getString(2131296514));
    TextView localTextView1 = localt.c;
    String[] arrayOfString = Strings.getStringArray(2131361794);
    String str1 = arrayOfString[BatterySaveSettingsActivity.d()];
    while (true)
    {
      localTextView1.setText(str1);
      break;
      localt.f.setVisibility(0);
      ((TextView)localt.f.findViewById(2131230826)).setText(Strings.getString(2131296513));
      localt.b.setText(Strings.getString(2131296493));
      localt.a.setImageResource(2130837814);
      localt.d.setVisibility(0);
      localt.d.setChecked(BatterySaveSettingsActivity.h(this.a));
      localt.c.setText(BatterySaveSettingsActivity.i(this.a));
      switch (BatterySaveSettingsActivity.j(this.a))
      {
      case 1:
      default:
        break;
      case 0:
      case 2:
        localt.d.setEnabled(false);
        break;
        localt.b.setText(Strings.getString(2131296496));
        localt.a.setImageResource(2130837815);
        localt.d.setVisibility(0);
        if (Integer.parseInt(Build.VERSION.SDK) <= 7)
        {
          localt.d.setChecked(false);
          localTextView1 = localt.c;
          str1 = Strings.getString(2131296541);
        }
        else
        {
          boolean bool5 = BatterySaveSettingsActivity.k(this.a);
          int i = BatterySaveSettingsActivity.l(this.a);
          localt.d.setChecked(bool5);
          switch (i)
          {
          case 1:
          default:
          case 0:
          case 2:
          }
          while (true)
          {
            localTextView1 = localt.c;
            str1 = BatterySaveSettingsActivity.b(i);
            break;
            localt.d.setEnabled(false);
          }
          localt.b.setText(Strings.getString(2131296494));
          localt.d.setVisibility(0);
          CheckBox localCheckBox = localt.d;
          localCheckBox.setChecked(BatterySaveSettingsActivity.e());
          TextView localTextView5 = localt.c;
          localTextView5.setText(BatterySaveSettingsActivity.f());
          localt.a.setImageResource(2130837602);
          switch (BatterySaveSettingsActivity.g())
          {
          case 12:
          default:
            break;
          case 11:
          case 13:
            localt.d.setEnabled(false);
            break;
            boolean bool4 = BatterySaveSettingsActivity.m(this.a);
            localt.a.setImageResource(2130837738);
            localt.b.setText(Strings.getString(2131296495));
            localt.d.setVisibility(0);
            localt.d.setChecked(bool4);
            TextView localTextView4 = localt.c;
            if (bool4);
            for (String str4 = Strings.getString(2131296507); ; str4 = Strings.getString(2131296508))
            {
              localTextView4.setText(str4);
              break;
            }
            localt.a.setImageResource(2130837739);
            localt.b.setText(Strings.getString(2131296497));
            localTextView1 = localt.c;
            str1 = BatterySaveSettingsActivity.n(this.a);
            continue;
            boolean bool3 = BatterySaveSettingsActivity.h();
            localt.b.setText(Strings.getString(2131296498));
            localt.d.setVisibility(0);
            localt.d.setChecked(bool3);
            TextView localTextView3 = localt.c;
            if (bool3);
            for (String str3 = Strings.getString(2131296519); ; str3 = Strings.getString(2131296520))
            {
              localTextView3.setText(str3);
              localt.a.setImageResource(2130837583);
              break;
            }
            boolean bool2 = BatterySaveSettingsActivity.o(this.a);
            localt.b.setText(Strings.getString(2131296499));
            localt.d.setVisibility(0);
            localt.d.setChecked(bool2);
            localt.a.setImageResource(2130837549);
            TextView localTextView2 = localt.c;
            if (bool2);
            for (String str2 = Strings.getString(2131296507); ; str2 = Strings.getString(2131296508))
            {
              localTextView2.setText(str2);
              break;
            }
            localt.a.setImageResource(2130837603);
            localt.d.setVisibility(0);
            localt.d.setChecked(BatterySaveSettingsActivity.p(this.a));
            localt.e.setMax(255);
            localt.e.setProgress(BatterySaveSettingsActivity.q(this.a));
            localt.e.setOnSeekBarChangeListener(new s(this));
            if (BatterySaveSettingsActivity.p(this.a))
            {
              localt.b.setText(Strings.getString(2131296502));
              localt.c.setText(Strings.getString(2131296519));
              localt.e.setVisibility(8);
              break;
            }
            localt.b.setText(Strings.getString(2131296501));
            localt.c.setVisibility(8);
            localt.e.setVisibility(0);
            break;
            localt.a.setImageResource(2130837770);
            localt.b.setText(Strings.getString(2131296500));
            localTextView1 = localt.c;
            str1 = Strings.getStringArray(2131361793)[BatterySaveSettingsActivity.r(this.a)];
            continue;
            localt.a.setImageResource(2130837766);
            localt.b.setText(Strings.getString(2131296521));
            localTextView1 = localt.c;
            str1 = BatterySaveSettingsActivity.s(this.a);
            continue;
            localt.a.setImageResource(2130837813);
            localt.b.setText(Strings.getString(2131296503));
            localt.c.setVisibility(8);
            break;
            boolean bool1 = BatterySaveSettingsActivity.t(this.a);
            localt.a.setImageResource(2130837582);
            localt.b.setText(Strings.getString(2131296504));
            localt.d.setVisibility(0);
            localt.d.setChecked(bool1);
            localTextView1 = localt.c;
            if (bool1)
              str1 = Strings.getString(2131296519);
            else
              str1 = Strings.getString(2131296520);
            break;
          }
        }
        break;
      }
    }
  }

  public final boolean isEnabled(int paramInt)
  {
    return true;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.tuneup.q
 * JD-Core Version:    0.6.2
 */