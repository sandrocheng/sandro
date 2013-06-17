.class public Lcom/antivirus/callmessagefilter/callblocker/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/avg/toolkit/e;


# static fields
.field public static final a:Landroid/net/Uri;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Lcom/antivirus/core/b/a/b;

.field private d:Lcom/antivirus/callmessagefilter/callblocker/c;

.field private e:Landroid/telephony/TelephonyManager;

.field private f:Landroid/media/AudioManager;

.field private g:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://sms/inbox"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/antivirus/callmessagefilter/callblocker/a;->a:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/antivirus/callmessagefilter/callblocker/a;->c:Lcom/antivirus/core/b/a/b;

    const/4 v0, -0x1

    iput v0, p0, Lcom/antivirus/callmessagefilter/callblocker/a;->g:I

    iput-object p1, p0, Lcom/antivirus/callmessagefilter/callblocker/a;->b:Landroid/content/Context;

    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/antivirus/callmessagefilter/callblocker/a;->e:Landroid/telephony/TelephonyManager;

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/antivirus/callmessagefilter/callblocker/a;->f:Landroid/media/AudioManager;

    new-instance v0, Lcom/antivirus/callmessagefilter/callblocker/c;

    invoke-direct {v0, p1}, Lcom/antivirus/callmessagefilter/callblocker/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/antivirus/callmessagefilter/callblocker/a;->d:Lcom/antivirus/callmessagefilter/callblocker/c;

    iget-object v0, p0, Lcom/antivirus/callmessagefilter/callblocker/a;->d:Lcom/antivirus/callmessagefilter/callblocker/c;

    invoke-virtual {v0}, Lcom/antivirus/callmessagefilter/callblocker/c;->a()V

    return-void
.end method

.method private a()V
    .locals 1

    iget-object v0, p0, Lcom/antivirus/callmessagefilter/callblocker/a;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/c/a/d;->a(Landroid/content/Context;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/antivirus/callmessagefilter/callblocker/a;->d()V

    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    move-object v1, p1

    move-object v3, p2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/telephony/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    return-void
.end method

.method private c()V
    .locals 8

    const/4 v6, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/antivirus/callmessagefilter/callblocker/a;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "type"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "number"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "date"

    aput-object v4, v2, v3

    const-string v3, "type<>?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v7, 0x2

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    const-string v5, "date DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    move-result-object v6

    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "number"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/antivirus/callmessagefilter/callblocker/a;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/antivirus/core/b/a/b;->a(Landroid/content/Context;)Lcom/antivirus/core/b/a/b;

    move-result-object v0

    new-instance v2, Lcom/antivirus/ui/callmessagefilter/contacts/a;

    invoke-virtual {v0, v1}, Lcom/antivirus/core/b/a/b;->a(Ljava/lang/String;)Lcom/antivirus/core/b/b/a;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/antivirus/ui/callmessagefilter/contacts/a;-><init>(Lcom/antivirus/core/b/b/a;)V

    invoke-virtual {v2}, Lcom/antivirus/ui/callmessagefilter/contacts/a;->b()Lcom/antivirus/ui/callmessagefilter/a/d;

    move-result-object v3

    sget-object v1, Lcom/antivirus/callmessagefilter/callblocker/b;->a:[I

    invoke-virtual {v3}, Lcom/antivirus/ui/callmessagefilter/a/d;->ordinal()I

    move-result v2

    aget v1, v1, v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    if-eqz v6, :cond_1

    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :cond_1
    :goto_1
    return-void

    :pswitch_0
    :try_start_3
    const-string v1, "_id"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    const-string v4, "date"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {v3}, Lcom/antivirus/ui/callmessagefilter/a/d;->b()I

    move-result v3

    invoke-virtual/range {v0 .. v5}, Lcom/antivirus/core/b/a/b;->a(JIJ)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, v6

    :goto_2
    :try_start_4
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1}, Ljava/io/PrintStream;->println()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v0, :cond_1

    :try_start_5
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v0, "Couldn\'t close cursor"

    invoke-static {v0}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/String;)V

    goto :goto_1

    :catch_2
    move-exception v0

    const-string v0, "Couldn\'t close cursor"

    invoke-static {v0}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    :goto_3
    if-eqz v6, :cond_2

    :try_start_6
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    :cond_2
    :goto_4
    throw v0

    :catch_3
    move-exception v1

    const-string v1, "Couldn\'t close cursor"

    invoke-static {v1}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/String;)V

    goto :goto_4

    :catchall_1
    move-exception v1

    move-object v6, v0

    move-object v0, v1

    goto :goto_3

    :catch_4
    move-exception v0

    move-object v0, v6

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private c(Landroid/os/Bundle;)V
    .locals 8

    const/16 v7, 0x32

    const/4 v6, 0x0

    const-string v0, "pdus"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    aget-object v1, v0, v6

    check-cast v1, [B

    check-cast v1, [B

    invoke-static {v1}, Landroid/telephony/SmsMessage;->createFromPdu([B)Landroid/telephony/SmsMessage;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Landroid/telephony/SmsMessage;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    const/4 v1, 0x1

    move-object v3, v2

    move v2, v1

    :goto_0
    array-length v1, v0

    if-ge v2, v1, :cond_1

    aget-object v1, v0, v2

    check-cast v1, [B

    check-cast v1, [B

    invoke-static {v1}, Landroid/telephony/SmsMessage;->createFromPdu([B)Landroid/telephony/SmsMessage;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/SmsMessage;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_0
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v7, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_1
    iget-object v0, p0, Lcom/antivirus/callmessagefilter/callblocker/a;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/antivirus/core/b/a/b;->a(Landroid/content/Context;)Lcom/antivirus/core/b/a/b;

    move-result-object v0

    const-wide/16 v1, -0x1

    sget-object v3, Lcom/antivirus/ui/callmessagefilter/b/d;->c:Lcom/antivirus/ui/callmessagefilter/b/d;

    invoke-virtual {v3}, Lcom/antivirus/ui/callmessagefilter/b/d;->b()I

    move-result v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual/range {v0 .. v7}, Lcom/antivirus/core/b/a/b;->a(JILjava/lang/String;Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/antivirus/callmessagefilter/callblocker/a;->b:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "blocked_message_view_update_action"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void

    :cond_2
    const-string v4, ""

    goto :goto_1

    :cond_3
    move-object v4, v3

    goto :goto_1
.end method

.method private d()V
    .locals 4

    :try_start_0
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Lcom/antivirus/callmessagefilter/callblocker/a;->e:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getITelephony"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    iget-object v2, p0, Lcom/antivirus/callmessagefilter/callblocker/a;->e:Landroid/telephony/TelephonyManager;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "endCall"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/avg/toolkit/f/a;->a()V

    goto :goto_0
.end method

.method private d(Landroid/os/Bundle;)V
    .locals 4

    if-eqz p1, :cond_0

    const-string v0, "state"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroid/telephony/TelephonyManager;->EXTRA_STATE_RINGING:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/antivirus/callmessagefilter/callblocker/a;->f:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    iput v0, p0, Lcom/antivirus/callmessagefilter/callblocker/a;->g:I

    const-string v0, "incoming_number"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v1, Lcom/antivirus/ui/callmessagefilter/contacts/a;

    invoke-direct {p0}, Lcom/antivirus/callmessagefilter/callblocker/a;->e()Lcom/antivirus/core/b/a/b;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/antivirus/core/b/a/b;->a(Ljava/lang/String;)Lcom/antivirus/core/b/b/a;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/antivirus/ui/callmessagefilter/contacts/a;-><init>(Lcom/antivirus/core/b/b/a;)V

    sget-object v2, Lcom/antivirus/callmessagefilter/callblocker/b;->a:[I

    invoke-virtual {v1}, Lcom/antivirus/ui/callmessagefilter/contacts/a;->b()Lcom/antivirus/ui/callmessagefilter/a/d;

    move-result-object v3

    invoke-virtual {v3}, Lcom/antivirus/ui/callmessagefilter/a/d;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-direct {p0}, Lcom/antivirus/callmessagefilter/callblocker/a;->d()V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/antivirus/callmessagefilter/callblocker/a;->f()V

    goto :goto_0

    :pswitch_2
    invoke-virtual {v1}, Lcom/antivirus/ui/callmessagefilter/contacts/a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/antivirus/callmessagefilter/callblocker/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/antivirus/callmessagefilter/callblocker/a;->g:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/antivirus/callmessagefilter/callblocker/a;->f:Landroid/media/AudioManager;

    iget v1, p0, Lcom/antivirus/callmessagefilter/callblocker/a;->g:I

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private e()Lcom/antivirus/core/b/a/b;
    .locals 1

    iget-object v0, p0, Lcom/antivirus/callmessagefilter/callblocker/a;->c:Lcom/antivirus/core/b/a/b;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/antivirus/callmessagefilter/callblocker/a;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/antivirus/core/b/a/b;->a(Landroid/content/Context;)Lcom/antivirus/core/b/a/b;

    move-result-object v0

    iput-object v0, p0, Lcom/antivirus/callmessagefilter/callblocker/a;->c:Lcom/antivirus/core/b/a/b;

    :cond_0
    iget-object v0, p0, Lcom/antivirus/callmessagefilter/callblocker/a;->c:Lcom/antivirus/core/b/a/b;

    return-object v0
.end method

.method private f()V
    .locals 2

    iget-object v0, p0, Lcom/antivirus/callmessagefilter/callblocker/a;->f:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    iput v0, p0, Lcom/antivirus/callmessagefilter/callblocker/a;->g:I

    iget-object v0, p0, Lcom/antivirus/callmessagefilter/callblocker/a;->f:Landroid/media/AudioManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setRingerMode(I)V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public a(Lcom/avg/toolkit/e/a;)V
    .locals 0

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 1

    const-class v0, Lcom/antivirus/callmessagefilter/smsblocker/a;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Z)V
    .locals 0

    invoke-direct {p0}, Lcom/antivirus/callmessagefilter/callblocker/a;->a()V

    return-void
.end method

.method public b()I
    .locals 1

    const/16 v0, 0x2ee0

    return v0
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 1

    invoke-static {}, Lcom/avg/ui/general/o;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    const-string v0, "__SAC2"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    invoke-static {}, Lcom/avg/toolkit/f/a;->a()V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :pswitch_0
    invoke-direct {p0, p1}, Lcom/antivirus/callmessagefilter/callblocker/a;->d(Landroid/os/Bundle;)V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/antivirus/callmessagefilter/callblocker/a;->c()V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, p1}, Lcom/antivirus/callmessagefilter/callblocker/a;->c(Landroid/os/Bundle;)V

    goto :goto_0

    :pswitch_3
    invoke-direct {p0}, Lcom/antivirus/callmessagefilter/callblocker/a;->a()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public b(Lcom/avg/toolkit/e/a;)V
    .locals 0

    return-void
.end method

.method public onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/antivirus/callmessagefilter/callblocker/a;->d:Lcom/antivirus/callmessagefilter/callblocker/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/antivirus/callmessagefilter/callblocker/a;->d:Lcom/antivirus/callmessagefilter/callblocker/c;

    invoke-virtual {v0}, Lcom/antivirus/callmessagefilter/callblocker/c;->b()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/antivirus/callmessagefilter/callblocker/a;->d:Lcom/antivirus/callmessagefilter/callblocker/c;

    :cond_0
    invoke-static {}, Lcom/antivirus/core/b/a/b;->a()V

    return-void
.end method
