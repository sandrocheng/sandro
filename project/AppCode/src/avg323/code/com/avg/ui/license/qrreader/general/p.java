package com.avg.ui.license.qrreader.general;

import com.google.zxing.ResultPoint;
import com.google.zxing.ResultPointCallback;

final class p
  implements ResultPointCallback
{
  private final ViewfinderView a;

  p(ViewfinderView paramViewfinderView)
  {
    this.a = paramViewfinderView;
  }

  public void foundPossibleResultPoint(ResultPoint paramResultPoint)
  {
    this.a.a(paramResultPoint);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avg.ui.license.qrreader.general.p
 * JD-Core Version:    0.6.2
 */