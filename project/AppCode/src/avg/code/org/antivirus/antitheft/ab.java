package org.antivirus.antitheft;

import android.content.Context;
import android.media.AudioManager;
import android.media.SoundPool;
import java.util.HashMap;
import org.antivirus.core.Logger;

public final class ab
{
  private SoundPool a;
  private AudioManager b;
  private HashMap c;

  public ab(Context paramContext)
  {
    try
    {
      this.b = ((AudioManager)paramContext.getSystemService("audio"));
      this.a = new SoundPool(8, 3, 100);
      this.c = new HashMap();
      this.c.put(Integer.valueOf(2131034113), Integer.valueOf(this.a.load(paramContext, 2131034113, 1)));
      return;
    }
    catch (Exception localException)
    {
      while (true)
        Logger.log(localException);
    }
  }

  public final void a()
  {
    Integer localInteger;
    if (this.c != null)
    {
      localInteger = (Integer)this.c.get(Integer.valueOf(2131034113));
      if (localInteger != null)
        if (this.b != null)
        {
          this.b.setRingerMode(2);
          this.b.setStreamVolume(3, this.b.getStreamMaxVolume(3), 0);
        }
    }
    try
    {
      if (this.a != null)
        this.a.play(localInteger.intValue(), 1.0F, 1.0F, 1, 5, 1.0F);
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
 * Qualified Name:     org.antivirus.antitheft.ab
 * JD-Core Version:    0.6.2
 */