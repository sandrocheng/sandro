package com.keniu.security.importx;

import android.graphics.Bitmap;
import android.widget.BaseAdapter;
import com.jxphone.mosecurity.c.b;
import com.keniu.security.commumgr.a.t;

public abstract class k extends BaseAdapter
  implements l
{
  public final void b()
  {
    int i = getCount();
    for (int j = 0; j < i; j++)
    {
      Bitmap localBitmap = b(j).g();
      if (localBitmap != null)
        localBitmap.recycle();
    }
    System.gc();
  }

  public t d(int paramInt)
  {
    return null;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.importx.k
 * JD-Core Version:    0.6.2
 */