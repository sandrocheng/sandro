import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.ImageView;
import android.widget.TextView;
import java.util.List;

public final class db extends cz<dl>
{
  public db(Context paramContext, List<dk<dl>> paramList)
  {
    super(paramContext, paramList);
  }

  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    db.a locala;
    if (paramView == null)
    {
      paramView = a(paramInt, 2130903059);
      locala = new db.a();
      locala.b = ((TextView)paramView.findViewById(2131230784));
      locala.c = ((CheckBox)paramView.findViewById(2131230785));
      locala.a = ((ImageView)paramView.findViewById(2131230783));
      paramView.setTag(locala);
      if (((dl)this.a.get(paramInt)).a != null)
        break label180;
      locala.b.setVisibility(8);
    }
    while (true)
    {
      this.a.get(paramInt);
      ImageView localImageView = locala.a;
      this.a.get(paramInt);
      localImageView.setImageResource(0);
      locala.c.setClickable(false);
      locala.c.setChecked(((dl)this.a.get(paramInt)).b);
      return paramView;
      locala = (db.a)paramView.getTag();
      break;
      label180: locala.b.setText(((dl)this.a.get(paramInt)).a);
    }
  }

  static final class a
  {
    ImageView a;
    TextView b;
    CheckBox c;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     db
 * JD-Core Version:    0.6.2
 */