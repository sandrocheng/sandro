package android.support.v4.a;

import android.content.ComponentName;
import android.content.Intent;
import android.os.Build.VERSION;

public class g
{
  private static final h a;

  static
  {
    int i = Build.VERSION.SDK_INT;
    if (i >= 15)
      a = new k();
    while (true)
    {
      return;
      if (i >= 11)
        a = new j();
      else
        a = new i();
    }
  }

  public static Intent a(ComponentName paramComponentName)
  {
    return a.a(paramComponentName);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     android.support.v4.a.g
 * JD-Core Version:    0.6.2
 */