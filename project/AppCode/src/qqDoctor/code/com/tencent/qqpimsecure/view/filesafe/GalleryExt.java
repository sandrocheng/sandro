package com.tencent.qqpimsecure.view.filesafe;

import ajn;
import android.content.Context;
import android.content.res.Resources;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.widget.Gallery;
import ha;

public class GalleryExt extends Gallery
{
  private boolean a = false;
  private boolean b = false;

  public GalleryExt(Context paramContext)
  {
    super(paramContext);
  }

  public GalleryExt(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }

  public boolean onFling(MotionEvent paramMotionEvent1, MotionEvent paramMotionEvent2, float paramFloat1, float paramFloat2)
  {
    ajn localajn = (ajn)getAdapter();
    int i = localajn.a();
    int j = localajn.getCount();
    int k;
    if (paramMotionEvent2.getX() > paramMotionEvent1.getX())
    {
      k = 1;
      if (k == 0)
        break label112;
      if ((i != 0) || (!this.a))
        break label91;
      ha.b(getContext(), getResources().getString(2131429905));
    }
    int m;
    while (true)
    {
      m = 21;
      onKeyDown(m, null);
      return true;
      k = 0;
      break;
      label91: if (i == 0)
        this.a = true;
      else
        this.b = false;
    }
    label112: if ((i == j - 1) && (this.b))
      ha.b(getContext(), getResources().getString(2131429906));
    while (true)
    {
      m = 22;
      break;
      if (i == j - 1)
        this.b = true;
      else
        this.a = false;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.view.filesafe.GalleryExt
 * JD-Core Version:    0.6.2
 */