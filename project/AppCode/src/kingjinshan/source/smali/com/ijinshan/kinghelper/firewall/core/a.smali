.class public final Lcom/ijinshan/kinghelper/firewall/core/a;
.super Ljava/lang/Object;
.source "DesktopSMSMonitor.java"

# interfaces
.implements Lcom/keniu/security/monitor/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    return-void
.end method

.method private static a(Lcom/ijinshan/kinghelper/firewall/core/w;)Landroid/net/Uri;
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 73
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/core/w;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 74
    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/core/w;->f:[Landroid/telephony/SmsMessage;

    .line 76
    aget-object v1, v1, v6

    .line 78
    invoke-virtual {v1}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v2

    .line 79
    iget-object v3, p0, Lcom/ijinshan/kinghelper/firewall/core/w;->d:Ljava/lang/String;

    .line 81
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 82
    const-string v5, "address"

    invoke-virtual {v4, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    invoke-virtual {v1}, Landroid/telephony/SmsMessage;->getPseudoSubject()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 84
    const-string v2, "subject"

    invoke-virtual {v1}, Landroid/telephony/SmsMessage;->getPseudoSubject()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    :cond_0
    const-string v2, "service_center"

    invoke-virtual {v1}, Landroid/telephony/SmsMessage;->getServiceCenterAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    const-string v2, "read"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 88
    const-string v2, "protocol"

    invoke-virtual {v1}, Landroid/telephony/SmsMessage;->getProtocolIdentifier()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 89
    const-string v2, "body"

    invoke-virtual {v4, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    const-string v2, "date"

    iget-object v3, p0, Lcom/ijinshan/kinghelper/firewall/core/w;->a:Landroid/content/Context;

    invoke-static {v3, v1}, Lcom/ijinshan/kinghelper/firewall/core/y;->a(Landroid/content/Context;Landroid/telephony/SmsMessage;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v4, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 92
    const-string v1, "person"

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 95
    :try_start_0
    sget-object v1, Landroid/a/w;->a:Landroid/net/Uri;

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 96
    sget-object v1, Landroid/a/w;->a:Landroid/net/Uri;

    invoke-virtual {v1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_1

    move-object v0, v7

    .line 102
    :cond_1
    :goto_0
    return-object v0

    .line 99
    :catch_0
    move-exception v0

    move-object v0, v7

    goto :goto_0
.end method


# virtual methods
.method public final a(ILjava/lang/Object;Ljava/lang/Object;)I
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x0

    .line 28
    check-cast p2, Lcom/ijinshan/kinghelper/firewall/core/w;

    .line 30
    iget-boolean v0, p2, Lcom/ijinshan/kinghelper/firewall/core/w;->e:Z

    if-eqz v0, :cond_0

    move v0, v6

    .line 69
    :goto_0
    return v0

    .line 33
    :cond_0
    iget-object v0, p2, Lcom/ijinshan/kinghelper/firewall/core/w;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/dd;->a(Landroid/content/Context;)V

    .line 34
    invoke-static {}, Lcom/ijinshan/kinghelper/firewall/dd;->p()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v6

    .line 35
    goto :goto_0

    .line 37
    :cond_1
    invoke-static {p2}, Lcom/ijinshan/kinghelper/firewall/core/a;->a(Lcom/ijinshan/kinghelper/firewall/core/w;)Landroid/net/Uri;

    move-result-object v1

    .line 39
    if-nez v1, :cond_2

    move v0, v6

    .line 40
    goto :goto_0

    .line 41
    :cond_2
    iget-object v0, p2, Lcom/ijinshan/kinghelper/firewall/core/w;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 43
    if-nez v0, :cond_3

    move v0, v6

    .line 44
    goto :goto_0

    .line 46
    :cond_3
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, 0x4

    if-le v0, v2, :cond_4

    .line 47
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p2, Lcom/ijinshan/kinghelper/firewall/core/w;->a:Landroid/content/Context;

    const-class v3, Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 49
    const/high16 v2, 0x1000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 50
    sget-object v2, Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivity;->a:Ljava/lang/String;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 52
    iget-object v1, p2, Lcom/ijinshan/kinghelper/firewall/core/w;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 62
    :goto_1
    iget-object v0, p2, Lcom/ijinshan/kinghelper/firewall/core/w;->g:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0}, Landroid/content/BroadcastReceiver;->abortBroadcast()V

    .line 64
    const/4 v0, 0x2

    goto :goto_0

    .line 54
    :cond_4
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p2, Lcom/ijinshan/kinghelper/firewall/core/w;->a:Landroid/content/Context;

    const-class v3, Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 56
    const/high16 v2, 0x1000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 57
    sget-object v2, Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivity;->a:Ljava/lang/String;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 59
    iget-object v1, p2, Lcom/ijinshan/kinghelper/firewall/core/w;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 65
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v6

    goto :goto_0
.end method
