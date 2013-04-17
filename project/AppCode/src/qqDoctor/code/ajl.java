import android.content.Context;
import android.content.res.Resources;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.tencent.qqpimsecure.uilib.view.BaseView;
import com.tencent.qqpimsecure.uilib.view.CheckBoxView;
import com.tencent.tmsecure.utils.StringUtil;
import java.util.List;

public final class ajl extends ajd
{
  public ajl(Context paramContext, BaseView paramBaseView, Boolean paramBoolean, List<lj> paramList)
  {
    super(paramContext, paramBaseView, paramBoolean, paramList);
  }

  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    int i = -1;
    ajl.a locala;
    label93: lj locallj;
    String str;
    if (paramView == null)
    {
      paramView = this.d.inflate(2130903087, paramViewGroup, false);
      locala = new ajl.a();
      locala.a = ((ImageView)paramView.findViewById(2131230845));
      locala.b = ((TextView)paramView.findViewById(2131230846));
      locala.c = ((CheckBoxView)paramView.findViewById(2131230847));
      paramView.setTag(locala);
      if (!this.b)
        break label256;
      locala.c.setVisibility(0);
      locallj = (lj)this.e.get(paramInt);
      str = StringUtil.assertNotNullString(locallj.a());
      int j = str.lastIndexOf("/");
      if (j == i)
        break label269;
      locala.b.setText(str.substring(j + 1));
      label151: if (locallj.c() != 2)
        break label282;
      locala.a.setImageDrawable(this.a.getResources().getDrawable(2130837814));
      label180: if (locallj != null)
        break label305;
    }
    while (true)
    {
      locala.c.setClickListener(null);
      locala.c.setChecked(this.c.contains(Integer.valueOf(i)));
      locala.c.setTag(locallj);
      locala.c.setClickListener(new ajm(this));
      return paramView;
      locala = (ajl.a)paramView.getTag();
      break;
      label256: locala.c.setVisibility(8);
      break label93;
      label269: locala.b.setText(str);
      break label151;
      label282: locala.a.setImageDrawable(this.a.getResources().getDrawable(2130837803));
      break label180;
      label305: i = locallj.a().hashCode();
    }
  }

  final class a
  {
    ImageView a;
    TextView b;
    CheckBoxView c;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     ajl
 * JD-Core Version:    0.6.2
 */