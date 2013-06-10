package org.antivirus.tuneup;

import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.app.DatePickerDialog;
import android.app.DatePickerDialog.OnDateSetListener;
import android.app.Dialog;
import android.app.NotificationManager;
import android.content.Intent;
import android.os.Bundle;
import android.widget.ListView;
import android.widget.Toast;
import java.text.DateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.Locale;
import org.antivirus.AVService;
import org.antivirus.AVSettings;
import org.antivirus.Strings;
import org.antivirus.core.Logger;
import org.antivirus.ui.BaseToolActivity;
import org.antivirus.ui.main.ActivationActivity;
import org.antivirus.widget.a.k;

public class DataPlanSettingsActivity extends BaseToolActivity
{
  private Calendar a;
  private int b;
  private int c;
  private int d;
  private int e;
  private int f;
  private int g;
  private ap h;
  private boolean i;
  private DatePickerDialog.OnDateSetListener j = new ac(this);

  private void a(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5)
  {
    AVSettings.setDataQuota(paramInt1);
    AVSettings.setDataQuotaUnits(paramInt2);
    if (AVSettings.isQuotaWarningNotificationOn())
      AVSettings.setDataPlanNotificationThreshold(paramInt3);
    long l = paramInt1;
    if (paramInt2 == 1);
    for (int k = 1024; ; k = 1)
    {
      AVSettings.setDataQuotaBytes(1048576L * (l * k));
      Intent localIntent = new Intent();
      localIntent.setComponent(AVService.SERVICE_IDENTIFIER);
      localIntent.putExtra("__SAC", 111);
      localIntent.putExtra("__SAD", true);
      startService(localIntent);
      if (!AVSettings.isQuotaOngoingNotification())
        ((NotificationManager)getSystemService("notification")).cancel(12);
      AVSettings.setDataCycleValues(paramInt4);
      AVSettings.setDataCycleUnits(paramInt5);
      AVSettings.setDataRefreshRate(this.f);
      AVSettings.setDataPlanBillingDate(this.a.getTimeInMillis());
      return;
    }
  }

  private static boolean a(Calendar paramCalendar1, Calendar paramCalendar2)
  {
    int k = 1;
    if ((paramCalendar1.get(k) == paramCalendar2.get(k)) && (paramCalendar1.get(2) == paramCalendar2.get(2)) && (paramCalendar1.get(5) == paramCalendar2.get(5)));
    while (true)
    {
      return k;
      int m = 0;
    }
  }

  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    if (1 == paramInt1)
      if (paramInt2 == 0)
        finish();
    while (true)
    {
      super.onActivityResult(paramInt1, paramInt2, paramIntent);
      return;
      if ((2 == paramInt1) && (-1 == paramInt2))
        finish();
    }
  }

  protected final void onBack()
  {
    int k = 2;
    String str1 = "";
    int m = this.c;
    int n;
    String str2;
    if (this.b == 1)
    {
      n = 1024;
      int i1 = n * m;
      if ((i1 <= 0) || (i1 > 512000))
        str1 = str1 + Strings.getString(2131296535) + "\n";
      if ((this.d <= 100) && (this.d > 0))
        break label839;
      str2 = str1 + Strings.getString(2131296598) + "\n";
    }
    for (int i2 = 0; ; i2 = 1)
    {
      Calendar localCalendar1 = Calendar.getInstance();
      GregorianCalendar localGregorianCalendar = new GregorianCalendar(localCalendar1.get(1), localCalendar1.get(k), localCalendar1.get(5));
      switch (this.e)
      {
      case 2:
      default:
      case 0:
      case 1:
      }
      while (true)
      {
        localGregorianCalendar.add(k, -1 * this.d);
        localGregorianCalendar.add(5, 1);
        Calendar localCalendar2 = Calendar.getInstance();
        if (((this.a.after(localCalendar2)) || ((this.a.before(localGregorianCalendar)) && (!a(this.a, localGregorianCalendar)))) && (i2 != 0))
        {
          String str3 = DateFormat.getDateInstance(1, Locale.getDefault()).format(new Date(localCalendar2.getTimeInMillis()));
          String str4 = DateFormat.getDateInstance(1, Locale.getDefault()).format(new Date(localGregorianCalendar.getTimeInMillis()));
          String str5 = (str2 + Strings.getString(2131296536)).replace("[date1]", str4);
          str2 = str5.replace("[date2]", str3) + "\n";
        }
        if ((AVSettings.isQuotaWarningNotificationOn()) && ((this.g <= 0) || (this.g > 100)))
          str2 = str2 + Strings.getString(2131296537);
        if ("".equals(str2))
          break label506;
        AlertDialog.Builder localBuilder1 = new AlertDialog.Builder(this);
        localBuilder1.setTitle(Strings.getString(2131296538));
        localBuilder1.setMessage(str2);
        localBuilder1.setPositiveButton(Strings.getString(2131296259), new ae(this));
        AlertDialog localAlertDialog = localBuilder1.create();
        localAlertDialog.setCanceledOnTouchOutside(false);
        localAlertDialog.show();
        return;
        n = 1;
        break;
        k = 6;
        continue;
        k = 3;
      }
      label506: Calendar localCalendar3 = Calendar.getInstance();
      localCalendar3.setTimeInMillis(AVSettings.getDataPlanBillingDate());
      if (AVSettings.getDataPlanBillingDate() == -1L)
        localCalendar3.setTimeInMillis(this.a.getTimeInMillis());
      if ((this.c != AVSettings.getDataQuota()) || (this.b != AVSettings.getDataQuotaUnits()) || (this.d != AVSettings.getDataCycleValues()) || (this.e != AVSettings.getDataCycleUnits()) || (!a(this.a, localCalendar3)));
      for (int i3 = 1; ; i3 = 0)
      {
        if ((i3 != 0) && (!this.i))
        {
          int i4 = this.c;
          int i5 = this.g;
          int i6 = this.d;
          AlertDialog.Builder localBuilder2 = new AlertDialog.Builder(this);
          localBuilder2.setTitle(Strings.getString(2131296610));
          localBuilder2.setMessage(Strings.getString(2131296611));
          localBuilder2.setPositiveButton(Strings.getString(2131296612), new af(this, i4, i5, i6));
          localBuilder2.setNegativeButton(Strings.getString(2131296613), new ag(this, i4, i5, i6));
          localBuilder2.show();
          AVSettings.setTrafficCounterOn(true);
          k.a(this).b(null);
          break;
        }
        if (this.i)
          ba.a(getApplicationContext()).a(this.a.getTimeInMillis());
        a(this.c, this.b, this.g, this.d, this.e);
        if (this.i)
          Toast.makeText(getApplicationContext(), Strings.getString(2131296614), 0).show();
        while (true)
        {
          finish();
          break;
          Toast.makeText(getApplicationContext(), Strings.getString(2131296603), 0).show();
        }
      }
      label839: str2 = str1;
    }
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903057);
    a(true, 2130837538, 2130837539, Strings.getString(2131296566), false);
    if (getIntent().getExtras() != null)
      this.i = getIntent().getExtras().getBoolean("new_activation");
    this.h = new ap(this, this);
    ListView localListView = (ListView)findViewById(2131230853);
    localListView.setCacheColorHint(0);
    localListView.setAdapter(this.h);
    localListView.setOnItemClickListener(new ah(this));
    this.c = AVSettings.getDataQuota();
    this.b = AVSettings.getDataQuotaUnits();
    this.g = AVSettings.getDataPlanNotificationThreshold();
    Calendar localCalendar = Calendar.getInstance();
    this.a = new GregorianCalendar(localCalendar.get(1), localCalendar.get(2), localCalendar.get(5));
    long l = AVSettings.getDataPlanBillingDate();
    if (l != -1L)
      this.a.setTimeInMillis(l);
    this.d = AVSettings.getDataCycleValues();
    this.e = AVSettings.getDataCycleUnits();
    this.f = AVSettings.getDataRefreshRate();
    if (AVSettings.shouldShowActivationScreen());
    try
    {
      startActivityForResult(new Intent(this, ActivationActivity.class), 1);
      return;
    }
    catch (Exception localException)
    {
      while (true)
        Logger.log(localException);
    }
  }

  protected Dialog onCreateDialog(int paramInt)
  {
    Object localObject;
    switch (paramInt)
    {
    default:
      localObject = null;
    case 0:
    }
    while (true)
    {
      return localObject;
      Calendar localCalendar = Calendar.getInstance();
      long l = AVSettings.getDataPlanBillingDate();
      if (l != -1L)
        localCalendar.setTimeInMillis(l);
      localObject = new DatePickerDialog(this, this.j, localCalendar.get(1), localCalendar.get(2), localCalendar.get(5));
      ((DatePickerDialog)localObject).setCanceledOnTouchOutside(false);
      ((DatePickerDialog)localObject).setTitle(Strings.getString(2131296532));
      ((DatePickerDialog)localObject).setIcon(2130837697);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.tuneup.DataPlanSettingsActivity
 * JD-Core Version:    0.6.2
 */