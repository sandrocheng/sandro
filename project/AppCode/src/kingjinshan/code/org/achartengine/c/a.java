package org.achartengine.c;

import org.achartengine.a.h;
import org.achartengine.renderer.XYMultipleSeriesRenderer;

public abstract class a
{
  protected org.achartengine.a.a a;
  protected XYMultipleSeriesRenderer b;

  public a(org.achartengine.a.a parama)
  {
    this.a = parama;
    if ((parama instanceof h))
      this.b = ((h)parama).e();
  }

  protected final void a(double paramDouble1, double paramDouble2, int paramInt)
  {
    this.b.setXAxisMin(paramDouble1, paramInt);
    this.b.setXAxisMax(paramDouble2, paramInt);
  }

  public final void a(double[] paramArrayOfDouble, int paramInt)
  {
    if ((this.a instanceof h))
    {
      double[] arrayOfDouble = ((h)this.a).a(paramInt);
      if (arrayOfDouble != null)
      {
        if (!this.b.isMinXSet(paramInt))
        {
          paramArrayOfDouble[0] = arrayOfDouble[0];
          this.b.setXAxisMin(paramArrayOfDouble[0], paramInt);
        }
        if (!this.b.isMaxXSet(paramInt))
        {
          paramArrayOfDouble[1] = arrayOfDouble[1];
          this.b.setXAxisMax(paramArrayOfDouble[1], paramInt);
        }
        if (!this.b.isMinYSet(paramInt))
        {
          paramArrayOfDouble[2] = arrayOfDouble[2];
          this.b.setYAxisMin(paramArrayOfDouble[2], paramInt);
        }
        if (!this.b.isMaxYSet(paramInt))
        {
          paramArrayOfDouble[3] = arrayOfDouble[3];
          this.b.setYAxisMax(paramArrayOfDouble[3], paramInt);
        }
      }
    }
  }

  public final double[] a(int paramInt)
  {
    return new double[] { this.b.getXAxisMin(paramInt), this.b.getXAxisMax(paramInt), this.b.getYAxisMin(paramInt), this.b.getYAxisMax(paramInt) };
  }

  protected final void b(double paramDouble1, double paramDouble2, int paramInt)
  {
    this.b.setYAxisMin(paramDouble1, paramInt);
    this.b.setYAxisMax(paramDouble2, paramInt);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     org.achartengine.c.a
 * JD-Core Version:    0.6.2
 */