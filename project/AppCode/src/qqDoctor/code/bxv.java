import android.app.Activity;
import android.content.res.Resources;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.tencent.tmsecure.module.plugin.IContext.ILayoutInflater;

final class bxv
  implements IContext.ILayoutInflater
{
  bxv(bxr.b paramb)
  {
  }

  public final View inflate(Activity paramActivity, int paramInt, ViewGroup paramViewGroup)
  {
    bxr.b.a(this.a).a(paramActivity, bxr.b.b(this.a));
    LayoutInflater localLayoutInflater = LayoutInflater.from(paramActivity);
    if (localLayoutInflater.getFactory() == null)
      localLayoutInflater.setFactory(bxr.b.c(this.a));
    View localView = localLayoutInflater.inflate(bxr.b.d(this.a).getXml(paramInt), paramViewGroup);
    bxr.b.a(this.a).a();
    return localView;
  }

  public final View inflate(Activity paramActivity, int paramInt, ViewGroup paramViewGroup, boolean paramBoolean)
  {
    bxr.b.a(this.a).a(paramActivity, bxr.b.b(this.a));
    View localView = LayoutInflater.from(paramActivity).inflate(bxr.b.d(this.a).getXml(paramInt), paramViewGroup, paramBoolean);
    bxr.b.a(this.a).a();
    return localView;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bxv
 * JD-Core Version:    0.6.2
 */