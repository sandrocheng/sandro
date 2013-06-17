package com.antivirus.ui.main;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import com.antivirus.c;
import com.antivirus.ui.tablet.DualPaneActivity;
import com.avg.toolkit.f.a;
import com.avg.ui.general.o;

public class AntivirusMainScreen extends Activity
{
  String a = null;

  public static Class a()
  {
    Object localObject;
    if (c.e())
      localObject = ActivationActivity.class;
    while (true)
    {
      return localObject;
      if (o.c())
        localObject = DualPaneActivity.class;
      else
        localObject = HandheldMainActivity.class;
    }
  }

  private void a(Class paramClass)
  {
    try
    {
      Intent localIntent = new Intent(this, paramClass);
      localIntent.putExtra("lcc", this.a);
      localIntent.setFlags(536870912);
      startActivity(localIntent);
      finish();
      return;
    }
    catch (Exception localException)
    {
      while (true)
        a.a(localException);
    }
  }

  protected void onCreate(Bundle paramBundle)
  {
    requestWindowFeature(1);
    super.onCreate(paramBundle);
    this.a = getIntent().getStringExtra("lcc");
    a(a());
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.ui.main.AntivirusMainScreen
 * JD-Core Version:    0.6.2
 */