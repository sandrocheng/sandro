package com.tencent.lbsapi.core;

import LBSAPIProtocol.GPS;
import LBSAPIProtocol.PoiInfo;
import LBSAPIProtocol.RspGetPoiList;
import LBSAPIProtocol.RspGetPosition;
import LBSAPIProtocol.RspSearchNearPoiList;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import com.qq.taf.jce.JceInputStream;
import com.tencent.lbsapi.QLBSNotification;
import com.tencent.lbsapi.model.QLBSGPSInfo;
import com.tencent.lbsapi.model.QLBSPoiInfo;
import com.tencent.lbsapi.model.QLBSPoiInfoBatch;
import com.tencent.lbsapi.model.QLBSPosition;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

class k extends Handler
{
  k(i parami, QLBSNotification paramQLBSNotification)
  {
  }

  public void handleMessage(Message paramMessage)
  {
    switch (paramMessage.what)
    {
    default:
    case 0:
    case 1:
    case 2:
    case 3:
    }
    while (true)
    {
      return;
      int i2 = paramMessage.getData().getInt("requestId");
      int i3 = paramMessage.getData().getInt("ErrorCode");
      String str = paramMessage.getData().getString("ErrorInfo");
      if (this.a != null)
      {
        this.a.onResponseError(i2, i3, str);
        continue;
        int n;
        try
        {
          byte[] arrayOfByte3 = paramMessage.getData().getByteArray("RspGetPosition");
          int i1 = paramMessage.getData().getInt("requestId");
          RspGetPosition localRspGetPosition = new RspGetPosition();
          localRspGetPosition.readFrom(new JceInputStream(arrayOfByte3));
          QLBSPosition localQLBSPosition = new QLBSPosition();
          localQLBSPosition.setProvince(localRspGetPosition.getStrProvince());
          localQLBSPosition.setCity(localRspGetPosition.getStrCity());
          localQLBSPosition.setDistrict(localRspGetPosition.getStrDistrict());
          localQLBSPosition.setTown(localRspGetPosition.getStrTown());
          localQLBSPosition.setRoad(localRspGetPosition.getStrRoad());
          localQLBSPosition.setPremises(localRspGetPosition.getStrPremises());
          localQLBSPosition.setRange(localRspGetPosition.getIRange());
          if (localRspGetPosition.getStUsrLoc().getILat() != 900000000)
            localQLBSPosition.setGps(new QLBSGPSInfo(localRspGetPosition.getStUsrLoc().getILat(), localRspGetPosition.getStUsrLoc().getILon(), -1, 1));
          if (this.a == null)
            continue;
          this.a.onResponseGetPosition(i1, localQLBSPosition);
        }
        catch (Exception localException3)
        {
          n = paramMessage.getData().getInt("requestId");
        }
        if (this.a != null)
        {
          this.a.onResponseError(n, -2, "wup回包解析异常");
          continue;
          int m;
          QLBSPoiInfoBatch localQLBSPoiInfoBatch2;
          int k;
          try
          {
            byte[] arrayOfByte2 = paramMessage.getData().getByteArray("RspGetPoiList");
            m = paramMessage.getData().getInt("requestId");
            RspGetPoiList localRspGetPoiList = new RspGetPoiList();
            localRspGetPoiList.readFrom(new JceInputStream(arrayOfByte2));
            localQLBSPoiInfoBatch2 = new QLBSPoiInfoBatch();
            localQLBSPoiInfoBatch2.setTotalNum(localRspGetPoiList.getITotalNum());
            if (localRspGetPoiList.getStUsrLoc().getILat() != 900000000)
              localQLBSPoiInfoBatch2.setGpsInfo(new QLBSGPSInfo(localRspGetPoiList.getStUsrLoc().getILat(), localRspGetPoiList.getStUsrLoc().getILon(), -1, 1));
            if (localRspGetPoiList.getVPoiList() == null)
              break label607;
            Iterator localIterator2 = localRspGetPoiList.getVPoiList().iterator();
            while (localIterator2.hasNext())
            {
              PoiInfo localPoiInfo2 = (PoiInfo)localIterator2.next();
              QLBSPoiInfo localQLBSPoiInfo2 = new QLBSPoiInfo(localPoiInfo2.strName, localPoiInfo2.iType, localPoiInfo2.strTypeName, localPoiInfo2.strAddress, localPoiInfo2.getLId(), localPoiInfo2.iDistrictCode, localPoiInfo2.iDistance, localPoiInfo2.iHotValue);
              if (localPoiInfo2.getILat() != 900000000)
                localQLBSPoiInfo2.setMarsGps(new QLBSGPSInfo(localPoiInfo2.getILat(), localPoiInfo2.getILon(), -1, 1));
              localQLBSPoiInfoBatch2.getPoiList().add(localQLBSPoiInfo2);
            }
          }
          catch (Exception localException2)
          {
            k = paramMessage.getData().getInt("requestId");
          }
          label911: if (this.a != null)
          {
            this.a.onResponseError(k, -2, "wup回包解析异常");
            continue;
            label607: if (this.a != null)
            {
              this.a.onResponseGetNearPoiList(m, localQLBSPoiInfoBatch2);
              continue;
              int j;
              QLBSPoiInfoBatch localQLBSPoiInfoBatch1;
              int i;
              try
              {
                byte[] arrayOfByte1 = paramMessage.getData().getByteArray("RspSearchNearPoiList");
                j = paramMessage.getData().getInt("requestId");
                RspSearchNearPoiList localRspSearchNearPoiList = new RspSearchNearPoiList();
                localRspSearchNearPoiList.readFrom(new JceInputStream(arrayOfByte1));
                localQLBSPoiInfoBatch1 = new QLBSPoiInfoBatch();
                localQLBSPoiInfoBatch1.setTotalNum(localRspSearchNearPoiList.getITotalNum());
                if (localRspSearchNearPoiList.getStUsrLoc().getILat() != 900000000)
                  localQLBSPoiInfoBatch1.setGpsInfo(new QLBSGPSInfo(localRspSearchNearPoiList.getStUsrLoc().getILat(), localRspSearchNearPoiList.getStUsrLoc().getILon(), -1, 1));
                if (localRspSearchNearPoiList.getVPoiList() == null)
                  break label911;
                Iterator localIterator1 = localRspSearchNearPoiList.getVPoiList().iterator();
                while (localIterator1.hasNext())
                {
                  PoiInfo localPoiInfo1 = (PoiInfo)localIterator1.next();
                  QLBSPoiInfo localQLBSPoiInfo1 = new QLBSPoiInfo(localPoiInfo1.strName, localPoiInfo1.iType, localPoiInfo1.strTypeName, localPoiInfo1.strAddress, localPoiInfo1.getLId(), localPoiInfo1.iDistrictCode, localPoiInfo1.iDistance, localPoiInfo1.iHotValue);
                  if (localPoiInfo1.getILat() != 900000000)
                    localQLBSPoiInfo1.setMarsGps(new QLBSGPSInfo(localPoiInfo1.getILat(), localPoiInfo1.getILon(), -1, 1));
                  localQLBSPoiInfoBatch1.getPoiList().add(localQLBSPoiInfo1);
                }
              }
              catch (Exception localException1)
              {
                i = paramMessage.getData().getInt("requestId");
              }
              if (this.a != null)
              {
                this.a.onResponseError(i, -2, "wup回包解析异常");
                continue;
                if (this.a != null)
                  this.a.onResponseSearchNearPoiList(j, localQLBSPoiInfoBatch1);
              }
            }
          }
        }
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.lbsapi.core.k
 * JD-Core Version:    0.6.2
 */