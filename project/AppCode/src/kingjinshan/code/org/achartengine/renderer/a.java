package org.achartengine.renderer;

import android.graphics.Paint.Cap;
import android.graphics.Paint.Join;
import java.io.Serializable;

public final class a
  implements Serializable
{
  public static final a a = new a(Paint.Cap.BUTT, Paint.Join.MITER, 4.0F, null);
  public static final a b = new a(Paint.Cap.ROUND, Paint.Join.BEVEL, 10.0F, new float[] { 10.0F, 10.0F });
  public static final a c = new a(Paint.Cap.ROUND, Paint.Join.BEVEL, 5.0F, new float[] { 2.0F, 10.0F });
  private static final long d = -7261025947619562042L;
  private Paint.Cap e;
  private Paint.Join f;
  private float g;
  private float[] h;
  private float i;

  private a(Paint.Cap paramCap, Paint.Join paramJoin, float paramFloat, float[] paramArrayOfFloat)
  {
    this.e = paramCap;
    this.f = paramJoin;
    this.g = paramFloat;
    this.h = paramArrayOfFloat;
  }

  public final Paint.Cap a()
  {
    return this.e;
  }

  public final Paint.Join b()
  {
    return this.f;
  }

  public final float c()
  {
    return this.g;
  }

  public final float[] d()
  {
    return this.h;
  }

  public final float e()
  {
    return this.i;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     org.achartengine.renderer.a
 * JD-Core Version:    0.6.2
 */