.class final Lcom/jxphone/mosecurity/d/v;
.super Lcom/jxphone/mosecurity/d/u;
.source "SmsHelperLevel3.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/jxphone/mosecurity/d/u;-><init>()V

    return-void
.end method


# virtual methods
.method final a(Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x1

    .line 34
    const-string v0, "sms"

    const-string v1, "send by API Level3"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    invoke-static {}, Landroid/telephony/gsm/SmsManager;->getDefault()Landroid/telephony/gsm/SmsManager;

    move-result-object v0

    .line 36
    invoke-virtual {v0, p2}, Landroid/telephony/gsm/SmsManager;->divideMessage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 37
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v6, :cond_0

    .line 38
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 39
    invoke-virtual {v4, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 41
    invoke-virtual {v5, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v1, p1

    .line 42
    invoke-virtual/range {v0 .. v5}, Landroid/telephony/gsm/SmsManager;->sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 46
    :goto_0
    return-void

    .line 44
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object v1, p1

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/telephony/gsm/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method public final a([Ljava/lang/Object;)[Lcom/jxphone/mosecurity/c/l;
    .locals 5
    .parameter

    .prologue
    .line 18
    const-string v0, "sms"

    const-string v1, "parse by API Level3"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    array-length v0, p1

    .line 20
    new-array v1, v0, [Lcom/jxphone/mosecurity/c/l;

    .line 21
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 22
    aget-object p0, p1, v2

    check-cast p0, [B

    invoke-static {p0}, Landroid/telephony/gsm/SmsMessage;->createFromPdu([B)Landroid/telephony/gsm/SmsMessage;

    move-result-object v3

    .line 23
    if-eqz v3, :cond_0

    .line 24
    invoke-virtual {v3}, Landroid/telephony/gsm/SmsMessage;->getDisplayOriginatingAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Landroid/telephony/gsm/SmsMessage;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/jxphone/mosecurity/d/v;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/jxphone/mosecurity/c/l;

    move-result-object v3

    aput-object v3, v1, v2

    .line 21
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 28
    :cond_1
    return-object v1
.end method
