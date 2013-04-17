import com.tencent.tmsecure.module.network.INetworkInfoDao;
import com.tencent.tmsecure.module.network.NetDataEntity;
import com.tencent.tmsecure.module.network.NetDataEntityFactory;
import java.io.File;

final class bwk extends bwl
{
  public bwk(INetworkInfoDao paramINetworkInfoDao, bwn parambwn)
  {
    super(new bwk.a(parambwn), paramINetworkInfoDao);
  }

  static final class a
    implements NetDataEntityFactory
  {
    private bwn a;
    private String b = bwo.a();

    public a(bwn parambwn)
    {
      this.a = parambwn;
    }

    public final NetDataEntity getNetDataEntity()
    {
      NetDataEntity localNetDataEntity = new NetDataEntity();
      long[] arrayOfLong = new long[4];
      String[] arrayOfString1 = btd.b(new File(this.b));
      int i;
      if (arrayOfString1 != null)
        i = arrayOfString1.length;
      for (int j = 0; ; j++)
      {
        if (j >= i)
        {
          localNetDataEntity.mReceiver = arrayOfLong[0];
          localNetDataEntity.mReceiverPks = arrayOfLong[1];
          localNetDataEntity.mTranslate = arrayOfLong[2];
          localNetDataEntity.mTranslatePks = arrayOfLong[3];
          return localNetDataEntity;
        }
        String[] arrayOfString2 = arrayOfString1[j].trim().split("[:\\s]+");
        String str = arrayOfString2[0].trim().toLowerCase();
        if (this.a.a(str))
        {
          arrayOfLong[0] += Long.parseLong(arrayOfString2[1]);
          arrayOfLong[1] += Long.parseLong(arrayOfString2[2]);
          arrayOfLong[2] += Long.parseLong(arrayOfString2[9]);
          arrayOfLong[3] += Long.parseLong(arrayOfString2[10]);
        }
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bwk
 * JD-Core Version:    0.6.2
 */