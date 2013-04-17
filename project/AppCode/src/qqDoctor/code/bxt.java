import android.app.Activity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.tencent.tmsecure.module.plugin.IContext.ILayoutInflater;

final class bxt
  implements IContext.ILayoutInflater
{
  private LayoutInflater a;

  bxt(bxr.a parama)
  {
    this.a = LayoutInflater.from(bxr.a(bxr.a.a(parama)));
  }

  public final View inflate(Activity paramActivity, int paramInt, ViewGroup paramViewGroup)
  {
    return this.a.inflate(paramInt, paramViewGroup);
  }

  public final View inflate(Activity paramActivity, int paramInt, ViewGroup paramViewGroup, boolean paramBoolean)
  {
    return this.a.inflate(paramInt, paramViewGroup, paramBoolean);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bxt
 * JD-Core Version:    0.6.2
 */