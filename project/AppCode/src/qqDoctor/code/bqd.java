import com.tencent.qqpimsecure.uilib.model.TabModel;
import com.tencent.qqpimsecure.uilib.ui.adapter.TabAdapter;
import java.util.List;

final class bqd
  implements Runnable
{
  bqd(bqc parambqc, String paramString)
  {
  }

  public final void run()
  {
    List localList = bqb.b(this.b.a).getDataList();
    ((TabModel)localList.get(1)).setContent(this.a);
    bqb.b(this.b.a).setDataList(localList);
    bqb.b(this.b.a).notifyDataSetChanged();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bqd
 * JD-Core Version:    0.6.2
 */