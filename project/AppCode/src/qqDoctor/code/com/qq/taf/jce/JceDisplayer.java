package com.qq.taf.jce;

import java.io.PrintStream;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public final class JceDisplayer
{
  private int _level = 0;
  private StringBuilder sb;

  public JceDisplayer(StringBuilder paramStringBuilder)
  {
    this.sb = paramStringBuilder;
  }

  public JceDisplayer(StringBuilder paramStringBuilder, int paramInt)
  {
    this.sb = paramStringBuilder;
    this._level = paramInt;
  }

  public static void main(String[] paramArrayOfString)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(1.2D);
    System.out.println(localStringBuilder.toString());
  }

  private void ps(String paramString)
  {
    for (int i = 0; i < this._level; i++)
      this.sb.append('\t');
    if (paramString != null)
      this.sb.append(paramString).append(": ");
  }

  public JceDisplayer display(byte paramByte, String paramString)
  {
    ps(paramString);
    this.sb.append(paramByte).append('\n');
    return this;
  }

  public JceDisplayer display(char paramChar, String paramString)
  {
    ps(paramString);
    this.sb.append(paramChar).append('\n');
    return this;
  }

  public JceDisplayer display(double paramDouble, String paramString)
  {
    ps(paramString);
    this.sb.append(paramDouble).append('\n');
    return this;
  }

  public JceDisplayer display(float paramFloat, String paramString)
  {
    ps(paramString);
    this.sb.append(paramFloat).append('\n');
    return this;
  }

  public JceDisplayer display(int paramInt, String paramString)
  {
    ps(paramString);
    this.sb.append(paramInt).append('\n');
    return this;
  }

  public JceDisplayer display(long paramLong, String paramString)
  {
    ps(paramString);
    this.sb.append(paramLong).append('\n');
    return this;
  }

  public JceDisplayer display(JceStruct paramJceStruct, String paramString)
  {
    display('{', paramString);
    if (paramJceStruct == null)
      this.sb.append('\t').append("null");
    while (true)
    {
      display('}', null);
      return this;
      paramJceStruct.display(this.sb, 1 + this._level);
    }
  }

  public <T> JceDisplayer display(T paramT, String paramString)
  {
    if (paramT == null)
      this.sb.append("null").append('\n');
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
    throw new JceEncodeException("write object error: unsupport type.");
  }

  public JceDisplayer display(String paramString1, String paramString2)
  {
    ps(paramString2);
    if (paramString1 == null)
      this.sb.append("null").append('\n');
    while (true)
    {
      return this;
      this.sb.append(paramString1).append('\n');
    }
  }

  public <T> JceDisplayer display(Collection<T> paramCollection, String paramString)
  {
    if (paramCollection == null)
    {
      ps(paramString);
      this.sb.append("null").append('\t');
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
      this.sb.append("null").append('\n');
    while (true)
    {
      return this;
      if (paramMap.isEmpty())
      {
        this.sb.append(paramMap.size()).append(", {}").append('\n');
      }
      else
      {
        this.sb.append(paramMap.size()).append(", {").append('\n');
        JceDisplayer localJceDisplayer1 = new JceDisplayer(this.sb, 1 + this._level);
        JceDisplayer localJceDisplayer2 = new JceDisplayer(this.sb, 2 + this._level);
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
    this.sb.append(paramShort).append('\n');
    return this;
  }

  public JceDisplayer display(boolean paramBoolean, String paramString)
  {
    ps(paramString);
    StringBuilder localStringBuilder = this.sb;
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
      this.sb.append("null").append('\n');
    while (true)
    {
      return this;
      if (paramArrayOfByte.length == 0)
      {
        this.sb.append(paramArrayOfByte.length).append(", []").append('\n');
      }
      else
      {
        this.sb.append(paramArrayOfByte.length).append(", [").append('\n');
        JceDisplayer localJceDisplayer = new JceDisplayer(this.sb, 1 + this._level);
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
      this.sb.append("null").append('\n');
    while (true)
    {
      return this;
      if (paramArrayOfChar.length == 0)
      {
        this.sb.append(paramArrayOfChar.length).append(", []").append('\n');
      }
      else
      {
        this.sb.append(paramArrayOfChar.length).append(", [").append('\n');
        JceDisplayer localJceDisplayer = new JceDisplayer(this.sb, 1 + this._level);
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
      this.sb.append("null").append('\n');
    while (true)
    {
      return this;
      if (paramArrayOfDouble.length == 0)
      {
        this.sb.append(paramArrayOfDouble.length).append(", []").append('\n');
      }
      else
      {
        this.sb.append(paramArrayOfDouble.length).append(", [").append('\n');
        JceDisplayer localJceDisplayer = new JceDisplayer(this.sb, 1 + this._level);
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
      this.sb.append("null").append('\n');
    while (true)
    {
      return this;
      if (paramArrayOfFloat.length == 0)
      {
        this.sb.append(paramArrayOfFloat.length).append(", []").append('\n');
      }
      else
      {
        this.sb.append(paramArrayOfFloat.length).append(", [").append('\n');
        JceDisplayer localJceDisplayer = new JceDisplayer(this.sb, 1 + this._level);
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
      this.sb.append("null").append('\n');
    while (true)
    {
      return this;
      if (paramArrayOfInt.length == 0)
      {
        this.sb.append(paramArrayOfInt.length).append(", []").append('\n');
      }
      else
      {
        this.sb.append(paramArrayOfInt.length).append(", [").append('\n');
        JceDisplayer localJceDisplayer = new JceDisplayer(this.sb, 1 + this._level);
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
      this.sb.append("null").append('\n');
    while (true)
    {
      return this;
      if (paramArrayOfLong.length == 0)
      {
        this.sb.append(paramArrayOfLong.length).append(", []").append('\n');
      }
      else
      {
        this.sb.append(paramArrayOfLong.length).append(", [").append('\n');
        JceDisplayer localJceDisplayer = new JceDisplayer(this.sb, 1 + this._level);
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
      this.sb.append("null").append('\n');
    while (true)
    {
      return this;
      if (paramArrayOfT.length == 0)
      {
        this.sb.append(paramArrayOfT.length).append(", []").append('\n');
      }
      else
      {
        this.sb.append(paramArrayOfT.length).append(", [").append('\n');
        JceDisplayer localJceDisplayer = new JceDisplayer(this.sb, 1 + this._level);
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
      this.sb.append("null").append('\n');
    while (true)
    {
      return this;
      if (paramArrayOfShort.length == 0)
      {
        this.sb.append(paramArrayOfShort.length).append(", []").append('\n');
      }
      else
      {
        this.sb.append(paramArrayOfShort.length).append(", [").append('\n');
        JceDisplayer localJceDisplayer = new JceDisplayer(this.sb, 1 + this._level);
        int i = paramArrayOfShort.length;
        for (int j = 0; j < i; j++)
          localJceDisplayer.display(paramArrayOfShort[j], null);
        display(']', null);
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.qq.taf.jce.JceDisplayer
 * JD-Core Version:    0.6.2
 */