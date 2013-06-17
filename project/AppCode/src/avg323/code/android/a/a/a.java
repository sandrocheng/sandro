package android.a.a;

import android.content.res.XmlResourceParser;
import java.io.IOException;
import java.io.InputStream;
import java.io.Reader;
import org.xmlpull.v1.XmlPullParserException;

public class a
  implements XmlResourceParser
{
  private e a;
  private boolean b = false;
  private g c;
  private int[] d;
  private b e = new b();
  private boolean f;
  private int g;
  private int h;
  private int i;
  private int j;
  private int[] k;
  private int l;
  private int m;
  private int n;

  public a()
  {
    a();
  }

  private final int a(String paramString1, String paramString2)
  {
    int i1 = -1;
    if ((this.c == null) || (paramString2 == null));
    label45: label110: 
    while (true)
    {
      return i1;
      int i2 = this.c.a(paramString2);
      if (i2 != i1)
      {
        int i3;
        if (paramString1 != null)
          i3 = this.c.a(paramString1);
        for (int i4 = 0; ; i4 += 5)
        {
          if (i4 >= this.k.length)
            break label110;
          if ((i2 == this.k[(i4 + 1)]) && ((i3 == i1) || (i3 == this.k[(i4 + 0)])))
          {
            i1 = i4 / 5;
            break;
            i3 = i1;
            break label45;
          }
        }
      }
    }
  }

  private final void a()
  {
    this.g = -1;
    this.h = -1;
    this.i = -1;
    this.j = -1;
    this.k = null;
    this.l = -1;
    this.m = -1;
    this.n = -1;
  }

  private final void b()
  {
    int i1 = 3;
    if (this.c == null)
    {
      d.a(this.a, "800");
      this.a.c();
      this.c = g.a(this.a);
      this.e.e();
      this.b = true;
    }
    if (this.g == 1);
    while (true)
    {
      return;
      int i2 = this.g;
      a();
      int i3;
      label381: 
      do
      {
        int i4;
        while (true)
        {
          if (this.f)
          {
            this.f = false;
            this.e.f();
          }
          if ((i2 == i1) && (this.e.d() == 1) && (this.e.b() == 0))
          {
            this.g = 1;
            break;
          }
          if (i2 == 0)
            i3 = 1048834;
          while (true)
            if (i3 == 524672)
            {
              int i9 = this.a.b();
              if ((i9 < 8) || (i9 % 4 != 0))
              {
                throw new IOException("Invalid resource ids size (" + i9 + ").");
                i3 = this.a.b();
              }
              else
              {
                this.d = this.a.b(-2 + i9 / 4);
                break;
              }
            }
          if ((i3 < 1048832) || (i3 > 1048836))
            throw new IOException("Invalid chunk type (" + i3 + ").");
          if ((i3 == 1048834) && (i2 == -1))
          {
            this.g = 0;
            break;
          }
          this.a.c();
          i4 = this.a.b();
          this.a.c();
          if ((i3 != 1048832) && (i3 != 1048833))
            break label381;
          if (i3 == 1048832)
          {
            int i5 = this.a.b();
            int i6 = this.a.b();
            this.e.a(i5, i6);
          }
          else
          {
            this.a.c();
            this.a.c();
            this.e.c();
          }
        }
        this.h = i4;
        if (i3 == 1048834)
        {
          this.j = this.a.b();
          this.i = this.a.b();
          this.a.c();
          int i7 = this.a.b();
          this.l = (-1 + (i7 >>> 16));
          int i8 = i7 & 0xFFFF;
          this.m = this.a.b();
          this.n = (-1 + (this.m >>> 16));
          this.m = (-1 + (0xFFFF & this.m));
          this.k = this.a.b(i8 * 5);
          while (i1 < this.k.length)
          {
            this.k[i1] >>>= 24;
            i1 += 5;
          }
          this.e.e();
          this.g = 2;
          break;
        }
        if (i3 == 1048835)
        {
          this.j = this.a.b();
          this.i = this.a.b();
          this.g = i1;
          this.f = true;
          break;
        }
      }
      while (i3 != 1048836);
      this.i = this.a.b();
      this.a.c();
      this.a.c();
      this.g = 4;
    }
  }

  private final int c(int paramInt)
  {
    if (this.g != 2)
      throw new IndexOutOfBoundsException("Current event is not START_TAG.");
    int i1 = paramInt * 5;
    if (i1 >= this.k.length)
      throw new IndexOutOfBoundsException("Invalid attribute index (" + paramInt + ").");
    return i1;
  }

  public int a(int paramInt)
  {
    int i1 = c(paramInt);
    return this.k[(i1 + 3)];
  }

  public void a(InputStream paramInputStream)
  {
    close();
    if (paramInputStream != null)
      this.a = new e(paramInputStream, false);
  }

  public int b(int paramInt)
  {
    int i1 = c(paramInt);
    return this.k[(i1 + 4)];
  }

  public void close()
  {
    if (!this.b);
    while (true)
    {
      return;
      this.b = false;
      this.a.a();
      this.a = null;
      this.c = null;
      this.d = null;
      this.e.a();
      a();
    }
  }

  public void defineEntityReplacementText(String paramString1, String paramString2)
  {
    throw new XmlPullParserException("Method is not supported.");
  }

  public boolean getAttributeBooleanValue(int paramInt, boolean paramBoolean)
  {
    int i1 = 1;
    if (paramBoolean)
    {
      int i2 = i1;
      if (getAttributeIntValue(paramInt, i2) == 0)
        break label27;
    }
    while (true)
    {
      return i1;
      int i3 = 0;
      break;
      label27: i1 = 0;
    }
  }

  public boolean getAttributeBooleanValue(String paramString1, String paramString2, boolean paramBoolean)
  {
    int i1 = a(paramString1, paramString2);
    if (i1 == -1);
    while (true)
    {
      return paramBoolean;
      paramBoolean = getAttributeBooleanValue(i1, paramBoolean);
    }
  }

  public int getAttributeCount()
  {
    if (this.g != 2);
    for (int i1 = -1; ; i1 = this.k.length / 5)
      return i1;
  }

  public float getAttributeFloatValue(int paramInt, float paramFloat)
  {
    int i1 = c(paramInt);
    if (this.k[(i1 + 3)] == 4)
      paramFloat = Float.intBitsToFloat(this.k[(i1 + 4)]);
    return paramFloat;
  }

  public float getAttributeFloatValue(String paramString1, String paramString2, float paramFloat)
  {
    int i1 = a(paramString1, paramString2);
    if (i1 == -1);
    while (true)
    {
      return paramFloat;
      paramFloat = getAttributeFloatValue(i1, paramFloat);
    }
  }

  public int getAttributeIntValue(int paramInt1, int paramInt2)
  {
    int i1 = c(paramInt1);
    int i2 = this.k[(i1 + 3)];
    if ((i2 >= 16) && (i2 <= 31))
      paramInt2 = this.k[(i1 + 4)];
    return paramInt2;
  }

  public int getAttributeIntValue(String paramString1, String paramString2, int paramInt)
  {
    int i1 = a(paramString1, paramString2);
    if (i1 == -1);
    while (true)
    {
      return paramInt;
      paramInt = getAttributeIntValue(i1, paramInt);
    }
  }

  public int getAttributeListValue(int paramInt1, String[] paramArrayOfString, int paramInt2)
  {
    return 0;
  }

  public int getAttributeListValue(String paramString1, String paramString2, String[] paramArrayOfString, int paramInt)
  {
    return 0;
  }

  public String getAttributeName(int paramInt)
  {
    int i1 = c(paramInt);
    int i2 = this.k[(i1 + 1)];
    if (i2 == -1);
    for (String str = ""; ; str = this.c.a(i2))
      return str;
  }

  public int getAttributeNameResource(int paramInt)
  {
    int i1 = c(paramInt);
    int i2 = this.k[(i1 + 1)];
    if ((this.d == null) || (i2 < 0) || (i2 >= this.d.length));
    for (int i3 = 0; ; i3 = this.d[i2])
      return i3;
  }

  public String getAttributeNamespace(int paramInt)
  {
    int i1 = c(paramInt);
    int i2 = this.k[(i1 + 0)];
    if (i2 == -1);
    for (String str = ""; ; str = this.c.a(i2))
      return str;
  }

  public String getAttributePrefix(int paramInt)
  {
    int i1 = c(paramInt);
    int i2 = this.k[(i1 + 0)];
    int i3 = this.e.d(i2);
    if (i3 == -1);
    for (String str = ""; ; str = this.c.a(i3))
      return str;
  }

  public int getAttributeResourceValue(int paramInt1, int paramInt2)
  {
    int i1 = c(paramInt1);
    if (this.k[(i1 + 3)] == 1)
      paramInt2 = this.k[(i1 + 4)];
    return paramInt2;
  }

  public int getAttributeResourceValue(String paramString1, String paramString2, int paramInt)
  {
    int i1 = a(paramString1, paramString2);
    if (i1 == -1);
    while (true)
    {
      return paramInt;
      paramInt = getAttributeResourceValue(i1, paramInt);
    }
  }

  public String getAttributeType(int paramInt)
  {
    return "CDATA";
  }

  public int getAttributeUnsignedIntValue(int paramInt1, int paramInt2)
  {
    return getAttributeIntValue(paramInt1, paramInt2);
  }

  public int getAttributeUnsignedIntValue(String paramString1, String paramString2, int paramInt)
  {
    int i1 = a(paramString1, paramString2);
    if (i1 == -1);
    while (true)
    {
      return paramInt;
      paramInt = getAttributeUnsignedIntValue(i1, paramInt);
    }
  }

  public String getAttributeValue(int paramInt)
  {
    int i1 = c(paramInt);
    int i2;
    if (this.k[(i1 + 3)] == 3)
      i2 = this.k[(i1 + 2)];
    for (String str = this.c.a(i2); ; str = "")
      return str;
  }

  public String getAttributeValue(String paramString1, String paramString2)
  {
    int i1 = a(paramString1, paramString2);
    if (i1 == -1);
    for (String str = null; ; str = getAttributeValue(i1))
      return str;
  }

  public String getClassAttribute()
  {
    if (this.m == -1);
    int i2;
    for (String str = null; ; str = this.c.a(i2))
    {
      return str;
      int i1 = c(this.m);
      i2 = this.k[(i1 + 2)];
    }
  }

  public int getColumnNumber()
  {
    return -1;
  }

  public int getDepth()
  {
    return -1 + this.e.d();
  }

  public int getEventType()
  {
    return this.g;
  }

  public boolean getFeature(String paramString)
  {
    return false;
  }

  public String getIdAttribute()
  {
    if (this.l == -1);
    int i2;
    for (String str = null; ; str = this.c.a(i2))
    {
      return str;
      int i1 = c(this.l);
      i2 = this.k[(i1 + 2)];
    }
  }

  public int getIdAttributeResourceValue(int paramInt)
  {
    if (this.l == -1);
    while (true)
    {
      return paramInt;
      int i1 = c(this.l);
      if (this.k[(i1 + 3)] == 1)
        paramInt = this.k[(i1 + 4)];
    }
  }

  public String getInputEncoding()
  {
    return null;
  }

  public int getLineNumber()
  {
    return this.h;
  }

  public String getName()
  {
    if ((this.i == -1) || ((this.g != 2) && (this.g != 3)));
    for (String str = null; ; str = this.c.a(this.i))
      return str;
  }

  public String getNamespace()
  {
    return this.c.a(this.j);
  }

  public String getNamespace(String paramString)
  {
    throw new RuntimeException("Method is not supported.");
  }

  public int getNamespaceCount(int paramInt)
  {
    return this.e.a(paramInt);
  }

  public String getNamespacePrefix(int paramInt)
  {
    int i1 = this.e.b(paramInt);
    return this.c.a(i1);
  }

  public String getNamespaceUri(int paramInt)
  {
    int i1 = this.e.c(paramInt);
    return this.c.a(i1);
  }

  public String getPositionDescription()
  {
    return "XML line #" + getLineNumber();
  }

  public String getPrefix()
  {
    int i1 = this.e.d(this.j);
    return this.c.a(i1);
  }

  public Object getProperty(String paramString)
  {
    return null;
  }

  public int getStyleAttribute()
  {
    if (this.n == -1);
    int i1;
    for (int i2 = 0; ; i2 = this.k[(i1 + 4)])
    {
      return i2;
      i1 = c(this.n);
    }
  }

  public String getText()
  {
    if ((this.i == -1) || (this.g != 4));
    for (String str = null; ; str = this.c.a(this.i))
      return str;
  }

  public char[] getTextCharacters(int[] paramArrayOfInt)
  {
    String str = getText();
    char[] arrayOfChar;
    if (str == null)
      arrayOfChar = null;
    while (true)
    {
      return arrayOfChar;
      paramArrayOfInt[0] = 0;
      paramArrayOfInt[1] = str.length();
      arrayOfChar = new char[str.length()];
      str.getChars(0, str.length(), arrayOfChar, 0);
    }
  }

  public boolean isAttributeDefault(int paramInt)
  {
    return false;
  }

  public boolean isEmptyElementTag()
  {
    return false;
  }

  public boolean isWhitespace()
  {
    return false;
  }

  public int next()
  {
    if (this.a == null)
      throw new XmlPullParserException("Parser is not opened.", this, null);
    try
    {
      b();
      int i1 = this.g;
      return i1;
    }
    catch (IOException localIOException)
    {
      com.avg.toolkit.f.a.a(localIOException);
      close();
      throw localIOException;
    }
  }

  public int nextTag()
  {
    int i1 = next();
    if ((i1 == 4) && (isWhitespace()))
      i1 = next();
    if ((i1 != 2) && (i1 != 3))
      throw new XmlPullParserException("Expected start or end tag.", this, null);
    return i1;
  }

  public String nextText()
  {
    if (getEventType() != 2)
      throw new XmlPullParserException("Parser must be on START_TAG to read next text.", this, null);
    int i1 = next();
    String str;
    if (i1 == 4)
    {
      str = getText();
      if (next() != 3)
        throw new XmlPullParserException("Event TEXT must be immediately followed by END_TAG.", this, null);
    }
    else
    {
      if (i1 != 3)
        break label67;
      str = "";
    }
    return str;
    label67: throw new XmlPullParserException("Parser must be on START_TAG or TEXT to read text.", this, null);
  }

  public int nextToken()
  {
    return next();
  }

  public void require(int paramInt, String paramString1, String paramString2)
  {
    if ((paramInt != getEventType()) || ((paramString1 != null) && (!paramString1.equals(getNamespace()))) || ((paramString2 != null) && (!paramString2.equals(getName()))))
      throw new XmlPullParserException(TYPES[paramInt] + " is expected.", this, null);
  }

  public void setFeature(String paramString, boolean paramBoolean)
  {
    throw new XmlPullParserException("Method is not supported.");
  }

  public void setInput(InputStream paramInputStream, String paramString)
  {
    throw new XmlPullParserException("Method is not supported.");
  }

  public void setInput(Reader paramReader)
  {
    throw new XmlPullParserException("Method is not supported.");
  }

  public void setProperty(String paramString, Object paramObject)
  {
    throw new XmlPullParserException("Method is not supported.");
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     android.a.a.a
 * JD-Core Version:    0.6.2
 */