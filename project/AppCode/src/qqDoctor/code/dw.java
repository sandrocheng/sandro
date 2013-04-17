import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.ListIterator;

public final class dw<T> extends ArrayList<WeakReference<T>>
{
  private <t> boolean c(T paramT)
  {
    ListIterator localListIterator = listIterator();
    WeakReference localWeakReference;
    do
    {
      if (!localListIterator.hasNext())
        break;
      localWeakReference = (WeakReference)localListIterator.next();
      if ((localWeakReference == null) || (localWeakReference.get() == null))
        localListIterator.remove();
    }
    while ((localWeakReference == null) || (localWeakReference.get() != paramT));
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final boolean a()
  {
    if (size() > 0);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final boolean a(T paramT)
  {
    boolean bool = false;
    if (paramT == null);
    while (true)
    {
      return bool;
      try
      {
        if (c(paramT))
        {
          bool = false;
          continue;
        }
      }
      finally
      {
      }
      bool = super.add(new WeakReference(paramT));
    }
  }

  public final boolean b(T paramT)
  {
    if (paramT == null)
    {
      bool = false;
      return bool;
    }
    ListIterator localListIterator;
    WeakReference localWeakReference;
    do
      try
      {
        if (!c(paramT))
        {
          bool = false;
          break;
        }
        localListIterator = listIterator();
        while (true)
        {
          if (!localListIterator.hasNext())
            break label103;
          localWeakReference = (WeakReference)localListIterator.next();
          if (localWeakReference != null)
          {
            if (localWeakReference.get() != null)
              break;
            localListIterator.remove();
          }
        }
      }
      finally
      {
      }
    while (localWeakReference.get() != paramT);
    localListIterator.remove();
    label103: for (boolean bool = true; ; bool = false)
      break;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     dw
 * JD-Core Version:    0.6.2
 */