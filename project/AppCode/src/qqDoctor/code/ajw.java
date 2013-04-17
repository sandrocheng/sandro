import android.content.Context;
import android.content.res.Resources;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RatingBar;
import android.widget.TextView;
import com.tencent.qqpimsecure.uilib.model.ListModel;
import com.tencent.qqpimsecure.uilib.view.BaseListView;
import com.tencent.qqpimsecure.uilib.view.CheckBoxView;
import java.util.List;

public final class ajw extends akw
{
  public ajw(BaseListView<kw> paramBaseListView, List<ListModel<kw>> paramList)
  {
    super(paramBaseListView, paramBaseListView.getListView(), paramList, 0);
  }

  public final void a(akw.a parama, kw paramkw)
  {
    parama.i.setVisibility(8);
    parama.m.setRating(paramkw.l());
    if ((paramkw.n() == 2) || (paramkw.n() == 3))
    {
      parama.l.setVisibility(0);
      parama.l.setText(kw.a[2]);
      parama.l.setTextColor(this.mContext.getResources().getColor(2131296286));
    }
    while (true)
    {
      parama.m.setVisibility(8);
      parama.o.setVisibility(0);
      parama.o.setRating(paramkw.l());
      parama.g.setText(paramkw.Q());
      parama.g.setVisibility(8);
      parama.q.setVisibility(8);
      parama.p.setVisibility(0);
      parama.e.setVisibility(8);
      return;
      parama.l.setVisibility(4);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     ajw
 * JD-Core Version:    0.6.2
 */