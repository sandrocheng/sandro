import com.tencent.qqpimsecure.uilib.model.ListModel;
import com.tencent.qqpimsecure.uilib.model.OperatingModel;
import com.tencent.qqpimsecure.uilib.view.BaseListView;
import java.util.List;

public final class alk extends akw
{
  public alk(BaseListView<kw> paramBaseListView, List<ListModel<kw>> paramList)
  {
    super(paramBaseListView, paramBaseListView.getListView(), paramList, 2);
  }

  public final void a()
  {
    BaseListView localBaseListView = (BaseListView)this.b;
    List localList = localBaseListView.getOperatingBarDataList();
    if (localList.size() == 1)
    {
      OperatingModel localOperatingModel = (OperatingModel)localList.get(0);
      localOperatingModel.setNumber(c().size());
      localBaseListView.refreshOperatingBar(localOperatingModel);
    }
  }

  protected final void a(akw.a parama, kw paramkw)
  {
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     alk
 * JD-Core Version:    0.6.2
 */