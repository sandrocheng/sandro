import android.content.Context;
import com.tencent.qqpimsecure.service.QQPimApplication;
import com.tencent.tmsecure.module.qscanner.QScanListener;
import com.tencent.tmsecure.module.qscanner.QScanResultEntity;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

final class acq extends QScanListener
{
  acq(acp paramacp, String paramString)
  {
  }

  public final void onScanFinished(ArrayList<QScanResultEntity> paramArrayList)
  {
    super.onScanFinished(paramArrayList);
    this.b.a = paramArrayList;
    Iterator localIterator = this.b.a.iterator();
    while (localIterator.hasNext())
    {
      QScanResultEntity localQScanResultEntity = (QScanResultEntity)localIterator.next();
      if (localQScanResultEntity.type == 8)
        localQScanResultEntity.discription = QQPimApplication.a().getString(2131428040);
    }
    acp.a(this.b, this.a);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     acq
 * JD-Core Version:    0.6.2
 */