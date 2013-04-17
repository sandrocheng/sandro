package com.qq.taf.jce;

import java.io.PrintStream;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import puw.a;

public final class JceDisplayer
{
  private StringBuilder a;
  private int b = 0;

  public JceDisplayer(StringBuilder paramStringBuilder)
  {
    this.a = paramStringBuilder;
  }

  public JceDisplayer(StringBuilder paramStringBuilder, int paramInt)
  {
    this.a = paramStringBuilder;
    this.b = paramInt;
  }

  public static void main(String[] paramArrayOfString)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(1.2D);
    System.out.println(localStringBuilder.toString());
  }

  private void ps(String paramString)
  {
    for (int i = 0; i < this.b; i++)
      this.a.append('\t');
    if (paramString != null)
      this.a.append(paramString).append(": ");
  }

  public JceDisplayer display(byte paramByte, String paramString)
  {
    ps(paramString);
    this.a.append(paramByte).append('\n');
    return this;
  }

  public JceDisplayer display(char paramChar, String paramString)
  {
    ps(paramString);
    this.a.append(paramChar).append('\n');
    return this;
  }

  public JceDisplayer display(double paramDouble, String paramString)
  {
    ps(paramString);
    this.a.append(paramDouble).append('\n');
    return this;
  }

  public JceDisplayer display(float paramFloat, String paramString)
  {
    ps(paramString);
    this.a.append(paramFloat).append('\n');
    return this;
  }

  public JceDisplayer display(int paramInt, String paramString)
  {
    ps(paramString);
    this.a.append(paramInt).append('\n');
    return this;
  }

  public JceDisplayer display(long paramLong, String paramString)
  {
    ps(paramString);
    this.a.append(paramLong).append('\n');
    return this;
  }

  public JceDisplayer display(JceStruct paramJceStruct, String paramString)
  {
    display('{', paramString);
    if (paramJceStruct == null)
      this.a.append('\t').append("null");
    while (true)
    {
      display('}', null);
      return this;
      paramJceStruct.display(this.a, 1 + this.b);
    }
  }

  public <T> JceDisplayer display(T paramT, String paramString)
  {
    if (paramT == null)
      this.a.append("null").append('\n');
    while (true)
    {
      return this;
      if ((paramT instanceof Byte))
      {
        display(((Byte)paramT).byteValue(), paramString);
      }
      else if ((paramT instanceof Boolean))
      {
        display(((Boolean)paramT).booleanValue(), paramString);
      }
      else if ((paramT instanceof Short))
      {
        display(((Short)paramT).shortValue(), paramString);
      }
      else if ((paramT instanceof Integer))
      {
        display(((Integer)paramT).intValue(), paramString);
      }
      else if ((paramT instanceof Long))
      {
        display(((Long)paramT).longValue(), paramString);
      }
      else if ((paramT instanceof Float))
      {
        display(((Float)paramT).floatValue(), paramString);
      }
      else if ((paramT instanceof Double))
      {
        display(((Double)paramT).doubleValue(), paramString);
      }
      else if ((paramT instanceof String))
      {
        display((String)paramT, paramString);
      }
      else if ((paramT instanceof Map))
      {
        display((Map)paramT, paramString);
      }
      else if ((paramT instanceof List))
      {
        display((List)paramT, paramString);
      }
      else if ((paramT instanceof JceStruct))
      {
        display((JceStruct)paramT, paramString);
      }
      else if ((paramT instanceof byte[]))
      {
        display((byte[])paramT, paramString);
      }
      else if ((paramT instanceof boolean[]))
      {
        display((boolean[])paramT, paramString);
      }
      else if ((paramT instanceof short[]))
      {
        display((short[])paramT, paramString);
      }
      else if ((paramT instanceof int[]))
      {
        display((int[])paramT, paramString);
      }
      else if ((paramT instanceof long[]))
      {
        display((long[])paramT, paramString);
      }
      else if ((paramT instanceof float[]))
      {
        display((float[])paramT, paramString);
      }
      else if ((paramT instanceof double[]))
      {
        display((double[])paramT, paramString);
      }
      else
      {
        if (!paramT.getClass().isArray())
          break;
        display((Object[])paramT, paramString);
      }
    }
    throw new a("write object error: unsupport type.");
  }

  public JceDisplayer display(String paramString1, String paramString2)
  {
    ps(paramString2);
    if (paramString1 == null)
      this.a.append("null").append('\n');
    while (true)
    {
      return this;
      this.a.append(paramString1).append('\n');
    }
  }

  public <T> JceDisplayer display(Collection<T> paramCollection, String paramString)
  {
    if (paramCollection == null)
    {
      ps(paramString);
      this.a.append("null").append('\t');
    }
    while (true)
    {
      return this;
      this = display(paramCollection.toArray(), paramString);
    }
  }

  public <K, V> JceDisplayer display(Map<K, V> paramMap, String paramString)
  {
    ps(paramString);
    if (paramMap == null)
      this.a.append("null").append('\n');
    while (true)
    {
      return this;
      if (paramMap.isEmpty())
      {
        this.a.append(paramMap.size()).append(", {}").append('\n');
      }
      else
      {
        this.a.append(paramMap.size()).append(", {").append('\n');
        JceDisplayer localJceDisplayer1 = new JceDisplayer(this.a, 1 + this.b);
        JceDisplayer localJceDisplayer2 = new JceDisplayer(this.a, 2 + this.b);
        Iterator localIterator = paramMap.entrySet().iterator();
        while (localIterator.hasNext())
        {
          Map.Entry localEntry = (Map.Entry)localIterator.next();
          localJceDisplayer1.display('(', null);
          localJceDisplayer2.display(localEntry.getKey(), null);
          localJceDisplayer2.display(localEntry.getValue(), null);
          localJceDisplayer1.display(')', null);
        }
        display('}', null);
      }
    }
  }

  public JceDisplayer display(short paramShort, String paramString)
  {
    ps(paramString);
    this.a.append(paramShort).append('\n');
    return this;
  }

  public JceDisplayer display(boolean paramBoolean, String paramString)
  {
    ps(paramString);
    StringBuilder localStringBuilder = this.a;
    if (paramBoolean);
    for (char c = 'T'; ; c = 'F')
    {
      localStringBuilder.append(c).append('\n');
      return this;
    }
  }

  public JceDisplayer display(byte[] paramArrayOfByte, String paramString)
  {
    ps(paramString);
    if (paramArrayOfByte == null)
      this.a.append("null").append('\n');
    while (true)
    {
      return this;
      if (paramArrayOfByte.length == 0)
      {
        this.a.append(paramArrayOfByte.length).append(", []").append('\n');
      }
      else
      {
        this.a.append(paramArrayOfByte.length).append(", [").append('\n');
        JceDisplayer localJceDisplayer = new JceDisplayer(this.a, 1 + this.b);
        int i = paramArrayOfByte.length;
        for (int j = 0; j < i; j++)
          localJceDisplayer.display(paramArrayOfByte[j], null);
        display(']', null);
      }
    }
  }

  public JceDisplayer display(char[] paramArrayOfChar, String paramString)
  {
    ps(paramString);
    if (paramArrayOfChar == null)
      this.a.append("null").append('\n');
    while (true)
    {
      return this;
      if (paramArrayOfChar.length == 0)
      {
        this.a.append(paramArrayOfChar.length).append(", []").append('\n');
      }
      else
      {
        this.a.append(paramArrayOfChar.length).append(", [").append('\n');
        JceDisplayer localJceDisplayer = new JceDisplayer(this.a, 1 + this.b);
        int i = paramArrayOfChar.length;
        for (int j = 0; j < i; j++)
          localJceDisplayer.display(paramArrayOfChar[j], null);
        display(']', null);
      }
    }
  }

  public JceDisplayer display(double[] paramArrayOfDouble, String paramString)
  {
    ps(paramString);
    if (paramArrayOfDouble == null)
      this.a.append("null").append('\n');
    while (true)
    {
      return this;
      if (paramArrayOfDouble.length == 0)
      {
        this.a.append(paramArrayOfDouble.length).append(", []").append('\n');
      }
      else
      {
        this.a.append(paramArrayOfDouble.length).append(", [").append('\n');
        JceDisplayer localJceDisplayer = new JceDisplayer(this.a, 1 + this.b);
        int i = paramArrayOfDouble.length;
        for (int j = 0; j < i; j++)
          localJceDisplayer.display(paramArrayOfDouble[j], null);
        display(']', null);
      }
    }
  }

  public JceDisplayer display(float[] paramArrayOfFloat, String paramString)
  {
    ps(paramString);
    if (paramArrayOfFloat == null)
      this.a.append("null").append('\n');
    while (true)
    {
      return this;
      if (paramArrayOfFloat.length == 0)
      {
        this.a.append(paramArrayOfFloat.length).append(", []").append('\n');
      }
      else
      {
        this.a.append(paramArrayOfFloat.length).append(", [").append('\n');
        JceDisplayer localJceDisplayer = new JceDisplayer(this.a, 1 + this.b);
        int i = paramArrayOfFloat.length;
        for (int j = 0; j < i; j++)
          localJceDisplayer.display(paramArrayOfFloat[j], null);
        display(']', null);
      }
    }
  }

  public JceDisplayer display(int[] paramArrayOfInt, String paramString)
  {
    ps(paramString);
    if (paramArrayOfInt == null)
      this.a.append("null").append('\n');
    while (true)
    {
      return this;
      if (paramArrayOfInt.length == 0)
      {
        this.a.append(paramArrayOfInt.length).append(", []").append('\n');
      }
      else
      {
        this.a.append(paramArrayOfInt.length).append(", [").append('\n');
        JceDisplayer localJceDisplayer = new JceDisplayer(this.a, 1 + this.b);
        int i = paramArrayOfInt.length;
        for (int j = 0; j < i; j++)
          localJceDisplayer.display(paramArrayOfInt[j], null);
        display(']', null);
      }
    }
  }

  public JceDisplayer display(long[] paramArrayOfLong, String paramString)
  {
    ps(paramString);
    if (paramArrayOfLong == null)
      this.a.append("null").append('\n');
    while (true)
    {
      return this;
      if (paramArrayOfLong.length == 0)
      {
        this.a.append(paramArrayOfLong.length).append(", []").append('\n');
      }
      else
      {
        this.a.append(paramArrayOfLong.length).append(", [").append('\n');
        JceDisplayer localJceDisplayer = new JceDisplayer(this.a, 1 + this.b);
        int i = paramArrayOfLong.length;
        for (int j = 0; j < i; j++)
          localJceDisplayer.display(paramArrayOfLong[j], null);
        display(']', null);
      }
    }
  }

  public <T> JceDisplayer display(T[] paramArrayOfT, String paramString)
  {
    ps(paramString);
    if (paramArrayOfT == null)
      this.a.append("null").append('\n');
    while (true)
    {
      return this;
      if (paramArrayOfT.length == 0)
      {
        this.a.append(paramArrayOfT.length).append(", []").append('\n');
      }
      else
      {
        this.a.append(paramArrayOfT.length).append(", [").append('\n');
        JceDisplayer localJceDisplayer = new JceDisplayer(this.a, 1 + this.b);
        int i = paramArrayOfT.length;
        for (int j = 0; j < i; j++)
          localJceDisplayer.display(paramArrayOfT[j], null);
        display(']', null);
      }
    }
  }

  public JceDisplayer display(short[] paramArrayOfShort, String paramString)
  {
    ps(paramString);
    if (paramArrayOfShort == null)
      this.a.append("null").append('\n');
    while (true)
    {
      return this;
      if (paramArrayOfShort.length == 0)
      {
        this.a.append(paramArrayOfShort.length).append(", []").append('\n');
      }
      else
      {
        this.a.append(paramArrayOfShort.length).append(", [").append('\n');
        JceDisplayer localJceDisplayer = new JceDisplayer(this.a, 1 + this.b);
        int i = paramArrayOfShort.length;
        for (int j = 0; j < i; j++)
          localJceDisplayer.display(paramArrayOfShort[j], null);
        display(']', null);
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.qq.taf.jce.JceDisplayer
 * JD-Core Version:    0.6.2
 */