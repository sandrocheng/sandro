.class public final Lcom/keniu/security/sync/a;
.super Ljava/lang/Object;
.source "AutoVerifyMonitor.java"

# interfaces
.implements Lcom/keniu/security/monitor/b;


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Z

.field private static c:Lcom/keniu/security/sync/a;

.field private static d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 24
    sput-boolean v0, Lcom/keniu/security/sync/a;->b:Z

    .line 41
    sput-boolean v0, Lcom/keniu/security/sync/a;->d:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    return-void
.end method

.method static synthetic a(Lcom/ijinshan/kinghelper/firewall/core/w;)Landroid/net/Uri;
    .locals 1
    .parameter

    .prologue
    .line 21
    invoke-static {p0}, Lcom/keniu/security/sync/a;->c(Lcom/ijinshan/kinghelper/firewall/core/w;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized a()V
    .locals 5

    .prologue
    .line 43
    const-class v0, Lcom/keniu/security/sync/a;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/keniu/security/sync/a;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 50
    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    .line 44
    :cond_1
    const/4 v1, 0x1

    :try_start_1
    sput-boolean v1, Lcom/keniu/security/sync/a;->d:Z

    .line 46
    sget-object v1, Lcom/keniu/security/sync/a;->c:Lcom/keniu/security/sync/a;

    if-nez v1, :cond_0

    .line 47
    new-instance v1, Lcom/keniu/security/sync/a;

    invoke-direct {v1}, Lcom/keniu/security/sync/a;-><init>()V

    sput-object v1, Lcom/keniu/security/sync/a;->c:Lcom/keniu/security/sync/a;

    .line 48
    invoke-static {}, Lcom/keniu/security/monitor/a;->a()Lcom/keniu/security/monitor/a;

    move-result-object v1

    sget v2, Lcom/keniu/security/monitor/a;->r:I

    sget-object v3, Lcom/keniu/security/sync/a;->c:Lcom/keniu/security/sync/a;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/keniu/security/monitor/a;->a(ILcom/keniu/security/monitor/b;I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 43
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 141
    sput-object p0, Lcom/keniu/security/sync/a;->a:Ljava/lang/String;

    .line 142
    return-void
.end method

.method private b(Lcom/ijinshan/kinghelper/firewall/core/w;)I
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x1

    .line 53
    sget v0, Lcom/ijinshan/kinghelper/firewall/core/SmsFirewallBroadcastReceiver;->a:I

    .line 55
    iget-object v1, p1, Lcom/ijinshan/kinghelper/firewall/core/w;->c:Ljava/lang/String;

    .line 57
    iget-object v2, p1, Lcom/ijinshan/kinghelper/firewall/core/w;->d:Ljava/lang/String;

    .line 58
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ">>>>> address "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "; body "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/keniu/security/sync/i;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    iget-boolean v1, p1, Lcom/ijinshan/kinghelper/firewall/core/w;->e:Z

    if-eqz v1, :cond_1

    .line 70
    :cond_0
    :goto_0
    return v0

    .line 63
    :cond_1
    const-string v1, "http://i.ijinshan.com/m?c="

    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 64
    sput-boolean v5, Lcom/keniu/security/sync/a;->b:Z

    .line 65
    const-string v0, "http://i.ijinshan.com/m?c="

    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const-string v1, "http://i.ijinshan.com/m?c="

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    const-string v1, "\uff08"

    invoke-virtual {v2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 66
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">>>>> verify key = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/keniu/security/sync/i;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    sget v1, Lcom/ijinshan/kinghelper/firewall/core/SmsFirewallBroadcastReceiver;->b:I

    .line 68
    new-instance v2, Lcom/keniu/security/sync/c;

    invoke-direct {v2, p0}, Lcom/keniu/security/sync/c;-><init>(Lcom/keniu/security/sync/a;)V

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    aput-object p1, v3, v5

    invoke-virtual {v2, v3}, Lcom/keniu/security/sync/c;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move v0, v1

    goto :goto_0
.end method

.method public static b()Z
    .locals 3

    .prologue
    .line 135
    sget-object v0, Lcom/keniu/security/sync/a;->c:Lcom/keniu/security/sync/a;

    const-string v1, ">>>>> call is verified"

    invoke-static {v0, v1}, Lcom/keniu/security/sync/i;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 136
    invoke-static {}, Lcom/keniu/security/monitor/a;->a()Lcom/keniu/security/monitor/a;

    move-result-object v0

    sget v1, Lcom/keniu/security/monitor/a;->r:I

    sget-object v2, Lcom/keniu/security/sync/a;->c:Lcom/keniu/security/sync/a;

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/monitor/a;->a(ILcom/keniu/security/monitor/b;)Z

    .line 137
    sget-boolean v0, Lcom/keniu/security/sync/a;->b:Z

    return v0
.end method

.method private static c(Lcom/ijinshan/kinghelper/firewall/core/w;)Landroid/net/Uri;
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 104
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/core/w;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 105
    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/core/w;->f:[Landroid/telephony/SmsMessage;

    .line 107
    aget-object v1, v1, v6

    .line 109
    invoke-virtual {v1}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v2

    .line 110
    iget-object v3, p0, Lcom/ijinshan/kinghelper/firewall/core/w;->d:Ljava/lang/String;

    .line 112
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 113
    const-string v5, "address"

    invoke-virtual {v4, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    invoke-virtual {v1}, Landroid/telephony/SmsMessage;->getPseudoSubject()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 115
    const-string v2, "subject"

    invoke-virtual {v1}, Landroid/telephony/SmsMessage;->getPseudoSubject()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    :cond_0
    const-string v2, "service_center"

    invoke-virtual {v1}, Landroid/telephony/SmsMessage;->getServiceCenterAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    const-string v2, "read"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 119
    const-string v2, "protocol"

    invoke-virtual {v1}, Landroid/telephony/SmsMessage;->getProtocolIdentifier()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 120
    const-string v2, "body"

    invoke-virtual {v4, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    const-string v2, "date"

    iget-object v3, p0, Lcom/ijinshan/kinghelper/firewall/core/w;->a:Landroid/content/Context;

    invoke-static {v3, v1}, Lcom/ijinshan/kinghelper/firewall/core/y;->a(Landroid/content/Context;Landroid/telephony/SmsMessage;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v4, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 122
    const-string v1, "person"

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 125
    :try_start_0
    sget-object v1, Landroid/a/w;->a:Landroid/net/Uri;

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 131
    :goto_0
    return-object v0

    .line 128
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/keniu/security/sync/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d()Lcom/keniu/security/sync/a;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/keniu/security/sync/a;->c:Lcom/keniu/security/sync/a;

    return-object v0
.end method


# virtual methods
.method public final a(ILjava/lang/Object;Ljava/lang/Object;)I
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 28
    const-string v0, ">>>>> monitor notify"

    invoke-static {p0, v0}, Lcom/keniu/security/sync/i;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    check-cast p2, Lcom/ijinshan/kinghelper/firewall/core/w;

    .line 30
    sget v0, Lcom/ijinshan/kinghelper/firewall/core/SmsFirewallBroadcastReceiver;->a:I

    iget-object v1, p2, Lcom/ijinshan/kinghelper/firewall/core/w;->c:Ljava/lang/String;

    iget-object v2, p2, Lcom/ijinshan/kinghelper/firewall/core/w;->d:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ">>>>> address "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "; body "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/keniu/security/sync/i;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v1, p2, Lcom/ijinshan/kinghelper/firewall/core/w;->e:Z

    if-nez v1, :cond_0

    const-string v1, "http://i.ijinshan.com/m?c="

    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    sput-boolean v6, Lcom/keniu/security/sync/a;->b:Z

    const-string v0, "http://i.ijinshan.com/m?c="

    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const-string v1, "http://i.ijinshan.com/m?c="

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    const-string v1, "\uff08"

    invoke-virtual {v2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">>>>> verify key = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/keniu/security/sync/i;->a(Ljava/lang/Object;Ljava/lang/String;)V

    sget v1, Lcom/ijinshan/kinghelper/firewall/core/SmsFirewallBroadcastReceiver;->b:I

    new-instance v2, Lcom/keniu/security/sync/c;

    invoke-direct {v2, p0}, Lcom/keniu/security/sync/c;-><init>(Lcom/keniu/security/sync/a;)V

    new-array v3, v7, [Ljava/lang/Object;

    aput-object v0, v3, v5

    aput-object p2, v3, v6

    invoke-virtual {v2, v3}, Lcom/keniu/security/sync/c;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move v0, v1

    .line 32
    :cond_0
    sget v1, Lcom/ijinshan/kinghelper/firewall/core/SmsFirewallBroadcastReceiver;->b:I

    if-ne v0, v1, :cond_1

    .line 33
    iget-object v0, p2, Lcom/ijinshan/kinghelper/firewall/core/w;->g:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0}, Landroid/content/BroadcastReceiver;->abortBroadcast()V

    move v0, v7

    .line 36
    :goto_0
    return v0

    :cond_1
    move v0, v5

    goto :goto_0
.end method
