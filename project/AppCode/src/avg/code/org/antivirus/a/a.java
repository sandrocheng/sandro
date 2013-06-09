package org.antivirus.a;

import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import java.io.File;
import org.antivirus.AVService;
import org.antivirus.core.Engine;
import org.antivirus.core.Logger;

public final class a
{
  public h a;
  public Handler b;
  public Context c;

  public a(Context paramContext, Handler paramHandler)
  {
    this.b = paramHandler;
    this.c = paramContext;
    if (paramContext == null)
      Logger.error("initialized with null context");
    if (paramHandler == null)
      Logger.error("initialized with null handler");
  }

  public static void a(Context paramContext, Engine paramEngine)
  {
    if (paramEngine != null);
    try
    {
      paramEngine.sendCommMessage(1121, null);
      return;
      if (paramContext != null)
      {
        Intent localIntent = new Intent(paramContext, AVService.class);
        localIntent.putExtra("__SAC", 7);
        localIntent.putExtra("__SAD", 1121);
        paramContext.startService(localIntent);
      }
    }
    catch (Exception localException)
    {
      Logger.log(localException);
    }
    Logger.errorBadAgrument();
  }

  public static void a(File paramFile)
  {
    File[] arrayOfFile = paramFile.listFiles(new b());
    if (arrayOfFile != null)
    {
      int i = arrayOfFile.length;
      for (int j = 0; j < i; j++)
        arrayOfFile[j].delete();
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.a.a
 * JD-Core Version:    0.6.2
 */