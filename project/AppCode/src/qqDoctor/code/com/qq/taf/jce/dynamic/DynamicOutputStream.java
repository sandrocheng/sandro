package com.qq.taf.jce.dynamic;

import com.qq.taf.jce.JceDecodeException;
import com.qq.taf.jce.JceOutputStream;
import java.nio.ByteBuffer;

public final class DynamicOutputStream extends JceOutputStream
{
  public DynamicOutputStream()
  {
  }

  public DynamicOutputStream(int paramInt)
  {
    super(paramInt);
  }

  public DynamicOutputStream(ByteBuffer paramByteBuffer)
  {
    super(paramByteBuffer);
  }

  public void write(JceField paramJceField)
  {
    int i = paramJceField.getTag();
    if ((paramJceField instanceof ZeroField))
      write(0, i);
    while (true)
    {
      return;
      if ((paramJceField instanceof IntField))
      {
        write(((IntField)paramJceField).get(), i);
      }
      else if ((paramJceField instanceof ShortField))
      {
        write(((ShortField)paramJceField).get(), i);
      }
      else if ((paramJceField instanceof ByteField))
      {
        write(((ByteField)paramJceField).get(), i);
      }
      else if ((paramJceField instanceof StringField))
      {
        write(((StringField)paramJceField).get(), i);
      }
      else if ((paramJceField instanceof ByteArrayField))
      {
        write(((ByteArrayField)paramJceField).get(), i);
      }
      else if ((paramJceField instanceof ListField))
      {
        ListField localListField = (ListField)paramJceField;
        reserve(8);
        writeHead((byte)9, i);
        write(localListField.size(), 0);
        JceField[] arrayOfJceField2 = localListField.get();
        int i1 = arrayOfJceField2.length;
        for (int i2 = 0; i2 < i1; i2++)
          write(arrayOfJceField2[i2]);
      }
      else if ((paramJceField instanceof MapField))
      {
        MapField localMapField = (MapField)paramJceField;
        reserve(8);
        writeHead((byte)8, i);
        int m = localMapField.size();
        write(m, 0);
        for (int n = 0; n < m; n++)
        {
          write(localMapField.getKey(n));
          write(localMapField.getValue(n));
        }
      }
      else if ((paramJceField instanceof StructField))
      {
        StructField localStructField = (StructField)paramJceField;
        reserve(2);
        writeHead((byte)10, i);
        JceField[] arrayOfJceField1 = localStructField.get();
        int j = arrayOfJceField1.length;
        for (int k = 0; k < j; k++)
          write(arrayOfJceField1[k]);
        reserve(2);
        writeHead((byte)11, 0);
      }
      else if ((paramJceField instanceof LongField))
      {
        write(((LongField)paramJceField).get(), i);
      }
      else if ((paramJceField instanceof FloatField))
      {
        write(((FloatField)paramJceField).get(), i);
      }
      else
      {
        if (!(paramJceField instanceof DoubleField))
          break;
        write(((DoubleField)paramJceField).get(), i);
      }
    }
    throw new JceDecodeException("unknow JceField type: " + paramJceField.getClass().getName());
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.qq.taf.jce.dynamic.DynamicOutputStream
 * JD-Core Version:    0.6.2
 */