import com.tencent.tmsecure.module.qscanner.QScanListener;
import com.tencent.tmsecure.module.qscanner.QScanResultEntity;
import java.util.ArrayList;

final class wp extends QScanListener
{
  wp(wn paramwn, mb parammb, mb.a parama)
  {
  }

  public final void onScanFinished(ArrayList<QScanResultEntity> paramArrayList)
  {
    super.onScanFinished(paramArrayList);
    wn.a(this.c, paramArrayList);
    wn.a(this.c, this.a, this.b);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     wp
 * JD-Core Version:    0.6.2
 */