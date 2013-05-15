package com.avast.android.mobilesecurity.app.filter.core.a;

import java.util.ArrayList;
import java.util.HashMap;

public class d
{
  private HashMap a = null;

  public int a()
  {
    return a(140);
  }

  protected int a(int paramInt)
  {
    Integer localInteger = (Integer)this.a.get(Integer.valueOf(paramInt));
    if (localInteger == null);
    for (int i = 0; ; i = localInteger.intValue())
      return i;
  }

  protected void a(int paramInt1, int paramInt2)
  {
    switch (paramInt2)
    {
    case 135:
    case 136:
    case 137:
    case 138:
    case 139:
    case 142:
    case 147:
    case 150:
    case 151:
    case 152:
    case 154:
    case 157:
    case 158:
    case 159:
    case 160:
    case 161:
    case 164:
    case 166:
    case 168:
    case 170:
    case 172:
    case 173:
    case 174:
    case 175:
    case 176:
    case 178:
    case 179:
    case 181:
    case 182:
    case 183:
    case 184:
    case 185:
    case 189:
    case 190:
    default:
      throw new RuntimeException("Invalid header field!");
    case 134:
    case 144:
    case 145:
    case 148:
    case 162:
    case 167:
    case 169:
    case 171:
    case 177:
    case 187:
    case 188:
      if ((128 != paramInt1) && (129 != paramInt1))
        throw new IllegalArgumentException("Invalid Octet value!");
      break;
    case 155:
      if ((128 != paramInt1) && (129 != paramInt1))
        throw new IllegalArgumentException("Invalid Octet value!");
      break;
    case 191:
      if ((128 != paramInt1) && (129 != paramInt1))
        throw new IllegalArgumentException("Invalid Octet value!");
      break;
    case 143:
      if ((paramInt1 < 128) || (paramInt1 > 130))
        throw new IllegalArgumentException("Invalid Octet value!");
      break;
    case 149:
      if ((paramInt1 < 128) || (paramInt1 > 135))
        throw new IllegalArgumentException("Invalid Octet value!");
      break;
    case 156:
      if ((paramInt1 < 128) || (paramInt1 > 131))
        throw new IllegalArgumentException("Invalid Octet value!");
      break;
    case 163:
      if ((paramInt1 < 128) || (paramInt1 > 132))
        throw new IllegalArgumentException("Invalid Octet value!");
      break;
    case 180:
      if (128 != paramInt1)
        throw new IllegalArgumentException("Invalid Octet value!");
      break;
    case 186:
      if ((paramInt1 < 128) || (paramInt1 > 135))
        throw new IllegalArgumentException("Invalid Octet value!");
      break;
    case 153:
      if ((paramInt1 > 194) && (paramInt1 < 224))
        paramInt1 = 192;
      break;
    case 165:
    case 146:
    case 141:
    case 140:
    }
    do
      while (true)
      {
        this.a.put(Integer.valueOf(paramInt2), Integer.valueOf(paramInt1));
        return;
        if ((paramInt1 > 227) && (paramInt1 <= 255))
        {
          paramInt1 = 224;
        }
        else if ((paramInt1 < 128) || ((paramInt1 > 128) && (paramInt1 < 192)) || (paramInt1 > 255))
        {
          paramInt1 = 224;
          continue;
          if ((paramInt1 > 193) && (paramInt1 < 224))
          {
            paramInt1 = 192;
          }
          else if ((paramInt1 > 228) && (paramInt1 <= 255))
          {
            paramInt1 = 224;
          }
          else if ((paramInt1 < 128) || ((paramInt1 > 128) && (paramInt1 < 192)) || (paramInt1 > 255))
          {
            paramInt1 = 224;
            continue;
            if ((paramInt1 > 196) && (paramInt1 < 224))
            {
              paramInt1 = 192;
            }
            else if (((paramInt1 > 235) && (paramInt1 <= 255)) || (paramInt1 < 128) || ((paramInt1 > 136) && (paramInt1 < 192)) || (paramInt1 > 255))
            {
              paramInt1 = 224;
              continue;
              if ((paramInt1 < 16) || (paramInt1 > 19))
                paramInt1 = 18;
            }
          }
        }
      }
    while ((paramInt1 >= 128) && (paramInt1 <= 151));
    throw new IllegalArgumentException("Invalid Octet value!");
  }

  protected void a(long paramLong, int paramInt)
  {
    switch (paramInt)
    {
    default:
      throw new RuntimeException("Invalid header field!");
    case 133:
    case 135:
    case 136:
    case 142:
    case 157:
    case 159:
    case 161:
    case 173:
    case 175:
    case 179:
    }
    this.a.put(Integer.valueOf(paramInt), Long.valueOf(paramLong));
  }

  protected void a(b paramb, int paramInt)
  {
    if (paramb == null)
      throw new NullPointerException();
    switch (paramInt)
    {
    default:
      throw new RuntimeException("Invalid header field!");
    case 137:
    case 147:
    case 150:
    case 154:
    case 160:
    case 164:
    case 166:
    case 181:
    case 182:
    }
    this.a.put(Integer.valueOf(paramInt), paramb);
  }

  protected void a(byte[] paramArrayOfByte, int paramInt)
  {
    if (paramArrayOfByte == null)
      throw new NullPointerException();
    switch (paramInt)
    {
    default:
      throw new RuntimeException("Invalid header field!");
    case 131:
    case 132:
    case 138:
    case 139:
    case 152:
    case 158:
    case 183:
    case 184:
    case 185:
    case 189:
    case 190:
    }
    this.a.put(Integer.valueOf(paramInt), paramArrayOfByte);
  }

  public b b()
  {
    return c(137);
  }

  protected void b(b paramb, int paramInt)
  {
    if (paramb == null)
      throw new NullPointerException();
    switch (paramInt)
    {
    default:
      throw new RuntimeException("Invalid header field!");
    case 129:
    case 130:
    case 151:
    }
    ArrayList localArrayList = (ArrayList)this.a.get(Integer.valueOf(paramInt));
    if (localArrayList == null)
      localArrayList = new ArrayList();
    localArrayList.add(paramb);
    this.a.put(Integer.valueOf(paramInt), localArrayList);
  }

  protected byte[] b(int paramInt)
  {
    return (byte[])this.a.get(Integer.valueOf(paramInt));
  }

  protected b c(int paramInt)
  {
    return (b)this.a.get(Integer.valueOf(paramInt));
  }

  protected b[] d(int paramInt)
  {
    ArrayList localArrayList = (ArrayList)this.a.get(Integer.valueOf(paramInt));
    if (localArrayList == null);
    for (b[] arrayOfb = null; ; arrayOfb = (b[])localArrayList.toArray(new b[localArrayList.size()]))
      return arrayOfb;
  }

  protected long e(int paramInt)
  {
    Long localLong = (Long)this.a.get(Integer.valueOf(paramInt));
    if (localLong == null);
    for (long l = -1L; ; l = localLong.longValue())
      return l;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.filter.core.a.d
 * JD-Core Version:    0.6.2
 */