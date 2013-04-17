import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageButton;
import android.widget.ListView;
import android.widget.TextView;
import java.util.ArrayList;

public final class aib extends BaseAdapter
{
  ArrayList<String> a;
  ArrayList<String> b;
  private LayoutInflater c;
  private ListView d;
  private ayp e;

  public aib(Context paramContext, ArrayList<String> paramArrayList, ListView paramListView, ayp paramayp)
  {
    this.c = LayoutInflater.from(paramContext);
    this.a = paramArrayList;
    this.b = new ArrayList();
    this.d = paramListView;
    this.e = paramayp;
  }

  public final ArrayList<String> a()
  {
    return this.b;
  }

  public final void a(ArrayList<String> paramArrayList)
  {
    this.a = paramArrayList;
  }

  public final boolean areAllItemsEnabled()
  {
    return true;
  }

  public final void b()
  {
    this.b.clear();
  }

  public final int getCount()
  {
    return this.a.size();
  }

  public final Object getItem(int paramInt)
  {
    return null;
  }

  public final long getItemId(int paramInt)
  {
    return 0L;
  }

  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    aib.a locala;
    if (paramView == null)
    {
      locala = new aib.a();
      paramView = this.c.inflate(2130903323, null);
      locala.a = ((TextView)paramView.findViewById(2131231616));
      locala.b = ((ImageButton)paramView.findViewById(2131231617));
      paramView.setTag(locala);
    }
    while (true)
    {
      locala.a.setText((CharSequence)this.a.get(paramInt));
      locala.b.setTag(locala.a.getText().toString());
      locala.b.setOnClickListener(new aic(this));
      return paramView;
      locala = (aib.a)paramView.getTag();
    }
  }

  public final class a
  {
    public TextView a;
    public ImageButton b;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     aib
 * JD-Core Version:    0.6.2
 */