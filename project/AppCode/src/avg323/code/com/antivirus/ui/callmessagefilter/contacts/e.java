package com.antivirus.ui.callmessagefilter.contacts;

import android.telephony.PhoneNumberUtils;
import android.widget.Filter;
import android.widget.Filter.FilterResults;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class e extends Filter
{
  protected e(b paramb)
  {
  }

  protected Filter.FilterResults performFiltering(CharSequence paramCharSequence)
  {
    Filter.FilterResults localFilterResults = new Filter.FilterResults();
    if (b.i(this.a) == null);
    synchronized (b.j(this.a))
    {
      b.c(this.a, new ArrayList(b.k(this.a)));
      if (paramCharSequence != null);
    }
    while (true)
    {
      synchronized (b.l(this.a))
      {
        ArrayList localArrayList3 = new ArrayList(b.m(this.a));
        localFilterResults.values = localArrayList3;
        localFilterResults.count = localArrayList3.size();
        return localFilterResults;
        localObject6 = finally;
        throw localObject6;
      }
      ArrayList localArrayList2;
      while (true)
      {
        String[] arrayOfString;
        g localg;
        synchronized (b.n(this.a))
        {
          ArrayList localArrayList1 = new ArrayList(b.o(this.a));
          arrayOfString = ((String)paramCharSequence).split(";");
          localArrayList2 = new ArrayList();
          Iterator localIterator = localArrayList1.iterator();
          if (!localIterator.hasNext())
            break;
          localg = (g)localIterator.next();
          if ((arrayOfString.length != 1) || ((!localg.a().toLowerCase().contains(paramCharSequence.toString().toLowerCase())) && (!localg.f().replace("-", "").contains(paramCharSequence))))
            break label396;
          switch (b.h(this.a))
          {
          default:
            localArrayList2.add(localg);
          case 1:
          case 2:
          }
        }
        if ((localg.i().equals(com.antivirus.ui.callmessagefilter.b.d.c)) || (localg.j().equals(com.antivirus.ui.callmessagefilter.a.d.d)) || (localg.j().equals(com.antivirus.ui.callmessagefilter.a.d.e)) || (localg.j().equals(com.antivirus.ui.callmessagefilter.a.d.c)))
        {
          localArrayList2.add(localg);
          continue;
          if (localg.i().equals(com.antivirus.ui.callmessagefilter.b.d.e))
          {
            localArrayList2.add(localg);
            continue;
            label396: if ((arrayOfString.length == 2) && (localg.a().toLowerCase().contains(arrayOfString[0].toLowerCase())) && ((localg.f().contains(arrayOfString[1].toLowerCase())) || (PhoneNumberUtils.compare(localg.f(), arrayOfString[1]))))
              switch (b.h(this.a))
              {
              default:
                localArrayList2.add(localg);
                break;
              case 1:
                if ((localg.i().equals(com.antivirus.ui.callmessagefilter.b.d.c)) || (localg.j().equals(com.antivirus.ui.callmessagefilter.a.d.d)) || (localg.j().equals(com.antivirus.ui.callmessagefilter.a.d.e)) || (localg.j().equals(com.antivirus.ui.callmessagefilter.a.d.c)))
                  localArrayList2.add(localg);
                break;
              case 2:
                if (localg.i().equals(com.antivirus.ui.callmessagefilter.b.d.e))
                  localArrayList2.add(localg);
                break;
              }
          }
        }
      }
      localFilterResults.values = localArrayList2;
      localFilterResults.count = localArrayList2.size();
    }
  }

  protected void publishResults(CharSequence paramCharSequence, Filter.FilterResults paramFilterResults)
  {
    b.d(this.a, (List)paramFilterResults.values);
    if (paramFilterResults.count > 0)
      this.a.notifyDataSetChanged();
    while (true)
    {
      return;
      this.a.notifyDataSetInvalidated();
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.ui.callmessagefilter.contacts.e
 * JD-Core Version:    0.6.2
 */