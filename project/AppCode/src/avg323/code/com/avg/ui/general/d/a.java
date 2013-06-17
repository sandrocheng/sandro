package com.avg.ui.general.d;

import android.content.ComponentName;
import android.os.Bundle;
import android.os.IBinder;
import android.support.v4.app.Fragment;
import com.avg.ui.general.c;
import com.avg.ui.general.d;
import com.avg.ui.general.e;
import com.avg.ui.general.g;

public abstract class a extends com.avg.ui.general.a.a
{
  private Fragment n = null;

  protected void a(ComponentName paramComponentName, IBinder paramIBinder)
  {
    this.n = new b();
    a(this.n, d.middle_part, "HelpFragment");
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(e.fragment_activity);
    a(true, c.ab_ic_help, c.ab_ic_help_p, getString(g.help_preference), false, d.header);
    p();
  }

  protected void onDestroy()
  {
    q();
    super.onDestroy();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avg.ui.general.d.a
 * JD-Core Version:    0.6.2
 */