package com.qq.taf.jce.dynamic;

import com.qq.taf.jce.JceDecodeException;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceInputStream.HeadData;
import java.io.UnsupportedEncodingException;
import java.nio.BufferUnderflowException;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.List;

public final class DynamicInputStream
{
  private ByteBuffer bs;
  private String sServerEncoding = "GBK";

  public DynamicInputStream(ByteBuffer paramByteBuffer)
  {
    this.bs = paramByteBuffer;
  }

  public DynamicInputStream(byte[] paramArrayOfByte)
  {
    this.bs = ByteBuffer.wrap(paramArrayOfByte);
  }

  private JceField readString(JceInputStream.HeadData paramHeadData, int paramInt)
  {
    byte[] arrayOfByte = new byte[paramInt];
    this.bs.get(arrayOfByte);
    try
    {
      str = new String(arrayOfByte, this.sServerEncoding);
      return JceField.create(str, paramHeadData.tag);
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException)
    {
      while (true)
        String str = new String(arrayOfByte);
    }
  }

  public JceField read()
  {
    try
    {
      JceInputStream.HeadData localHeadData = new JceInputStream.HeadData();
      JceInputStream.readHead(localHeadData, this.bs);
      switch (localHeadData.type)
      {
      case 0:
        localObject = JceField.create(this.bs.get(), localHeadData.tag);
        break;
      case 1:
        localObject = JceField.create(this.bs.getShort(), localHeadData.tag);
        break;
      case 2:
        localObject = JceField.create(this.bs.getInt(), localHeadData.tag);
        break;
      case 3:
        localObject = JceField.create(this.bs.getLong(), localHeadData.tag);
        break;
      case 4:
        localObject = JceField.create(this.bs.getFloat(), localHeadData.tag);
        break;
      case 5:
        localObject = JceField.create(this.bs.getDouble(), localHeadData.tag);
        break;
      case 6:
        int i1 = this.bs.get();
        if (i1 < 0)
          i1 += 256;
        localObject = readString(localHeadData, i1);
        break;
      case 7:
        localObject = readString(localHeadData, this.bs.getInt());
        break;
      case 9:
        int m = ((NumberField)read()).intValue();
        JceField[] arrayOfJceField3 = new JceField[m];
        for (int n = 0; n < m; n++)
          arrayOfJceField3[n] = read();
        localObject = JceField.createList(arrayOfJceField3, localHeadData.tag);
        break;
      case 8:
        int j = ((NumberField)read()).intValue();
        JceField[] arrayOfJceField1 = new JceField[j];
        JceField[] arrayOfJceField2 = new JceField[j];
        for (int k = 0; k < j; k++)
        {
          arrayOfJceField1[k] = read();
          arrayOfJceField2[k] = read();
        }
        localObject = JceField.createMap(arrayOfJceField1, arrayOfJceField2, localHeadData.tag);
        break;
      case 10:
        ArrayList localArrayList = new ArrayList();
        while (true)
        {
          JceField localJceField2 = read();
          if (localJceField2 == null)
          {
            localObject = JceField.createStruct((JceField[])localArrayList.toArray(new JceField[0]), localHeadData.tag);
            break;
          }
          localArrayList.add(localJceField2);
        }
      case 12:
        localObject = JceField.createZero(localHeadData.tag);
        break;
      case 13:
        int i = localHeadData.tag;
        JceInputStream.readHead(localHeadData, this.bs);
        if (localHeadData.type != 0)
          throw new JceDecodeException("type mismatch, simple_list only support byte, tag: " + i + ", type: " + localHeadData.type);
        byte[] arrayOfByte = new byte[((NumberField)read()).intValue()];
        this.bs.get(arrayOfByte);
        JceField localJceField1 = JceField.create(arrayOfByte, i);
        localObject = localJceField1;
        break;
      default:
        localObject = null;
        return localObject;
      case 11:
      }
    }
    catch (BufferUnderflowException localBufferUnderflowException)
    {
      while (true)
      {
        Object localObject = null;
        continue;
        localObject = null;
      }
    }
  }

  public int setServerEncoding(String paramString)
  {
    this.sServerEncoding = paramString;
    return 0;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.qq.taf.jce.dynamic.DynamicInputStream
 * JD-Core Version:    0.6.2
 */