package org.antivirus.ui.performance;

import android.graphics.drawable.AnimationDrawable;
import android.widget.ImageView;
import java.util.ArrayList;

final class n
  implements Runnable
{
  n(j paramj, ArrayList paramArrayList, int paramInt, o paramo)
  {
  }

  public final void run()
  {
    ImageView localImageView = (ImageView)this.a.get(this.b);
    AnimationDrawable localAnimationDrawable = (AnimationDrawable)localImageView.getTag();
    if (localAnimationDrawable != null)
      localAnimationDrawable.stop();
    localImageView.setImageDrawable(this.c.c);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.ui.performance.n
 * JD-Core Version:    0.6.2
 */