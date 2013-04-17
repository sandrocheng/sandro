import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import com.tencent.qqpimsecure.service.QQPimApplication;
import com.tencent.qqpimsecure.ui.activity.market.SoftwareDetailActivity;
import com.tencent.tmsecure.module.software.AppEntity;
import java.io.File;
import java.util.List;

public final class kw extends AppEntity
  implements Cloneable
{
  public static String[] a;
  public static String[] b;
  private boolean A = false;
  private Object B;
  private String C = null;
  private String D;
  private String E;
  private String F;
  private long G;
  private long H;
  private long I;
  private int J;
  private int K;
  private int L;
  private int M;
  private String N = "";
  private String O = "";
  private String P = "";
  private String Q;
  private String R;
  private String S;
  private int T;
  private long U;
  private List<File> V;
  private int W;
  private boolean c;
  private int d = -1;
  private String e = "";
  private float f = 0.0F;
  private String g = "";
  private int h = 0;
  private String i = "";
  private int j = 0;
  private boolean k = false;
  private int l = -1;
  private int m;
  private String n = "";
  private int o;
  private int p = -1;
  private String q;
  private boolean r;
  private String s;
  private String t;
  private int u = 0;
  private long v;
  private long w;
  private long x;
  private int y = -1;
  private boolean z;

  static
  {
    String[] arrayOfString1 = new String[13];
    arrayOfString1[0] = "";
    arrayOfString1[1] = QQPimApplication.a().getResources().getString(2131428590);
    arrayOfString1[2] = QQPimApplication.a().getResources().getString(2131428591);
    arrayOfString1[3] = QQPimApplication.a().getResources().getString(2131428592);
    arrayOfString1[4] = QQPimApplication.a().getResources().getString(2131428595);
    arrayOfString1[5] = QQPimApplication.a().getResources().getString(2131428596);
    arrayOfString1[6] = QQPimApplication.a().getResources().getString(2131428598);
    arrayOfString1[7] = QQPimApplication.a().getResources().getString(2131428599);
    arrayOfString1[8] = QQPimApplication.a().getResources().getString(2131428600);
    arrayOfString1[9] = QQPimApplication.a().getResources().getString(2131428593);
    arrayOfString1[10] = "";
    arrayOfString1[11] = QQPimApplication.a().getResources().getString(2131428594);
    arrayOfString1[12] = QQPimApplication.a().getResources().getString(2131429616);
    a = arrayOfString1;
    String[] arrayOfString2 = new String[5];
    arrayOfString2[0] = QQPimApplication.a().getResources().getString(2131429644);
    arrayOfString2[1] = QQPimApplication.a().getResources().getString(2131429645);
    arrayOfString2[2] = QQPimApplication.a().getResources().getString(2131429646);
    arrayOfString2[3] = QQPimApplication.a().getResources().getString(2131429647);
    arrayOfString2[4] = QQPimApplication.a().getResources().getString(2131429570);
    b = arrayOfString2;
    new int[] { 2131296257, 2131296257, 2131296257, 2131296265, 2131296257, 2131296257, 2131296257, 2131296257 };
  }

  public kw()
  {
  }

  public kw(AppEntity paramAppEntity)
  {
    setSystemFlag(paramAppEntity.isSystemApp());
    setApkFlag(paramAppEntity.isApk());
    int i1 = paramAppEntity.getVersionCode();
    super.setVersionCode(i1);
    this.o = i1;
    setVersion(paramAppEntity.getVersion());
    setSize(paramAppEntity.getSize());
    setPackageName(paramAppEntity.getPackageName());
    setPermissions(paramAppEntity.getPermissions());
    setCompany(paramAppEntity.getCompany());
    setCertMD5(paramAppEntity.getCertMD5());
    setApkPath(paramAppEntity.getApkPath());
    setAppName(paramAppEntity.getAppName());
    setIcon(paramAppEntity.getIcon());
    setLastModifiedTime(paramAppEntity.getLastModifiedTime());
  }

  public static Intent a(kw paramkw, int paramInt1, int paramInt2)
  {
    Intent localIntent = new Intent();
    localIntent.setClass(QQPimApplication.a(), SoftwareDetailActivity.class);
    localIntent.putExtra("key_pkg_name", paramkw.getPackageName());
    localIntent.putExtra("key_soft_name", paramkw.getAppName());
    localIntent.putExtra("key_cert_md5", paramkw.getCertMD5());
    localIntent.putExtra("key_soft_version_code", paramkw.getVersionCode());
    localIntent.putExtra("key_apk_size", paramkw.getSize());
    if (paramInt1 == 0);
    for (String str = paramkw.n; ; str = paramkw.getVersion())
    {
      localIntent.putExtra("key_soft_version", str);
      localIntent.putExtra("key_category_id", paramInt1);
      localIntent.putExtra("key_pos", paramInt2);
      localIntent.putExtra("key_publish_time", paramkw.D);
      localIntent.putExtra("key_source_content", paramkw.R);
      localIntent.putExtra("key_appid", paramkw.T);
      localIntent.addFlags(268435456);
      return localIntent;
    }
  }

  public static void a(Context paramContext, kw paramkw, int paramInt)
  {
    paramContext.startActivity(a(paramkw, paramInt, 0));
  }

  public static void a(Context paramContext, kw paramkw, int paramInt1, int paramInt2)
  {
    paramContext.startActivity(a(paramkw, paramInt1, paramInt2));
  }

  public static void u()
  {
  }

  public static void w()
  {
  }

  public final Object A()
  {
    return this.B;
  }

  public final String B()
  {
    return this.C;
  }

  public final String C()
  {
    return this.D;
  }

  public final int D()
  {
    return this.o;
  }

  public final String E()
  {
    return this.E;
  }

  public final String F()
  {
    return this.F;
  }

  public final long G()
  {
    return this.G;
  }

  public final long H()
  {
    return this.H;
  }

  public final long I()
  {
    return this.I;
  }

  public final int J()
  {
    return this.J;
  }

  public final int K()
  {
    return this.K;
  }

  public final int L()
  {
    return this.M;
  }

  public final String M()
  {
    return this.N;
  }

  public final String N()
  {
    return this.O;
  }

  public final String O()
  {
    return this.P;
  }

  public final String P()
  {
    return this.Q;
  }

  public final String Q()
  {
    return this.R;
  }

  public final String R()
  {
    return this.S;
  }

  public final long S()
  {
    return this.U;
  }

  public final List<File> T()
  {
    return this.V;
  }

  public final int U()
  {
    return this.W;
  }

  public final int V()
  {
    return this.L;
  }

  public final long a()
  {
    return this.x;
  }

  public final void a(float paramFloat)
  {
    this.f = paramFloat;
  }

  public final void a(int paramInt)
  {
    this.m = paramInt;
  }

  public final void a(long paramLong)
  {
    this.x = paramLong;
  }

  public final void a(Object paramObject)
  {
    this.B = paramObject;
  }

  public final void a(String paramString)
  {
    this.n = paramString;
  }

  public final void a(List<File> paramList)
  {
    this.V = paramList;
  }

  public final void a(boolean paramBoolean)
  {
    this.c = paramBoolean;
  }

  public final long b()
  {
    return this.w;
  }

  public final void b(int paramInt)
  {
    this.l = paramInt;
  }

  public final void b(long paramLong)
  {
    this.w = paramLong;
  }

  public final void b(String paramString)
  {
    this.i = paramString;
  }

  public final void b(boolean paramBoolean)
  {
    this.r = paramBoolean;
  }

  public final long c()
  {
    return this.v;
  }

  public final void c(int paramInt)
  {
    this.j = paramInt;
  }

  public final void c(long paramLong)
  {
    this.v = paramLong;
  }

  public final void c(String paramString)
  {
    this.e = paramString;
  }

  public final void c(boolean paramBoolean)
  {
    this.z = paramBoolean;
  }

  public final Object clone()
    throws CloneNotSupportedException
  {
    return super.clone();
  }

  public final String d()
  {
    return this.n;
  }

  public final void d(int paramInt)
  {
    this.h = paramInt;
    if (paramInt == 1)
      this.d = 3;
  }

  public final void d(long paramLong)
  {
    this.G = paramLong;
  }

  public final void d(String paramString)
  {
    this.g = paramString;
  }

  public final int e()
  {
    return this.m;
  }

  public final void e(int paramInt)
  {
    this.d = paramInt;
  }

  public final void e(long paramLong)
  {
    this.H = paramLong;
  }

  public final void e(String paramString)
  {
    this.q = paramString;
  }

  public final boolean equals(Object paramObject)
  {
    boolean bool1 = false;
    if (paramObject == null);
    while (true)
    {
      return bool1;
      boolean bool2 = paramObject instanceof kw;
      bool1 = false;
      if (bool2)
      {
        kw localkw = (kw)paramObject;
        if (isApk())
        {
          String str3 = localkw.getApkPath();
          bool1 = false;
          if (str3 != null)
          {
            String str4 = getApkPath();
            bool1 = false;
            if (str4 != null)
            {
              int i3 = getApkPath().toLowerCase().hashCode();
              int i4 = localkw.getApkPath().toLowerCase().hashCode();
              bool1 = false;
              if (i3 == i4)
                bool1 = true;
            }
          }
        }
        else
        {
          String str1 = getPackageName();
          bool1 = false;
          if (str1 != null)
          {
            String str2 = localkw.getPackageName();
            bool1 = false;
            if (str2 != null)
            {
              int i1 = getPackageName().hashCode();
              int i2 = localkw.getPackageName().hashCode();
              bool1 = false;
              if (i1 == i2)
              {
                boolean bool3 = this.k;
                boolean bool4 = localkw.k;
                bool1 = false;
                if (bool3 == bool4)
                  bool1 = true;
              }
            }
          }
        }
      }
    }
  }

  public final int f()
  {
    return this.l;
  }

  public final void f(int paramInt)
  {
    this.p = paramInt;
  }

  public final void f(long paramLong)
  {
    this.I = paramLong;
  }

  public final void f(String paramString)
  {
    this.s = paramString;
  }

  public final int g()
  {
    return this.j;
  }

  public final void g(int paramInt)
  {
    if ((paramInt > 2) && (paramInt < 0));
    while (true)
    {
      return;
      this.u = paramInt;
    }
  }

  public final void g(long paramLong)
  {
    this.U = paramLong;
  }

  public final void g(String paramString)
  {
    this.t = paramString;
  }

  public final String h()
  {
    return this.i;
  }

  public final void h(int paramInt)
  {
    this.y = paramInt;
  }

  public final void h(String paramString)
  {
    this.C = paramString;
  }

  public final int i()
  {
    return this.h;
  }

  public final void i(int paramInt)
  {
    this.o = paramInt;
  }

  public final void i(String paramString)
  {
    this.D = paramString;
  }

  public final String j()
  {
    if (this.d != -1)
      this.e = a[this.d];
    return this.e;
  }

  public final void j(int paramInt)
  {
    this.J = paramInt;
  }

  public final void j(String paramString)
  {
    this.E = paramString;
  }

  public final String k()
  {
    return this.g;
  }

  public final void k(int paramInt)
  {
    this.K = paramInt;
  }

  public final void k(String paramString)
  {
    this.F = paramString;
  }

  public final float l()
  {
    return this.f;
  }

  public final void l(int paramInt)
  {
    this.M = paramInt;
  }

  public final void l(String paramString)
  {
    this.N = paramString;
  }

  public final void m(int paramInt)
  {
    this.T = paramInt;
  }

  public final void m(String paramString)
  {
    this.O = paramString;
  }

  public final boolean m()
  {
    return this.c;
  }

  public final int n()
  {
    return this.d;
  }

  public final void n(int paramInt)
  {
    this.W = paramInt;
  }

  public final void n(String paramString)
  {
    this.P = paramString;
  }

  public final int o()
  {
    return this.p;
  }

  public final void o(int paramInt)
  {
    this.L = paramInt;
  }

  public final void o(String paramString)
  {
    this.Q = paramString;
  }

  public final String p()
  {
    if (this.q == null);
    for (String str = ""; ; str = this.q)
      return str;
  }

  public final void p(String paramString)
  {
    this.R = paramString;
  }

  public final String q()
  {
    return this.s;
  }

  public final void q(String paramString)
  {
    this.S = paramString;
  }

  public final String r()
  {
    return this.t;
  }

  public final boolean s()
  {
    return this.r;
  }

  public final void setVersionCode(int paramInt)
  {
    super.setVersionCode(paramInt);
    this.o = paramInt;
  }

  public final int t()
  {
    return this.u;
  }

  public final int v()
  {
    return this.y;
  }

  public final boolean x()
  {
    return this.z;
  }

  public final boolean y()
  {
    return this.A;
  }

  public final void z()
  {
    this.A = true;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     kw
 * JD-Core Version:    0.6.2
 */