import com.tencent.qqpimsecure.view.MainPageView;
import com.tencent.tmsecure.utils.ScriptHelper;

public final class anw
  implements Runnable
{
  public anw(MainPageView paramMainPageView)
  {
  }

  public final void run()
  {
    ScriptHelper.canRunAtRoot();
    MainPageView.b(this.a).bw();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     anw
 * JD-Core Version:    0.6.2
 */