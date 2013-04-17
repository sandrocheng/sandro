package com.tencent.tmsecure.module.market;

import com.tencent.tmsecure.common.BaseEntity;
import com.tencent.tmsecure.utils.PhoneInfoUtil;

public class RequestInfo extends BaseEntity
{
  public int categoryID;
  public int fetchOffset;
  public int fetchSize;
  public String keyWord;
  public int pushType = 0;
  public int sort_type;
  public String time;
  public int type;

  public static int getCategoryId(int paramInt)
  {
    int i = 0;
    switch (paramInt)
    {
    case 3:
    case 4:
    case 5:
    case 9:
    case 11:
    case 12:
    default:
    case 2:
    case 10:
    case 6:
    case 7:
    case 8:
    case 13:
    case 14:
    case 15:
    }
    while (true)
    {
      return i;
      i = 10001;
      continue;
      i = 10002;
      continue;
      i = 2000001;
      continue;
      i = 2000002;
      continue;
      i = 3000000;
      continue;
      i = 2000011;
      continue;
      i = 20120413;
      continue;
      i = 2000010;
    }
  }

  public String getRequestCommand()
  {
    int i;
    StringBuffer localStringBuffer;
    if (this.sort_type == 0)
    {
      i = 1;
      localStringBuffer = new StringBuffer();
      switch (this.type)
      {
      case 5:
      default:
      case 3:
      case 16:
      case 11:
      case 9:
      case 4:
      case 12:
      case 2:
      case 6:
      case 7:
      case 10:
      case 13:
      case 14:
      case 15:
      case 8:
      }
    }
    while (true)
    {
      return localStringBuffer.toString();
      i = 0;
      break;
      localStringBuffer.append("categorytype=0");
      continue;
      localStringBuffer.append("categorytype=1");
      continue;
      localStringBuffer.append("categorytype=2&time=").append(this.time).append("&pushtype=").append(this.pushType);
      continue;
      localStringBuffer.append("categorytype=3");
      continue;
      localStringBuffer.append("categoryid=").append(this.categoryID).append("&begin=").append(this.fetchOffset).append("&items=").append(this.fetchSize).append("&order=").append(i);
      continue;
      localStringBuffer.append("categoryid=").append(getCategoryId(this.type)).append("&begin=").append(this.fetchOffset).append("&items=").append(this.fetchSize).append("&order=").append(i);
      continue;
      localStringBuffer.append("categoryid=3000000&begin=").append(this.fetchOffset).append("&items=").append(this.fetchSize).append("&order=").append(i).append("&qua=").append("AQQSecure_GA_2_0/011201&ADR&" + PhoneInfoUtil.getModelName() + "&V2").append("&guid=0&query=").append(this.keyWord);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.tmsecure.module.market.RequestInfo
 * JD-Core Version:    0.6.2
 */