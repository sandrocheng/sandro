package com.keniu.security.protection;

import android.app.PendingIntent;
import android.app.PendingIntent.CanceledException;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.location.Location;
import android.location.LocationListener;
import android.location.LocationManager;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.util.Log;
import com.keniu.security.protection.ui.ag;
import java.io.InputStreamReader;
import java.io.PrintStream;
import java.lang.reflect.Method;
import java.net.HttpURLConnection;
import java.net.URL;
import java.text.DecimalFormat;
import javax.xml.parsers.SAXParser;
import javax.xml.parsers.SAXParserFactory;
import org.xml.sax.InputSource;
import org.xml.sax.XMLReader;

public final class l
{
  private static final String c = "LocationInfoManager";
  private static final String d = "TUBA";
  private static final String e = "ANDROID";
  private static final String f = "xiaohui";
  private static final String g = "suoding";
  private static final String h = "huanka";
  public final LocationListener a = new o(this, "TUBA");
  public final LocationListener b = new o(this, "ANDROID");
  private com.c.a.a.a i;
  private LocationManager j;
  private Context k;
  private String l;
  private Handler m;
  private boolean n;
  private boolean o = true;
  private boolean p = true;
  private boolean q = false;
  private boolean r = false;
  private String s = null;
  private Handler t = new m(this);

  public l(Context paramContext, String paramString)
  {
    Log.d("LocationInfoManager", "LocationInfoManager");
    this.k = paramContext;
    this.l = paramString;
    this.n = false;
  }

  public l(Context paramContext, String paramString, Handler paramHandler)
  {
    Log.d("LocationInfoManager", "LocationInfoManager");
    this.k = paramContext;
    this.l = paramString;
    this.n = true;
    this.m = paramHandler;
  }

  public l(Context paramContext, String paramString1, String paramString2)
  {
    Log.d("LocationInfoManager", "LocationInfoManager");
    this.k = paramContext;
    this.l = paramString1;
    this.n = false;
    this.s = paramString2;
  }

  private static String a(String paramString)
  {
    Object localObject = "";
    try
    {
      HttpURLConnection localHttpURLConnection = (HttpURLConnection)new URL(paramString).openConnection();
      localHttpURLConnection.setRequestMethod("GET");
      localHttpURLConnection.setDoOutput(true);
      localHttpURLConnection.setReadTimeout(10000);
      localHttpURLConnection.connect();
      InputSource localInputSource = new InputSource(new InputStreamReader(localHttpURLConnection.getInputStream()));
      XMLReader localXMLReader = SAXParserFactory.newInstance().newSAXParser().getXMLReader();
      com.keniu.security.protection.ui.a locala = new com.keniu.security.protection.ui.a();
      localXMLReader.setContentHandler(locala);
      localXMLReader.parse(localInputSource);
      String str = locala.a();
      localObject = str;
      return localObject;
    }
    catch (Exception localException)
    {
      while (true)
        localException.printStackTrace();
    }
  }

  private String a(String paramString1, String paramString2, String paramString3)
  {
    String str;
    if ("TUBA".equals(paramString3))
      str = this.k.getString(2131429374, new Object[] { paramString1, paramString2 });
    while (true)
    {
      return str;
      if ("ANDROID".equals(paramString3))
        str = this.k.getString(2131429373, new Object[] { paramString1, paramString2 });
      else
        str = "";
    }
  }

  private void a(String paramString1, String paramString2, String paramString3, String paramString4)
  {
    Log.d("LocationInfoManager", "rs:[" + paramString2 + "," + paramString1 + "] " + paramString3 + ",locationType=" + paramString4);
    String str1;
    if ((!this.q) && (paramString1 != null) && (!"".equals(paramString1)))
    {
      StringBuilder localStringBuilder3 = new StringBuilder();
      localStringBuilder3.append(this.k.getString(2131429375)).append(paramString2).append(",").append(paramString1).append("&output=xml&hl=zh-cn&oe=utf8&sensor=true&key=0FaOwYYBbDSGnf80sE9knvlwF0qeYNLUWCsotAQ");
      Log.d("LocationInfoManager", "urlsb=" + localStringBuilder3.toString());
      str1 = a(localStringBuilder3.toString());
      if (str1 != null)
        str1 = str1.trim();
      Log.d("LocationInfoManager", "getCnByWeb:[" + paramString2 + "," + paramString1 + "] " + str1);
    }
    while (true)
    {
      StringBuilder localStringBuilder1;
      if (this.s != null)
      {
        localStringBuilder1 = new StringBuilder();
        if ("suoding".equals(this.s))
          localStringBuilder1.append(this.k.getString(2131429195));
      }
      while (true)
      {
        if ((str1 != null) && (!"".equals(str1)) && (!"huanka".equals(this.s)))
        {
          localStringBuilder1.append(this.k.getString(2131429199)).append(str1);
          label300: if (ag.a(this.k, this.l, localStringBuilder1.toString()) == -1)
            ag.t(this.k);
        }
        try
        {
          while (true)
          {
            Log.d("LocationInfoManager", "isMobileDataEnable=" + this.o);
            if (!this.o)
            {
              Log.d("LocationInfoManager", "close MobileDataEnable");
              ag.a(this.k, "setMobileDataEnabled", false);
            }
            if (!this.p)
              c();
            this.r = true;
            return;
            if ("xiaohui".equals(this.s))
            {
              localStringBuilder1.append(this.k.getString(2131429197));
              break;
            }
            if ("huanka".equals(this.s))
            {
              localStringBuilder1.append(this.k.getString(2131429194));
              break;
              if ((paramString1 == null) || ("".equals(paramString1)) || (paramString2 == null) || ("".equals(paramString2)))
                break label300;
              localStringBuilder1.append(this.k.getString(2131429199)).append("\n\r").append(a(paramString2, paramString1, paramString4));
              break label300;
              StringBuilder localStringBuilder2 = new StringBuilder();
              if ((paramString2 == null) || ("".equals(paramString2)))
              {
                if (this.n)
                {
                  Log.d("LocationInfoManager", "close android location listener failure preview");
                  localStringBuilder2.append(this.k.getString(2131429205)).append("<br><br>").append(this.k.getString(2131429202));
                  Message localMessage1 = Message.obtain();
                  localMessage1.what = 3;
                  Bundle localBundle1 = new Bundle();
                  localBundle1.putString("content", localStringBuilder2.toString());
                  localMessage1.setData(localBundle1);
                  this.m.sendMessage(localMessage1);
                }
                else if (ag.a(this.k, this.l, this.k.getString(2131429205)) == -1)
                {
                  ag.t(this.k);
                }
              }
              else
              {
                if (!this.n)
                  localStringBuilder2.append(this.k.getString(2131429198));
                Log.d("LocationInfoManager", "addr_cn=" + str1 + "," + str1.length());
                if (str1.length() > 0)
                {
                  Log.d("LocationInfoManager", "address is not null");
                  localStringBuilder2.append(this.k.getString(2131429199)).append(str1).append("。");
                  if (this.n)
                    localStringBuilder2.append("<br>");
                }
                else
                {
                  label801: localStringBuilder2.append(this.k.getString(2131429203));
                  if (!this.n)
                    break label1028;
                  localStringBuilder2.append("<br>").append("<font color=\"#6a9d31\"><a href=\"").append(a(paramString2, paramString1, paramString4)).append("\">");
                  label856: localStringBuilder2.append(a(paramString2, paramString1, paramString4));
                  if (this.n)
                    localStringBuilder2.append("</a></font>");
                  if (paramString4.equals("TUBA"))
                  {
                    if (!this.n)
                      break label1040;
                    localStringBuilder2.append("<br>");
                  }
                }
                while (true)
                {
                  localStringBuilder2.append(this.k.getString(2131429201));
                  if (!this.n)
                    break label1052;
                  localStringBuilder2.append("<br>").append("<br>").append(this.k.getString(2131429202));
                  Message localMessage2 = Message.obtain();
                  localMessage2.what = 3;
                  Bundle localBundle2 = new Bundle();
                  localBundle2.putString("content", localStringBuilder2.toString());
                  localMessage2.setData(localBundle2);
                  this.m.sendMessage(localMessage2);
                  break;
                  localStringBuilder2.append("\r\n");
                  break label801;
                  label1028: localStringBuilder2.append("\r\n");
                  break label856;
                  label1040: localStringBuilder2.append("\r\n");
                }
                label1052: String str2 = localStringBuilder2.toString();
                if (ag.a(this.k, this.l, str2) == -1)
                  ag.t(this.k);
              }
            }
          }
        }
        catch (Exception localException)
        {
          while (true)
            localException.printStackTrace();
        }
      }
      str1 = paramString3;
    }
  }

  private void b(String paramString1, String paramString2, String paramString3, String paramString4)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    if ("suoding".equals(this.s))
    {
      localStringBuilder.append(this.k.getString(2131429195));
      if ((paramString3 == null) || ("".equals(paramString3)) || ("huanka".equals(this.s)))
        break label168;
      localStringBuilder.append(this.k.getString(2131429199)).append(paramString3);
    }
    while (true)
    {
      if (ag.a(this.k, this.l, localStringBuilder.toString()) == -1)
        ag.t(this.k);
      do
      {
        return;
        if ("xiaohui".equals(this.s))
        {
          localStringBuilder.append(this.k.getString(2131429197));
          break;
        }
      }
      while (!"huanka".equals(this.s));
      localStringBuilder.append(this.k.getString(2131429194));
      break;
      label168: if ((paramString2 != null) && (!"".equals(paramString2)) && (paramString1 != null) && (!"".equals(paramString1)))
        localStringBuilder.append(this.k.getString(2131429199)).append("\n\r").append(a(paramString1, paramString2, paramString4));
    }
  }

  private boolean b()
  {
    try
    {
      Class localClass = this.k.getClassLoader().loadClass("android.provider.Settings$Secure");
      Method localMethod = localClass.getMethod("isLocationProviderEnabled", new Class[] { ContentResolver.class, String.class });
      PrintStream localPrintStream = System.out;
      StringBuilder localStringBuilder = new StringBuilder().append("gpsenable = ");
      Object[] arrayOfObject1 = new Object[2];
      arrayOfObject1[0] = this.k.getContentResolver();
      arrayOfObject1[1] = "gps";
      localPrintStream.println((Boolean)localMethod.invoke(localClass, arrayOfObject1));
      Object[] arrayOfObject2 = new Object[2];
      arrayOfObject2[0] = this.k.getContentResolver();
      arrayOfObject2[1] = "gps";
      boolean bool2 = ((Boolean)localMethod.invoke(localClass, arrayOfObject2)).booleanValue();
      bool1 = bool2;
      return bool1;
    }
    catch (Exception localException)
    {
      while (true)
      {
        localException.printStackTrace();
        boolean bool1 = true;
      }
    }
  }

  private void c()
  {
    Log.d("LocationInfoManager", "chageGPSState");
    Intent localIntent = new Intent();
    localIntent.setClassName("com.android.settings", "com.android.settings.widget.SettingsAppWidgetProvider");
    localIntent.addCategory("android.intent.category.ALTERNATIVE");
    localIntent.setData(Uri.parse("custom:3"));
    try
    {
      PendingIntent.getBroadcast(this.k, 0, localIntent, 0).send();
      return;
    }
    catch (PendingIntent.CanceledException localCanceledException)
    {
      while (true)
        localCanceledException.printStackTrace();
    }
  }

  private void c(String paramString1, String paramString2, String paramString3, String paramString4)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    if ((paramString1 == null) || ("".equals(paramString1)))
      if (this.n)
      {
        Log.d("LocationInfoManager", "close android location listener failure preview");
        localStringBuilder.append(this.k.getString(2131429205)).append("<br><br>").append(this.k.getString(2131429202));
        Message localMessage1 = Message.obtain();
        localMessage1.what = 3;
        Bundle localBundle1 = new Bundle();
        localBundle1.putString("content", localStringBuilder.toString());
        localMessage1.setData(localBundle1);
        this.m.sendMessage(localMessage1);
      }
    label277: label332: label504: 
    while (true)
    {
      return;
      if (ag.a(this.k, this.l, this.k.getString(2131429205)) == -1)
      {
        ag.t(this.k);
        continue;
        if (!this.n)
          localStringBuilder.append(this.k.getString(2131429198));
        Log.d("LocationInfoManager", "addr_cn=" + paramString3 + "," + paramString3.length());
        if (paramString3.length() > 0)
        {
          Log.d("LocationInfoManager", "address is not null");
          localStringBuilder.append(this.k.getString(2131429199)).append(paramString3).append("。");
          if (this.n)
            localStringBuilder.append("<br>");
        }
        else
        {
          localStringBuilder.append(this.k.getString(2131429203));
          if (!this.n)
            break label504;
          localStringBuilder.append("<br>").append("<font color=\"#6a9d31\"><a href=\"").append(a(paramString1, paramString2, paramString4)).append("\">");
          localStringBuilder.append(a(paramString1, paramString2, paramString4));
          if (this.n)
            localStringBuilder.append("</a></font>");
          if (paramString4.equals("TUBA"))
          {
            if (!this.n)
              break label516;
            localStringBuilder.append("<br>");
          }
        }
        while (true)
        {
          localStringBuilder.append(this.k.getString(2131429201));
          if (!this.n)
            break label528;
          localStringBuilder.append("<br>").append("<br>").append(this.k.getString(2131429202));
          Message localMessage2 = Message.obtain();
          localMessage2.what = 3;
          Bundle localBundle2 = new Bundle();
          localBundle2.putString("content", localStringBuilder.toString());
          localMessage2.setData(localBundle2);
          this.m.sendMessage(localMessage2);
          break;
          localStringBuilder.append("\r\n");
          break label277;
          localStringBuilder.append("\r\n");
          break label332;
          localStringBuilder.append("\r\n");
        }
        String str = localStringBuilder.toString();
        if (ag.a(this.k, this.l, str) == -1)
          ag.t(this.k);
      }
    }
  }

  public final void a()
  {
    Log.d("LocationInfoManager", "getLocationInfo");
    try
    {
      this.o = ag.i(this.k, "getMobileDataEnabled");
      Log.d("LocationInfoManager", "isMobileDataEnable=" + this.o);
      if (!this.o)
      {
        Log.d("LocationInfoManager", "open MobileDataEnable");
        ag.a(this.k, "setMobileDataEnabled", true);
      }
      this.p = b();
      Log.d("LocationInfoManager", "isGPSEnable=" + this.p);
      if (!this.p)
      {
        c();
        this.t.sendEmptyMessageDelayed(0, 10000L);
        return;
      }
    }
    catch (Exception localException)
    {
      while (true)
      {
        localException.printStackTrace();
        continue;
        this.t.sendEmptyMessage(0);
      }
    }
  }

  public final void a(Location paramLocation)
  {
    Log.d("LocationInfoManager", "onProviderDisabled getAddressbyTubaGeoPoint");
    if (paramLocation != null)
    {
      double d1 = paramLocation.getLatitude();
      double d2 = paramLocation.getLongitude();
      DecimalFormat localDecimalFormat = new DecimalFormat("###.0000000");
      String str1 = localDecimalFormat.format(d2);
      String str2 = localDecimalFormat.format(d1);
      Log.d("LocationInfoManager", "longitude: " + str1);
      Log.d("LocationInfoManager", "latitude: " + str2);
      String str3 = "";
      Bundle localBundle1 = paramLocation.getExtras();
      if (localBundle1 != null)
        str3 = localBundle1.getString("address");
      if (!"".equals(str3))
        this.q = true;
      Message localMessage = this.t.obtainMessage();
      localMessage.what = 1;
      Bundle localBundle2 = new Bundle();
      localBundle2.putString("addr_cn", str3);
      localBundle2.putString("longitude", str1);
      localBundle2.putString("latitude", str2);
      localMessage.setData(localBundle2);
      this.t.sendMessage(localMessage);
    }
  }

  public final void b(Location paramLocation)
  {
    Log.d("LocationInfoManager", "onProviderDisabled getAddressbyGeoPoint");
    if (paramLocation != null)
    {
      double d1 = paramLocation.getLatitude();
      double d2 = paramLocation.getLongitude();
      DecimalFormat localDecimalFormat = new DecimalFormat("###.0000000");
      String str1 = localDecimalFormat.format(d2);
      String str2 = localDecimalFormat.format(d1);
      Message localMessage = this.t.obtainMessage();
      localMessage.what = 2;
      Bundle localBundle = new Bundle();
      localBundle.putString("longitude", str1);
      localBundle.putString("latitude", str2);
      localMessage.setData(localBundle);
      this.t.sendMessage(localMessage);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.protection.l
 * JD-Core Version:    0.6.2
 */