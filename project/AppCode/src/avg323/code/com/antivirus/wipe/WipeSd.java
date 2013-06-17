package com.antivirus.wipe;

import android.os.Bundle;
import android.support.v4.app.Fragment;
import com.antivirus.m;
import com.antivirus.ui.a;

public class WipeSd extends a
{
  private Fragment n = null;

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903080);
    a(true, 2130837939, 2130837938, m.a(this, 2131296606), false);
    this.n = new ab();
    a(this.n, 2131230929, "WipeSdFragment");
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.wipe.WipeSd
 * JD-Core Version:    0.6.2
 */