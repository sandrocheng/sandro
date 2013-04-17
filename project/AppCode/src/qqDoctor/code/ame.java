import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.tencent.qqpimsecure.uilib.model.ListModel;
import com.tencent.qqpimsecure.uilib.model.OperatingModel;
import com.tencent.qqpimsecure.uilib.view.BaseListView;
import com.tencent.qqpimsecure.uilib.view.CheckBoxView;
import java.util.List;

public final class ame extends akw
{
  private final BaseListView<kw> c;

  public ame(BaseListView<kw> paramBaseListView, List<ListModel<kw>> paramList)
  {
    super(paramBaseListView, paramBaseListView.getListView(), paramList, 2);
    this.c = paramBaseListView;
  }

  public final void a()
  {
    OperatingModel localOperatingModel = (OperatingModel)this.c.getOperatingBarDataList().get(0);
    localOperatingModel.setNumber(c().size());
    int i = c().size();
    boolean bool = false;
    if (i > 0)
      bool = true;
    localOperatingModel.setEnable(bool);
    this.c.refreshOperatingBar(localOperatingModel);
  }

  protected final void a(akw.a parama, kw paramkw)
  {
    parama.d.setVisibility(8);
    parama.e.setVisibility(8);
    parama.f.setVisibility(8);
  }

  public final void c(akw.a parama, kw paramkw)
  {
    parama.k.setVisibility(0);
    parama.i.setVisibility(0);
    parama.j.setVisibility(8);
    if (d().contains(paramkw))
    {
      parama.i.setChecked(true);
      parama.n.setVisibility(0);
    }
    while (true)
    {
      parama.i.setClickListener(null);
      parama.i.setTag(paramkw);
      parama.i.setClickListener(new amf(this, parama));
      return;
      parama.i.setChecked(false);
      parama.n.setVisibility(4);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     ame
 * JD-Core Version:    0.6.2
 */