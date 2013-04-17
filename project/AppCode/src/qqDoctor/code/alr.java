import com.tencent.qqpimsecure.uilib.model.ListModel;
import com.tencent.qqpimsecure.uilib.model.OperatingModel;
import com.tencent.qqpimsecure.uilib.view.BaseListView;
import java.util.List;

public final class alr extends akw
{
  public alr(BaseListView<kw> paramBaseListView, List<ListModel<kw>> paramList)
  {
    super(paramBaseListView, paramBaseListView.getListView(), paramList, 2);
  }

  public final void a()
  {
    BaseListView localBaseListView = (BaseListView)this.b;
    List localList = localBaseListView.getOperatingBarDataList();
    if (localList.size() == 3)
    {
      ((OperatingModel)localList.get(0)).setNumber(c().size());
      ((OperatingModel)localList.get(1)).setNumber(c().size());
      if ((c().size() != this.mDataList.size()) || (this.mDataList.size() == 0))
        break label232;
      ((OperatingModel)localList.get(2)).setCheck(true);
      if (c().size() <= 0)
        break label278;
      ((OperatingModel)localList.get(0)).setEnable(true);
      ((OperatingModel)localList.get(1)).setEnable(true);
      if (c().size() >= this.mDataList.size())
        break label261;
      ((OperatingModel)localList.get(2)).setCheck(false);
    }
    while (true)
    {
      localBaseListView.refreshOperatingBar((OperatingModel)localList.get(0));
      localBaseListView.refreshOperatingBar((OperatingModel)localList.get(1));
      localBaseListView.refreshOperatingBar((OperatingModel)localList.get(2));
      return;
      label232: if (c().size() != 0)
        break;
      ((OperatingModel)localList.get(2)).setCheck(false);
      break;
      label261: ((OperatingModel)localList.get(2)).setCheck(true);
      continue;
      label278: if (c().size() == 0)
      {
        ((OperatingModel)localList.get(0)).setEnable(false);
        ((OperatingModel)localList.get(1)).setEnable(false);
        ((OperatingModel)localList.get(0)).setNumber(0);
        ((OperatingModel)localList.get(1)).setNumber(0);
      }
    }
  }

  protected final void a(akw.a parama, kw paramkw)
  {
  }

  protected final void a(kw paramkw)
  {
    if (paramkw.f() == -1)
      paramkw.b(1);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     alr
 * JD-Core Version:    0.6.2
 */