package com.tencent.qqpimsecure.uilib.service;

import android.os.Handler;
import android.os.Message;
import java.util.List;
import ld;
import lx;
import qt;
import uf;

class ColorEggManager$2
  implements Runnable
{
  ColorEggManager$2(ColorEggManager paramColorEggManager, boolean paramBoolean, int paramInt, long paramLong)
  {
  }

  public void run()
  {
    lx locallx = uf.a(ColorEggManager.access$000(this.this$0)).a();
    int i;
    if (!this.val$isNeedCheck)
    {
      String str3 = ColorEggManager.access$200(this.this$0, this.val$killCount, this.val$ram, false);
      ColorEggManager.access$300(this.this$0, this.val$killCount, this.val$ram, str3, false);
      i = 1;
    }
    while (true)
    {
      String str1;
      boolean bool;
      if (i == 0)
      {
        if (locallx == null)
          break label513;
        if (!this.this$0.isPassCheck())
          break label473;
        this.this$0.setPassCheck(false);
        if ((ColorEggManager.access$100(this.this$0) == 0L) || (System.currentTimeMillis() - ColorEggManager.access$100(this.this$0) >= 1800000L))
          break label449;
        if (locallx.d == null)
          break label425;
        ColorEggManager.access$600(this.this$0, locallx);
        str1 = null;
        ColorEggManager.ColorEggDialogInfoHolder localColorEggDialogInfoHolder1 = new ColorEggManager.ColorEggDialogInfoHolder(this.this$0);
        localColorEggDialogInfoHolder1.entity = locallx;
        localColorEggDialogInfoHolder1.killCount = this.val$killCount;
        localColorEggDialogInfoHolder1.ram = this.val$ram;
        Message localMessage1 = ColorEggManager.access$500(this.this$0).obtainMessage();
        localMessage1.what = 14;
        localMessage1.obj = localColorEggDialogInfoHolder1;
        localMessage1.sendToTarget();
        bool = true;
      }
      while (true)
      {
        ColorEggManager.access$300(this.this$0, this.val$killCount, this.val$ram, str1, bool);
        ColorEggManager.access$500(this.this$0).sendEmptyMessage(15);
        ColorEggManager.access$500(this.this$0).sendEmptyMessage(17);
        return;
        if (ColorEggManager.access$400(this.this$0).b() == null)
          break label537;
        ld localld = (ld)ColorEggManager.access$400(this.this$0).b().get(0);
        if ((localld == null) || (localld.e))
          break label537;
        String str2 = ColorEggManager.access$200(this.this$0, this.val$killCount, this.val$ram, false);
        ColorEggManager.access$300(this.this$0, this.val$killCount, this.val$ram, str2, false);
        localld.e = true;
        ColorEggManager.access$400(this.this$0).a(localld);
        ColorEggManager.ColorEggDialogInfoHolder localColorEggDialogInfoHolder2 = new ColorEggManager.ColorEggDialogInfoHolder(this.this$0);
        localColorEggDialogInfoHolder2.entity = localld;
        localColorEggDialogInfoHolder2.killCount = this.val$killCount;
        localColorEggDialogInfoHolder2.ram = this.val$ram;
        Message localMessage2 = ColorEggManager.access$500(this.this$0).obtainMessage();
        localMessage2.what = 13;
        localMessage2.obj = localColorEggDialogInfoHolder2;
        localMessage2.sendToTarget();
        i = 1;
        break;
        label425: str1 = ColorEggManager.access$200(this.this$0, this.val$killCount, this.val$ram, true);
        bool = false;
        continue;
        label449: str1 = ColorEggManager.access$200(this.this$0, this.val$killCount, this.val$ram, true);
        bool = false;
        continue;
        try
        {
          label473: Thread.sleep(200L);
          str1 = ColorEggManager.access$200(this.this$0, this.val$killCount, this.val$ram, true);
          bool = false;
        }
        catch (InterruptedException localInterruptedException)
        {
          while (true)
            localInterruptedException.printStackTrace();
        }
        label513: str1 = ColorEggManager.access$200(this.this$0, this.val$killCount, this.val$ram, true);
        bool = false;
      }
      label537: i = 0;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.uilib.service.ColorEggManager.2
 * JD-Core Version:    0.6.2
 */