package com.keniu.security.rates;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.graphics.drawable.BitmapDrawable;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Bundle;
import android.os.Handler;
import android.telephony.TelephonyManager;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.style.ForegroundColorSpan;
import android.util.DisplayMetrics;
import android.util.Log;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.TextView;
import android.widget.Toast;
import cn.com.wali.zft.plugin;
import com.ijinshan.kpref.Preference;
import com.ijinshan.kpref.PreferenceActivity;
import com.ijinshan.kpref.PreferenceScreen;
import com.ijinshan.kpref.t;
import com.jxphone.mosecurity.a.a;
import com.keniu.security.traffic.dd;
import com.keniu.security.traffic.y;
import com.keniu.security.util.ap;
import com.keniu.security.util.aq;
import java.io.File;

public class RatesRequestMainActivity extends PreferenceActivity
{
  public static int c = 0;
  public static Handler e = new d();
  private static c f;
  private static Context g;
  private static Button h;
  private static TextView k;
  private static TextView l;
  private static TextView m;
  private static TextView n;
  private static ImageView o;
  private static BitmapDrawable p = null;
  public boolean a = false;
  public boolean b = false;
  public plugin d = plugin.getInstance();
  private aq i;
  private LinearLayout j;
  private Thread q;
  private int r;

  // ERROR //
  private static void a(Bitmap paramBitmap)
  {
    // Byte code:
    //   0: new 68	java/io/File
    //   3: dup
    //   4: getstatic 70	com/keniu/security/rates/RatesRequestMainActivity:g	Landroid/content/Context;
    //   7: invokevirtual 76	android/content/Context:getCacheDir	()Ljava/io/File;
    //   10: invokevirtual 80	java/io/File:getAbsolutePath	()Ljava/lang/String;
    //   13: ldc 82
    //   15: invokespecial 85	java/io/File:<init>	(Ljava/lang/String;Ljava/lang/String;)V
    //   18: astore_1
    //   19: aconst_null
    //   20: astore_2
    //   21: new 87	java/io/BufferedOutputStream
    //   24: dup
    //   25: new 89	java/io/FileOutputStream
    //   28: dup
    //   29: aload_1
    //   30: invokespecial 92	java/io/FileOutputStream:<init>	(Ljava/io/File;)V
    //   33: invokespecial 95	java/io/BufferedOutputStream:<init>	(Ljava/io/OutputStream;)V
    //   36: astore_3
    //   37: aload_0
    //   38: getstatic 101	android/graphics/Bitmap$CompressFormat:JPEG	Landroid/graphics/Bitmap$CompressFormat;
    //   41: bipush 80
    //   43: aload_3
    //   44: invokevirtual 107	android/graphics/Bitmap:compress	(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    //   47: pop
    //   48: aload_3
    //   49: astore 5
    //   51: aload 5
    //   53: ifnull +13 -> 66
    //   56: aload 5
    //   58: invokevirtual 110	java/io/BufferedOutputStream:flush	()V
    //   61: aload 5
    //   63: invokevirtual 113	java/io/BufferedOutputStream:close	()V
    //   66: return
    //   67: astore 4
    //   69: aload 4
    //   71: invokevirtual 116	java/io/FileNotFoundException:printStackTrace	()V
    //   74: aload_2
    //   75: astore 5
    //   77: goto -26 -> 51
    //   80: astore 6
    //   82: aload 6
    //   84: invokevirtual 117	java/io/IOException:printStackTrace	()V
    //   87: goto -21 -> 66
    //   90: astore 4
    //   92: aload_3
    //   93: astore_2
    //   94: goto -25 -> 69
    //
    // Exception table:
    //   from	to	target	type
    //   21	37	67	java/io/FileNotFoundException
    //   56	66	80	java/io/IOException
    //   37	48	90	java/io/FileNotFoundException
  }

  private void a(String paramString)
  {
    aq localaq = new aq(this, (byte)0);
    localaq.a(2131428214);
    localaq.b(2131428215);
    localaq.b(2131429430, null);
    localaq.a(2131429429, new h(this, paramString));
    localaq.c().show();
  }

  // ERROR //
  private Bitmap b(String paramString)
  {
    // Byte code:
    //   0: new 159	java/net/URL
    //   3: dup
    //   4: aload_1
    //   5: invokespecial 161	java/net/URL:<init>	(Ljava/lang/String;)V
    //   8: astore_2
    //   9: aload_2
    //   10: invokevirtual 165	java/net/URL:openConnection	()Ljava/net/URLConnection;
    //   13: checkcast 167	java/net/HttpURLConnection
    //   16: astore 6
    //   18: aload 6
    //   20: iconst_1
    //   21: invokevirtual 171	java/net/HttpURLConnection:setDoInput	(Z)V
    //   24: aload 6
    //   26: invokevirtual 174	java/net/HttpURLConnection:connect	()V
    //   29: aload 6
    //   31: invokevirtual 178	java/net/HttpURLConnection:getInputStream	()Ljava/io/InputStream;
    //   34: astore 7
    //   36: new 180	java/io/BufferedInputStream
    //   39: dup
    //   40: aload 7
    //   42: invokespecial 183	java/io/BufferedInputStream:<init>	(Ljava/io/InputStream;)V
    //   45: astore 8
    //   47: aload 8
    //   49: invokestatic 189	android/graphics/BitmapFactory:decodeStream	(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    //   52: astore 9
    //   54: getstatic 191	com/keniu/security/rates/RatesRequestMainActivity:f	Lcom/keniu/security/rates/c;
    //   57: invokestatic 197	java/lang/System:currentTimeMillis	()J
    //   60: putfield 202	com/keniu/security/rates/c:f	J
    //   63: getstatic 191	com/keniu/security/rates/RatesRequestMainActivity:f	Lcom/keniu/security/rates/c;
    //   66: getstatic 70	com/keniu/security/rates/RatesRequestMainActivity:g	Landroid/content/Context;
    //   69: ldc 203
    //   71: invokevirtual 206	com/keniu/security/rates/c:a	(Landroid/content/Context;I)V
    //   74: new 68	java/io/File
    //   77: dup
    //   78: getstatic 70	com/keniu/security/rates/RatesRequestMainActivity:g	Landroid/content/Context;
    //   81: invokevirtual 76	android/content/Context:getCacheDir	()Ljava/io/File;
    //   84: invokevirtual 80	java/io/File:getAbsolutePath	()Ljava/lang/String;
    //   87: ldc 82
    //   89: invokespecial 85	java/io/File:<init>	(Ljava/lang/String;Ljava/lang/String;)V
    //   92: astore 10
    //   94: new 87	java/io/BufferedOutputStream
    //   97: dup
    //   98: new 89	java/io/FileOutputStream
    //   101: dup
    //   102: aload 10
    //   104: invokespecial 92	java/io/FileOutputStream:<init>	(Ljava/io/File;)V
    //   107: invokespecial 95	java/io/BufferedOutputStream:<init>	(Ljava/io/OutputStream;)V
    //   110: astore 11
    //   112: aload 9
    //   114: getstatic 101	android/graphics/Bitmap$CompressFormat:JPEG	Landroid/graphics/Bitmap$CompressFormat;
    //   117: bipush 80
    //   119: aload 11
    //   121: invokevirtual 107	android/graphics/Bitmap:compress	(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    //   124: pop
    //   125: aload 11
    //   127: astore 13
    //   129: aload 13
    //   131: ifnull +13 -> 144
    //   134: aload 13
    //   136: invokevirtual 110	java/io/BufferedOutputStream:flush	()V
    //   139: aload 13
    //   141: invokevirtual 113	java/io/BufferedOutputStream:close	()V
    //   144: aload 8
    //   146: invokevirtual 207	java/io/BufferedInputStream:close	()V
    //   149: aload 7
    //   151: invokevirtual 210	java/io/InputStream:close	()V
    //   154: aload_0
    //   155: iconst_1
    //   156: putfield 53	com/keniu/security/rates/RatesRequestMainActivity:b	Z
    //   159: aload 9
    //   161: astore 5
    //   163: aload 5
    //   165: areturn
    //   166: astore 16
    //   168: aload 16
    //   170: invokevirtual 211	java/net/MalformedURLException:printStackTrace	()V
    //   173: aconst_null
    //   174: astore_2
    //   175: goto -166 -> 9
    //   178: astore 12
    //   180: aconst_null
    //   181: astore 11
    //   183: aload 12
    //   185: invokevirtual 116	java/io/FileNotFoundException:printStackTrace	()V
    //   188: aload 11
    //   190: astore 13
    //   192: goto -63 -> 129
    //   195: astore 14
    //   197: aload 14
    //   199: invokevirtual 117	java/io/IOException:printStackTrace	()V
    //   202: goto -58 -> 144
    //   205: astore_3
    //   206: aload 9
    //   208: astore 4
    //   210: aload_3
    //   211: invokevirtual 117	java/io/IOException:printStackTrace	()V
    //   214: aload 4
    //   216: astore 5
    //   218: goto -55 -> 163
    //   221: astore_3
    //   222: aconst_null
    //   223: astore 4
    //   225: goto -15 -> 210
    //   228: astore 12
    //   230: goto -47 -> 183
    //
    // Exception table:
    //   from	to	target	type
    //   0	9	166	java/net/MalformedURLException
    //   94	112	178	java/io/FileNotFoundException
    //   134	144	195	java/io/IOException
    //   54	94	205	java/io/IOException
    //   94	112	205	java/io/IOException
    //   112	125	205	java/io/IOException
    //   144	159	205	java/io/IOException
    //   183	202	205	java/io/IOException
    //   9	54	221	java/io/IOException
    //   112	125	228	java/io/FileNotFoundException
  }

  public static void c()
  {
    if (f.d == null)
    {
      k.setText(2131428216);
      l.setText(2131428211);
    }
    while (true)
    {
      return;
      l.setText("查询时间：" + f.d);
      String str1 = String.valueOf(f.a());
      String str2 = "账户余额：" + str1 + "元";
      SpannableStringBuilder localSpannableStringBuilder = new SpannableStringBuilder(str2);
      localSpannableStringBuilder.setSpan(new ForegroundColorSpan(Color.parseColor("#EE7600")), 5, str2.length() - 1, 33);
      k.setText(localSpannableStringBuilder);
    }
  }

  private void c(String paramString)
  {
    Bitmap localBitmap = b(paramString);
    if (this.b)
    {
      p = new BitmapDrawable(localBitmap);
      e.sendEmptyMessage(2);
      this.b = false;
    }
  }

  public static void d()
  {
    a.f(g, "4");
    h.setEnabled(true);
    m.setHint(2131428207);
    Toast.makeText(g, 2131428213, 1).show();
  }

  public static void e()
  {
    h.setEnabled(true);
    m.setHint(2131428207);
  }

  private void i()
  {
    TextView localTextView = (TextView)findViewById(2131231532);
    m = localTextView;
    localTextView.setHint(2131428207);
    n = (TextView)findViewById(2131231534);
    o = (ImageView)findViewById(2131231535);
    this.j = ((LinearLayout)findViewById(2131231533));
    n.setText(2131428208);
    o.setVisibility(8);
    if (n())
      if (this.r == 1)
        l();
    while (true)
    {
      o.setOnClickListener(new e(this));
      k = (TextView)findViewById(2131231529);
      l = (TextView)findViewById(2131231530);
      Button localButton = (Button)findViewById(2131231531);
      h = localButton;
      localButton.setOnClickListener(new f(this));
      c();
      return;
      if (System.currentTimeMillis() - f.f >= 259200000L)
      {
        l();
      }
      else
      {
        if (getResources().getDisplayMetrics().density <= 1.5D)
          this.j.setPadding(0, 32, 0, 0);
        p = new BitmapDrawable(getResources(), g.getCacheDir().getAbsolutePath() + "/zifeitong.jpg");
        m();
        continue;
        if (getResources().getDisplayMetrics().density <= 1.5D)
          this.j.setPadding(0, 32, 0, 0);
        String str = g.getCacheDir().getAbsolutePath() + "/zifeitong.jpg";
        if (new File(str).exists())
        {
          p = new BitmapDrawable(getResources(), str);
          m();
        }
      }
    }
  }

  private boolean j()
  {
    y localy = y.a(this);
    if ((TextUtils.isEmpty(localy.k)) && (TextUtils.isEmpty(localy.l)) && (TextUtils.isEmpty(localy.n)) && (TextUtils.isEmpty(localy.m)));
    for (boolean bool = false; ; bool = true)
      return bool;
  }

  private void k()
  {
    this.i = new aq(this, (byte)0);
    this.i.a(getString(2131428043));
    this.i.b(getString(2131428053));
    this.i.a(getString(2131428099), new g(this));
    this.i.b(getString(2131428206), null);
    this.i.c().show();
  }

  private void l()
  {
    float f1 = getResources().getDisplayMetrics().density;
    Log.i("----", String.valueOf(f1));
    if (f1 <= 1.5D)
      this.j.setPadding(8, 32, 9, 0);
    for (String str = "http://wap.wali.com/wapsrc/images/kingsoft30760.png"; ; str = "http://wap.wali.com/wapsrc/images/kingsoft46090.png")
    {
      this.q = new i(this, str);
      this.q.start();
      return;
    }
  }

  private static void m()
  {
    n.setVisibility(8);
    o.setVisibility(0);
    o.setBackgroundDrawable(p);
  }

  private boolean n()
  {
    NetworkInfo localNetworkInfo = ((ConnectivityManager)getSystemService("connectivity")).getActiveNetworkInfo();
    if ((localNetworkInfo != null) && (localNetworkInfo.isConnected()))
      this.r = localNetworkInfo.getType();
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  private static void o()
  {
    h.setEnabled(false);
    m.setHint(2131428212);
  }

  private void p()
  {
    PreferenceScreen localPreferenceScreen = a().a(this);
    a(localPreferenceScreen);
    Preference localPreference = new Preference(this);
    localPreference.b("运营商设置");
    y localy = y.a(this);
    String str;
    if ((localy.k.equals("")) || (localy.l.equals("")) || (localy.n.equals("")) || (localy.m.equals("")))
    {
      str = "";
      if (!str.equals(""))
        break label331;
      localPreference.a("未设置");
    }
    while (true)
    {
      localPreference.c(2130903092);
      localPreference.a(new j(this));
      localPreferenceScreen.c(localPreference);
      return;
      if (localy.k.split(",")[1].equals(localy.l.split(",")[1]))
      {
        str = localy.k.split(",")[1] + "," + localy.n.split(",")[1] + "," + localy.m.split(",")[1];
        break;
      }
      str = localy.k.split(",")[1] + "," + localy.l.split(",")[1] + "," + localy.n.split(",")[1] + "," + localy.m.split(",")[1];
      break;
      label331: localPreference.a(str);
    }
  }

  protected void onCreate(Bundle paramBundle)
  {
    requestWindowFeature(1);
    super.onCreate(paramBundle);
    setContentView(2130903261);
    g = getApplicationContext();
    f = c.a(getApplicationContext());
    y localy = y.a(this);
    int i1;
    if ((TextUtils.isEmpty(localy.k)) && (TextUtils.isEmpty(localy.l)) && (TextUtils.isEmpty(localy.n)) && (TextUtils.isEmpty(localy.m)))
    {
      i1 = 0;
      if ((i1 == 0) && (!this.a))
      {
        this.i = new aq(this, (byte)0);
        this.i.a(getString(2131428043));
        this.i.b(getString(2131428053));
        this.i.a(getString(2131428099), new g(this));
        this.i.b(getString(2131428206), null);
        this.i.c().show();
        this.a = true;
      }
      getListView().setBackgroundResource(2130838013);
      a.f(g, "1");
      TextView localTextView = (TextView)findViewById(2131231532);
      m = localTextView;
      localTextView.setHint(2131428207);
      n = (TextView)findViewById(2131231534);
      o = (ImageView)findViewById(2131231535);
      this.j = ((LinearLayout)findViewById(2131231533));
      n.setText(2131428208);
      o.setVisibility(8);
      if (!n())
        break label494;
      if (this.r != 1)
        break label392;
      l();
    }
    while (true)
    {
      o.setOnClickListener(new e(this));
      k = (TextView)findViewById(2131231529);
      l = (TextView)findViewById(2131231530);
      Button localButton = (Button)findViewById(2131231531);
      h = localButton;
      localButton.setOnClickListener(new f(this));
      c();
      return;
      i1 = 1;
      break;
      label392: if (System.currentTimeMillis() - f.f >= 259200000L)
      {
        l();
      }
      else
      {
        if (getResources().getDisplayMetrics().density <= 1.5D)
          this.j.setPadding(0, 32, 0, 0);
        p = new BitmapDrawable(getResources(), g.getCacheDir().getAbsolutePath() + "/zifeitong.jpg");
        m();
        continue;
        label494: if (getResources().getDisplayMetrics().density <= 1.5D)
          this.j.setPadding(0, 32, 0, 0);
        String str = g.getCacheDir().getAbsolutePath() + "/zifeitong.jpg";
        if (new File(str).exists())
        {
          p = new BitmapDrawable(getResources(), str);
          m();
        }
      }
    }
  }

  protected void onStart()
  {
    super.onStart();
    PreferenceScreen localPreferenceScreen = a().a(this);
    a(localPreferenceScreen);
    Preference localPreference = new Preference(this);
    localPreference.b("运营商设置");
    y localy1 = y.a(this);
    String str;
    if ((localy1.k.equals("")) || (localy1.l.equals("")) || (localy1.n.equals("")) || (localy1.m.equals("")))
    {
      str = "";
      if (!str.equals(""))
        break label422;
      localPreference.a("未设置");
      label114: localPreference.c(2130903092);
      localPreference.a(new j(this));
      localPreferenceScreen.c(localPreference);
      y localy2 = y.a(this);
      if ((this.a) && (!TextUtils.isEmpty(localy2.k)) && (!TextUtils.isEmpty(localy2.n)) && (!TextUtils.isEmpty(localy2.l)) && (!TextUtils.isEmpty(localy2.m)))
      {
        if (!TextUtils.isEmpty(((TelephonyManager)getSystemService("phone")).getSubscriberId()))
          break label431;
        Toast.makeText(this, 2131428048, 1).show();
      }
    }
    while (true)
    {
      return;
      if (localy1.k.split(",")[1].equals(localy1.l.split(",")[1]))
      {
        str = localy1.k.split(",")[1] + "," + localy1.n.split(",")[1] + "," + localy1.m.split(",")[1];
        break;
      }
      str = localy1.k.split(",")[1] + "," + localy1.l.split(",")[1] + "," + localy1.n.split(",")[1] + "," + localy1.m.split(",")[1];
      break;
      label422: localPreference.a(str);
      break label114;
      label431: dd.a(g, new k(this, "Rates"), 100L);
      this.a = false;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.rates.RatesRequestMainActivity
 * JD-Core Version:    0.6.2
 */