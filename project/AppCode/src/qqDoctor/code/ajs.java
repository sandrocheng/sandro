import android.graphics.drawable.Drawable;
import android.widget.ImageView;
import android.widget.TextView;
import com.tencent.qqpimsecure.uilib.model.ListModel;
import com.tencent.qqpimsecure.uilib.view.BaseView;
import java.util.List;

public abstract class ajs extends aju<la>
{
  private sl a;
  private Drawable b;
  private BaseView c;

  public ajs(BaseView paramBaseView, List<ListModel<la>> paramList)
  {
    super(paramBaseView.getContext(), paramList);
    this.c = paramBaseView;
    this.a = paramBaseView.getImageLoaderService();
    this.b = a();
  }

  public abstract Drawable a();

  protected final void a(ajs.a parama, la paramla)
  {
    parama.a.setImageDrawable(this.b);
    parama.a.setTag(paramla.a());
    if (paramla.b() != null)
    {
      if (((paramla.d() != null) && (!paramla.d().equals(this.b))) || (this.a == null))
        break label134;
      lv locallv = new lv();
      locallv.b = 0;
      locallv.g = paramla.a().hashCode();
      locallv.d = paramla.a();
      locallv.a = 0;
      locallv.h = paramla;
      locallv.i = new ajt(this);
      this.a.b(locallv);
    }
    while (true)
    {
      return;
      label134: if (paramla.d() == null)
        paramla.a(this.b);
      else
        parama.a.setImageDrawable(paramla.d());
    }
  }

  public static final class a
  {
    ImageView a;
    TextView b;
    TextView c;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     ajs
 * JD-Core Version:    0.6.2
 */