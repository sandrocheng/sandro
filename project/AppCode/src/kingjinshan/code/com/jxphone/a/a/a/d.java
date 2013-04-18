package com.jxphone.a.a.a;

import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserFactory;

public final class d
  implements c
{
  private final InputStream a;
  private final XmlPullParser b;

  private d(InputStream paramInputStream)
  {
    this.a = paramInputStream;
    XmlPullParserFactory localXmlPullParserFactory = XmlPullParserFactory.newInstance();
    localXmlPullParserFactory.setNamespaceAware(true);
    this.b = localXmlPullParserFactory.newPullParser();
    this.b.setInput(paramInputStream, "UTF-8");
  }

  private static Object b()
  {
    return null;
  }

  public final List a(Class paramClass)
  {
    this.a.reset();
    String str = ((b)paramClass.getAnnotation(b.class)).a();
    if (str == null)
      throw new RuntimeException("Can't found TagName(Annotation) in ".concat(paramClass.getName()));
    int i = this.b.getEventType();
    ArrayList localArrayList = new ArrayList();
    switch (i)
    {
    default:
    case 2:
      while (true)
      {
        i = this.b.next();
        break;
        if (this.b.getName().equals(str))
          localArrayList.add(null);
      }
    case 1:
    }
    return localArrayList;
  }

  public final void a()
  {
    this.a.close();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.jxphone.a.a.a.d
 * JD-Core Version:    0.6.2
 */