package com.avg.tuneup.traffic;

import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.app.DatePickerDialog;
import android.app.DatePickerDialog.OnDateSetListener;
import android.app.NotificationManager;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.text.InputFilter;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.ListView;
import android.widget.Spinner;
import android.widget.TextView;
import android.widget.Toast;
import com.avg.tuneup.traffic.widget.TrafficWidgetPlugin;
import java.text.DateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.Locale;

public class a extends com.avg.tuneup.h
{
  private DatePickerDialog.OnDateSetListener Y = new b(this);
  private Calendar a;
  private int b;
  private float c;
  private int d;
  private int e;
  private int f;
  private int g;
  private o h;
  private boolean i;

  private void F()
  {
    View localView = LayoutInflater.from(this.ag).inflate(com.avg.a.f.dlg_traffic_pkg_size, null);
    ((TextView)localView.findViewById(com.avg.a.e.tv_data_package_size)).setText(this.ag.getString(com.avg.a.g.traffic_quota_size));
    EditText localEditText = (EditText)localView.findViewById(com.avg.a.e.et_quota_size);
    localEditText.setText("" + com.avg.tuneup.j.b());
    localEditText.setInputType(0x2000 | localEditText.getInputType());
    InputFilter[] arrayOfInputFilter = new InputFilter[1];
    arrayOfInputFilter[0] = new r(this, 0.0D, 512000.0D);
    localEditText.setFilters(arrayOfInputFilter);
    Spinner localSpinner = (Spinner)localView.findViewById(com.avg.a.e.sp_quota_units);
    ArrayAdapter localArrayAdapter = ArrayAdapter.createFromResource(this.ag, com.avg.a.b.traffic_quota_units, 17367048);
    localArrayAdapter.setDropDownViewResource(com.avg.a.f.simple_spinner_dropdown_item);
    localSpinner.setAdapter(localArrayAdapter);
    localSpinner.setSelection(this.b, true);
    AlertDialog.Builder localBuilder = new AlertDialog.Builder(this.ag);
    localBuilder.setTitle(this.ag.getString(com.avg.a.g.traffic_quota));
    localBuilder.setView(localView);
    localBuilder.setIcon(com.avg.a.d.dlg_ic_package_size);
    localBuilder.setPositiveButton(com.avg.a.g.ok, new h(this, localSpinner, localEditText));
    localBuilder.setNegativeButton(com.avg.a.g.cancel, new i(this));
    AlertDialog localAlertDialog = localBuilder.create();
    localAlertDialog.setCanceledOnTouchOutside(false);
    localAlertDialog.show();
  }

  private void G()
  {
    View localView = LayoutInflater.from(this.ag).inflate(com.avg.a.f.dlg_traffic_pkg_size, null);
    localView.findViewById(com.avg.a.e.tv_data_package_size).setVisibility(8);
    EditText localEditText = (EditText)localView.findViewById(com.avg.a.e.et_quota_size);
    localEditText.setText("" + this.g);
    InputFilter[] arrayOfInputFilter = new InputFilter[1];
    arrayOfInputFilter[0] = new r(this, 1.0D, 100.0D);
    localEditText.setFilters(arrayOfInputFilter);
    if (!com.avg.tuneup.j.i())
      localEditText.setEnabled(false);
    ((TextView)localView.findViewById(com.avg.a.e.tv_percent)).setVisibility(0);
    CheckBox localCheckBox = (CheckBox)localView.findViewById(com.avg.a.e.cb_warn_usage);
    localCheckBox.setVisibility(0);
    localCheckBox.setChecked(com.avg.tuneup.j.i());
    localCheckBox.setOnCheckedChangeListener(new j(this, localEditText));
    localView.findViewById(com.avg.a.e.sp_quota_units).setVisibility(8);
    AlertDialog.Builder localBuilder = new AlertDialog.Builder(this.ag);
    localBuilder.setTitle(this.ag.getString(com.avg.a.g.traffic_data_usage_warning));
    localBuilder.setView(localView);
    localBuilder.setIcon(com.avg.a.d.dlg_ic_package_cycle);
    localBuilder.setPositiveButton(com.avg.a.g.ok, new k(this, localEditText, localCheckBox));
    localBuilder.setNegativeButton(com.avg.a.g.cancel, new l(this));
    AlertDialog localAlertDialog = localBuilder.create();
    localAlertDialog.setCanceledOnTouchOutside(false);
    localAlertDialog.show();
  }

  private void H()
  {
    View localView = LayoutInflater.from(this.ag).inflate(com.avg.a.f.dlg_traffic_pkg_size, null);
    ((TextView)localView.findViewById(com.avg.a.e.tv_data_package_size)).setText(this.ag.getString(com.avg.a.g.traffic_period));
    EditText localEditText = (EditText)localView.findViewById(com.avg.a.e.et_quota_size);
    localEditText.setText("" + this.d);
    InputFilter[] arrayOfInputFilter = new InputFilter[1];
    arrayOfInputFilter[0] = new r(this, 1.0D, 100.0D);
    localEditText.setFilters(arrayOfInputFilter);
    Spinner localSpinner = (Spinner)localView.findViewById(com.avg.a.e.sp_quota_units);
    ArrayAdapter localArrayAdapter = ArrayAdapter.createFromResource(this.ag, com.avg.a.b.traffic_cycle_units, 17367048);
    localArrayAdapter.setDropDownViewResource(com.avg.a.f.simple_spinner_dropdown_item);
    localSpinner.setAdapter(localArrayAdapter);
    localSpinner.setSelection(this.e);
    AlertDialog.Builder localBuilder = new AlertDialog.Builder(this.ag);
    localBuilder.setTitle(this.ag.getString(com.avg.a.g.traffic_package_cycle));
    localBuilder.setView(localView);
    localBuilder.setIcon(com.avg.a.d.dlg_ic_package_cycle);
    localBuilder.setPositiveButton(com.avg.a.g.ok, new m(this, localEditText, localSpinner));
    localBuilder.setNegativeButton(com.avg.a.g.cancel, new n(this));
    AlertDialog localAlertDialog = localBuilder.create();
    localAlertDialog.setCanceledOnTouchOutside(false);
    localAlertDialog.show();
  }

  private void I()
  {
    AlertDialog.Builder localBuilder = new AlertDialog.Builder(this.ag);
    localBuilder.setTitle(this.ag.getString(com.avg.a.g.traffic_refresh_rate));
    localBuilder.setIcon(com.avg.a.d.dlg_ic_refresh_rate);
    localBuilder.setSingleChoiceItems(new com.avg.ui.general.b.e(this.ag, this.f, this.ag.getResources().getStringArray(com.avg.a.b.traffic_refresh_rate_arr)), this.f, new c(this));
    AlertDialog localAlertDialog = localBuilder.create();
    localAlertDialog.setCanceledOnTouchOutside(false);
    localAlertDialog.show();
  }

  private void J()
  {
    int j = 2;
    String str1 = "";
    float f1 = this.c;
    int k;
    String str2;
    if (this.b == 1)
    {
      k = 1024;
      double d1 = f1 * k;
      if ((d1 < 1.0D) || (d1 > 512000.0D))
        str1 = str1 + this.ag.getString(com.avg.a.g.traffic_quota_illegal) + "\n";
      if ((this.d <= 100) && (this.d >= 1))
        break label933;
      str2 = str1 + this.ag.getString(com.avg.a.g.traffic_illegal_cycle_value) + "\n";
    }
    for (int m = 0; ; m = 1)
    {
      Calendar localCalendar1 = Calendar.getInstance();
      GregorianCalendar localGregorianCalendar = new GregorianCalendar(localCalendar1.get(1), localCalendar1.get(j), localCalendar1.get(5));
      switch (this.e)
      {
      case 2:
      default:
      case 0:
      case 1:
      }
      while (true)
      {
        localGregorianCalendar.add(j, -1 * this.d);
        localGregorianCalendar.add(5, 1);
        Calendar localCalendar2 = Calendar.getInstance();
        if (((this.a.after(localCalendar2)) || ((this.a.before(localGregorianCalendar)) && (!a(this.a, localGregorianCalendar)))) && (m != 0))
        {
          String str3 = DateFormat.getDateInstance(1, Locale.getDefault()).format(new Date(localCalendar2.getTimeInMillis()));
          String str4 = DateFormat.getDateInstance(1, Locale.getDefault()).format(new Date(localGregorianCalendar.getTimeInMillis()));
          String str5 = (str2 + this.ag.getString(com.avg.a.g.traffic_illegal_billing_date)).replace("[date1]", str4);
          str2 = str5.replace("[date2]", str3) + "\n";
        }
        if ((com.avg.tuneup.j.i()) && ((this.g < 1) || (this.g > 100)))
          str2 = str2 + this.ag.getString(com.avg.a.g.traffic_illegal_notification_threshold);
        if ("".equals(str2))
          break label543;
        AlertDialog.Builder localBuilder1 = new AlertDialog.Builder(this.ag);
        localBuilder1.setTitle(this.ag.getString(com.avg.a.g.traffic_illegal_values));
        localBuilder1.setMessage(str2);
        localBuilder1.setPositiveButton(this.ag.getString(com.avg.a.g.ok), new d(this));
        AlertDialog localAlertDialog = localBuilder1.create();
        localAlertDialog.setCanceledOnTouchOutside(false);
        localAlertDialog.show();
        return;
        k = 1;
        break;
        j = 6;
        continue;
        j = 3;
      }
      label543: Calendar localCalendar3 = Calendar.getInstance();
      localCalendar3.setTimeInMillis(com.avg.tuneup.j.k());
      if (com.avg.tuneup.j.k() == -1L)
        localCalendar3.setTimeInMillis(this.a.getTimeInMillis());
      if ((this.c != com.avg.tuneup.j.b()) || (this.b != com.avg.tuneup.j.d()) || (this.d != com.avg.tuneup.j.f()) || (this.e != com.avg.tuneup.j.e()) || (!a(this.a, localCalendar3)));
      for (int n = 1; ; n = 0)
      {
        if ((n != 0) && (!this.i))
        {
          float f2 = this.c;
          int i1 = this.g;
          int i2 = this.d;
          AlertDialog.Builder localBuilder2 = new AlertDialog.Builder(this.ag);
          localBuilder2.setTitle(this.ag.getString(com.avg.a.g.traffic_reset_settings_title));
          localBuilder2.setMessage(this.ag.getString(com.avg.a.g.traffic_reset_settings_body));
          localBuilder2.setPositiveButton(this.ag.getString(com.avg.a.g.traffic_reset_settings), new e(this, f2, i1, i2));
          localBuilder2.setNegativeButton(this.ag.getString(com.avg.a.g.traffic_keep_settings), new f(this, f2, i1, i2));
          localBuilder2.show();
        }
        label925: 
        while (true)
        {
          com.avg.tuneup.j.a(true);
          com.avg.toolkit.f.a(this.ag, 25000, 8, TrafficWidgetPlugin.k());
          break;
          if (this.i)
            s.a(this.ag.getApplicationContext()).a(this.a.getTimeInMillis());
          a(this.c, this.b, this.g, this.d, this.e);
          if (this.i)
            Toast.makeText(this.ag.getApplicationContext(), this.ag.getString(com.avg.a.g.traffic_settings_reset_confirmation), 0).show();
          while (true)
          {
            if (this.ag.o())
              break label925;
            this.ag.finish();
            break;
            Toast.makeText(this.ag.getApplicationContext(), this.ag.getString(com.avg.a.g.settings_saved), 0).show();
          }
        }
      }
      label933: str2 = str1;
    }
  }

  private void a(float paramFloat, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    com.avg.tuneup.j.a(paramFloat);
    com.avg.tuneup.j.a(paramInt1);
    if (com.avg.tuneup.j.i())
      com.avg.tuneup.j.e(paramInt2);
    if (paramInt1 == 1);
    for (int j = 1024; ; j = 1)
    {
      com.avg.tuneup.j.a(()(1048576.0F * (paramFloat * j)));
      Bundle localBundle = new Bundle();
      localBundle.putBoolean("__SAD", true);
      com.avg.toolkit.f.a(this.ag, 11000, 2, localBundle);
      if (!com.avg.tuneup.j.m())
        ((NotificationManager)this.ag.getSystemService("notification")).cancel(12);
      com.avg.tuneup.j.c(paramInt3);
      com.avg.tuneup.j.b(paramInt4);
      com.avg.tuneup.j.d(this.f);
      com.avg.tuneup.j.b(this.a.getTimeInMillis());
      return;
    }
  }

  private boolean a(Calendar paramCalendar1, Calendar paramCalendar2)
  {
    int j = 1;
    if ((paramCalendar1.get(j) == paramCalendar2.get(j)) && (paramCalendar1.get(2) == paramCalendar2.get(2)) && (paramCalendar1.get(5) == paramCalendar2.get(5)));
    while (true)
    {
      return j;
      int k = 0;
    }
  }

  private void c(int paramInt)
  {
    switch (paramInt)
    {
    case 4:
    default:
    case 0:
    case 1:
    case 2:
    case 3:
    case 5:
    }
    while (true)
    {
      return;
      F();
      continue;
      H();
      continue;
      b(0);
      continue;
      I();
      com.avg.toolkit.c.a.a(this.ag, "data_usage_settings", "refresh_rate", null, 0);
      continue;
      G();
    }
  }

  public View a(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    if (paramViewGroup == null);
    View localView;
    for (Object localObject = null; ; localObject = localView)
    {
      return localObject;
      localView = paramLayoutInflater.inflate(com.avg.a.f.data_plan_settings, paramViewGroup, false);
      ListView localListView = (ListView)localView.findViewById(com.avg.a.e.listView);
      localListView.setCacheColorHint(0);
      localListView.setAdapter(this.h);
      localListView.setOnItemClickListener(new g(this));
      if (this.ag.o())
        a(this.ag.getString(com.avg.a.g.settings), this.ag.getString(com.avg.a.g.traffic), localView);
    }
  }

  public void a()
  {
    J();
  }

  public void a(Bundle paramBundle)
  {
    super.a(paramBundle);
    if (this.ag.getIntent().getExtras() != null)
      this.i = this.ag.getIntent().getExtras().getBoolean("new_activation");
    this.h = new o(this, this.ag);
    this.c = com.avg.tuneup.j.b();
    this.b = com.avg.tuneup.j.d();
    this.g = com.avg.tuneup.j.j();
    Calendar localCalendar = Calendar.getInstance();
    this.a = new GregorianCalendar(localCalendar.get(1), localCalendar.get(2), localCalendar.get(5));
    long l = com.avg.tuneup.j.k();
    if (l != -1L)
      this.a.setTimeInMillis(l);
    this.d = com.avg.tuneup.j.f();
    this.e = com.avg.tuneup.j.e();
    this.f = com.avg.tuneup.j.h();
  }

  public void b(int paramInt)
  {
    switch (paramInt)
    {
    default:
    case 0:
    }
    while (true)
    {
      return;
      Calendar localCalendar = Calendar.getInstance();
      long l = com.avg.tuneup.j.k();
      if (l != -1L)
        localCalendar.setTimeInMillis(l);
      DatePickerDialog localDatePickerDialog = new DatePickerDialog(this.ag, this.Y, localCalendar.get(1), localCalendar.get(2), localCalendar.get(5));
      localDatePickerDialog.setCanceledOnTouchOutside(false);
      localDatePickerDialog.setTitle(this.ag.getString(com.avg.a.g.traffic_billing_date));
      localDatePickerDialog.setIcon(com.avg.a.d.dlg_ic_start_date);
      localDatePickerDialog.show();
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avg.tuneup.traffic.a
 * JD-Core Version:    0.6.2
 */