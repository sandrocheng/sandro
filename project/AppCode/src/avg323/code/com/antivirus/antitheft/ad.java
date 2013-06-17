package com.antivirus.antitheft;

import android.content.Context;
import android.media.AudioManager;
import android.media.SoundPool;
import com.avg.toolkit.f.a;
import java.util.HashMap;

public class ad
{
  private SoundPool a;
  private AudioManager b;
  private HashMap c;

  public ad(Context paramContext)
  {
    try
    {
      this.b = ((AudioManager)paramContext.getSystemService("audio"));
      this.a = new SoundPool(8, 3, 100);
      this.c = new HashMap();
      this.c.put(Integer.valueOf(2131034114), Integer.valueOf(this.a.load(paramContext, 2131034114, 1)));
      return;
    }
    catch (Exception localException)
    {
      while (true)
        a.a(localException);
    }
  }

  public void a(int paramInt)
  {
    Integer localInteger;
    if (this.c != null)
    {
      localInteger = (Integer)this.c.get(Integer.valueOf(paramInt));
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
        a.a(localException);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.antitheft.ad
 * JD-Core Version:    0.6.2
 */