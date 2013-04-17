package com.tencent.qqpimsecure.uilib.service;

import lx;
import uf;

class ColorEggManager$1
  implements Runnable
{
  ColorEggManager$1(ColorEggManager paramColorEggManager)
  {
  }

  public void run()
  {
    uf localuf = uf.a(ColorEggManager.access$000(this.this$0));
    lx locallx = localuf.a();
    if (locallx != null)
    {
      boolean bool = localuf.a(locallx);
      if (bool)
        ColorEggManager.access$102(this.this$0, System.currentTimeMillis());
      this.this$0.setPassCheck(bool);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.uilib.service.ColorEggManager.1
 * JD-Core Version:    0.6.2
 */