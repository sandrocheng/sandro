import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.widget.GridView;
import android.widget.ImageView;
import com.tencent.qqpimsecure.uilib.view.BaseView;
import com.tencent.qqpimsecure.uilib.view.CheckBoxView;
import java.util.List;

public final class aji extends ajd
{
  private Bitmap g;
  private GridView h;
  private boolean i;

  public aji(Context paramContext, BaseView paramBaseView, Boolean paramBoolean, List<lj> paramList, boolean paramBoolean1)
  {
    super(paramContext, paramBaseView, paramBoolean, paramList);
    this.g = BitmapFactory.decodeResource(paramContext.getResources(), 2130838222);
    this.h = ((GridView)paramBaseView.findViewById(2131231011));
    this.i = paramBoolean1;
  }

  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    aji.a locala1;
    lj locallj;
    label273: int j;
    label290: int k;
    if (paramView == null)
    {
      paramView = this.d.inflate(2130903089, paramViewGroup, false);
      aji.a locala2 = new aji.a();
      locala2.a = ((ImageView)paramView.findViewById(2131230845));
      locala2.b = ((CheckBoxView)paramView.findViewById(2131230847));
      locala2.c = ((ImageView)paramView.findViewById(2131230848));
      paramView.setTag(locala2);
      ViewGroup.LayoutParams localLayoutParams = locala2.a.getLayoutParams();
      localLayoutParams.width = lm.e.a;
      localLayoutParams.height = lm.e.b;
      locala2.a.setLayoutParams(localLayoutParams);
      locala1 = locala2;
      locallj = (lj)this.e.get(paramInt);
      if (locallj.e() != null)
        break label399;
      locala1.a.setImageBitmap(this.g);
      locala1.a.setTag(locallj.b() + "_tmb");
      li localli = new li();
      String str = locallj.b() + "_tmb";
      localli.g = str.hashCode();
      localli.a = str;
      localli.h = locallj;
      localli.i = new ajk(this);
      ((atb)this.f).c().b(localli);
      CheckBoxView localCheckBoxView = locala1.b;
      if (!this.b)
        break label415;
      j = 0;
      localCheckBoxView.setVisibility(j);
      if (locallj != null)
        break label422;
      k = -1;
      label305: locala1.b.setClickListener(null);
      locala1.b.setChecked(this.c.contains(Integer.valueOf(k)));
      locala1.b.setTag(locallj);
      locala1.b.setClickListener(new ajj(this));
      if ((!this.i) || (this.b))
        break label435;
      locala1.c.setVisibility(0);
    }
    while (true)
    {
      return paramView;
      locala1 = (aji.a)paramView.getTag();
      break;
      label399: locala1.a.setImageBitmap(locallj.e());
      break label273;
      label415: j = 8;
      break label290;
      label422: k = locallj.a().hashCode();
      break label305;
      label435: locala1.c.setVisibility(8);
    }
  }

  final class a
  {
    ImageView a;
    CheckBoxView b;
    ImageView c;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     aji
 * JD-Core Version:    0.6.2
 */