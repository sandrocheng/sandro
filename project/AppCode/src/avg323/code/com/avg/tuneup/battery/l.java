package com.avg.tuneup.battery;

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
import com.avg.a.d;
import com.avg.a.e;
import com.avg.a.f;
import com.avg.a.g;

class l extends BaseAdapter
{
  private LayoutInflater b;

  public l(c paramc, Context paramContext)
  {
    this.b = LayoutInflater.from(paramContext);
  }

  private void a(int paramInt, o paramo)
  {
    paramo.d.setOnCheckedChangeListener(new m(this, paramo, paramInt));
    paramo.e.setVisibility(8);
    paramo.d.setVisibility(8);
    paramo.c.setVisibility(0);
    paramo.f.setVisibility(8);
    paramo.d.setEnabled(true);
    switch (c.b(this.a)[paramInt])
    {
    default:
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
      while (true)
      {
        return;
        paramo.a.setImageResource(d.notify_low_battery_30);
        paramo.b.setText(c.p(this.a).getString(g.battery_save_notify_on));
        paramo.c.setText(c.q(this.a).getResources().getStringArray(com.avg.a.b.battery_save_power_threshold)[c.r(this.a)]);
        continue;
        paramo.f.setVisibility(0);
        ((TextView)paramo.f.findViewById(e.tv_header)).setText(c.s(this.a).getString(g.power_saving_mode_settings));
        paramo.b.setText(c.t(this.a).getString(g.battery_save_wifi));
        paramo.a.setImageResource(d.wi_fi);
        paramo.d.setVisibility(0);
        paramo.d.setChecked(c.u(this.a));
        paramo.c.setText(c.v(this.a));
        switch (c.w(this.a))
        {
        case 1:
        default:
          break;
        case 0:
        case 2:
          paramo.d.setEnabled(false);
          continue;
          paramo.b.setText(c.x(this.a).getString(g.battery_save_wifi_hotspot));
          paramo.a.setImageResource(d.wi_fi_hotspot);
          paramo.d.setVisibility(0);
          if (Integer.parseInt(Build.VERSION.SDK) <= 7)
          {
            paramo.d.setChecked(false);
            paramo.c.setText(c.y(this.a).getString(g.not_supported));
          }
          else
          {
            boolean bool5 = c.z(this.a);
            int i = c.A(this.a);
            paramo.d.setChecked(bool5);
            switch (i)
            {
            case 1:
            default:
            case 0:
            case 2:
            }
            while (true)
            {
              paramo.c.setText(c.d(this.a, i));
              break;
              paramo.d.setEnabled(false);
            }
            paramo.b.setText(c.B(this.a).getString(g.battery_save_bluetooth));
            paramo.d.setVisibility(0);
            paramo.d.setChecked(c.C(this.a));
            paramo.c.setText(c.D(this.a));
            paramo.a.setImageResource(d.bluetooth);
            switch (c.E(this.a))
            {
            case 12:
            default:
              break;
            case 11:
            case 13:
              paramo.d.setEnabled(false);
              continue;
              boolean bool4 = c.F(this.a);
              paramo.a.setImageResource(d.location_providers_gps);
              paramo.b.setText(c.G(this.a).getString(g.battery_save_location));
              paramo.d.setVisibility(0);
              paramo.d.setChecked(bool4);
              TextView localTextView4 = paramo.c;
              if (bool4);
              for (String str4 = c.H(this.a).getString(g.turned_on); ; str4 = c.I(this.a).getString(g.turned_of))
              {
                localTextView4.setText(str4);
                break;
              }
              paramo.a.setImageResource(d.mobile_data);
              paramo.b.setText(c.J(this.a).getString(g.battery_save_mobile_sata));
              paramo.c.setText(c.K(this.a));
              continue;
              boolean bool3 = c.L(this.a);
              paramo.b.setText(c.M(this.a).getString(g.battery_save_autosync));
              paramo.d.setVisibility(0);
              paramo.d.setChecked(bool3);
              TextView localTextView3 = paramo.c;
              if (bool3);
              for (String str3 = c.N(this.a).getString(g.enabled); ; str3 = c.O(this.a).getString(g.disabled))
              {
                localTextView3.setText(str3);
                paramo.a.setImageResource(d.auto_sync_data);
                break;
              }
              boolean bool2 = c.P(this.a);
              paramo.b.setText(c.Q(this.a).getString(g.battery_save_airplane));
              paramo.d.setVisibility(0);
              paramo.d.setChecked(bool2);
              paramo.a.setImageResource(d.airplane_mode);
              TextView localTextView2 = paramo.c;
              if (bool2);
              for (String str2 = c.R(this.a).getString(g.turned_on); ; str2 = c.S(this.a).getString(g.turned_of))
              {
                localTextView2.setText(str2);
                break;
              }
              paramo.a.setImageResource(d.brightness);
              if (Build.VERSION.SDK_INT > 7)
              {
                paramo.d.setVisibility(0);
                paramo.d.setChecked(c.T(this.a));
              }
              paramo.e.setMax(255);
              paramo.e.setProgress(c.U(this.a));
              paramo.e.setOnSeekBarChangeListener(new n(this));
              if (c.T(this.a))
              {
                paramo.b.setText(c.V(this.a).getString(g.battery_save_auto_brightnes));
                paramo.c.setText(c.W(this.a).getString(g.enabled));
                paramo.e.setVisibility(8);
              }
              else
              {
                paramo.b.setText(c.X(this.a).getString(g.battery_save_screen_brightnes));
                paramo.c.setVisibility(8);
                paramo.e.setVisibility(0);
                continue;
                paramo.a.setImageResource(d.screen_timeout);
                paramo.b.setText(c.Y(this.a).getString(g.battery_save_screen_timeout));
                paramo.c.setText(c.Z(this.a).getResources().getStringArray(com.avg.a.b.battery_save_screen_timeout_array)[c.aa(this.a)]);
                continue;
                paramo.a.setImageResource(d.ringer);
                paramo.b.setText(c.ab(this.a).getString(g.battery_save_ringer));
                paramo.c.setText(c.ac(this.a));
                continue;
                paramo.a.setImageResource(d.volume_control);
                paramo.b.setText(c.ad(this.a).getString(g.battery_save_volume));
                paramo.c.setVisibility(8);
              }
              break;
            }
          }
          break;
        }
      }
    case 12:
    }
    boolean bool1 = c.ae(this.a);
    paramo.a.setImageResource(d.auto_rotation);
    paramo.b.setText(c.af(this.a).getString(g.battery_save_auto_rotation));
    paramo.d.setVisibility(0);
    paramo.d.setChecked(bool1);
    TextView localTextView1 = paramo.c;
    if (bool1);
    for (String str1 = c.ag(this.a).getString(g.enabled); ; str1 = c.ah(this.a).getString(g.disabled))
    {
      localTextView1.setText(str1);
      break;
    }
  }

  private void a(o paramo, int paramInt, boolean paramBoolean)
  {
    switch (c.b(this.a)[paramInt])
    {
    case 5:
    case 9:
    case 10:
    case 11:
    default:
    case 1:
    case 2:
    case 3:
    case 4:
    case 6:
    case 7:
    case 8:
    case 12:
    }
    do
    {
      do
      {
        do
        {
          do
          {
            do
            {
              do
                while (true)
                {
                  return;
                  if (c.u(this.a) != paramBoolean)
                  {
                    c.a(this.a, paramBoolean);
                    notifyDataSetChanged();
                    com.avg.ui.general.a.a locala7 = c.ai(this.a);
                    if (paramBoolean);
                    for (String str7 = "on"; ; str7 = "off")
                    {
                      com.avg.toolkit.c.a.a(locala7, "power_saving_options", "wifi", str7, 0);
                      break;
                    }
                    if (c.z(this.a) != paramBoolean)
                    {
                      c.b(this.a, paramBoolean);
                      notifyDataSetChanged();
                    }
                  }
                }
              while (c.C(this.a) == paramBoolean);
              c.c(this.a, paramBoolean);
              com.avg.ui.general.a.a locala6 = c.aj(this.a);
              if (paramBoolean);
              for (String str6 = "on"; ; str6 = "off")
              {
                com.avg.toolkit.c.a.a(locala6, "power_saving_options", "bluetooth", str6, 0);
                break;
              }
            }
            while (c.F(this.a) == paramBoolean);
            c.ak(this.a);
            com.avg.ui.general.a.a locala5 = c.al(this.a);
            if (paramBoolean);
            for (String str5 = "on"; ; str5 = "off")
            {
              com.avg.toolkit.c.a.a(locala5, "power_saving_options", "gps", str5, 0);
              break;
            }
          }
          while (c.L(this.a) == paramBoolean);
          c.d(this.a, paramBoolean);
          notifyDataSetChanged();
          com.avg.ui.general.a.a locala4 = c.am(this.a);
          if (paramBoolean);
          for (String str4 = "on"; ; str4 = "off")
          {
            com.avg.toolkit.c.a.a(locala4, "power_saving_options", "auto_sync", str4, 0);
            break;
          }
        }
        while (c.P(this.a) == paramBoolean);
        c.e(this.a, paramBoolean);
        com.avg.ui.general.a.a locala3 = c.an(this.a);
        if (paramBoolean);
        for (String str3 = "on"; ; str3 = "off")
        {
          com.avg.toolkit.c.a.a(locala3, "power_saving_options", "airplane", str3, 0);
          break;
        }
      }
      while (c.T(this.a) == paramBoolean);
      c.a(this.a, paramBoolean, paramo);
      notifyDataSetChanged();
      com.avg.ui.general.a.a locala2 = c.ao(this.a);
      if (paramBoolean);
      for (String str2 = "on"; ; str2 = "off")
      {
        com.avg.toolkit.c.a.a(locala2, "power_saving_options", "auto_brightness", str2, 0);
        break;
      }
    }
    while (c.ae(this.a) == paramBoolean);
    c.f(this.a, paramBoolean);
    notifyDataSetChanged();
    com.avg.ui.general.a.a locala1 = c.ap(this.a);
    if (paramBoolean);
    for (String str1 = "on"; ; str1 = "off")
    {
      com.avg.toolkit.c.a.a(locala1, "power_saving_options", "auto_rotation", str1, 0);
      break;
    }
  }

  public int getCount()
  {
    if (c.b(this.a) != null);
    for (int i = c.b(this.a).length; ; i = 0)
      return i;
  }

  public Object getItem(int paramInt)
  {
    return null;
  }

  public long getItemId(int paramInt)
  {
    return paramInt;
  }

  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    o localo2;
    if (paramView == null)
    {
      paramView = this.b.inflate(f.battery_state_list_item, null);
      localo2 = new o(this);
      localo2.a = ((ImageView)paramView.findViewById(e.img_icon));
      localo2.b = ((TextView)paramView.findViewById(e.tv_title));
      localo2.c = ((TextView)paramView.findViewById(e.tv_description));
      localo2.d = ((CheckBox)paramView.findViewById(e.cb_state));
      localo2.e = ((SeekBar)paramView.findViewById(e.seek_bar));
      localo2.f = ((LinearLayout)paramView.findViewById(e.ll_separator));
      paramView.findViewById(e.tv_value).setVisibility(8);
      paramView.setTag(localo2);
    }
    for (o localo1 = localo2; ; localo1 = (o)paramView.getTag())
    {
      a(paramInt, localo1);
      return paramView;
    }
  }

  public boolean isEnabled(int paramInt)
  {
    return true;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avg.tuneup.battery.l
 * JD-Core Version:    0.6.2
 */