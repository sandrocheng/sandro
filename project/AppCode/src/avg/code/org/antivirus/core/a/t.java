package org.antivirus.core.a;

import org.antivirus.core.Engine;
import org.antivirus.core.Logger;

public final class t
{
  public static void a(Engine paramEngine)
  {
    try
    {
      paramEngine.sendCommMessage(1001, null);
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
 * Qualified Name:     org.antivirus.core.a.t
 * JD-Core Version:    0.6.2
 */