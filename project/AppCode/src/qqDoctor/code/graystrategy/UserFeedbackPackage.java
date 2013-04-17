package graystrategy;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;
import java.util.ArrayList;

public final class UserFeedbackPackage extends JceStruct
  implements Cloneable
{
  static ArrayList cache_attachmentList;
  public ArrayList attachmentList = null;
  public String content = "";
  public String title = "";

  static
  {
    if (!UserFeedbackPackage.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }

  public UserFeedbackPackage()
  {
    setTitle(this.title);
    setContent(this.content);
    setAttachmentList(this.attachmentList);
  }

  public UserFeedbackPackage(String paramString1, String paramString2, ArrayList paramArrayList)
  {
    setTitle(paramString1);
    setContent(paramString2);
    setAttachmentList(paramArrayList);
  }

  public final String className()
  {
    return "graystrategy.UserFeedbackPackage";
  }

  public final Object clone()
  {
    try
    {
      Object localObject2 = super.clone();
      localObject1 = localObject2;
      return localObject1;
    }
    catch (CloneNotSupportedException localCloneNotSupportedException)
    {
      boolean bool;
      do
      {
        bool = $assertionsDisabled;
        Object localObject1 = null;
      }
      while (bool);
    }
    throw new AssertionError();
  }

  public final void display(StringBuilder paramStringBuilder, int paramInt)
  {
    JceDisplayer localJceDisplayer = new JceDisplayer(paramStringBuilder, paramInt);
    localJceDisplayer.display(this.title, "title");
    localJceDisplayer.display(this.content, "content");
    localJceDisplayer.display(this.attachmentList, "attachmentList");
  }

  public final boolean equals(Object paramObject)
  {
    boolean bool1 = false;
    if (paramObject == null);
    while (true)
    {
      return bool1;
      UserFeedbackPackage localUserFeedbackPackage = (UserFeedbackPackage)paramObject;
      boolean bool2 = JceUtil.equals(this.title, localUserFeedbackPackage.title);
      bool1 = false;
      if (bool2)
      {
        boolean bool3 = JceUtil.equals(this.content, localUserFeedbackPackage.content);
        bool1 = false;
        if (bool3)
        {
          boolean bool4 = JceUtil.equals(this.attachmentList, localUserFeedbackPackage.attachmentList);
          bool1 = false;
          if (bool4)
            bool1 = true;
        }
      }
    }
  }

  public final String fullClassName()
  {
    return "graystrategy.UserFeedbackPackage";
  }

  public final ArrayList getAttachmentList()
  {
    return this.attachmentList;
  }

  public final String getContent()
  {
    return this.content;
  }

  public final String getTitle()
  {
    return this.title;
  }

  public final int hashCode()
  {
    try
    {
      throw new Exception("Need define key first!");
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return 0;
  }

  public final void readFrom(JceInputStream paramJceInputStream)
  {
    this.title = paramJceInputStream.readString(0, true);
    this.content = paramJceInputStream.readString(1, true);
    if (cache_attachmentList == null)
    {
      cache_attachmentList = new ArrayList();
      Attachment localAttachment = new Attachment();
      cache_attachmentList.add(localAttachment);
    }
    setAttachmentList((ArrayList)paramJceInputStream.read(cache_attachmentList, 3, true));
  }

  public final void setAttachmentList(ArrayList paramArrayList)
  {
    this.attachmentList = paramArrayList;
  }

  public final void setContent(String paramString)
  {
    this.content = paramString;
  }

  public final void setTitle(String paramString)
  {
    this.title = paramString;
  }

  public final void writeTo(JceOutputStream paramJceOutputStream)
  {
    paramJceOutputStream.write(this.title, 0);
    paramJceOutputStream.write(this.content, 1);
    paramJceOutputStream.write(this.attachmentList, 3);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     graystrategy.UserFeedbackPackage
 * JD-Core Version:    0.6.2
 */