.class public Lcom/ijinshan/kinghelper/firewall/core/SmsFirewallBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SmsFirewallBroadcastReceiver.java"


# static fields
.field public static a:I = 0x0

.field public static b:I = 0x0

.field public static c:I = 0x0

.field private static final d:Ljava/lang/String; = "SmsFirewallBroadcastReceiver"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x0

    sput v0, Lcom/ijinshan/kinghelper/firewall/core/SmsFirewallBroadcastReceiver;->a:I

    .line 33
    const/4 v0, 0x1

    sput v0, Lcom/ijinshan/kinghelper/firewall/core/SmsFirewallBroadcastReceiver;->b:I

    .line 34
    const/4 v0, 0x2

    sput v0, Lcom/ijinshan/kinghelper/firewall/core/SmsFirewallBroadcastReceiver;->c:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 37
    return-void
.end method

.method private static a([BZ)Lcom/android/internal/telephony/SmsMessageBase;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 157
    if-eqz p1, :cond_0

    .line 160
    invoke-static {p0}, Lcom/android/internal/telephony/cdma/SmsMessage;->createFromPdu([B)Lcom/android/internal/telephony/cdma/SmsMessage;

    move-result-object v0

    .line 165
    :goto_0
    return-object v0

    .line 162
    :cond_0
    invoke-static {p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->createFromPdu([B)Lcom/android/internal/telephony/gsm/SmsMessage;

    move-result-object v0

    goto :goto_0
.end method

.method private static a(Landroid/content/Intent;)[Landroid/telephony/SmsMessage;
    .locals 6
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 130
    sget-boolean v0, Lcom/jxphone/mosecurity/d/l;->c:Z

    if-eqz v0, :cond_0

    .line 131
    invoke-static {p0}, Lcom/ijinshan/kinghelper/firewall/core/SmsFirewallBroadcastReceiver;->b(Landroid/content/Intent;)[Landroid/telephony/SmsMessage;

    move-result-object v0

    .line 148
    :goto_0
    return-object v0

    .line 134
    :cond_0
    const-string v0, "pdus"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p0

    check-cast p0, [Ljava/lang/Object;

    .line 135
    array-length v0, p0

    new-array v1, v0, [[B

    move v2, v4

    .line 137
    :goto_1
    array-length v0, p0

    if-ge v2, v0, :cond_1

    .line 138
    aget-object v0, p0, v2

    check-cast v0, [B

    aput-object v0, v1, v2

    .line 137
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 140
    :cond_1
    array-length v0, v1

    new-array v0, v0, [[B

    .line 141
    array-length v2, v0

    .line 142
    new-array v3, v2, [Landroid/telephony/SmsMessage;

    .line 143
    :goto_2
    if-ge v4, v2, :cond_2

    .line 144
    aget-object v5, v1, v4

    aput-object v5, v0, v4

    .line 145
    aget-object v5, v0, v4

    invoke-static {v5}, Landroid/telephony/SmsMessage;->createFromPdu([B)Landroid/telephony/SmsMessage;

    move-result-object v5

    aput-object v5, v3, v4

    .line 143
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_2
    move-object v0, v3

    .line 148
    goto :goto_0
.end method

.method private static b(Landroid/content/Intent;)[Landroid/telephony/SmsMessage;
    .locals 9
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 170
    const-string v0, "from"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 173
    if-nez v0, :cond_0

    move-object v0, v2

    .line 208
    :goto_0
    return-object v0

    .line 176
    :cond_0
    const-string v1, "GSM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v5

    .line 185
    :goto_1
    const-string v0, "pdus"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p0

    check-cast p0, [Ljava/lang/Object;

    .line 186
    array-length v0, p0

    new-array v2, v0, [[B

    move v3, v5

    .line 188
    :goto_2
    array-length v0, p0

    if-ge v3, v0, :cond_3

    .line 189
    aget-object v0, p0, v3

    check-cast v0, [B

    aput-object v0, v2, v3

    .line 188
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_2

    .line 179
    :cond_1
    const-string v1, "CDMA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 180
    const/4 v0, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    move-object v0, v2

    .line 183
    goto :goto_0

    .line 191
    :cond_3
    array-length v0, v2

    new-array v0, v0, [[B

    .line 192
    array-length v3, v0

    .line 193
    new-array v4, v3, [Landroid/telephony/SmsMessage;

    .line 194
    :goto_3
    if-ge v5, v3, :cond_5

    .line 195
    aget-object v6, v2, v5

    aput-object v6, v0, v5

    .line 196
    aget-object v6, v0, v5

    if-eqz v1, :cond_4

    invoke-static {v6}, Lcom/android/internal/telephony/cdma/SmsMessage;->createFromPdu([B)Lcom/android/internal/telephony/cdma/SmsMessage;

    move-result-object v6

    .line 200
    :goto_4
    :try_start_0
    const-class v7, Landroid/telephony/SmsMessage;

    invoke-virtual {v7}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/SmsMessage;

    aput-object p0, v4, v5

    .line 201
    const-class v7, Landroid/telephony/SmsMessage;

    const-string v8, "mWrappedSmsMessage"

    invoke-virtual {v7, v8}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    .line 202
    aget-object v8, v4, v5

    invoke-virtual {v7, v8, v6}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    :goto_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 196
    :cond_4
    invoke-static {v6}, Lcom/android/internal/telephony/gsm/SmsMessage;->createFromPdu([B)Lcom/android/internal/telephony/gsm/SmsMessage;

    move-result-object v6

    goto :goto_4

    .line 204
    :catch_0
    move-exception v6

    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    :cond_5
    move-object v0, v4

    .line 208
    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .parameter
    .parameter

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 51
    const-string v0, "SmsFirewallBroadcastReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SmsFirewallBroadcastReceiver>>onReceive>>intent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    new-instance v0, Lcom/ijinshan/kinghelper/firewall/core/w;

    invoke-direct {v0, p0}, Lcom/ijinshan/kinghelper/firewall/core/w;-><init>(Lcom/ijinshan/kinghelper/firewall/core/SmsFirewallBroadcastReceiver;)V

    .line 56
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 57
    invoke-static {}, Lcom/keniu/security/monitor/a;->a()Lcom/keniu/security/monitor/a;

    move-result-object v1

    .line 60
    iput-object p2, v0, Lcom/ijinshan/kinghelper/firewall/core/w;->b:Landroid/content/Intent;

    .line 61
    iput-boolean v8, v0, Lcom/ijinshan/kinghelper/firewall/core/w;->e:Z

    .line 62
    iput-object p1, v0, Lcom/ijinshan/kinghelper/firewall/core/w;->a:Landroid/content/Context;

    .line 63
    iput-object p0, v0, Lcom/ijinshan/kinghelper/firewall/core/w;->g:Landroid/content/BroadcastReceiver;

    .line 65
    const-string v2, "android.provider.Telephony.SMS_RECEIVED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 67
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 69
    const-string v3, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 70
    iput-boolean v9, v0, Lcom/ijinshan/kinghelper/firewall/core/w;->e:Z

    .line 71
    invoke-virtual {p2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "application/vnd.wap.sic"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 72
    const-string v2, "data"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v2

    .line 73
    if-eqz v2, :cond_5

    .line 74
    invoke-static {v2}, Lcom/ijinshan/kinghelper/firewall/core/p;->a([B)Ljava/lang/String;

    move-result-object v2

    .line 75
    if-eqz v2, :cond_5

    .line 77
    iput-object v2, v0, Lcom/ijinshan/kinghelper/firewall/core/w;->d:Ljava/lang/String;

    .line 78
    sget-object v2, Lcom/ijinshan/kinghelper/firewall/core/p;->a:Ljava/lang/String;

    iput-object v2, v0, Lcom/ijinshan/kinghelper/firewall/core/w;->c:Ljava/lang/String;

    :goto_0
    move v2, v9

    .line 120
    :goto_1
    if-eqz v2, :cond_1

    .line 122
    sget v2, Lcom/keniu/security/monitor/a;->r:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Lcom/keniu/security/monitor/a;->a(ILjava/lang/Object;Ljava/lang/Object;)I

    .line 124
    :cond_1
    return-void

    .line 83
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "application/vnd.wap.mms-message"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 84
    iput-boolean v9, v0, Lcom/ijinshan/kinghelper/firewall/core/w;->h:Z

    move v2, v9

    .line 85
    goto :goto_1

    .line 88
    :cond_3
    if-eqz v2, :cond_5

    .line 90
    :try_start_0
    invoke-static {p2}, Lcom/ijinshan/kinghelper/firewall/core/SmsFirewallBroadcastReceiver;->a(Landroid/content/Intent;)[Landroid/telephony/SmsMessage;

    move-result-object v2

    .line 91
    if-eqz v2, :cond_5

    array-length v3, v2

    if-lez v3, :cond_5

    .line 93
    const/4 v3, 0x0

    aget-object v3, v2, v3

    invoke-virtual {v3}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v3

    .line 94
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 95
    array-length v5, v2

    move v6, v8

    :goto_2
    if-ge v6, v5, :cond_4

    aget-object v7, v2, v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 98
    :try_start_1
    invoke-virtual {v7}, Landroid/telephony/SmsMessage;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v7

    .line 99
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 95
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 100
    :catch_0
    move-exception v7

    :try_start_2
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 115
    :catch_1
    move-exception v2

    move v2, v8

    goto :goto_1

    .line 105
    :cond_4
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/ijinshan/kinghelper/firewall/core/w;->d:Ljava/lang/String;

    .line 106
    iput-object v3, v0, Lcom/ijinshan/kinghelper/firewall/core/w;->c:Ljava/lang/String;

    .line 107
    iput-object v2, v0, Lcom/ijinshan/kinghelper/firewall/core/w;->f:[Landroid/telephony/SmsMessage;

    .line 111
    iget-object v2, v0, Lcom/ijinshan/kinghelper/firewall/core/w;->c:Ljava/lang/String;

    iget-object v3, v0, Lcom/ijinshan/kinghelper/firewall/core/w;->d:Ljava/lang/String;

    sput-object v2, Lcom/jxphone/mosecurity/d/f;->b:Ljava/lang/String;

    sput-object v3, Lcom/jxphone/mosecurity/d/f;->c:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :cond_5
    move v2, v8

    goto :goto_1
.end method
