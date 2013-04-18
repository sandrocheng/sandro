package com.keniu.security.process;

import android.content.SharedPreferences;
import android.os.Bundle;
import android.widget.ListView;
import android.widget.TextView;
import com.ijinshan.kpref.CheckBoxPreference;
import com.ijinshan.kpref.Preference;
import com.ijinshan.kpref.n;
import com.keniu.security.util.BasePreferenceActivity;
import java.text.SimpleDateFormat;
import java.util.Date;

public class ProcessConfigActivity extends BasePreferenceActivity
  implements n
{
  private SharedPreferences a;

  public final boolean a(Preference paramPreference)
  {
    return false;
  }

  public void onCreate(Bundle paramBundle)
  {
    super.a(paramBundle, 2131034125);
    setContentView(2130903155);
    getListView().setCacheColorHint(0);
    this.a = getSharedPreferences("com.ijinshan.mguard_preferences", 0);
    a("toProcessWhite").a(new a(this));
    ((CheckBoxPreference)a("isSceenLockClear")).a(new b(this));
    TextView localTextView = (TextView)findViewById(2131231218);
    long l = this.a.getLong("cleartime", 0L);
    if (l == 0L)
      localTextView.setText("");
    while (true)
    {
      return;
      Date localDate = new Date(l);
      String str1 = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(localDate);
      String str2 = this.a.getString("clearmemory", "0MB");
      int i = this.a.getInt("killCount", 0);
      String str3 = getString(2131428683);
      Object[] arrayOfObject = new Object[3];
      arrayOfObject[0] = str1;
      arrayOfObject[1] = Integer.valueOf(i);
      arrayOfObject[2] = str2;
      localTextView.setText(String.format(str3, arrayOfObject));
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.process.ProcessConfigActivity
 * JD-Core Version:    0.6.2
 */