package com.avg.toolkit.b;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import java.net.URI;

public class h
{
  private SharedPreferences a;
  private Context b = null;

  public h(Context paramContext)
  {
    this.a = paramContext.getApplicationContext().getSharedPreferences("av", 0);
    if ((com.avg.toolkit.d.a.a(paramContext)) && (!e()))
      d();
    this.b = paramContext;
  }

  private void d()
  {
    a("use_aws_server", true);
  }

  private boolean e()
  {
    return this.a.getBoolean("use_aws_server", false);
  }

  public j a(com.avg.toolkit.e.a parama, String paramString)
  {
    PackageInfo localPackageInfo = this.b.getPackageManager().getPackageInfo(this.b.getPackageName(), 0);
    if (parama != null);
    for (j localj = new j(a(), parama.o, parama.p, paramString, localPackageInfo.versionName, Integer.toString(localPackageInfo.versionCode)); ; localj = new j(a(), 0, 0, paramString, localPackageInfo.versionName, Integer.toString(localPackageInfo.versionCode)))
      return localj;
  }

  public URI a()
  {
    if (e());
    for (String str = "https://aws.droidsecurity.com/xmlrpc"; ; str = "https://droidsecurity.appspot.com/secure/xmlrpc")
      return new URI(str);
  }

  public void a(String paramString, boolean paramBoolean)
  {
    SharedPreferences.Editor localEditor = this.a.edit();
    localEditor.putBoolean(paramString, paramBoolean);
    localEditor.commit();
  }

  public String b()
  {
    if (e());
    for (String str = "https://aws.droidsecurity.com"; ; str = "https://droidsecurity.appspot.com")
      return str;
  }

  public String c()
  {
    if (e());
    for (String str = "http://aws.droidsecurity.com"; ; str = "https://droidsecurity.appspot.com")
      return str;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avg.toolkit.b.h
 * JD-Core Version:    0.6.2
 */