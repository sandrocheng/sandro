.class final Lcom/jxphone/mosecurity/d/w;
.super Lcom/jxphone/mosecurity/d/u;
.source "SmsHelperLevel4.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/jxphone/mosecurity/d/u;-><init>()V

    .line 14
    return-void
.end method


# virtual methods
.method final a(Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 39
    const-string v0, "sms"

    const-string v1, "send by API Level4"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    .line 41
    invoke-virtual {v0, p2}, Landroid/telephony/SmsManager;->divideMessage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 44
    :try_start_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v2, :cond_0

    .line 45
    new-instance v4, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v4, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 46
    invoke-virtual {v4, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    new-instance v5, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v5, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 48
    invoke-virtual {v5, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    const/4 v2, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/telephony/SmsManager;->sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 58
    :goto_0
    return-void

    .line 51
    :cond_0
    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object v1, p1

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/telephony/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 58
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final a([Ljava/lang/Object;)[Lcom/jxphone/mosecurity/c/l;
    .locals 5
    .parameter

    .prologue
    .line 18
    const-string v0, "sms"

    const-string v1, "parse by API Level4"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    array-length v0, p1

    .line 20
    new-array v1, v0, [Lcom/jxphone/mosecurity/c/l;

    .line 21
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    .line 22
    aget-object p0, p1, v2

    check-cast p0, [B

    invoke-static {p0}, Landroid/telephony/SmsMessage;->createFromPdu([B)Landroid/telephony/SmsMessage;

    move-result-object v3

    .line 23
    if-eqz v3, :cond_0

    .line 24
    :try_start_0
    invoke-virtual {v3}, Landroid/telephony/SmsMessage;->getDisplayOriginatingAddress()Ljava/lang/String;

    move-result-object v4

    .line 28
    invoke-virtual {v3}, Landroid/telephony/SmsMessage;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v3

    .line 29
    if-eqz v4, :cond_1

    :goto_1
    if-eqz v3, :cond_2

    :goto_2
    invoke-static {v4, v3}, Lcom/jxphone/mosecurity/d/w;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/jxphone/mosecurity/c/l;

    move-result-object v3

    aput-object v3, v1, v2

    .line 31
    :cond_0
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 29
    :cond_1
    const-string v4, ""

    goto :goto_1

    :cond_2
    const-string v3, ""
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 34
    :cond_3
    return-object v1

    :catch_0
    move-exception v3

    goto :goto_3
.end method
