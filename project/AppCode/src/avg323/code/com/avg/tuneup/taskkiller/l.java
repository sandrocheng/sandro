package com.avg.tuneup.taskkiller;

import android.graphics.drawable.AnimationDrawable;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import java.util.ArrayList;

class l
  implements Runnable
{
  l(h paramh, View paramView, ArrayList paramArrayList, int paramInt, b paramb)
  {
  }

  public void run()
  {
    this.e.b.addView(this.a);
    ImageView localImageView = (ImageView)this.b.get(this.c);
    AnimationDrawable localAnimationDrawable = (AnimationDrawable)localImageView.getTag();
    if (localAnimationDrawable != null)
      localAnimationDrawable.stop();
    localImageView.setImageDrawable(this.d.f);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avg.tuneup.taskkiller.l
 * JD-Core Version:    0.6.2
 */