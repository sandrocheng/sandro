package android.support.v4.view;

import android.database.DataSetObserver;

class ab extends DataSetObserver
  implements bj, bk
{
  private int b;

  private ab(PagerTitleStrip paramPagerTitleStrip)
  {
  }

  public void a(int paramInt)
  {
    if (this.b == 0)
    {
      this.a.a(this.a.a.c(), this.a.a.b());
      boolean bool = PagerTitleStrip.a(this.a) < 0.0F;
      float f = 0.0F;
      if (!bool)
        f = PagerTitleStrip.a(this.a);
      this.a.a(this.a.a.c(), f, true);
    }
  }

  public void a(int paramInt1, float paramFloat, int paramInt2)
  {
    if (paramFloat > 0.5F)
      paramInt1++;
    this.a.a(paramInt1, paramFloat, false);
  }

  public void a(x paramx1, x paramx2)
  {
    this.a.a(paramx1, paramx2);
  }

  public void b(int paramInt)
  {
    this.b = paramInt;
  }

  public void onChanged()
  {
    this.a.a(this.a.a.c(), this.a.a.b());
    boolean bool = PagerTitleStrip.a(this.a) < 0.0F;
    float f = 0.0F;
    if (!bool)
      f = PagerTitleStrip.a(this.a);
    this.a.a(this.a.a.c(), f, true);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     android.support.v4.view.ab
 * JD-Core Version:    0.6.2
 */