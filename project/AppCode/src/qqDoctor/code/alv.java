import android.content.Context;
import android.content.res.Resources;
import android.util.DisplayMetrics;
import android.widget.TextView;
import com.tencent.qqpimsecure.uilib.model.ListModel;
import com.tencent.qqpimsecure.uilib.view.BaseListView;
import com.tencent.qqpimsecure.uilib.view.CheckBoxView;
import java.util.List;

public final class alv extends akw
{
  private int c;

  public alv(BaseListView<kw> paramBaseListView, List<ListModel<kw>> paramList)
  {
    super(paramBaseListView, paramBaseListView.getListView(), paramList, 2);
  }

  public final void a(int paramInt)
  {
    this.c = paramInt;
  }

  public final void a(akw.a parama, kw paramkw)
  {
    parama.d.setWidth((int)(0.5F + 120.0F * this.mContext.getResources().getDisplayMetrics().density));
    parama.d.setVisibility(8);
    parama.f.setVisibility(8);
    parama.e.setVisibility(8);
    new StringBuilder("initView mCanRunAtRoot = ").append(this.c).toString();
    if (this.c == 0)
    {
      parama.i.setVisibility(0);
      parama.i.setCheckBoxType(0);
      parama.i.setBackGroundRes(2130837582);
      parama.i.setChecked(paramkw.m());
      parama.i.setOnClickListener(new alw(this, paramkw));
    }
    while (true)
    {
      return;
      parama.i.setVisibility(8);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     alv
 * JD-Core Version:    0.6.2
 */