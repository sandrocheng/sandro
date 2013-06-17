package android.support.v4.app;

import android.view.View;

class f
  implements n
{
  f(Fragment paramFragment)
  {
  }

  public View a(int paramInt)
  {
    if (this.a.R == null)
      throw new IllegalStateException("Fragment does not have a view");
    return this.a.R.findViewById(paramInt);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     android.support.v4.app.f
 * JD-Core Version:    0.6.2
 */