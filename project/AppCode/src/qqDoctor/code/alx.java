import android.content.ActivityNotFoundException;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;
import com.tencent.qqpimsecure.uilib.model.ListModel;
import com.tencent.qqpimsecure.uilib.view.BaseListView;
import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.module.software.SoftwareManager;
import java.util.List;

public final class alx extends akw
{
  public alx(BaseListView<kw> paramBaseListView, List<ListModel<kw>> paramList)
  {
    super(paramBaseListView, paramBaseListView.getListView(), paramList, 2);
  }

  public final void a(akw.a parama, kw paramkw)
  {
    parama.e.setVisibility(8);
    String str = a.b(paramkw.I());
    parama.d.setText(str);
    parama.j.setVisibility(0);
    parama.j.setClickable(false);
    parama.j.setBackgroundResource(2130837872);
  }

  public final void b(View paramView)
  {
    kw localkw = (kw)paramView.getTag();
    SoftwareManager localSoftwareManager = (SoftwareManager)ManagerCreator.getManager(SoftwareManager.class);
    try
    {
      localSoftwareManager.goToInstalledAppDetails(localkw.getPackageName());
      nd.a().a(22);
      return;
    }
    catch (ActivityNotFoundException localActivityNotFoundException)
    {
      while (true)
        ha.b(this.mContext, 2131429531);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     alx
 * JD-Core Version:    0.6.2
 */