import com.tencent.qqpimsecure.uilib.view.BaseView;
import com.tencent.qqpimsecure.uilib.view.template.FrameworkTemplateUI;
import com.tencent.qqpimsecure.view.permission.MonitorLogListView;

final class bct
  implements xi.a
{
  bct(bcs parambcs)
  {
  }

  public final void a(int paramInt)
  {
    MonitorLogListView.a(this.a.a, paramInt);
    if (paramInt == 0)
      MonitorLogListView.g(this.a.a).getFrameworkTemplateUI().removeExistedTipsView();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bct
 * JD-Core Version:    0.6.2
 */