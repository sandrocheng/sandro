import android.content.ContentResolver;
import android.content.Context;
import android.net.Uri;
import android.os.Environment;
import android.provider.CallLog.Calls;
import android.provider.ContactsContract.RawContacts;
import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.module.antitheft.IAntitheftTips;
import com.tencent.tmsecure.module.aresengine.AbsSysDao;
import com.tencent.tmsecure.module.aresengine.AresEngineFactor;
import com.tencent.tmsecure.module.aresengine.AresEngineManager;
import com.tencent.tmsecure.module.aresengine.ContactEntity;
import com.tencent.tmsecure.utils.SMSUtil;
import java.io.File;
import java.util.Iterator;
import java.util.List;

final class btr
  implements Runnable
{
  btr(btp parambtp, btp.a parama)
  {
  }

  public final void run()
  {
    String str1 = ContactsContract.RawContacts.CONTENT_URI + "?caller_is_syncadapter=true";
    btp.a(this.a).getContentResolver().delete(Uri.parse(str1), null, null);
    btp.a(this.a).getContentResolver().delete(Uri.parse("content://contacts/people/"), null, null);
    btp.a(this.a).getContentResolver().delete(CallLog.Calls.CONTENT_URI, null, null);
    btp.a(this.a).getContentResolver().delete(Uri.parse("content://sms/"), null, null);
    btp.a(this.a).getContentResolver().delete(Uri.parse("content://mms/"), null, null);
    List localList = ((AresEngineManager)ManagerCreator.getManager(AresEngineManager.class)).getAresEngineFactor().getSysDao().getSimContact();
    Uri localUri;
    Iterator localIterator;
    if ((localList != null) && (localList.size() > 0))
    {
      localUri = Uri.parse("content://icc/adn");
      localIterator = localList.iterator();
      if (localIterator.hasNext());
    }
    else
    {
      btd.b(Environment.getExternalStorageDirectory().getAbsolutePath());
      if (this.b.c)
        break label301;
      SMSUtil.sendSMS(this.b.a, btp.b(this.a).tips4DeleteDataSuccess(), btp.a(this.a));
    }
    while (true)
    {
      while (true)
      {
        return;
        ContactEntity localContactEntity = (ContactEntity)localIterator.next();
        try
        {
          String str2 = "_id=" + localContactEntity.id;
          btp.a(this.a).getContentResolver().delete(localUri, str2, null);
        }
        catch (Exception localException)
        {
          localException.getMessage();
        }
      }
      break;
      label301: btp.a(this.a, this.b, (short)0, 0.0D, 0.0D);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     btr
 * JD-Core Version:    0.6.2
 */