.class public final Lcom/keniu/security/rates/a;
.super Ljava/lang/Object;
.source "FixSmsFilter.java"

# interfaces
.implements Lcn/com/wali/zft/ZftPluginCallBack;
.implements Lcom/keniu/security/monitor/b;


# static fields
.field private static a:Lcom/keniu/security/rates/a;

.field private static b:Ljava/lang/String;

.field private static c:Ljava/lang/String;

.field private static d:Landroid/content/Context;

.field private static e:Lcn/com/wali/zft/plugin;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 30
    sput-object v0, Lcom/keniu/security/rates/a;->b:Ljava/lang/String;

    .line 31
    sput-object v0, Lcom/keniu/security/rates/a;->c:Ljava/lang/String;

    .line 96
    invoke-static {}, Lcn/com/wali/zft/plugin;->getInstance()Lcn/com/wali/zft/plugin;

    move-result-object v0

    sput-object v0, Lcom/keniu/security/rates/a;->e:Lcn/com/wali/zft/plugin;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 152
    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)I
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 36
    const-class v0, Lcom/keniu/security/rates/a;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sput-object v1, Lcom/keniu/security/rates/a;->d:Landroid/content/Context;

    .line 40
    sget-object v1, Lcom/keniu/security/rates/a;->a:Lcom/keniu/security/rates/a;

    if-nez v1, :cond_0

    .line 41
    new-instance v1, Lcom/keniu/security/rates/a;

    invoke-direct {v1}, Lcom/keniu/security/rates/a;-><init>()V

    sput-object v1, Lcom/keniu/security/rates/a;->a:Lcom/keniu/security/rates/a;

    .line 44
    :cond_0
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 45
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 47
    invoke-virtual {v2, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/keniu/security/rates/a;->b:Ljava/lang/String;

    .line 48
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "time--"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/keniu/security/rates/a;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 50
    invoke-static {}, Lcn/com/wali/zft/plugin;->getInstance()Lcn/com/wali/zft/plugin;

    move-result-object v1

    invoke-virtual {v1}, Lcn/com/wali/zft/plugin;->available()I

    move-result v1

    .line 52
    if-ne v1, v5, :cond_2

    .line 54
    sget-object v1, Lcom/keniu/security/rates/a;->e:Lcn/com/wali/zft/plugin;

    sget-object v2, Lcom/keniu/security/rates/a;->a:Lcom/keniu/security/rates/a;

    invoke-virtual {v1, v2}, Lcn/com/wali/zft/plugin;->registCallBack(Lcn/com/wali/zft/ZftPluginCallBack;)V

    .line 55
    sget-object v1, Lcom/keniu/security/rates/a;->a:Lcom/keniu/security/rates/a;

    invoke-static {}, Lcom/keniu/security/monitor/a;->a()Lcom/keniu/security/monitor/a;

    move-result-object v2

    sget v3, Lcom/keniu/security/monitor/a;->r:I

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v1, v4}, Lcom/keniu/security/monitor/a;->a(ILcom/keniu/security/monitor/b;I)Z

    .line 57
    invoke-static {}, Lcn/com/wali/zft/plugin;->getInstance()Lcn/com/wali/zft/plugin;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcn/com/wali/zft/plugin;->beginAsyn_1_1(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 59
    if-eq v1, v5, :cond_1

    move v1, v6

    .line 74
    :goto_0
    monitor-exit v0

    return v1

    .line 66
    :cond_1
    :try_start_1
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "beginAsyn"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v1, v5

    .line 70
    goto :goto_0

    .line 71
    :cond_2
    const/4 v1, 0x3

    goto :goto_0

    .line 36
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static a(Lcom/ijinshan/kinghelper/firewall/core/w;)I
    .locals 6
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 111
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "receive message:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/ijinshan/kinghelper/firewall/core/w;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 113
    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/core/w;->f:[Landroid/telephony/SmsMessage;

    .line 115
    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/core/w;->f:[Landroid/telephony/SmsMessage;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/telephony/SmsMessage;->getDisplayOriginatingAddress()Ljava/lang/String;

    move-result-object v1

    .line 122
    invoke-static {}, Lcn/com/wali/zft/plugin;->getInstance()Lcn/com/wali/zft/plugin;

    move-result-object v2

    invoke-virtual {v2}, Lcn/com/wali/zft/plugin;->isAsynFinished()I

    move-result v2

    if-ne v2, v4, :cond_2

    invoke-static {}, Lcn/com/wali/zft/plugin;->getInstance()Lcn/com/wali/zft/plugin;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcn/com/wali/zft/plugin;->smsNeedBlock(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v4, :cond_2

    .line 126
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 127
    sget-object v2, Lcom/keniu/security/rates/a;->e:Lcn/com/wali/zft/plugin;

    iget-object v3, p0, Lcom/ijinshan/kinghelper/firewall/core/w;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/ijinshan/kinghelper/firewall/core/w;->c:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v1}, Lcn/com/wali/zft/plugin;->Asyn_1_1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuffer;)Ljava/util/HashMap;

    move-result-object v1

    .line 129
    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    .line 130
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Ljava/util/Map$Entry;

    move-object v1, v0

    .line 131
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 132
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "key == "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 134
    const-string v3, "BASIC_SSYE"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 136
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 137
    sput-object p0, Lcom/keniu/security/rates/a;->c:Ljava/lang/String;

    invoke-static {p0}, Lcom/keniu/security/rates/a;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 143
    :cond_1
    sget-object v1, Lcom/keniu/security/rates/a;->d:Landroid/content/Context;

    new-instance v2, Lcom/keniu/security/rates/b;

    sget-object v3, Lcom/keniu/security/rates/a;->a:Lcom/keniu/security/rates/a;

    invoke-direct {v2, v3}, Lcom/keniu/security/rates/b;-><init>(Lcom/keniu/security/rates/a;)V

    const-wide/16 v3, 0x64

    invoke-static {v1, v2, v3, v4}, Lcom/keniu/security/traffic/dd;->a(Landroid/content/Context;Ljava/lang/Runnable;J)V

    .line 148
    :cond_2
    sget v1, Lcom/ijinshan/kinghelper/firewall/core/SmsFirewallBroadcastReceiver;->b:I

    return v1
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/keniu/security/rates/a;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter

    .prologue
    .line 27
    sput-object p0, Lcom/keniu/security/rates/a;->c:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic b()Landroid/content/Context;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/keniu/security/rates/a;->d:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic b(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 27
    invoke-static {p0}, Lcom/keniu/security/rates/a;->c(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic c()Lcn/com/wali/zft/plugin;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/keniu/security/rates/a;->e:Lcn/com/wali/zft/plugin;

    return-object v0
.end method

.method private static c(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 220
    sget-object v0, Lcom/keniu/security/rates/a;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/keniu/security/rates/c;->a(Landroid/content/Context;)Lcom/keniu/security/rates/c;

    move-result-object v0

    .line 221
    invoke-static {p0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iput v1, v0, Lcom/keniu/security/rates/c;->e:F

    .line 222
    sget-object v1, Lcom/keniu/security/rates/a;->d:Landroid/content/Context;

    const v2, 0x7f0b036a

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/rates/c;->a(Landroid/content/Context;I)V

    .line 224
    sget-object v1, Lcom/keniu/security/rates/a;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/keniu/security/rates/c;->d:Ljava/lang/String;

    .line 225
    sget-object v1, Lcom/keniu/security/rates/a;->d:Landroid/content/Context;

    const v2, 0x7f0b0369

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/rates/c;->a(Landroid/content/Context;I)V

    .line 227
    sget-object v0, Lcom/keniu/security/rates/RatesRequestMainActivity;->e:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 229
    return-void
.end method

.method private d()V
    .locals 3

    .prologue
    .line 100
    invoke-static {}, Lcom/keniu/security/monitor/a;->a()Lcom/keniu/security/monitor/a;

    move-result-object v0

    .line 102
    sget v1, Lcom/keniu/security/monitor/a;->r:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Lcom/keniu/security/monitor/a;->a(ILcom/keniu/security/monitor/b;I)Z

    .line 105
    return-void
.end method


# virtual methods
.method public final Sync_End()V
    .locals 0

    .prologue
    .line 246
    return-void
.end method

.method public final Sync_Status(Lcn/com/wali/zft/ZftPluginCallBack$SyncStatus;)V
    .locals 0
    .parameter

    .prologue
    .line 235
    return-void
.end method

.method public final Sync_Timeout()V
    .locals 0

    .prologue
    .line 240
    return-void
.end method

.method public final a(ILjava/lang/Object;Ljava/lang/Object;)I
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 80
    check-cast p2, Lcom/ijinshan/kinghelper/firewall/core/w;

    .line 82
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "receive message:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p2, Lcom/ijinshan/kinghelper/firewall/core/w;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v1, p2, Lcom/ijinshan/kinghelper/firewall/core/w;->f:[Landroid/telephony/SmsMessage;

    iget-object v1, p2, Lcom/ijinshan/kinghelper/firewall/core/w;->f:[Landroid/telephony/SmsMessage;

    aget-object v1, v1, v6

    invoke-virtual {v1}, Landroid/telephony/SmsMessage;->getDisplayOriginatingAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcn/com/wali/zft/plugin;->getInstance()Lcn/com/wali/zft/plugin;

    move-result-object v2

    invoke-virtual {v2}, Lcn/com/wali/zft/plugin;->isAsynFinished()I

    move-result v2

    if-ne v2, v4, :cond_2

    invoke-static {}, Lcn/com/wali/zft/plugin;->getInstance()Lcn/com/wali/zft/plugin;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcn/com/wali/zft/plugin;->smsNeedBlock(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v4, :cond_2

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    sget-object v2, Lcom/keniu/security/rates/a;->e:Lcn/com/wali/zft/plugin;

    iget-object v3, p2, Lcom/ijinshan/kinghelper/firewall/core/w;->d:Ljava/lang/String;

    iget-object v4, p2, Lcom/ijinshan/kinghelper/firewall/core/w;->c:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v1}, Lcn/com/wali/zft/plugin;->Asyn_1_1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuffer;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Ljava/util/Map$Entry;

    move-object v1, v0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "key == "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-string v3, "BASIC_SSYE"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    sput-object p0, Lcom/keniu/security/rates/a;->c:Ljava/lang/String;

    invoke-static {p0}, Lcom/keniu/security/rates/a;->c(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/keniu/security/rates/a;->d:Landroid/content/Context;

    new-instance v2, Lcom/keniu/security/rates/b;

    sget-object v3, Lcom/keniu/security/rates/a;->a:Lcom/keniu/security/rates/a;

    invoke-direct {v2, v3}, Lcom/keniu/security/rates/b;-><init>(Lcom/keniu/security/rates/a;)V

    const-wide/16 v3, 0x64

    invoke-static {v1, v2, v3, v4}, Lcom/keniu/security/traffic/dd;->a(Landroid/content/Context;Ljava/lang/Runnable;J)V

    :cond_2
    sget v1, Lcom/ijinshan/kinghelper/firewall/core/SmsFirewallBroadcastReceiver;->b:I

    .line 84
    sget v2, Lcom/ijinshan/kinghelper/firewall/core/SmsFirewallBroadcastReceiver;->b:I

    if-ne v1, v2, :cond_3

    .line 86
    iget-object v1, p2, Lcom/ijinshan/kinghelper/firewall/core/w;->g:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1}, Landroid/content/BroadcastReceiver;->abortBroadcast()V

    .line 87
    const/4 v1, 0x2

    .line 91
    :goto_1
    return v1

    :cond_3
    move v1, v6

    goto :goto_1
.end method
