package com.keniu.security.traffic;

import android.app.Activity;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.Paint.Align;
import android.os.Bundle;
import android.util.DisplayMetrics;
import android.view.KeyEvent;
import android.view.ViewGroup.LayoutParams;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.TextView;
import com.keniu.security.util.ax;
import java.text.SimpleDateFormat;
import java.util.Date;
import org.achartengine.b;
import org.achartengine.renderer.XYMultipleSeriesRenderer;
import org.achartengine.renderer.e;

public class TrafficSoftDetailActivity extends Activity
{
  private static final int k = 0;
  private static final int l = 1;
  private u[] a = null;
  private long b = 0L;
  private long c = 0L;
  private long d = 0L;
  private long e = 0L;
  private TextView f = null;
  private TextView g = null;
  private b h;
  private long i = 0L;
  private long j = 0L;

  private org.achartengine.b.c a(long[] paramArrayOfLong)
  {
    org.achartengine.b.c localc = new org.achartengine.b.c();
    org.achartengine.b.a locala = new org.achartengine.b.a(getString(2131428175));
    if (paramArrayOfLong != null)
      for (int n = 0; n < 31; n++)
        locala.a(Double.valueOf(ax.a(paramArrayOfLong[n])).doubleValue());
    for (int m = 0; m < 31; m++)
      locala.a(0.0D);
    localc.a(locala.a());
    return localc;
  }

  private XYMultipleSeriesRenderer a()
  {
    XYMultipleSeriesRenderer localXYMultipleSeriesRenderer = new XYMultipleSeriesRenderer();
    e locale = new e();
    locale.b();
    locale.d();
    locale.a(Paint.Align.CENTER);
    locale.a(true);
    locale.a((float)(13.5D * getResources().getDisplayMetrics().density));
    localXYMultipleSeriesRenderer.addSeriesRenderer(locale);
    SimpleDateFormat localSimpleDateFormat = new SimpleDateFormat("MM.dd");
    for (int m = 0; m < 31; m++)
    {
      String[] arrayOfString = localSimpleDateFormat.format(new Date(this.i + 86400000L * m)).split("\\.");
      if (arrayOfString[0].startsWith("0"))
        arrayOfString[0] = arrayOfString[0].replaceAll("0", "");
      if (arrayOfString[1].startsWith("0"))
        arrayOfString[1] = arrayOfString[1].replaceAll("0", "");
      String str = arrayOfString[0] + "." + arrayOfString[1];
      localXYMultipleSeriesRenderer.addXTextLabel(m + 1, str);
    }
    localXYMultipleSeriesRenderer.setLabelsTextSize((float)(13.5D * getResources().getDisplayMetrics().density));
    localXYMultipleSeriesRenderer.setLabelsColor(-6316129);
    localXYMultipleSeriesRenderer.setYAxisMin(0.0D);
    localXYMultipleSeriesRenderer.setYLabels(0);
    localXYMultipleSeriesRenderer.setBarSpacing(5.0D);
    localXYMultipleSeriesRenderer.setXLabels(0);
    localXYMultipleSeriesRenderer.setMargins(new int[] { 0, 0, 0, 0 });
    localXYMultipleSeriesRenderer.setApplyBackgroundColor(false);
    localXYMultipleSeriesRenderer.setMarginsColor(16711680);
    localXYMultipleSeriesRenderer.setShowLegend(false);
    localXYMultipleSeriesRenderer.setZoomEnabled(false, false);
    localXYMultipleSeriesRenderer.setPanEnabled(true, false);
    return localXYMultipleSeriesRenderer;
  }

  private void a(int paramInt)
  {
    long[] arrayOfLong = new long[31];
    if (paramInt == 0)
      for (int i3 = 0; i3 < this.a.length; i3++)
        arrayOfLong[i3] = this.a[i3].a;
    if (paramInt == 1)
      for (int i2 = 0; i2 < this.a.length; i2++)
        arrayOfLong[i2] = this.a[i2].b;
    org.achartengine.b.c localc = new org.achartengine.b.c();
    org.achartengine.b.a locala = new org.achartengine.b.a(getString(2131428175));
    for (int m = 0; m < 31; m++)
      locala.a(Double.valueOf(ax.a(arrayOfLong[m])).doubleValue());
    localc.a(locala.a());
    XYMultipleSeriesRenderer localXYMultipleSeriesRenderer = new XYMultipleSeriesRenderer();
    e locale = new e();
    locale.b();
    locale.d();
    locale.a(Paint.Align.CENTER);
    locale.a(true);
    locale.a((float)(13.5D * getResources().getDisplayMetrics().density));
    localXYMultipleSeriesRenderer.addSeriesRenderer(locale);
    SimpleDateFormat localSimpleDateFormat = new SimpleDateFormat("MM.dd");
    for (int n = 0; n < 31; n++)
    {
      String[] arrayOfString = localSimpleDateFormat.format(new Date(this.i + 86400000L * n)).split("\\.");
      if (arrayOfString[0].startsWith("0"))
        arrayOfString[0] = arrayOfString[0].replaceAll("0", "");
      if (arrayOfString[1].startsWith("0"))
        arrayOfString[1] = arrayOfString[1].replaceAll("0", "");
      String str = arrayOfString[0] + "." + arrayOfString[1];
      localXYMultipleSeriesRenderer.addXTextLabel(n + 1, str);
    }
    localXYMultipleSeriesRenderer.setLabelsTextSize((float)(13.5D * getResources().getDisplayMetrics().density));
    localXYMultipleSeriesRenderer.setLabelsColor(-6316129);
    localXYMultipleSeriesRenderer.setYAxisMin(0.0D);
    localXYMultipleSeriesRenderer.setYLabels(0);
    localXYMultipleSeriesRenderer.setBarSpacing(5.0D);
    localXYMultipleSeriesRenderer.setXLabels(0);
    localXYMultipleSeriesRenderer.setMargins(new int[] { 0, 0, 0, 0 });
    localXYMultipleSeriesRenderer.setApplyBackgroundColor(false);
    localXYMultipleSeriesRenderer.setMarginsColor(16711680);
    localXYMultipleSeriesRenderer.setShowLegend(false);
    localXYMultipleSeriesRenderer.setZoomEnabled(false, false);
    localXYMultipleSeriesRenderer.setPanEnabled(true, false);
    this.h = org.achartengine.a.a(this, localc, localXYMultipleSeriesRenderer, org.achartengine.a.c.a);
    this.h.setBackgroundColor(0);
    long l1 = 0L;
    for (int i1 = 0; i1 < arrayOfLong.length; i1++)
      if (arrayOfLong[i1] > l1)
        l1 = arrayOfLong[i1];
    if (l1 != 0L);
    for (double d1 = l1 / 1024.0D / 1024.0D; ; d1 = 50.0D)
    {
      if ((d1 < 0.01D) && (d1 > 0.0D))
        d1 = 0.01D;
      double d2 = d1 * 4.0D / 3.0D;
      localXYMultipleSeriesRenderer.setYAxisMax(d2);
      long l2 = (86400000L + (new Date().getTime() - this.i) - 1L) / 86400000L;
      if (l2 >= 7L)
      {
        localXYMultipleSeriesRenderer.setXAxisMin(l2 - 6.5D);
        localXYMultipleSeriesRenderer.setXAxisMax(0.5D + l2);
      }
      while (true)
      {
        double d3 = (this.j - this.i) / 86400000L;
        double[] arrayOfDouble = new double[4];
        arrayOfDouble[0] = 0.5D;
        arrayOfDouble[1] = (d3 + 0.5D);
        arrayOfDouble[2] = 0.0D;
        arrayOfDouble[3] = d2;
        localXYMultipleSeriesRenderer.setPanLimits(arrayOfDouble);
        LinearLayout localLinearLayout = (LinearLayout)findViewById(2131231711);
        localLinearLayout.removeAllViews();
        ViewGroup.LayoutParams localLayoutParams = new ViewGroup.LayoutParams(-1, -2);
        localLinearLayout.addView(this.h, localLayoutParams);
        return;
        localXYMultipleSeriesRenderer.setXAxisMin(0.5D);
        localXYMultipleSeriesRenderer.setXAxisMax(7.5D);
      }
    }
  }

  private void a(XYMultipleSeriesRenderer paramXYMultipleSeriesRenderer)
  {
    SimpleDateFormat localSimpleDateFormat = new SimpleDateFormat("MM.dd");
    for (int m = 0; m < 31; m++)
    {
      String[] arrayOfString = localSimpleDateFormat.format(new Date(this.i + 86400000L * m)).split("\\.");
      if (arrayOfString[0].startsWith("0"))
        arrayOfString[0] = arrayOfString[0].replaceAll("0", "");
      if (arrayOfString[1].startsWith("0"))
        arrayOfString[1] = arrayOfString[1].replaceAll("0", "");
      String str = arrayOfString[0] + "." + arrayOfString[1];
      paramXYMultipleSeriesRenderer.addXTextLabel(m + 1, str);
    }
    paramXYMultipleSeriesRenderer.setLabelsTextSize((float)(13.5D * getResources().getDisplayMetrics().density));
    paramXYMultipleSeriesRenderer.setLabelsColor(-6316129);
    paramXYMultipleSeriesRenderer.setYAxisMin(0.0D);
    paramXYMultipleSeriesRenderer.setYLabels(0);
    paramXYMultipleSeriesRenderer.setBarSpacing(5.0D);
    paramXYMultipleSeriesRenderer.setXLabels(0);
    paramXYMultipleSeriesRenderer.setMargins(new int[] { 0, 0, 0, 0 });
    paramXYMultipleSeriesRenderer.setApplyBackgroundColor(false);
    paramXYMultipleSeriesRenderer.setMarginsColor(16711680);
    paramXYMultipleSeriesRenderer.setShowLegend(false);
    paramXYMultipleSeriesRenderer.setZoomEnabled(false, false);
    paramXYMultipleSeriesRenderer.setPanEnabled(true, false);
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    requestWindowFeature(1);
    setContentView(2130903313);
    z localz = z.a(this);
    if (!localz.b(true));
    while (true)
    {
      return;
      Date localDate = new Date();
      y localy = y.a(this);
      this.i = localy.a(localDate);
      this.j = localy.b(localDate);
      Intent localIntent = getIntent();
      int m = localIntent.getIntExtra("userId", 0);
      String str1 = localIntent.getStringExtra("packagename");
      String str2 = localIntent.getStringExtra("label");
      SimpleDateFormat localSimpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
      String str3 = str2 + "(";
      String str4 = str3 + localSimpleDateFormat.format(localDate);
      String str5 = str4 + ")";
      ((TextView)findViewById(2131231706)).setText(str5);
      this.a = localz.a(this.i, this.j, m, str1);
      u localu = localz.a(System.currentTimeMillis(), m, str1);
      if (this.a == null)
      {
        this.a = new u[31];
        for (int i1 = 0; i1 < 31; i1++)
          this.a[i1] = new u();
      }
      localz.a();
      if (localu == null)
        this.d = 0L;
      for (this.e = 0L; ; this.e = localu.b)
      {
        for (int n = 0; n < 31; n++)
        {
          this.b += this.a[n].a;
          this.c += this.a[n].b;
        }
        this.d = localu.a;
      }
      this.f = ((TextView)findViewById(2131231707));
      this.f.setText(ax.c(this.d));
      this.g = ((TextView)findViewById(2131231708));
      this.g.setText(ax.c(this.b));
      ((RadioButton)findViewById(2131231704)).setChecked(true);
      a(0);
      ((RadioGroup)findViewById(2131231703)).setOnCheckedChangeListener(new ct(this));
      ((Button)findViewById(2131231710)).setOnClickListener(new cu(this));
    }
  }

  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if (paramInt == 4)
      finish();
    return super.onKeyDown(paramInt, paramKeyEvent);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.traffic.TrafficSoftDetailActivity
 * JD-Core Version:    0.6.2
 */