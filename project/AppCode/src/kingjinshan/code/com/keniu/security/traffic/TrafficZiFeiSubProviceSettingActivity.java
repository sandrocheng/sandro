package com.keniu.security.traffic;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.Animation;
import android.view.animation.TranslateAnimation;
import android.widget.Button;
import android.widget.ListView;
import cn.com.wali.zft.plugin;
import com.keniu.security.util.SafeViewFlipper;
import com.keniu.security.util.aw;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;

public class TrafficZiFeiSubProviceSettingActivity extends Activity
{
  private static final int a = 300;
  private static final int u = 160;
  private static final int[] v = { 1601, 1637, 1833, 2078, 2274, 2302, 2433, 2594, 2787, 3106, 3212, 3472, 3635, 3722, 3730, 3858, 4027, 4086, 4390, 4558, 4684, 4925, 5249, 5600 };
  private static final char[] w = { 97, 98, 99, 100, 101, 102, 103, 104, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 119, 120, 121, 122 };
  private y b;
  private SafeViewFlipper c;
  private Button d;
  private Button e;
  private String[] f = null;
  private ArrayList g;
  private ArrayList h;
  private ListView i;
  private ListView j;
  private LayoutInflater k;
  private ArrayList l;
  private ArrayList m;
  private String[] n;
  private int o;
  private String p = "";
  private String q = "";
  private int r = -1;
  private boolean s = true;
  private aw t = new aw();

  private static char a(byte[] paramArrayOfByte)
  {
    char c1 = '-';
    for (int i1 = 0; i1 < paramArrayOfByte.length; i1++)
      paramArrayOfByte[i1] = ((byte)(paramArrayOfByte[i1] - 160));
    int i2 = 100 * paramArrayOfByte[0] + paramArrayOfByte[1];
    for (int i3 = 0; ; i3++)
      if (i3 < 23)
      {
        if ((i2 >= v[i3]) && (i2 < v[(i3 + 1)]))
          c1 = w[i3];
      }
      else
        return c1;
  }

  protected static Animation a()
  {
    TranslateAnimation localTranslateAnimation = new TranslateAnimation(2, 1.0F, 2, 0.0F, 2, 0.0F, 2, 0.0F);
    localTranslateAnimation.setDuration(300L);
    localTranslateAnimation.setInterpolator(new AccelerateInterpolator());
    return localTranslateAnimation;
  }

  private static String a(String paramString)
  {
    String str = paramString.toLowerCase();
    StringBuffer localStringBuffer = new StringBuffer();
    int i1 = 0;
    while (true)
      if (i1 < str.length())
      {
        char[] arrayOfChar = { str.charAt(i1) };
        try
        {
          byte[] arrayOfByte2 = new String(arrayOfChar).getBytes("GBK");
          arrayOfByte1 = arrayOfByte2;
          if ((arrayOfByte1[0] < 128) && (arrayOfByte1[0] > 0))
          {
            localStringBuffer.append(arrayOfChar);
            i1++;
          }
        }
        catch (UnsupportedEncodingException localUnsupportedEncodingException)
        {
          while (true)
          {
            localUnsupportedEncodingException.printStackTrace();
            byte[] arrayOfByte1 = null;
            continue;
            localStringBuffer.append(a(arrayOfByte1));
          }
        }
      }
    return localStringBuffer.toString();
  }

  protected static Animation b()
  {
    TranslateAnimation localTranslateAnimation = new TranslateAnimation(2, 0.0F, 2, -1.0F, 2, 0.0F, 2, 0.0F);
    localTranslateAnimation.setDuration(300L);
    localTranslateAnimation.setInterpolator(new AccelerateInterpolator());
    return localTranslateAnimation;
  }

  protected static Animation c()
  {
    TranslateAnimation localTranslateAnimation = new TranslateAnimation(2, -1.0F, 2, 0.0F, 2, 0.0F, 2, 0.0F);
    localTranslateAnimation.setDuration(300L);
    localTranslateAnimation.setInterpolator(new AccelerateInterpolator());
    return localTranslateAnimation;
  }

  protected static Animation d()
  {
    TranslateAnimation localTranslateAnimation = new TranslateAnimation(2, 0.0F, 2, 1.0F, 2, 0.0F, 2, 0.0F);
    localTranslateAnimation.setDuration(300L);
    localTranslateAnimation.setInterpolator(new AccelerateInterpolator());
    return localTranslateAnimation;
  }

  private ArrayList e()
  {
    this.g = plugin.getprovinces();
    this.m = new ArrayList();
    if (this.c.getDisplayedChild() == 0)
    {
      this.d.setText(2131428627);
      this.f = ((String[])this.g.toArray(new String[this.g.size()]));
      for (int i2 = 0; i2 < this.f.length; i2++)
      {
        String str3 = this.f[i2].substring(this.f[i2].indexOf(","), this.f[i2].length());
        String str4 = str3.substring(1, str3.length());
        this.m.add(str4);
      }
    }
    if (this.c.getDisplayedChild() == 1)
    {
      if (!this.s)
        break label249;
      this.h = plugin.getcities(Integer.valueOf(String.valueOf(this.g.get(this.o)).split(",")[0]).intValue());
      this.n = ((String[])this.h.toArray(new String[0]));
      if (this.n.length != 1)
        break label279;
      this.b.k = this.p;
      this.b.l = this.n[0];
      finish();
    }
    while (true)
    {
      return this.m;
      label249: this.h = plugin.getcities(Integer.valueOf(String.valueOf(this.p).split(",")[0]).intValue());
      break;
      label279: this.d.setText(2131429277);
      this.e.setText(2131427864);
      for (int i1 = 0; i1 < this.n.length; i1++)
      {
        String str1 = this.n[i1].substring(this.n[i1].indexOf(","), this.n[i1].length());
        String str2 = str1.substring(1, str1.length());
        this.m.add(str2);
      }
    }
  }

  public final boolean a(String[] paramArrayOfString, String paramString)
  {
    String str = paramString.toLowerCase();
    setTitle(str);
    int i1 = 0;
    if (i1 < paramArrayOfString.length)
      if (!paramArrayOfString[i1].split(",")[0].equals(str.split(",")[0]));
    for (boolean bool = true; ; bool = false)
    {
      return bool;
      i1++;
      break;
    }
  }

  protected void onCreate(Bundle paramBundle)
  {
    requestWindowFeature(1);
    super.onCreate(paramBundle);
    setContentView(2130903326);
    this.b = y.a(this);
    this.c = ((SafeViewFlipper)findViewById(2131231724));
    this.d = ((Button)findViewById(2131231735));
    this.e = ((Button)findViewById(2131231736));
    this.i = ((ListView)findViewById(2131231688));
    this.j = ((ListView)findViewById(2131231656));
    this.d.setOnClickListener(new fa(this));
    this.e.setOnClickListener(new fb(this));
    int i1 = getIntent().getIntExtra("extra_num", 0);
    this.c.setDisplayedChild(i1);
    this.l = e();
    this.i.setCacheColorHint(0);
    this.i.setAdapter(new fe(this, this));
    this.i.setOnItemClickListener(new fc(this));
    this.j.setCacheColorHint(0);
    this.j.setAdapter(new fe(this, this));
    this.j.setOnItemClickListener(new fd(this));
  }

  protected void onPause()
  {
    super.onPause();
    if (this.t != null)
      this.t.a();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.traffic.TrafficZiFeiSubProviceSettingActivity
 * JD-Core Version:    0.6.2
 */