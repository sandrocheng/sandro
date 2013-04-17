import com.tencent.tmsecure.module.qscanner.QScanListener;
import com.tencent.tmsecure.module.qscanner.QScanResultEntity;
import java.util.ArrayList;

final class ol extends QScanListener
{
  ol(ok paramok)
  {
  }

  public final void onScanFinished(ArrayList<QScanResultEntity> paramArrayList)
  {
    super.onScanFinished(paramArrayList);
    this.a.j = paramArrayList;
    ok.a(this.a);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     ol
 * JD-Core Version:    0.6.2
 */