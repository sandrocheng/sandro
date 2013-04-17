import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.widget.AbsListView;
import android.widget.AbsListView.OnScrollListener;
import android.widget.BaseAdapter;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Set;

public abstract class ajo extends BaseAdapter
  implements AbsListView.OnScrollListener
{
  protected Drawable a;
  protected Drawable b;
  int c;
  int d;
  boolean e;
  private aby f;
  private int g;
  private boolean h;
  private ajo.a i = new ajo.a();
  private ajo.a j = new ajo.a();
  private final LinkedList<Integer> k = new LinkedList();
  private final HashMap<Integer, BitmapDrawable> l = new HashMap(60);
  private List<? extends lr> m;
  private int n = 0;
  private Handler o = new ajp(this);
  private abu.a p = new ajq(this);

  public ajo(List<? extends lr> paramList, boolean paramBoolean)
  {
    this.m = paramList;
    if (paramBoolean);
    for (this.f = new acb(); ; this.f = new aca())
    {
      this.g = 0;
      this.h = true;
      this.d = 6;
      return;
    }
  }

  private int a(int paramInt1, int paramInt2)
  {
    int i1 = paramInt1;
    if (i1 <= paramInt2)
    {
      lr locallr = (lr)this.m.get(i1);
      if ((locallr.d) || (locallr.c) || ((locallr.e != null) && (locallr.e.getBitmap() != null) && (!locallr.e.getBitmap().isRecycled())))
        break label130;
      int i3 = locallr.f;
      BitmapDrawable localBitmapDrawable = (BitmapDrawable)this.l.get(Integer.valueOf(i3));
      if ((localBitmapDrawable == null) || (localBitmapDrawable.getBitmap() == null) || (localBitmapDrawable.getBitmap().isRecycled()));
    }
    if (i1 > paramInt2);
    for (int i2 = -1; ; i2 = i1)
    {
      return i2;
      label130: i1++;
      break;
    }
  }

  private int b(int paramInt)
  {
    int i1;
    if (this.m.isEmpty())
      i1 = -1;
    while (true)
    {
      return i1;
      Iterator localIterator = this.m.iterator();
      for (i1 = 0; (localIterator.hasNext()) && (((lr)localIterator.next()).f != paramInt); i1++);
      if (i1 >= this.m.size())
      {
        new StringBuilder("key2Postion error: none matches: i=").append(i1).toString();
        i1 = -1;
      }
    }
  }

  public final void a()
  {
    notifyDataSetChanged();
  }

  protected abstract void a(int paramInt);

  protected abstract void a(mq parammq, lr paramlr);

  protected abstract void a(mq parammq, boolean paramBoolean);

  public final void a(boolean paramBoolean)
  {
    if (paramBoolean)
    {
      Iterator localIterator2 = this.l.keySet().iterator();
      while (localIterator2.hasNext())
        a(b(((Integer)localIterator2.next()).intValue()));
    }
    Iterator localIterator1 = this.l.values().iterator();
    while (localIterator1.hasNext())
    {
      BitmapDrawable localBitmapDrawable = (BitmapDrawable)localIterator1.next();
      if (localBitmapDrawable != null)
      {
        Bitmap localBitmap = localBitmapDrawable.getBitmap();
        if ((localBitmap != null) && (!localBitmap.isRecycled()))
          localBitmap.recycle();
      }
    }
    this.l.clear();
    this.k.clear();
  }

  public final void b()
  {
  }

  public final void b(boolean paramBoolean)
  {
    this.e = paramBoolean;
    if ((!this.e) && (!this.m.isEmpty()))
      this.o.sendEmptyMessage(3);
  }

  public final void c()
  {
    a(false);
    if (this.f != null)
      this.f.e();
    this.o.removeMessages(3);
    this.o.removeMessages(1);
    this.o.removeMessages(2);
  }

  public final boolean d()
  {
    return this.e;
  }

  public void onScroll(AbsListView paramAbsListView, int paramInt1, int paramInt2, int paramInt3)
  {
    int i1;
    if (paramInt2 != 0)
    {
      if (this.g != paramInt3)
      {
        this.g = paramInt3;
        this.h = true;
      }
      i1 = -1 + (paramInt1 + paramInt2);
      if ((paramInt1 >= this.i.a) && (i1 >= this.i.b))
        break label157;
      this.i.c = -1;
    }
    while (true)
    {
      this.i.a = paramInt1;
      this.i.b = i1;
      int i2 = (-1 + (paramInt2 + this.c)) / this.c / 2 * this.c;
      this.j.a = Math.max(0, paramInt1 - i2);
      this.j.b = Math.min(paramInt3 - 1, i1 + i2);
      if (this.h)
      {
        this.o.sendEmptyMessage(3);
        this.h = false;
      }
      return;
      label157: if ((paramInt1 > this.i.a) || (i1 > this.i.b))
        this.i.c = 1;
      else
        this.i.c = 0;
    }
  }

  public void onScrollStateChanged(AbsListView paramAbsListView, int paramInt)
  {
    if (paramInt == 2);
    for (this.h = false; ; this.h = true)
    {
      if (this.h)
      {
        if (!this.m.isEmpty())
          this.o.sendEmptyMessage(3);
        this.h = false;
      }
      return;
    }
  }

  final class a
  {
    int a;
    int b;
    int c;

    public final String toString()
    {
      String str;
      if (this.c == -1)
        str = "Up";
      while (true)
      {
        return "Scope:[" + this.a + "," + this.b + "],Direction:" + str;
        if (this.c == 1)
          str = "Down";
        else
          str = "Still";
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     ajo
 * JD-Core Version:    0.6.2
 */