package org.antivirus.ui.performance;

import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.LinearLayout;
import java.util.HashMap;
import org.antivirus.AVSettings;
import org.antivirus.Strings;
import org.antivirus.core.Logger;
import org.antivirus.ui.BaseToolActivity;
import org.antivirus.ui.main.ActivationActivity;

public class TaskKiller extends BaseToolActivity
{
  private final int a = 60000;
  private long b = 0L;
  private HashMap c = new HashMap();
  private p d;

  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    if (1 == paramInt1)
      if (paramInt2 == 0)
        finish();
    while (true)
    {
      super.onActivityResult(paramInt1, paramInt2, paramIntent);
      return;
      if ((2 == paramInt1) && (-1 == paramInt2))
        finish();
    }
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.d = new p(getPackageName());
    setContentView(2130903093);
    findViewById(2131230973).setVisibility(8);
    a(true, 2130837536, 2130837537, Strings.getString(2131296353), false);
    findViewById(2131230977).setVisibility(8);
    findViewById(2131230975).setVisibility(8);
    this.c.put("com.android.launcher", Boolean.valueOf(true));
    this.c.put("com.android.launcher2", Boolean.valueOf(true));
    this.c.put("com.htc.launcher", Boolean.valueOf(true));
    this.c.put("com.htc.android.mail", Boolean.valueOf(true));
    this.c.put(getPackageName(), Boolean.valueOf(true));
    p.a();
    new Thread(new j(this, LayoutInflater.from(this), (LinearLayout)((LinearLayout)findViewById(2131230976)).findViewById(2131230978))).start();
    findViewById(2131230979).setVisibility(8);
    if (AVSettings.shouldShowActivationScreen());
    try
    {
      startActivityForResult(new Intent(this, ActivationActivity.class), 1);
      return;
    }
    catch (Exception localException)
    {
      while (true)
        Logger.log(localException);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.ui.performance.TaskKiller
 * JD-Core Version:    0.6.2
 */