package com.avast.android.generic.app.about;

import android.os.Handler;
import com.avast.android.generic.ui.widget.SlideBlock;
import com.avast.android.generic.ui.widget.y;
import com.avast.android.generic.z;

class c
  implements y
{
  c(AboutFragment paramAboutFragment, SlideBlock paramSlideBlock, Handler paramHandler, float paramFloat)
  {
  }

  public void a(SlideBlock paramSlideBlock)
  {
    this.d.a("ms-About", "eulaText", "show", 0L);
    this.a.a(this.d.getString(z.bV));
    this.b.sendMessageDelayed(this.b.obtainMessage(1, (int)(100.0F * this.c), 500), 300L);
  }

  public void b(SlideBlock paramSlideBlock)
  {
    this.d.a("ms-About", "eulaText", "hide", 0L);
    this.a.a(this.d.getString(z.aV));
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.app.about.c
 * JD-Core Version:    0.6.2
 */