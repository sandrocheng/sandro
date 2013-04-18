package com.ijinshan.kinghelper.a;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.widget.ImageView;
import java.lang.ref.SoftReference;
import java.util.HashMap;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

public final class f
{
  private static f c = null;
  public ExecutorService a = Executors.newFixedThreadPool(3);
  private HashMap b;
  private Context d;

  private f(Context paramContext)
  {
    this.d = paramContext.getApplicationContext();
    this.b = new HashMap();
  }

  public static f a(Context paramContext)
  {
    if (c == null)
      c = new f(paramContext);
    return c;
  }

  public final Drawable a(String paramString, ImageView paramImageView, h paramh)
  {
    Drawable localDrawable;
    if (paramString == null)
      localDrawable = null;
    while (true)
    {
      return localDrawable;
      if (this.b.containsKey(paramString))
      {
        localDrawable = (Drawable)((SoftReference)this.b.get(paramString)).get();
        if (localDrawable != null);
      }
      else
      {
        paramh.a(new g(this, paramImageView, paramString));
        paramh.a(paramString);
        paramh.a(this.d);
        this.a.execute(paramh);
        localDrawable = null;
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.kinghelper.a.f
 * JD-Core Version:    0.6.2
 */