import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.tencent.qqpimsecure.uilib.model.ListModel;
import com.tencent.qqpimsecure.uilib.view.BaseView;
import java.util.List;

public final class ajv extends ajs
{
  public ajv(BaseView paramBaseView, List<ListModel<la>> paramList)
  {
    super(paramBaseView, paramList);
  }

  public final Drawable a()
  {
    return this.mContext.getResources().getDrawable(2130837521);
  }

  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    ajs.a locala;
    if (paramView == null)
    {
      paramView = createItemView(paramInt, 2130903334);
      locala = new ajs.a();
      locala.a = ((ImageView)paramView.findViewById(2131230855));
      locala.b = ((TextView)paramView.findViewById(2131231033));
      paramView.findViewById(2131231635);
      locala.c = ((TextView)paramView.findViewById(2131231298));
      paramView.setTag(locala);
    }
    while (true)
    {
      la localla = (la)this.mDataList.get(paramInt);
      locala.b.setText(localla.c() + "(" + localla.e() + ")");
      locala.a.setImageDrawable(localla.d());
      locala.c.setText(localla.f());
      a(locala, localla);
      return paramView;
      locala = (ajs.a)paramView.getTag();
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     ajv
 * JD-Core Version:    0.6.2
 */