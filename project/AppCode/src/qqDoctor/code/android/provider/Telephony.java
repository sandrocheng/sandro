package android.provider;

import android.net.Uri;

public final class Telephony
{
  public static abstract interface BaseMmsColumns extends BaseColumns
  {
    public static final String DATE = "date";
    public static final String FROM = "from";
    public static final String LOCKED = "locked";
    public static final int MESSAGE_BOX_INBOX = 1;
    public static final int MESSAGE_BOX_OUTBOX = 4;
    public static final int MESSAGE_BOX_SENT = 2;
    public static final String READ = "read";
    public static final String SEEN = "seen";
    public static final String STATUS = "st";
    public static final String TO = "to";
  }

  public static final class Carriers
    implements BaseColumns
  {
    public static final String APN = "apn";
    public static final Uri CONTENT_URI = Uri.parse("content://telephony/carriers");
    public static final String MMSC = "mmsc";
    public static final String MMSPORT = "mmsport";
    public static final String MMSPROXY = "mmsproxy";
    public static final String TYPE = "type";
  }

  public static final class Mms
    implements Telephony.BaseMmsColumns
  {
    public static final Uri CONTENT_URI = Uri.parse("content://mms");

    public static final class Inbox
      implements Telephony.BaseMmsColumns
    {
      public static final Uri CONTENT_URI = Uri.parse("content://mms/inbox");
    }

    public static final class Outbox
      implements Telephony.BaseMmsColumns
    {
      public static final Uri CONTENT_URI = Uri.parse("content://mms/outbox");
    }

    public static final class Sent
      implements Telephony.BaseMmsColumns
    {
      public static final Uri CONTENT_URI = Uri.parse("content://mms/sent");
    }
  }

  public static final class MmsSms
    implements BaseColumns
  {
    public static final Uri CONTENT_CONVERSATIONS_URI = Uri.parse("content://mms-sms/conversations");
  }

  public static final class Sms
    implements BaseColumns, Telephony.TextBasedSmsColumns
  {
    public static final Uri CONTENT_URI = Uri.parse("content://sms");

    public static final class Inbox
      implements BaseColumns, Telephony.TextBasedSmsColumns
    {
      public static final Uri CONTENT_URI = Uri.parse("content://sms/inbox");
    }

    public static final class Outbox
      implements BaseColumns, Telephony.TextBasedSmsColumns
    {
      public static final Uri CONTENT_URI = Uri.parse("content://sms/outbox");
    }

    public static final class Sent
      implements BaseColumns, Telephony.TextBasedSmsColumns
    {
      public static final Uri CONTENT_URI = Uri.parse("content://sms/sent");
    }
  }

  public static abstract interface TextBasedSmsColumns
  {
    public static final int MESSAGE_TYPE_ALL = 0;
    public static final int MESSAGE_TYPE_INBOX = 1;
    public static final int MESSAGE_TYPE_OUTBOX = 4;
    public static final int MESSAGE_TYPE_SENT = 2;
    public static final String TYPE = "type";
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     android.provider.Telephony
 * JD-Core Version:    0.6.2
 */