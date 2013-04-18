package cn.com.wali.zft;

import android.content.Context;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;

final class SemantemeAnalyzer
{
  private static ArrayList list;
  private int analyzer = 0;
  private File dict;
  private Context mContext;

  static
  {
    ArrayList localArrayList = new ArrayList(10);
    list = localArrayList;
    localArrayList.add(new SemantemeAnalyzer.VarReadable("SSHF", "", "BASIC_SSHF", 100, "元"));
    list.add(new SemantemeAnalyzer.VarReadable("SSYE", "", "BASIC_SSYE", 100, "元"));
    list.add(new SemantemeAnalyzer.VarReadable("SSQF", "", "BASIC_SSQF", 100, "元"));
    list.add(new SemantemeAnalyzer.VarReadable("CALLZL", "", "YYTC_FREE_LOCALTEL", 1, "分钟"));
    list.add(new SemantemeAnalyzer.VarReadable("CALLYL", "", "", 1, "分钟"));
    list.add(new SemantemeAnalyzer.VarReadable("CALLSY", "", "TOTAL_TELYL", 1, "分钟"));
    list.add(new SemantemeAnalyzer.VarReadable("LCALLZL", "", "", 1, "分钟"));
    list.add(new SemantemeAnalyzer.VarReadable("LCALLYL", "", "", 1, "分钟"));
    list.add(new SemantemeAnalyzer.VarReadable("LCALLSY", "", "YYTC_TELYL", 1, "分钟"));
    list.add(new SemantemeAnalyzer.VarReadable("GTCZL", "", "", 1048576, "M"));
    list.add(new SemantemeAnalyzer.VarReadable("GTCYL", "", "TOTAL_GPRS_USED", 1048576, "M"));
    list.add(new SemantemeAnalyzer.VarReadable("GTCSY", "", "TOTAL_GPRS_BALANCE", 1048576, "M"));
    list.add(new SemantemeAnalyzer.VarReadable("WTCZL", "", "", 1048576, "M"));
    list.add(new SemantemeAnalyzer.VarReadable("WTCYL", "", "", 1048576, "M"));
    list.add(new SemantemeAnalyzer.VarReadable("WTCSY", "", "", 1048576, "M"));
    list.add(new SemantemeAnalyzer.VarReadable("WTTCZL", "", "", 60, "小时"));
    list.add(new SemantemeAnalyzer.VarReadable("WTTCYL", "", "", 60, "小时"));
    list.add(new SemantemeAnalyzer.VarReadable("WTTCSY", "", "", 60, "小时"));
    list.add(new SemantemeAnalyzer.VarReadable("DXZL", "", "YYTC_FREE_SMS", 1, "条"));
    list.add(new SemantemeAnalyzer.VarReadable("DXYL", "", "YYTC_TCSYL_SMS", 1, "条"));
    list.add(new SemantemeAnalyzer.VarReadable("DXSY", "", "YYTC_TCYL_SMS", 1, "条"));
    list.add(new SemantemeAnalyzer.VarReadable("CXZL", "", "", 1, "条"));
    list.add(new SemantemeAnalyzer.VarReadable("CXYL", "", "", 1, "条"));
    list.add(new SemantemeAnalyzer.VarReadable("CXSY", "", "", 1, "条"));
    list.add(new SemantemeAnalyzer.VarReadable("JFZL", "", "BASIC_CXJF", 1, "分"));
    list.add(new SemantemeAnalyzer.VarReadable("JFSY", "", "", 1, "分"));
    list.add(new SemantemeAnalyzer.VarReadable("YCYE", "", "BASIC_YCYE", 1, "元"));
    list.add(new SemantemeAnalyzer.VarReadable("SKIP", "", "", 1, ""));
    list.add(new SemantemeAnalyzer.VarReadable("GTCINZL", "", "", 1048576, "M"));
    list.add(new SemantemeAnalyzer.VarReadable("GTCINSY", "", "GPRS_INPROVINCE_BALANCE", 1048576, "M"));
    list.add(new SemantemeAnalyzer.VarReadable("GTCINYL", "", "GPRS_INPROVINCE_USED", 1048576, "M"));
    list.add(new SemantemeAnalyzer.VarReadable("GTCOUTZL", "", "", 1048576, "M"));
    list.add(new SemantemeAnalyzer.VarReadable("GTCOUTSY", "", "GPRS_OUTPROVINCE_BALANCE", 1048576, "M"));
    list.add(new SemantemeAnalyzer.VarReadable("GTCOUTYL", "", "GPRS_OUTPROVINCE_USED", 1048576, "M"));
    list.add(new SemantemeAnalyzer.VarReadable("GTCXSZL", "", "", 1048576, "M"));
    list.add(new SemantemeAnalyzer.VarReadable("GTCXSSY", "", "XSGTC_GPRS_BALANCE", 1048576, "M"));
    list.add(new SemantemeAnalyzer.VarReadable("GTCXSYL", "", "XSGTC_GPRS_USED", 1048576, "M"));
    list.add(new SemantemeAnalyzer.VarReadable("RCALLZL", "", "", 1, "分钟"));
    list.add(new SemantemeAnalyzer.VarReadable("RCALLSY", "", "YYTC_TCYL_LONGTEL", 1, "分钟"));
    list.add(new SemantemeAnalyzer.VarReadable("RCALLYL", "", "", 1, "分钟"));
    list.add(new SemantemeAnalyzer.VarReadable("BASIC_SSHF", "", "", 100, "元"));
    list.add(new SemantemeAnalyzer.VarReadable("BASIC_SSYE", "", "", 100, "元"));
    list.add(new SemantemeAnalyzer.VarReadable("BASIC_SSQF", "", "", 100, "元"));
    list.add(new SemantemeAnalyzer.VarReadable("YYTC_FREE_LOCALTEL", "", "", 1, "分钟"));
    list.add(new SemantemeAnalyzer.VarReadable("TOTAL_TELYL", "", "", 1, "分钟"));
    list.add(new SemantemeAnalyzer.VarReadable("TOTAL_GPRS_USED", "", "", 1048576, "M"));
    list.add(new SemantemeAnalyzer.VarReadable("TOTAL_GPRS_BALANCE", "", "", 1048576, "M"));
    list.add(new SemantemeAnalyzer.VarReadable("YYTC_FREE_SMS", "", "", 1, "条"));
    list.add(new SemantemeAnalyzer.VarReadable("YYTC_TCSYL_SMS", "", "", 1, "条"));
    list.add(new SemantemeAnalyzer.VarReadable("YYTC_TCYL_SMS", "", "", 1, "条"));
    list.add(new SemantemeAnalyzer.VarReadable("BASIC_CXJF", "", "", 1, "分"));
    list.add(new SemantemeAnalyzer.VarReadable("BASIC_YCYE", "", "", 100, "元"));
    list.add(new SemantemeAnalyzer.VarReadable("GPRS_INPROVINCE_USED", "", "", 1048576, "M"));
    list.add(new SemantemeAnalyzer.VarReadable("GPRS_INPROVINCE_BALANCE", "", "", 1048576, "M"));
    list.add(new SemantemeAnalyzer.VarReadable("GPRS_OUTPROVINCE_USED", "", "", 1048576, "M"));
    list.add(new SemantemeAnalyzer.VarReadable("GPRS_OUTPROVINCE_BALANCE", "", "", 1048576, "M"));
    list.add(new SemantemeAnalyzer.VarReadable("XSGTC_GPRS_USED", "", "", 11048576, "M"));
    list.add(new SemantemeAnalyzer.VarReadable("XSGTC_GPRS_BALANCE", "", "", 1048576, "M"));
    list.add(new SemantemeAnalyzer.VarReadable("YYTC_TCYL_LONGTEL", "", "", 1, "分钟"));
    list.add(new SemantemeAnalyzer.VarReadable("GTC_GPRS_BALANCE", "", "", 1048576, "M"));
    list.add(new SemantemeAnalyzer.VarReadable("GTC_GPRS_USED", "", "", 1048576, "M"));
    list.add(new SemantemeAnalyzer.VarReadable("YYTC_GPRS_BALANCE", "", "", 1048576, "M"));
    list.add(new SemantemeAnalyzer.VarReadable("YYTC_GPRS_USED", "", "", 1048576, "M"));
    list.add(new SemantemeAnalyzer.VarReadable("YYTC_TELYL", "", "", 1, "分钟"));
    list.add(new SemantemeAnalyzer.VarReadable("BASIC_SSHF_LAST_MONTH", "", "", 100, "元"));
    list.add(new SemantemeAnalyzer.VarReadable("BASIC_CXJF_LAST_YEAR", "", "", 1, "分"));
    list.add(new SemantemeAnalyzer.VarReadable("BASIC_CXJF_BEFORE_LAST", "", "", 1, "分"));
    list.add(new SemantemeAnalyzer.VarReadable("GTC_GPRS_BALANCE", "", "", 1048576, "M"));
    list.add(new SemantemeAnalyzer.VarReadable("GTC_GPRS_USED", "", "", 1048576, "M"));
    list.add(new SemantemeAnalyzer.VarReadable("YYTC_GPRS_BALANCE", "", "", 1048576, "M"));
    list.add(new SemantemeAnalyzer.VarReadable("YYTC_GPRS_USED", "", "", 1048576, "M"));
    list.add(new SemantemeAnalyzer.VarReadable("YYTC_TELYL", "", "", 1, "分钟"));
    list.add(new SemantemeAnalyzer.VarReadable("BASIC_SSHF_LAST_MONTH", "", "", 100, "元"));
    list.add(new SemantemeAnalyzer.VarReadable("BASIC_CXJF_LAST_YEAR", "", "", 1, "分"));
    list.add(new SemantemeAnalyzer.VarReadable("BASIC_CXJF_BEFORE_LAST", "", "", 1, "分"));
  }

  public SemantemeAnalyzer(Context paramContext, File paramFile)
  {
    this.mContext = paramContext;
    if ((paramFile == null) || (!paramFile.exists()) || (!paramFile.isFile()));
    while (true)
    {
      return;
      Iterator localIterator = list.iterator();
      while (localIterator.hasNext())
      {
        SemantemeAnalyzer.VarReadable localVarReadable = (SemantemeAnalyzer.VarReadable)localIterator.next();
        localVarReadable.readable = getReadAble(localVarReadable.var);
      }
      this.dict = paramFile;
    }
  }

  private native ArrayList Analyse(int paramInt, String paramString);

  private native void AnalyzerDestroy(int paramInt);

  private native int AnalyzerInit(String paramString);

  public static native String getReadAble(String paramString);

  public static SemantemeAnalyzer.VarReadable getVar2Readable(String paramString)
  {
    Iterator localIterator = list.iterator();
    SemantemeAnalyzer.VarReadable localVarReadable;
    do
    {
      if (!localIterator.hasNext())
        break;
      localVarReadable = (SemantemeAnalyzer.VarReadable)localIterator.next();
    }
    while (!localVarReadable.var.equals(paramString));
    while (true)
    {
      return localVarReadable;
      localVarReadable = null;
    }
  }

  public static boolean isEmpty(CharSequence paramCharSequence)
  {
    if ((paramCharSequence == null) || (paramCharSequence.length() == 0));
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  private void switch_(ArrayList paramArrayList1, ArrayList paramArrayList2)
  {
    if (paramArrayList1 == null);
    while (true)
    {
      return;
      Iterator localIterator = paramArrayList1.iterator();
      while (localIterator.hasNext())
      {
        String[] arrayOfString = ((String)localIterator.next()).split("=");
        if (arrayOfString.length > 1)
        {
          String str = arrayOfString[0];
          SemantemeAnalyzer.VarReadable localVarReadable = getVar2Readable(arrayOfString[0]);
          if ((localVarReadable != null) && (!isEmpty(localVarReadable.tpl)))
            str = localVarReadable.tpl;
          paramArrayList2.add(new Pair(str, arrayOfString[1]));
        }
      }
    }
  }

  public final boolean Analyzer(String paramString, ArrayList paramArrayList)
  {
    boolean bool;
    if (isEmpty(paramString))
      bool = false;
    while (true)
    {
      return bool;
      if (paramArrayList == null)
      {
        bool = false;
      }
      else
      {
        ArrayList localArrayList = Analyse(this.analyzer, paramString);
        if (localArrayList == null)
        {
          bool = true;
        }
        else
        {
          switch_(localArrayList, paramArrayList);
          bool = true;
        }
      }
    }
  }

  public final boolean Init()
  {
    boolean bool;
    if (this.dict == null)
      bool = false;
    while (true)
    {
      return bool;
      this.analyzer = AnalyzerInit(this.dict.getAbsolutePath());
      if (this.analyzer <= 0)
        bool = false;
      else
        bool = true;
    }
  }

  public final void Release()
  {
    if (this.analyzer > 0)
      AnalyzerDestroy(this.analyzer);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     cn.com.wali.zft.SemantemeAnalyzer
 * JD-Core Version:    0.6.2
 */