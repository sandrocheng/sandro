package com.a.a;

import android.util.Log;
import com.a.b.a;
import com.a.b.c;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

class ai extends ag
{
  l h;
  float i;
  private a j;

  public ai(c paramc, float[] paramArrayOfFloat)
  {
    super(paramc, null);
    a(paramArrayOfFloat);
    if ((paramc instanceof a))
      this.j = ((a)this.b);
  }

  public ai(String paramString, float[] paramArrayOfFloat)
  {
    super(paramString, null);
    a(paramArrayOfFloat);
  }

  void a(float paramFloat)
  {
    this.i = this.h.b(paramFloat);
  }

  void a(Class paramClass)
  {
    if (this.b != null);
    while (true)
    {
      return;
      super.a(paramClass);
    }
  }

  public void a(float[] paramArrayOfFloat)
  {
    super.a(paramArrayOfFloat);
    this.h = ((l)this.e);
  }

  void b(Object paramObject)
  {
    if (this.j != null)
      this.j.a(paramObject, this.i);
    while (true)
    {
      return;
      if (this.b != null)
        this.b.a(paramObject, Float.valueOf(this.i));
      else if (this.c != null)
        try
        {
          this.g[0] = Float.valueOf(this.i);
          this.c.invoke(paramObject, this.g);
        }
        catch (InvocationTargetException localInvocationTargetException)
        {
          Log.e("PropertyValuesHolder", localInvocationTargetException.toString());
        }
        catch (IllegalAccessException localIllegalAccessException)
        {
          Log.e("PropertyValuesHolder", localIllegalAccessException.toString());
        }
    }
  }

  Object d()
  {
    return Float.valueOf(this.i);
  }

  public ai e()
  {
    ai localai = (ai)super.a();
    localai.h = ((l)localai.e);
    return localai;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.a.a.ai
 * JD-Core Version:    0.6.2
 */