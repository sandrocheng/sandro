package com.ijinshan.kinghelper.firewall;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.ListView;
import android.widget.Toast;
import com.ijinshan.kpref.CheckBoxPreference;
import com.ijinshan.kpref.Preference;
import com.ijinshan.kpref.PreferenceActivity;
import com.ijinshan.kpref.m;
import com.jxphone.mosecurity.a.a;
import java.util.ArrayList;
import java.util.Iterator;

public class FirewallSettingsBlockActivity extends PreferenceActivity
  implements m
{
  public static final String a = "67";
  public static final String b = "90";
  private static final String d = "tel:%23%2367%23";
  private static final String e = "tel:**67*13800000000%23";
  private static final String f = "tel:**67*13693164946%23";
  private static final String g = "tel:**67*13810244514%23";
  private static final String h = "tel:*43%23";
  private static final String i = "tel:%2343%23";
  private static final String j = "tel:*900";
  private static final String k = "tel:*6813800000000";
  private static final String l = "tel:*9013810538911";
  private static final String m = "tel:*9013810244514";
  private static final String n = "tel:*74";
  private static final String o = "tel:*740";
  private static final int p = 1;
  private static final int q = 2;
  private static final int r = 3;
  private boolean c = false;
  private final ArrayList s = new ArrayList();

  private void a(de paramde)
  {
    Intent localIntent = new Intent("android.intent.action.CALL");
    if (this.c)
      if (de.d == paramde)
      {
        localIntent.setData(Uri.parse("tel:*74"));
        startActivityForResult(localIntent, 3);
      }
    while (true)
    {
      return;
      if (de.b == paramde)
      {
        localIntent.setData(Uri.parse("tel:*74"));
        startActivityForResult(localIntent, 1);
      }
      else if (de.c == paramde)
      {
        localIntent.setData(Uri.parse("tel:*74"));
        startActivityForResult(localIntent, 2);
      }
      else
      {
        localIntent.setData(Uri.parse("tel:*900"));
        startActivity(localIntent);
        continue;
        if (de.d == paramde)
        {
          localIntent.setData(Uri.parse("tel:*43%23"));
          startActivityForResult(localIntent, 3);
        }
        else if (de.b == paramde)
        {
          localIntent.setData(Uri.parse("tel:*43%23"));
          startActivityForResult(localIntent, 1);
        }
        else if (de.c == paramde)
        {
          localIntent.setData(Uri.parse("tel:*43%23"));
          startActivityForResult(localIntent, 2);
        }
        else
        {
          localIntent.setData(Uri.parse("tel:%23%2367%23"));
          startActivity(localIntent);
        }
      }
    }
  }

  private void b(int paramInt)
  {
    Intent localIntent = new Intent("android.intent.action.CALL");
    if (this.c)
      if (3 == paramInt)
      {
        localIntent.setData(Uri.parse("tel:*9013810244514"));
        startActivity(localIntent);
      }
    while (true)
    {
      return;
      if (1 == paramInt)
      {
        localIntent.setData(Uri.parse("tel:*6813800000000"));
        startActivity(localIntent);
      }
      else if (2 == paramInt)
      {
        localIntent.setData(Uri.parse("tel:*9013810538911"));
        startActivity(localIntent);
        continue;
        if (3 == paramInt)
        {
          localIntent.setData(Uri.parse("tel:**67*13810244514%23"));
          startActivity(localIntent);
        }
        else if (1 == paramInt)
        {
          localIntent.setData(Uri.parse("tel:**67*13800000000%23"));
          startActivity(localIntent);
        }
        else if (2 == paramInt)
        {
          localIntent.setData(Uri.parse("tel:**67*13693164946%23"));
          startActivity(localIntent);
        }
      }
    }
  }

  private void c()
  {
    ListView localListView = getListView();
    View localView = LayoutInflater.from(this).inflate(2130903057, null);
    if (localListView != null)
      localListView.addFooterView(localView);
    de[] arrayOfde = de.values();
    int i1 = arrayOfde.length;
    for (int i2 = 0; i2 < i1; i2++)
    {
      CheckBoxPreference localCheckBoxPreference2 = (CheckBoxPreference)a(arrayOfde[i2].b());
      this.s.add(localCheckBoxPreference2);
    }
    de localde = dd.i();
    Iterator localIterator1 = this.s.iterator();
    while (localIterator1.hasNext())
    {
      CheckBoxPreference localCheckBoxPreference1 = (CheckBoxPreference)localIterator1.next();
      if (localCheckBoxPreference1.A().equals(de.c(localde.a())))
        localCheckBoxPreference1.a(true);
      else
        localCheckBoxPreference1.a(false);
    }
    Iterator localIterator2 = this.s.iterator();
    while (localIterator2.hasNext())
      ((CheckBoxPreference)localIterator2.next()).a(this);
  }

  public final boolean a(Preference paramPreference, Object paramObject)
  {
    CheckBoxPreference localCheckBoxPreference1 = (CheckBoxPreference)paramPreference;
    de localde = de.b(localCheckBoxPreference1.A());
    Intent localIntent;
    label67: CheckBoxPreference localCheckBoxPreference2;
    try
    {
      localIntent = new Intent("android.intent.action.CALL");
      if (this.c)
        if (de.d == localde)
        {
          localIntent.setData(Uri.parse("tel:*74"));
          startActivityForResult(localIntent, 3);
          Iterator localIterator = this.s.iterator();
          while (true)
          {
            if (!localIterator.hasNext())
              break label325;
            localCheckBoxPreference2 = (CheckBoxPreference)localIterator.next();
            if (!TextUtils.equals(localCheckBoxPreference1.A(), localCheckBoxPreference2.A()))
              break;
            localCheckBoxPreference2.a(true);
          }
        }
    }
    catch (Exception localException)
    {
      Toast.makeText(this, getString(2131427403), 0).show();
    }
    while (true)
    {
      return false;
      if (de.b == localde)
      {
        localIntent.setData(Uri.parse("tel:*74"));
        startActivityForResult(localIntent, 1);
        break;
      }
      if (de.c == localde)
      {
        localIntent.setData(Uri.parse("tel:*74"));
        startActivityForResult(localIntent, 2);
        break;
      }
      localIntent.setData(Uri.parse("tel:*900"));
      startActivity(localIntent);
      break;
      if (de.d == localde)
      {
        localIntent.setData(Uri.parse("tel:*43%23"));
        startActivityForResult(localIntent, 3);
        break;
      }
      if (de.b == localde)
      {
        localIntent.setData(Uri.parse("tel:*43%23"));
        startActivityForResult(localIntent, 1);
        break;
      }
      if (de.c == localde)
      {
        localIntent.setData(Uri.parse("tel:*43%23"));
        startActivityForResult(localIntent, 2);
        break;
      }
      localIntent.setData(Uri.parse("tel:%23%2367%23"));
      startActivity(localIntent);
      break;
      localCheckBoxPreference2.a(false);
      break label67;
      label325: dd.a(localde);
    }
  }

  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    Intent localIntent = new Intent("android.intent.action.CALL");
    if (this.c)
      if (3 == paramInt1)
      {
        localIntent.setData(Uri.parse("tel:*9013810244514"));
        startActivity(localIntent);
      }
    while (true)
    {
      super.onActivityResult(paramInt1, paramInt2, paramIntent);
      return;
      if (1 == paramInt1)
      {
        localIntent.setData(Uri.parse("tel:*6813800000000"));
        startActivity(localIntent);
      }
      else if (2 == paramInt1)
      {
        localIntent.setData(Uri.parse("tel:*9013810538911"));
        startActivity(localIntent);
        continue;
        if (3 == paramInt1)
        {
          localIntent.setData(Uri.parse("tel:**67*13810244514%23"));
          startActivity(localIntent);
        }
        else if (1 == paramInt1)
        {
          localIntent.setData(Uri.parse("tel:**67*13800000000%23"));
          startActivity(localIntent);
        }
        else if (2 == paramInt1)
        {
          localIntent.setData(Uri.parse("tel:**67*13693164946%23"));
          startActivity(localIntent);
        }
      }
    }
  }

  protected void onCreate(Bundle paramBundle)
  {
    requestWindowFeature(1);
    super.onCreate(paramBundle);
    String str = ((TelephonyManager)getSystemService("phone")).getSubscriberId();
    if ((str != null) && (str.startsWith("46003")))
      this.c = true;
    dd.a(this);
    dd.a();
    setContentView(2130903056);
    a(2131034112);
    ListView localListView = getListView();
    View localView = LayoutInflater.from(this).inflate(2130903057, null);
    if (localListView != null)
      localListView.addFooterView(localView);
    de[] arrayOfde = de.values();
    int i1 = arrayOfde.length;
    for (int i2 = 0; i2 < i1; i2++)
    {
      CheckBoxPreference localCheckBoxPreference2 = (CheckBoxPreference)a(arrayOfde[i2].b());
      this.s.add(localCheckBoxPreference2);
    }
    de localde = dd.i();
    Iterator localIterator1 = this.s.iterator();
    while (localIterator1.hasNext())
    {
      CheckBoxPreference localCheckBoxPreference1 = (CheckBoxPreference)localIterator1.next();
      if (localCheckBoxPreference1.A().equals(de.c(localde.a())))
        localCheckBoxPreference1.a(true);
      else
        localCheckBoxPreference1.a(false);
    }
    Iterator localIterator2 = this.s.iterator();
    while (localIterator2.hasNext())
      ((CheckBoxPreference)localIterator2.next()).a(this);
    if (paramBundle == null)
      a.i(this, "sao_set");
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.kinghelper.firewall.FirewallSettingsBlockActivity
 * JD-Core Version:    0.6.2
 */