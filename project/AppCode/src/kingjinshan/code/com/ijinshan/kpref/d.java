package com.ijinshan.kpref;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.XmlResourceParser;
import android.util.AttributeSet;
import android.util.Xml;
import android.view.InflateException;
import java.io.IOException;
import java.lang.reflect.Constructor;
import java.util.HashMap;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

abstract class d
{
  private static final Class[] f = { Context.class, AttributeSet.class };
  private static final HashMap g = new HashMap();
  protected final Context a;
  private final boolean b = false;
  private boolean c;
  private e d;
  private final Object[] e = new Object[2];
  private String h;

  protected d(Context paramContext)
  {
    this.a = paramContext;
  }

  protected d(d paramd, Context paramContext)
  {
    this.a = paramContext;
    this.d = paramd.d;
  }

  private Object a(String paramString, AttributeSet paramAttributeSet)
  {
    return a(paramString, this.h, paramAttributeSet);
  }

  private Object a(String paramString1, String paramString2, AttributeSet paramAttributeSet)
  {
    Constructor localConstructor1 = (Constructor)g.get(paramString1);
    if (localConstructor1 == null);
    try
    {
      ClassLoader localClassLoader = this.a.getClassLoader();
      if (paramString2 != null);
      for (String str2 = paramString2 + paramString1; ; str2 = paramString1)
      {
        localConstructor1 = localClassLoader.loadClass(str2).getConstructor(f);
        g.put(paramString1, localConstructor1);
        Object[] arrayOfObject = this.e;
        arrayOfObject[1] = paramAttributeSet;
        Object localObject = localConstructor1.newInstance(arrayOfObject);
        return localObject;
      }
    }
    catch (NoSuchMethodException localNoSuchMethodException)
    {
      StringBuilder localStringBuilder = new StringBuilder().append(paramAttributeSet.getPositionDescription()).append(": Error inflating class ");
      if (paramString2 != null);
      for (String str1 = paramString2 + paramString1; ; str1 = paramString1)
      {
        InflateException localInflateException2 = new InflateException(str1);
        localInflateException2.initCause(localNoSuchMethodException);
        throw localInflateException2;
      }
    }
    catch (ClassNotFoundException localClassNotFoundException)
    {
      throw localClassNotFoundException;
    }
    catch (Exception localException)
    {
      Constructor localConstructor2 = localConstructor1;
      InflateException localInflateException1 = new InflateException(paramAttributeSet.getPositionDescription() + ": Error inflating class " + localConstructor2.getClass().getName());
      localInflateException1.initCause(localException);
      throw localInflateException1;
    }
  }

  private void a(e parame)
  {
    if (this.c)
      throw new IllegalStateException("A factory has already been set on this inflater");
    if (parame == null)
      throw new NullPointerException("Given factory can not be null");
    this.c = true;
    if (this.d == null);
    for (this.d = parame; ; this.d = new f(parame, this.d))
      return;
  }

  private Object b(int paramInt, g paramg)
  {
    return a(paramInt, paramg);
  }

  private final Object b(String paramString, AttributeSet paramAttributeSet)
  {
    Object localObject1;
    try
    {
      if (this.d == null)
        localObject1 = null;
      while (localObject1 == null)
        if (-1 == paramString.indexOf('.'))
        {
          localObject1 = a(paramString, this.h, paramAttributeSet);
          break;
          localObject1 = this.d.a(paramString, this.a, paramAttributeSet);
        }
        else
        {
          Object localObject2 = a(paramString, null, paramAttributeSet);
          localObject1 = localObject2;
        }
    }
    catch (InflateException localInflateException3)
    {
      throw localInflateException3;
    }
    catch (ClassNotFoundException localClassNotFoundException)
    {
      InflateException localInflateException2 = new InflateException(paramAttributeSet.getPositionDescription() + ": Error inflating class " + paramString);
      localInflateException2.initCause(localClassNotFoundException);
      throw localInflateException2;
    }
    catch (Exception localException)
    {
      InflateException localInflateException1 = new InflateException(paramAttributeSet.getPositionDescription() + ": Error inflating class " + paramString);
      localInflateException1.initCause(localException);
      throw localInflateException1;
    }
    return localObject1;
  }

  private Object b(XmlPullParser paramXmlPullParser, g paramg)
  {
    return a(paramXmlPullParser, paramg);
  }

  private String b()
  {
    return this.h;
  }

  private void b(XmlPullParser paramXmlPullParser, Object paramObject, AttributeSet paramAttributeSet)
  {
    int i = paramXmlPullParser.getDepth();
    while (true)
    {
      int j = paramXmlPullParser.next();
      if (((j == 3) && (paramXmlPullParser.getDepth() <= i)) || (j == 1))
        break;
      if ((j == 2) && (!a(paramXmlPullParser, paramObject, paramAttributeSet)))
      {
        Object localObject = b(paramXmlPullParser.getName(), paramAttributeSet);
        ((g)paramObject).a(localObject);
        b(paramXmlPullParser, localObject, paramAttributeSet);
      }
    }
  }

  private e c()
  {
    return this.d;
  }

  public final Context a()
  {
    return this.a;
  }

  public abstract d a(Context paramContext);

  protected g a(g paramg1, g paramg2)
  {
    return paramg2;
  }

  public final Object a(int paramInt, g paramg)
  {
    XmlResourceParser localXmlResourceParser = this.a.getResources().getXml(paramInt);
    try
    {
      Object localObject2 = a(localXmlResourceParser, paramg);
      return localObject2;
    }
    finally
    {
      localXmlResourceParser.close();
    }
  }

  public final Object a(XmlPullParser paramXmlPullParser, g paramg)
  {
    AttributeSet localAttributeSet;
    synchronized (this.e)
    {
      localAttributeSet = Xml.asAttributeSet(paramXmlPullParser);
      this.e[0] = this.a;
    }
    try
    {
      int i;
      do
        i = paramXmlPullParser.next();
      while ((i != 2) && (i != 1));
      if (i != 2)
        throw new InflateException(paramXmlPullParser.getPositionDescription() + ": No start tag found!");
    }
    catch (InflateException localInflateException3)
    {
      throw localInflateException3;
      localObject = finally;
      throw localObject;
      g localg = a(paramg, (g)b(paramXmlPullParser.getName(), localAttributeSet));
      b(paramXmlPullParser, localg, localAttributeSet);
      return localg;
    }
    catch (XmlPullParserException localXmlPullParserException)
    {
      InflateException localInflateException2 = new InflateException(localXmlPullParserException.getMessage());
      localInflateException2.initCause(localXmlPullParserException);
      throw localInflateException2;
    }
    catch (IOException localIOException)
    {
      InflateException localInflateException1 = new InflateException(paramXmlPullParser.getPositionDescription() + ": " + localIOException.getMessage());
      localInflateException1.initCause(localIOException);
      throw localInflateException1;
    }
  }

  public final void a(String paramString)
  {
    this.h = paramString;
  }

  protected boolean a(XmlPullParser paramXmlPullParser, Object paramObject, AttributeSet paramAttributeSet)
  {
    return false;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.kpref.d
 * JD-Core Version:    0.6.2
 */