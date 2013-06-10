package org.antivirus.antitheft;

import android.content.Context;
import android.content.IntentFilter;
import org.antivirus.core.Engine;
import org.antivirus.core.EngineSettings;

public final class a
{
  public q a = new q();
  public z b;
  public j c;

  public a(Context paramContext, Engine paramEngine, EngineSettings paramEngineSettings)
  {
    Context localContext = paramContext.getApplicationContext();
    q localq = this.a;
    IntentFilter localIntentFilter = new IntentFilter("android.intent.action.SCREEN_OFF");
    localIntentFilter.addAction("android.intent.action.SCREEN_ON");
    localq.b = new r(localq);
    localContext.registerReceiver(localq.b, localIntentFilter);
    this.a.a(localContext);
    C2DMReceiver.a(localContext);
    this.b = new z();
    z localz = this.b;
    localz.a = localContext.getApplicationContext();
    localz.d = paramEngineSettings;
    localz.b = new Thread(new aa(localz));
    localz.b.start();
    this.c = new j(paramEngine, paramEngineSettings);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.antitheft.a
 * JD-Core Version:    0.6.2
 */