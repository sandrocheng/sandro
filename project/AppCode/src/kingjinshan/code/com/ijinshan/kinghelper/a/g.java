package com.ijinshan.kinghelper.a;

import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.os.Message;
import android.widget.ImageView;
import java.lang.ref.SoftReference;
import java.util.HashMap;

final class g extends Handler
{
  g(f paramf, ImageView paramImageView, String paramString)
  {
  }

  public final void handleMessage(Message paramMessage)
  {
    if (this.a == null);
    while (true)
    {
      return;
      this.a.setImageDrawable((Drawable)paramMessage.obj);
      f.a(this.c).put(this.b, new SoftReference((Drawable)paramMessage.obj));
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.kinghelper.a.g
 * JD-Core Version:    0.6.2
 */