import android.os.Handler;
import com.tencent.powermanager.view.PowerManagerView;
import java.util.List;

final class eb extends s.a
{
  eb(ea paramea)
  {
  }

  public final void a(List<bf> paramList)
  {
    synchronized (PowerManagerView.b(this.a.a))
    {
      PowerManagerView.a(this.a.a, paramList);
      PowerManagerView.c(this.a.a).sendEmptyMessage(0);
      return;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     eb
 * JD-Core Version:    0.6.2
 */