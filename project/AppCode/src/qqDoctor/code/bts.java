import com.tencent.lbsapi.QLBSNotification;
import com.tencent.lbsapi.QLBSService;
import com.tencent.lbsapi.model.QLBSGPSInfo;
import com.tencent.lbsapi.model.QLBSPoiInfoBatch;
import com.tencent.lbsapi.model.QLBSPosition;
import com.tencent.tmsecure.module.antitheft.IAntitheftTips;
import com.tencent.tmsecure.utils.PhoneInfoUtil;
import com.tencent.tmsecure.utils.SMSUtil;
import java.text.DecimalFormat;

final class bts
  implements QLBSNotification
{
  bts(btp parambtp, btp.a parama)
  {
  }

  public final void onLocationNotification(int paramInt)
  {
    if (btp.c(this.a) == null);
    while (true)
    {
      return;
      if (paramInt != 1)
      {
        if (!this.b.c)
          SMSUtil.sendSMS(this.b.a, btp.b(this.a).tips4LocateFaild(), btp.a(this.a));
        while (true)
        {
          btp.d(this.a);
          break;
          btp.a(this.a, this.b, (short)1, 0.0D, 0.0D);
        }
      }
      btp.c(this.a).requestGetCurrentPosition(101, PhoneInfoUtil.getIMEI(btp.a(this.a)), 3);
    }
  }

  public final void onResponseError(int paramInt1, int paramInt2, String paramString)
  {
    if (!this.b.c)
      SMSUtil.sendSMS(this.b.a, btp.b(this.a).tips4LocateFaild(), btp.a(this.a));
    while (true)
    {
      btp.d(this.a);
      return;
      btp.a(this.a, this.b, (short)1, 0.0D, 0.0D);
    }
  }

  public final void onResponseGetNearPoiList(int paramInt, QLBSPoiInfoBatch paramQLBSPoiInfoBatch)
  {
  }

  public final void onResponseGetPosition(int paramInt, QLBSPosition paramQLBSPosition)
  {
    double d1;
    double d2;
    if (paramQLBSPosition != null)
    {
      DecimalFormat localDecimalFormat = new DecimalFormat("#.00");
      d1 = paramQLBSPosition.getGps().getLat();
      d2 = paramQLBSPosition.getGps().getLon();
      if (!this.b.c)
      {
        String str1 = localDecimalFormat.format(d1);
        String str2 = localDecimalFormat.format(d2);
        String str3 = "http://msm.qq.com/1?" + str1 + "," + str2 + " \n" + paramQLBSPosition.getCity() + paramQLBSPosition.getDistrict() + paramQLBSPosition.getRoad() + "（纬度：" + str1 + ", 经度：" + str2 + "）";
        SMSUtil.sendSMS(this.b.a, btp.b(this.a).tips4LocateSuccess() + str3, btp.a(this.a));
      }
    }
    while (true)
    {
      btp.d(this.a);
      return;
      btp.a(this.a, this.b, (short)0, d2, d1);
      continue;
      if (!this.b.c)
        SMSUtil.sendSMS(this.b.a, btp.b(this.a).tips4LocateFaild(), btp.a(this.a));
      else
        btp.a(this.a, this.b, (short)1, 0.0D, 0.0D);
    }
  }

  public final void onResponseSearchNearPoiList(int paramInt, QLBSPoiInfoBatch paramQLBSPoiInfoBatch)
  {
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bts
 * JD-Core Version:    0.6.2
 */