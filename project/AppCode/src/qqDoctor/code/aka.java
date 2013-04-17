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

public final class aka extends ajs
{
  public aka(BaseView paramBaseView, List<ListModel<la>> paramList)
  {
    super(paramBaseView, paramList);
  }

  public final Drawable a()
  {
    return this.mContext.getResources().getDrawable(2130837604);
  }

  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    ajs.a locala;
    if (paramView == null)
    {
      paramView = createItemView(paramInt, 2130903335);
      locala = new ajs.a();
      locala.a = ((ImageView)paramView.findViewById(2131230855));
      locala.b = ((TextView)paramView.findViewById(2131231033));
      locala.c = ((TextView)paramView.findViewById(2131231298));
      paramView.setTag(locala);
    }
    while (true)
    {
      la localla = (la)this.mDataList.get(paramInt);
      locala.b.setText(localla.c());
      locala.a.setImageDrawable(localla.d());
      a(locala, localla);
      int i = Integer.parseInt(localla.f());
      TextView localTextView = locala.c;
      String str = this.mContext.getString(2131427808);
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = Integer.valueOf(i);
      localTextView.setText(String.format(str, arrayOfObject));
      return paramView;
      locala = (ajs.a)paramView.getTag();
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     aka
 * JD-Core Version:    0.6.2
 */