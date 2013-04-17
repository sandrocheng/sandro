package com.tencent.powermanager.uilib.view.fireflyView;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Matrix;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.widget.ImageView;

public class FireflyPointView extends ImageView
{
  public int a;
  public int b;
  private final double c;
  private Animation d = null;

  public FireflyPointView(Context paramContext)
  {
    super(paramContext);
    double d1 = Math.random();
    if (d1 < 0.5D)
      d1 += 0.5D;
    this.c = d1;
    Bitmap localBitmap = BitmapFactory.decodeResource(paramContext.getResources(), 2130837798);
    this.a = localBitmap.getWidth();
    this.b = localBitmap.getHeight();
    Matrix localMatrix = new Matrix();
    localMatrix.postScale((float)this.c, (float)this.c);
    setImageBitmap(Bitmap.createBitmap(localBitmap, 0, 0, this.a, this.b, localMatrix, true));
  }

  public final void a()
  {
    this.d = new AlphaAnimation(1.0F, 0.3F);
    this.d.setDuration(2000L);
    this.d.setRepeatMode(2);
    this.d.setRepeatCount(-1);
    startAnimation(this.d);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.tencent.powermanager.uilib.view.fireflyView.FireflyPointView
 * JD-Core Version:    0.6.2
 */