package com.keniu.security.traffic;

import android.os.Bundle;
import android.os.Handler;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.widget.Button;
import android.widget.ListView;
import com.ijinshan.kpref.Preference;
import com.ijinshan.kpref.PreferenceScreen;
import com.ijinshan.kpref.t;
import com.keniu.security.util.BasePreferenceActivity;
import com.keniu.security.util.aw;
import java.util.ArrayList;

public class TrafficZiFeiSubSettingActivity extends BasePreferenceActivity
{
  public static boolean a = false;
  private y b;
  private ArrayList c;
  private String[] d;
  private Button e;
  private Button f;
  private aw g = new aw();
  private Handler h = new fh(this);

  private void c()
  {
    PreferenceScreen localPreferenceScreen = a().a(this);
    a(localPreferenceScreen);
    this.b = y.a(this);
    Preference localPreference1 = new Preference(this);
    localPreference1.e(2131428063);
    String str1;
    label68: Preference localPreference2;
    String str2;
    label126: Preference localPreference3;
    label143: String str3;
    if (TextUtils.isEmpty(this.b.k))
    {
      str1 = "";
      if (!str1.equals(""))
        break label354;
      localPreference1.f(2131428052);
      localPreference1.c(2130903092);
      localPreference1.a(new fl(this));
      localPreferenceScreen.c(localPreference1);
      localPreference2 = new Preference(this);
      localPreference2.e(2131428064);
      if (!TextUtils.isEmpty(this.b.n))
        break label362;
      str2 = "";
      if (!str2.equals(""))
        break label381;
      localPreference2.f(2131428052);
      localPreference2.c(2130903092);
      localPreference2.a(new fm(this));
      localPreferenceScreen.c(localPreference2);
      localPreference3 = new Preference(this);
      localPreference3.e(2131428065);
      if (!TextUtils.isEmpty(this.b.m))
        break label391;
      str3 = "";
      label204: if (!str3.equals(""))
        break label410;
      localPreference3.f(2131428052);
    }
    while (true)
    {
      localPreference3.c(2130903092);
      localPreference3.a(new fn(this));
      localPreferenceScreen.c(localPreference3);
      return;
      if (this.b.k.split(",")[1].equals(this.b.l.split(",")[1]))
      {
        str1 = this.b.k.split(",")[1];
        break;
      }
      str1 = this.b.k.split(",")[1] + "," + this.b.l.split(",")[1];
      break;
      label354: localPreference1.a(str1);
      break label68;
      label362: str2 = this.b.n.split(",")[1];
      break label126;
      label381: localPreference2.a(str2);
      break label143;
      label391: str3 = this.b.m.split(",")[1];
      break label204;
      label410: localPreference3.a(str3);
    }
  }

  public final boolean a(String[] paramArrayOfString, String paramString)
  {
    String str = paramString.toLowerCase();
    setTitle(str);
    int i = 0;
    if (i < paramArrayOfString.length)
      if (!paramArrayOfString[i].split(",")[0].equals(str.split(",")[0]));
    for (boolean bool = true; ; bool = false)
    {
      return bool;
      i++;
      break;
    }
  }

  protected void onCreate(Bundle paramBundle)
  {
    requestWindowFeature(1);
    super.onCreate(paramBundle);
    setContentView(2130903315);
    c();
    getListView().setFooterDividersEnabled(false);
    this.e = ((Button)findViewById(2131231720));
    this.f = ((Button)findViewById(2131231721));
    this.e.setOnClickListener(new fi(this));
    this.f.setOnClickListener(new fk(this));
  }

  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if (paramInt == 4)
      finish();
    return super.onKeyDown(paramInt, paramKeyEvent);
  }

  protected void onResume()
  {
    super.onResume();
    if (a)
    {
      a = false;
      c();
    }
  }

  protected void onStart()
  {
    super.onStart();
    c();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.traffic.TrafficZiFeiSubSettingActivity
 * JD-Core Version:    0.6.2
 */