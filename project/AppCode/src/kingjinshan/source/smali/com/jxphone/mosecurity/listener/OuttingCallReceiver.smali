.class public Lcom/jxphone/mosecurity/listener/OuttingCallReceiver;
.super Landroid/content/BroadcastReceiver;
.source "OuttingCallReceiver.java"


# static fields
.field private static final a:Ljava/lang/String; = "OuttingCallReceiver"

.field private static b:Ljava/util/ArrayList;

.field private static c:Ljava/lang/String;

.field private static d:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 40
    sput-object v0, Lcom/jxphone/mosecurity/listener/OuttingCallReceiver;->b:Ljava/util/ArrayList;

    .line 42
    sput-object v0, Lcom/jxphone/mosecurity/listener/OuttingCallReceiver;->c:Ljava/lang/String;

    .line 43
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/jxphone/mosecurity/listener/OuttingCallReceiver;->d:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 254
    invoke-static {}, Lcom/ijinshan/kinghelper/firewall/dc;->d()Ljava/lang/String;

    move-result-object v0

    .line 256
    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    move v1, v3

    .line 258
    :goto_0
    array-length v2, v0

    div-int/lit8 v2, v2, 0x2

    mul-int/lit8 v2, v2, 0x2

    if-ge v1, v2, :cond_1

    .line 259
    aget-object v2, v0, v1

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 260
    const/4 v0, 0x1

    .line 262
    :goto_1
    return v0

    .line 258
    :cond_0
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_1
    move v0, v3

    .line 262
    goto :goto_1
.end method

.method private b(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 272
    const-string v0, "OuttingCallReceiver"

    const-string v1, "START:sendCall"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    const-string v0, "phone"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 277
    if-eqz p1, :cond_0

    .line 279
    invoke-virtual {p0}, Lcom/jxphone/mosecurity/listener/OuttingCallReceiver;->getResultData()Ljava/lang/String;

    move-result-object v1

    .line 281
    :try_start_0
    sput-object p1, Lcom/jxphone/mosecurity/listener/OuttingCallReceiver;->c:Ljava/lang/String;

    .line 282
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ITelephony;->call(Ljava/lang/String;)V

    .line 283
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/jxphone/mosecurity/listener/OuttingCallReceiver;->setResultData(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 289
    :cond_0
    :goto_0
    const-string v0, "OuttingCallReceiver"

    const-string v1, "END:sendCall"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    return-void

    .line 285
    :catch_0
    move-exception v0

    invoke-virtual {p0, v1}, Lcom/jxphone/mosecurity/listener/OuttingCallReceiver;->setResultData(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .parameter
    .parameter

    .prologue
    const v5, 0x7f0b0186

    const v4, 0x7f0b00ae

    const/4 v10, 0x0

    const/4 v9, 0x2

    const/4 v8, 0x1

    .line 48
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/jxphone/mosecurity/listener/OuttingCallReceiver;->d:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1f4

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 249
    :cond_0
    :goto_0
    return-void

    .line 51
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/jxphone/mosecurity/listener/OuttingCallReceiver;->d:J

    .line 53
    invoke-static {p1}, Lcom/jxphone/mosecurity/logic/h;->b(Landroid/content/Context;)Lcom/jxphone/mosecurity/logic/a/g;

    move-result-object v1

    .line 55
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "android.intent.action.NEW_OUTGOING_CALL"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    invoke-virtual {p0}, Lcom/jxphone/mosecurity/listener/OuttingCallReceiver;->getResultData()Ljava/lang/String;

    move-result-object v0

    .line 60
    if-nez v0, :cond_f

    if-eqz p2, :cond_f

    .line 61
    const-string v0, "android.intent.extra.PHONE_NUMBER"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    .line 65
    :goto_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 70
    const-string v0, "*"

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "#"

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 75
    invoke-static {p1, v2}, Lcom/jxphone/mosecurity/listener/e;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/ijinshan/kinghelper/firewall/a/g;

    move-result-object v0

    .line 77
    if-eqz v0, :cond_2

    .line 79
    iget-object v0, v0, Lcom/ijinshan/kinghelper/firewall/a/g;->g:Ljava/lang/String;

    invoke-static {p1, v2, v0}, Lcom/jxphone/mosecurity/listener/FirewallCallTipDialog;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/jxphone/mosecurity/listener/OuttingCallReceiver;->setResultData(Ljava/lang/String;)V

    goto :goto_0

    .line 84
    :cond_2
    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 86
    invoke-interface {v1, v2, v9, v0}, Lcom/jxphone/mosecurity/logic/a/g;->a(Ljava/lang/String;ILandroid/view/Display;)I

    .line 88
    const-string v0, "OuttingCallReceiver"

    const-string v1, ">>onReceive>>callLogic>>handleCall"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    const-string v0, "android.intent.extra.PHONE_NUMBER"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ijinshan/kinghelper/a/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 92
    const-string v1, "OuttingCallReceiver"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 100
    invoke-static {p1}, Lcom/ijinshan/kinghelper/firewall/dc;->a(Landroid/content/Context;)V

    .line 102
    invoke-static {}, Lcom/ijinshan/kinghelper/firewall/dc;->a()V

    .line 106
    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ijinshan/kinghelper/firewall/dc;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 118
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 119
    sput-object v1, Lcom/jxphone/mosecurity/listener/OuttingCallReceiver;->b:Ljava/util/ArrayList;

    const-string v3, "13800138000"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    sget-object v1, Lcom/jxphone/mosecurity/listener/OuttingCallReceiver;->b:Ljava/util/ArrayList;

    const-string v3, "13800570507"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    sget-object v1, Lcom/jxphone/mosecurity/listener/OuttingCallReceiver;->b:Ljava/util/ArrayList;

    const-string v3, "13800571505"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    sget-object v1, Lcom/jxphone/mosecurity/listener/OuttingCallReceiver;->b:Ljava/util/ArrayList;

    const-string v3, "13800571507"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    sget-object v1, Lcom/jxphone/mosecurity/listener/OuttingCallReceiver;->b:Ljava/util/ArrayList;

    const-string v3, "13800572507"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    sget-object v1, Lcom/jxphone/mosecurity/listener/OuttingCallReceiver;->b:Ljava/util/ArrayList;

    const-string v3, "13800573507"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    sget-object v1, Lcom/jxphone/mosecurity/listener/OuttingCallReceiver;->b:Ljava/util/ArrayList;

    const-string v3, "13800574507"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 126
    sget-object v1, Lcom/jxphone/mosecurity/listener/OuttingCallReceiver;->b:Ljava/util/ArrayList;

    const-string v3, "13800575507"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    sget-object v1, Lcom/jxphone/mosecurity/listener/OuttingCallReceiver;->b:Ljava/util/ArrayList;

    const-string v3, "13800576507"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    sget-object v1, Lcom/jxphone/mosecurity/listener/OuttingCallReceiver;->b:Ljava/util/ArrayList;

    const-string v3, "13800577507"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 129
    sget-object v1, Lcom/jxphone/mosecurity/listener/OuttingCallReceiver;->b:Ljava/util/ArrayList;

    const-string v3, "13800578507"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    sget-object v1, Lcom/jxphone/mosecurity/listener/OuttingCallReceiver;->b:Ljava/util/ArrayList;

    const-string v3, "13800579507"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    sget-object v1, Lcom/jxphone/mosecurity/listener/OuttingCallReceiver;->b:Ljava/util/ArrayList;

    const-string v3, "13800580507"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 133
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v3, 0xb

    if-ne v1, v3, :cond_3

    sget-object v1, Lcom/jxphone/mosecurity/listener/OuttingCallReceiver;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 138
    :cond_3
    sget-object v1, Lcom/jxphone/mosecurity/listener/OuttingCallReceiver;->c:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    sget-object v1, Lcom/jxphone/mosecurity/listener/OuttingCallReceiver;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/jxphone/mosecurity/listener/OuttingCallReceiver;->c:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 143
    :cond_4
    invoke-static {}, Lcom/jxphone/mosecurity/d/l;->b()Z

    move-result v1

    if-nez v1, :cond_0

    .line 148
    invoke-static {p1}, Lcom/jxphone/mosecurity/d/a;->a(Landroid/content/Context;)Lcom/jxphone/mosecurity/d/a;

    move-result-object v1

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/jxphone/mosecurity/d/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 150
    if-eqz v1, :cond_0

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 154
    const-string v2, "\u9009\u62e9\u5168\u7701"

    invoke-static {v2}, Lcom/ijinshan/kinghelper/firewall/dc;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 157
    const-string v3, "\u672a\u9009\u62e9\u4efb\u4f55\u5730\u533a"

    invoke-static {v3}, Lcom/ijinshan/kinghelper/firewall/dc;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 160
    invoke-static {v0}, Lcom/jxphone/mosecurity/listener/OuttingCallReceiver;->a(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 163
    const-string v4, "\u672a\u9009\u62e9\u4efb\u4f55\u5730\u533a"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 165
    const-string v4, "\u5317\u4eac"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "\u4e0a\u6d77"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "\u5929\u6d25"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "\u91cd\u5e86"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "\u6d77\u5357"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 168
    :cond_5
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 190
    :cond_6
    const-string v2, "\u5176\u4ed6IP\u53f7\u7801"

    invoke-static {v2}, Lcom/ijinshan/kinghelper/firewall/dc;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 193
    const-string v3, ""

    invoke-static {v3}, Lcom/ijinshan/kinghelper/firewall/dc;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 195
    const-string v4, ""

    invoke-static {v4}, Lcom/ijinshan/kinghelper/firewall/dc;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 198
    const-string v5, "\u62e8\u6253\u957f\u9014\u65f6"

    invoke-static {v5}, Lcom/ijinshan/kinghelper/firewall/dc;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 201
    const-string v6, "\u62e8\u6253\u957f\u9014\u65f6"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 205
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-le v6, v9, :cond_7

    .line 206
    invoke-virtual {v0, v10, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const-string v7, "0"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 208
    invoke-virtual {v0, v10, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const-string v7, "1"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 209
    invoke-virtual {v0, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const-string v7, "3"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    invoke-virtual {v0, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const-string v7, "5"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    invoke-virtual {v0, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const-string v7, "8"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 219
    :cond_7
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 223
    invoke-static {v1, v4}, Lcom/keniu/security/mydb/opt/a;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v4, 0x6

    if-lt v1, v4, :cond_8

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v4, 0xc

    if-gt v1, v4, :cond_8

    .line 224
    const-string v1, "\u5176\u4ed6IP\u53f7\u7801"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 225
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/jxphone/mosecurity/listener/OuttingCallReceiver;->b(Ljava/lang/String;)V

    .line 234
    :cond_8
    :goto_2
    const-string v1, "\u62e8\u6253\u6240\u6709\u7535\u8bdd\u65f6"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 238
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v4, 0x7

    if-eq v1, v4, :cond_9

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v4, 0x8

    if-ne v1, v4, :cond_d

    .line 240
    :cond_9
    invoke-direct {p0, v0}, Lcom/jxphone/mosecurity/listener/OuttingCallReceiver;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 172
    :cond_a
    const-string v4, "\u9009\u62e9\u5168\u7701"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 174
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-le v2, v4, :cond_6

    .line 175
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v10, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    goto/16 :goto_0

    .line 181
    :cond_b
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    goto/16 :goto_0

    .line 227
    :cond_c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/jxphone/mosecurity/listener/OuttingCallReceiver;->b(Ljava/lang/String;)V

    goto :goto_2

    .line 243
    :cond_d
    const-string v1, "\u5176\u4ed6IP\u53f7\u7801"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 244
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/jxphone/mosecurity/listener/OuttingCallReceiver;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 246
    :cond_e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/jxphone/mosecurity/listener/OuttingCallReceiver;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_f
    move-object v2, v0

    goto/16 :goto_1
.end method
