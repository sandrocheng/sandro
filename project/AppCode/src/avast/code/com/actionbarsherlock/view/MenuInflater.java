package com.actionbarsherlock.view;

import android.content.Context;
import android.util.AttributeSet;
import org.xmlpull.v1.XmlPullParser;

public class MenuInflater
{
  private static final Class[] ACTION_PROVIDER_CONSTRUCTOR_SIGNATURE = ACTION_VIEW_CONSTRUCTOR_SIGNATURE;
  private static final Class[] ACTION_VIEW_CONSTRUCTOR_SIGNATURE = { Context.class };
  private static final String LOG_TAG = "MenuInflater";
  private static final int NO_ID = 0;
  private static final String XML_GROUP = "group";
  private static final String XML_ITEM = "item";
  private static final String XML_MENU = "menu";
  private final Object[] mActionProviderConstructorArguments;
  private final Object[] mActionViewConstructorArguments;
  private Context mContext;
  private Object mRealOwner;

  public MenuInflater(Context paramContext)
  {
    this.mContext = paramContext;
    this.mRealOwner = paramContext;
    this.mActionViewConstructorArguments = new Object[] { paramContext };
    this.mActionProviderConstructorArguments = this.mActionViewConstructorArguments;
  }

  public MenuInflater(Context paramContext, Object paramObject)
  {
    this.mContext = paramContext;
    this.mRealOwner = paramObject;
    this.mActionViewConstructorArguments = new Object[] { paramContext };
    this.mActionProviderConstructorArguments = this.mActionViewConstructorArguments;
  }

  private void parseMenu(XmlPullParser paramXmlPullParser, AttributeSet paramAttributeSet, Menu paramMenu)
  {
    MenuInflater.MenuState localMenuState = new MenuInflater.MenuState(this, paramMenu);
    int i = paramXmlPullParser.getEventType();
    String str3;
    label51: Object localObject;
    int j;
    int k;
    int m;
    if (i == 2)
    {
      str3 = paramXmlPullParser.getName();
      if (str3.equals("menu"))
      {
        i = paramXmlPullParser.next();
        localObject = null;
        j = 0;
        k = i;
        m = 0;
        label64: if (m != 0)
          return;
      }
    }
    label96: int n;
    switch (k)
    {
    default:
      n = j;
    case 2:
    case 3:
      while (true)
      {
        int i1 = paramXmlPullParser.next();
        int i2 = n;
        k = i1;
        j = i2;
        break label64;
        throw new RuntimeException("Expecting menu, got " + str3);
        i = paramXmlPullParser.next();
        if (i != 1)
          break;
        break label51;
        if (j != 0)
        {
          n = j;
        }
        else
        {
          String str2 = paramXmlPullParser.getName();
          if (str2.equals("group"))
          {
            localMenuState.readGroup(paramAttributeSet);
            n = j;
          }
          else if (str2.equals("item"))
          {
            localMenuState.readItem(paramAttributeSet);
            n = j;
          }
          else if (str2.equals("menu"))
          {
            parseMenu(paramXmlPullParser, paramAttributeSet, localMenuState.addSubMenuItem());
            n = j;
          }
          else
          {
            localObject = str2;
            n = 1;
            continue;
            String str1 = paramXmlPullParser.getName();
            if ((j != 0) && (str1.equals(localObject)))
            {
              localObject = null;
              n = 0;
            }
            else if (str1.equals("group"))
            {
              localMenuState.resetGroup();
              n = j;
            }
            else
            {
              if (str1.equals("item"))
              {
                if (localMenuState.hasAddedItem())
                  break label96;
                if ((MenuInflater.MenuState.access$000(localMenuState) != null) && (MenuInflater.MenuState.access$000(localMenuState).hasSubMenu()))
                {
                  localMenuState.addSubMenuItem();
                  n = j;
                  continue;
                }
                localMenuState.addItem();
                n = j;
                continue;
              }
              if (!str1.equals("menu"))
                break label96;
              m = 1;
              n = j;
            }
          }
        }
      }
    case 1:
    }
    throw new RuntimeException("Unexpected end of document");
  }

  // ERROR //
  public void inflate(int paramInt, Menu paramMenu)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_3
    //   2: aload_0
    //   3: getfield 46	com/actionbarsherlock/view/MenuInflater:mContext	Landroid/content/Context;
    //   6: invokevirtual 150	android/content/Context:getResources	()Landroid/content/res/Resources;
    //   9: iload_1
    //   10: invokevirtual 156	android/content/res/Resources:getLayout	(I)Landroid/content/res/XmlResourceParser;
    //   13: astore_3
    //   14: aload_0
    //   15: aload_3
    //   16: aload_3
    //   17: invokestatic 162	android/util/Xml:asAttributeSet	(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;
    //   20: aload_2
    //   21: invokespecial 119	com/actionbarsherlock/view/MenuInflater:parseMenu	(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Lcom/actionbarsherlock/view/Menu;)V
    //   24: aload_3
    //   25: ifnull +9 -> 34
    //   28: aload_3
    //   29: invokeinterface 167 1 0
    //   34: return
    //   35: astore 6
    //   37: new 169	android/view/InflateException
    //   40: dup
    //   41: ldc 171
    //   43: aload 6
    //   45: invokespecial 174	android/view/InflateException:<init>	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   48: athrow
    //   49: astore 5
    //   51: aload_3
    //   52: ifnull +9 -> 61
    //   55: aload_3
    //   56: invokeinterface 167 1 0
    //   61: aload 5
    //   63: athrow
    //   64: astore 4
    //   66: new 169	android/view/InflateException
    //   69: dup
    //   70: ldc 171
    //   72: aload 4
    //   74: invokespecial 174	android/view/InflateException:<init>	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   77: athrow
    //
    // Exception table:
    //   from	to	target	type
    //   2	24	35	org/xmlpull/v1/XmlPullParserException
    //   2	24	49	finally
    //   37	49	49	finally
    //   66	78	49	finally
    //   2	24	64	java/io/IOException
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.actionbarsherlock.view.MenuInflater
 * JD-Core Version:    0.6.2
 */