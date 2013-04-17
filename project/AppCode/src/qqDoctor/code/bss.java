import com.tencent.qqpimsecure.widget.AbstractWidgetProvider.a;
import java.util.ArrayList;
import java.util.HashMap;

public final class bss
{
  private static bss a = null;
  private HashMap<String, bsh> b = new HashMap();
  private ArrayList<AbstractWidgetProvider.a> c = new ArrayList();

  public static bss a()
  {
    try
    {
      if (a == null)
        a = new bss();
      bss localbss = a;
      return localbss;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final bsh a(String paramString, Boolean paramBoolean)
  {
    try
    {
      bsh localbsh = (bsh)this.b.get(paramString);
      if ((localbsh == null) && (paramBoolean.booleanValue()))
      {
        for (int i = 0; i < this.c.size(); i++)
        {
          localbsh = ((AbstractWidgetProvider.a)this.c.get(i)).a(paramString);
          if (localbsh != null)
            break;
        }
        if (localbsh != null)
          this.b.put(paramString, localbsh);
      }
      return localbsh;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final void a(AbstractWidgetProvider.a parama)
  {
    this.c.add(parama);
  }

  public final void a(String paramString)
  {
    this.b.remove(paramString);
    this.c.removeAll(this.c);
  }

  public final void b(AbstractWidgetProvider.a parama)
  {
    this.c.remove(parama);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bss
 * JD-Core Version:    0.6.2
 */