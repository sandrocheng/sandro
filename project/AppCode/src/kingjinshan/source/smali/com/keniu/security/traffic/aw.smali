.class final Lcom/keniu/security/traffic/aw;
.super Ljava/lang/Object;
.source "TrafficFixSmsAction.java"

# interfaces
.implements Lcom/keniu/security/monitor/b;


# static fields
.field public static volatile a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 316
    const/4 v0, 0x0

    sput-boolean v0, Lcom/keniu/security/traffic/aw;->a:Z

    return-void
.end method

.method synthetic constructor <init>()V
    .locals 1

    .prologue
    .line 280
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/keniu/security/traffic/aw;-><init>(B)V

    return-void
.end method

.method private constructor <init>(B)V
    .locals 0
    .parameter

    .prologue
    .line 280
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lcom/ijinshan/kinghelper/firewall/core/w;)I
    .locals 13
    .parameter

    .prologue
    const-wide/16 v11, 0x0

    const/4 v6, 0x2

    const/4 v10, 0x0

    const/4 v7, 0x1

    .line 320
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "receive message:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/ijinshan/kinghelper/firewall/core/w;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 322
    iget-boolean v0, p1, Lcom/ijinshan/kinghelper/firewall/core/w;->e:Z

    if-eqz v0, :cond_1

    .line 323
    sget v0, Lcom/ijinshan/kinghelper/firewall/core/SmsFirewallBroadcastReceiver;->a:I

    .line 362
    :cond_0
    :goto_0
    return v0

    .line 326
    :cond_1
    invoke-static {}, Lcn/com/wali/zft/plugin;->getInstance()Lcn/com/wali/zft/plugin;

    move-result-object v0

    iget-object v1, p1, Lcom/ijinshan/kinghelper/firewall/core/w;->f:[Landroid/telephony/SmsMessage;

    aget-object v1, v1, v10

    invoke-virtual {v1}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/com/wali/zft/plugin;->smsNeedBlock(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    .line 328
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "smsNeedBlock=0  body is"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/ijinshan/kinghelper/firewall/core/w;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 329
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "address is"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/ijinshan/kinghelper/firewall/core/w;->f:[Landroid/telephony/SmsMessage;

    aget-object v2, v2, v10

    invoke-virtual {v2}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 331
    sget v0, Lcom/ijinshan/kinghelper/firewall/core/SmsFirewallBroadcastReceiver;->a:I

    goto :goto_0

    .line 334
    :cond_2
    invoke-static {}, Lcn/com/wali/zft/plugin;->getInstance()Lcn/com/wali/zft/plugin;

    move-result-object v0

    iget-object v1, p1, Lcom/ijinshan/kinghelper/firewall/core/w;->f:[Landroid/telephony/SmsMessage;

    aget-object v1, v1, v10

    invoke-virtual {v1}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/com/wali/zft/plugin;->smsNeedBlock(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v7, :cond_14

    .line 337
    sget-boolean v0, Lcom/keniu/security/traffic/at;->a:Z

    if-nez v0, :cond_3

    .line 339
    invoke-static {}, Lcom/keniu/security/traffic/at;->j()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 342
    invoke-static {}, Lcom/keniu/security/traffic/at;->c()Landroid/content/Context;

    move-result-object v0

    const-string v1, "13"

    invoke-static {v0, v1}, Lcom/jxphone/mosecurity/a/a;->d(Landroid/content/Context;Ljava/lang/String;)V

    .line 344
    invoke-static {}, Lcom/keniu/security/traffic/at;->k()Z

    .line 348
    :cond_3
    invoke-static {}, Lcom/keniu/security/traffic/at;->i()[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    .line 349
    new-array v0, v6, [Ljava/lang/String;

    invoke-static {v0}, Lcom/keniu/security/traffic/at;->b([Ljava/lang/String;)[Ljava/lang/String;

    .line 350
    :cond_4
    invoke-static {}, Lcom/keniu/security/traffic/at;->i()[Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/ijinshan/kinghelper/firewall/core/w;->c:Ljava/lang/String;

    aput-object v1, v0, v10

    .line 351
    invoke-static {}, Lcom/keniu/security/traffic/at;->i()[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v7

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/keniu/security/traffic/at;->i()[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v7

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_8

    .line 352
    :cond_5
    invoke-static {}, Lcom/keniu/security/traffic/at;->i()[Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/ijinshan/kinghelper/firewall/core/w;->d:Ljava/lang/String;

    aput-object v1, v0, v7

    .line 356
    :goto_1
    iget-object v0, p1, Lcom/ijinshan/kinghelper/firewall/core/w;->c:Ljava/lang/String;

    iget-object v1, p1, Lcom/ijinshan/kinghelper/firewall/core/w;->d:Ljava/lang/String;

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    sget-boolean v2, Lcom/keniu/security/traffic/aw;->a:Z

    if-eqz v2, :cond_9

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "\u5df2\u7ecf\u6821\u6b63\u6210\u529f\uff0c\u76f4\u63a5\u8fd4\u56de"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_6
    :goto_2
    sget v0, Lcom/ijinshan/kinghelper/firewall/core/SmsFirewallBroadcastReceiver;->b:I

    .line 357
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isAsynFinished========"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcn/com/wali/zft/plugin;->getInstance()Lcn/com/wali/zft/plugin;

    move-result-object v3

    invoke-virtual {v3}, Lcn/com/wali/zft/plugin;->isAsynFinished()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-static {}, Lcn/com/wali/zft/plugin;->getInstance()Lcn/com/wali/zft/plugin;

    move-result-object v1

    invoke-virtual {v1}, Lcn/com/wali/zft/plugin;->isAsynFinished()I

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "p.isAsynFinished() = 0,you can end"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-boolean v1, Lcom/keniu/security/traffic/aw;->a:Z

    if-nez v1, :cond_7

    sget-boolean v1, Lcom/keniu/security/traffic/at;->a:Z

    if-nez v1, :cond_7

    invoke-static {}, Lcom/keniu/security/traffic/at;->h()V

    :cond_7
    invoke-static {}, Lcn/com/wali/zft/plugin;->getInstance()Lcn/com/wali/zft/plugin;

    move-result-object v1

    invoke-virtual {v1}, Lcn/com/wali/zft/plugin;->endAsyn_1_1()I

    invoke-static {}, Lcn/com/wali/zft/plugin;->getInstance()Lcn/com/wali/zft/plugin;

    move-result-object v1

    invoke-static {}, Lcom/keniu/security/traffic/at;->l()Lcn/com/wali/zft/ZftPluginCallBack;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/com/wali/zft/plugin;->unregistCallBack(Lcn/com/wali/zft/ZftPluginCallBack;)V

    invoke-virtual {p0}, Lcom/keniu/security/traffic/aw;->a()V

    goto/16 :goto_0

    .line 354
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/keniu/security/traffic/at;->i()[Ljava/lang/String;

    move-result-object v1

    aget-object v2, v1, v7

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p1, Lcom/ijinshan/kinghelper/firewall/core/w;->d:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v7

    goto/16 :goto_1

    .line 356
    :cond_9
    invoke-static {}, Lcom/keniu/security/traffic/at;->c()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/keniu/security/traffic/y;->a(Landroid/content/Context;)Lcom/keniu/security/traffic/y;

    move-result-object v3

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-static {}, Lcn/com/wali/zft/plugin;->getInstance()Lcn/com/wali/zft/plugin;

    move-result-object v4

    invoke-virtual {v4, v1, v0, v2}, Lcn/com/wali/zft/plugin;->Asyn_1_1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuffer;)Ljava/util/HashMap;

    move-result-object v2

    if-eqz v2, :cond_12

    const-string v4, "GTCYL"

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    const-string v0, "GTCYL"

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GTCYL============="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sput-boolean v7, Lcom/keniu/security/traffic/aw;->a:Z

    move-wide v1, v0

    :goto_3
    sget-boolean v0, Lcom/keniu/security/traffic/aw;->a:Z

    if-eqz v0, :cond_6

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u89e3\u6790\u6210\u529f newTraffic=="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    cmp-long v0, v1, v11

    if-ltz v0, :cond_13

    invoke-static {}, Lcom/keniu/security/traffic/at;->c()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v3, v5}, Lcom/keniu/security/traffic/y;->a(Ljava/util/Date;)J

    move-result-wide v3

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    invoke-static/range {v0 .. v7}, Lcom/keniu/security/traffic/dd;->a(Landroid/content/Context;JJJZ)V

    sget-boolean v0, Lcom/keniu/security/traffic/at;->a:Z

    if-nez v0, :cond_a

    invoke-static {}, Lcom/keniu/security/traffic/at;->c()Landroid/content/Context;

    move-result-object v0

    const-string v1, "14"

    invoke-static {v0, v1}, Lcom/jxphone/mosecurity/a/a;->d(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {}, Lcom/keniu/security/traffic/at;->c()Landroid/content/Context;

    move-result-object v0

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    if-eqz v0, :cond_a

    invoke-direct {p0, v0}, Lcom/keniu/security/traffic/aw;->a(Landroid/app/NotificationManager;)V

    :cond_a
    :goto_4
    sput-boolean v10, Lcom/keniu/security/traffic/at;->b:Z

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "updateTrafficMainData"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/keniu/security/traffic/at;->c()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_2

    :cond_b
    const-string v4, "TOTAL_GPRS_USED"

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    const-string v0, "TOTAL_GPRS_USED"

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TOTAL_GPRS_USED============="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sput-boolean v7, Lcom/keniu/security/traffic/aw;->a:Z

    move-wide v1, v0

    goto/16 :goto_3

    :cond_c
    const-string v4, "GTCSY"

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    const-string v0, "GTCSY"

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GTCSY============="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-wide v1, v3, Lcom/keniu/security/traffic/y;->d:J

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    sub-long v0, v1, v8

    sput-boolean v7, Lcom/keniu/security/traffic/aw;->a:Z

    move-wide v1, v0

    goto/16 :goto_3

    :cond_d
    const-string v4, "TOTAL_GPRS_BALANCE"

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    const-string v0, "TOTAL_GPRS_BALANCE"

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TOTAL_GPRS_BALANCE============="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-wide v1, v3, Lcom/keniu/security/traffic/y;->d:J

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    sub-long v0, v1, v8

    sput-boolean v7, Lcom/keniu/security/traffic/aw;->a:Z

    move-wide v1, v0

    goto/16 :goto_3

    :cond_e
    sput-boolean v10, Lcom/keniu/security/traffic/aw;->a:Z

    invoke-static {}, Lcom/keniu/security/traffic/at;->m()[Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_f

    new-array v2, v6, [Ljava/lang/String;

    invoke-static {v2}, Lcom/keniu/security/traffic/at;->a([Ljava/lang/String;)[Ljava/lang/String;

    :cond_f
    invoke-static {}, Lcom/keniu/security/traffic/at;->m()[Ljava/lang/String;

    move-result-object v2

    aput-object v0, v2, v10

    invoke-static {}, Lcom/keniu/security/traffic/at;->m()[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v7

    if-eqz v0, :cond_10

    invoke-static {}, Lcom/keniu/security/traffic/at;->m()[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v7

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_11

    :cond_10
    invoke-static {}, Lcom/keniu/security/traffic/at;->m()[Ljava/lang/String;

    move-result-object v0

    aput-object v1, v0, v7

    move-wide v1, v11

    goto/16 :goto_3

    :cond_11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/keniu/security/traffic/at;->m()[Ljava/lang/String;

    move-result-object v2

    aget-object v4, v2, v7

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v7

    :cond_12
    move-wide v1, v11

    goto/16 :goto_3

    :cond_13
    sget-boolean v0, Lcom/keniu/security/traffic/at;->a:Z

    if-nez v0, :cond_a

    invoke-static {}, Lcom/keniu/security/traffic/at;->c()Landroid/content/Context;

    move-result-object v0

    const-string v1, "16"

    invoke-static {v0, v1}, Lcom/jxphone/mosecurity/a/a;->d(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {}, Lcom/keniu/security/traffic/at;->c()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b0308

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/keniu/security/traffic/at;->a(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 362
    :cond_14
    sget v0, Lcom/ijinshan/kinghelper/firewall/core/SmsFirewallBroadcastReceiver;->b:I

    goto/16 :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)I
    .locals 13
    .parameter
    .parameter

    .prologue
    const-wide/16 v11, 0x0

    const/4 v10, 0x0

    const/4 v7, 0x1

    .line 383
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    .line 385
    sget-boolean v0, Lcom/keniu/security/traffic/aw;->a:Z

    if-eqz v0, :cond_0

    .line 386
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "\u5df2\u7ecf\u6821\u6b63\u6210\u529f\uff0c\u76f4\u63a5\u8fd4\u56de"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 387
    sget v0, Lcom/ijinshan/kinghelper/firewall/core/SmsFirewallBroadcastReceiver;->b:I

    .line 474
    :goto_0
    return v0

    .line 390
    :cond_0
    invoke-static {}, Lcom/keniu/security/traffic/at;->c()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/keniu/security/traffic/y;->a(Landroid/content/Context;)Lcom/keniu/security/traffic/y;

    move-result-object v3

    .line 393
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 394
    invoke-static {}, Lcn/com/wali/zft/plugin;->getInstance()Lcn/com/wali/zft/plugin;

    move-result-object v1

    invoke-virtual {v1, p2, p1, v0}, Lcn/com/wali/zft/plugin;->Asyn_1_1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuffer;)Ljava/util/HashMap;

    move-result-object v0

    .line 396
    if-eqz v0, :cond_a

    .line 398
    const-string v1, "GTCYL"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 399
    const-string v1, "GTCYL"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 400
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GTCYL============="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 401
    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 402
    sput-boolean v7, Lcom/keniu/security/traffic/aw;->a:Z

    move-wide v1, v0

    .line 431
    :goto_1
    sget-boolean v0, Lcom/keniu/security/traffic/aw;->a:Z

    if-eqz v0, :cond_2

    .line 434
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u89e3\u6790\u6210\u529f newTraffic=="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 435
    cmp-long v0, v1, v11

    if-ltz v0, :cond_b

    .line 436
    invoke-static {}, Lcom/keniu/security/traffic/at;->c()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v3, v5}, Lcom/keniu/security/traffic/y;->a(Ljava/util/Date;)J

    move-result-wide v3

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    invoke-static/range {v0 .. v7}, Lcom/keniu/security/traffic/dd;->a(Landroid/content/Context;JJJZ)V

    .line 440
    sget-boolean v0, Lcom/keniu/security/traffic/at;->a:Z

    if-nez v0, :cond_1

    .line 442
    invoke-static {}, Lcom/keniu/security/traffic/at;->c()Landroid/content/Context;

    move-result-object v0

    const-string v1, "14"

    invoke-static {v0, v1}, Lcom/jxphone/mosecurity/a/a;->d(Landroid/content/Context;Ljava/lang/String;)V

    .line 445
    invoke-static {}, Lcom/keniu/security/traffic/at;->c()Landroid/content/Context;

    move-result-object v0

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 447
    if-eqz v0, :cond_1

    .line 449
    new-instance v1, Landroid/content/Intent;

    invoke-static {}, Lcom/keniu/security/traffic/at;->c()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/keniu/security/traffic/TrafficTabActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {}, Lcom/keniu/security/traffic/at;->c()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x5

    invoke-static {v2, v3, v1, v10}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-static {}, Lcom/keniu/security/traffic/at;->c()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0b0305

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/keniu/security/traffic/at;->c()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0b0304

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Landroid/app/Notification;

    const v5, 0x7f020208

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-direct {v4, v5, v3, v6, v7}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    const/16 v5, 0x10

    iput v5, v4, Landroid/app/Notification;->flags:I

    invoke-static {}, Lcom/keniu/security/traffic/at;->c()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v4, v5, v2, v3, v1}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    const/16 v1, 0x1101

    :try_start_0
    invoke-virtual {v0, v1, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/keniu/security/traffic/ax;

    invoke-direct {v2, p0, v0}, Lcom/keniu/security/traffic/ax;-><init>(Lcom/keniu/security/traffic/aw;Landroid/app/NotificationManager;)V

    const-wide/16 v3, 0x2710

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 467
    :cond_1
    :goto_3
    sput-boolean v10, Lcom/keniu/security/traffic/at;->b:Z

    .line 468
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 469
    const-string v1, "updateTrafficMainData"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 470
    invoke-static {}, Lcom/keniu/security/traffic/at;->c()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 474
    :cond_2
    sget v0, Lcom/ijinshan/kinghelper/firewall/core/SmsFirewallBroadcastReceiver;->b:I

    goto/16 :goto_0

    .line 403
    :cond_3
    const-string v1, "TOTAL_GPRS_USED"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 404
    const-string v1, "TOTAL_GPRS_USED"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 405
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TOTAL_GPRS_USED============="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 406
    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 407
    sput-boolean v7, Lcom/keniu/security/traffic/aw;->a:Z

    move-wide v1, v0

    .line 408
    goto/16 :goto_1

    :cond_4
    const-string v1, "GTCSY"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 409
    const-string v1, "GTCSY"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 410
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GTCSY============="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 411
    iget-wide v1, v3, Lcom/keniu/security/traffic/y;->d:J

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    sub-long v0, v1, v8

    .line 412
    sput-boolean v7, Lcom/keniu/security/traffic/aw;->a:Z

    move-wide v1, v0

    .line 413
    goto/16 :goto_1

    :cond_5
    const-string v1, "TOTAL_GPRS_BALANCE"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 414
    const-string v1, "TOTAL_GPRS_BALANCE"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 415
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TOTAL_GPRS_BALANCE============="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 417
    iget-wide v1, v3, Lcom/keniu/security/traffic/y;->d:J

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    sub-long v0, v1, v8

    .line 418
    sput-boolean v7, Lcom/keniu/security/traffic/aw;->a:Z

    move-wide v1, v0

    .line 419
    goto/16 :goto_1

    .line 420
    :cond_6
    sput-boolean v10, Lcom/keniu/security/traffic/aw;->a:Z

    .line 421
    invoke-static {}, Lcom/keniu/security/traffic/at;->m()[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_7

    .line 422
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    invoke-static {v0}, Lcom/keniu/security/traffic/at;->a([Ljava/lang/String;)[Ljava/lang/String;

    .line 423
    :cond_7
    invoke-static {}, Lcom/keniu/security/traffic/at;->m()[Ljava/lang/String;

    move-result-object v0

    aput-object p1, v0, v10

    .line 424
    invoke-static {}, Lcom/keniu/security/traffic/at;->m()[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v7

    if-eqz v0, :cond_8

    invoke-static {}, Lcom/keniu/security/traffic/at;->m()[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v7

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_9

    .line 425
    :cond_8
    invoke-static {}, Lcom/keniu/security/traffic/at;->m()[Ljava/lang/String;

    move-result-object v0

    aput-object p2, v0, v7

    move-wide v1, v11

    goto/16 :goto_1

    .line 427
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/keniu/security/traffic/at;->m()[Ljava/lang/String;

    move-result-object v1

    aget-object v2, v1, v7

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v7

    :cond_a
    move-wide v1, v11

    goto/16 :goto_1

    .line 456
    :cond_b
    sget-boolean v0, Lcom/keniu/security/traffic/at;->a:Z

    if-nez v0, :cond_1

    .line 458
    invoke-static {}, Lcom/keniu/security/traffic/at;->c()Landroid/content/Context;

    move-result-object v0

    const-string v1, "16"

    invoke-static {v0, v1}, Lcom/jxphone/mosecurity/a/a;->d(Landroid/content/Context;Ljava/lang/String;)V

    .line 461
    invoke-static {}, Lcom/keniu/security/traffic/at;->c()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b0308

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 464
    invoke-static {v0}, Lcom/keniu/security/traffic/at;->a(Ljava/lang/String;)V

    goto/16 :goto_3

    :catch_0
    move-exception v1

    goto/16 :goto_2
.end method

.method private a(Landroid/app/NotificationManager;)V
    .locals 7
    .parameter

    .prologue
    .line 479
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/keniu/security/traffic/at;->c()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/keniu/security/traffic/TrafficTabActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 482
    invoke-static {}, Lcom/keniu/security/traffic/at;->c()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x5

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 488
    invoke-static {}, Lcom/keniu/security/traffic/at;->c()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b0305

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 490
    invoke-static {}, Lcom/keniu/security/traffic/at;->c()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0b0304

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 493
    new-instance v3, Landroid/app/Notification;

    const v4, 0x7f020208

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-direct {v3, v4, v2, v5, v6}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 496
    const/16 v4, 0x10

    iput v4, v3, Landroid/app/Notification;->flags:I

    .line 498
    invoke-static {}, Lcom/keniu/security/traffic/at;->c()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4, v1, v2, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 502
    const/16 v0, 0x1101

    :try_start_0
    invoke-virtual {p1, v0, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 509
    :goto_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 511
    new-instance v1, Lcom/keniu/security/traffic/ax;

    invoke-direct {v1, p0, p1}, Lcom/keniu/security/traffic/ax;-><init>(Lcom/keniu/security/traffic/aw;Landroid/app/NotificationManager;)V

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 524
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private c()V
    .locals 3

    .prologue
    .line 367
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isAsynFinished========"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcn/com/wali/zft/plugin;->getInstance()Lcn/com/wali/zft/plugin;

    move-result-object v2

    invoke-virtual {v2}, Lcn/com/wali/zft/plugin;->isAsynFinished()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 369
    invoke-static {}, Lcn/com/wali/zft/plugin;->getInstance()Lcn/com/wali/zft/plugin;

    move-result-object v0

    invoke-virtual {v0}, Lcn/com/wali/zft/plugin;->isAsynFinished()I

    move-result v0

    if-nez v0, :cond_1

    .line 370
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "p.isAsynFinished() = 0,you can end"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 371
    sget-boolean v0, Lcom/keniu/security/traffic/aw;->a:Z

    if-nez v0, :cond_0

    .line 372
    sget-boolean v0, Lcom/keniu/security/traffic/at;->a:Z

    if-nez v0, :cond_0

    .line 373
    invoke-static {}, Lcom/keniu/security/traffic/at;->h()V

    .line 375
    :cond_0
    invoke-static {}, Lcn/com/wali/zft/plugin;->getInstance()Lcn/com/wali/zft/plugin;

    move-result-object v0

    invoke-virtual {v0}, Lcn/com/wali/zft/plugin;->endAsyn_1_1()I

    .line 376
    invoke-static {}, Lcn/com/wali/zft/plugin;->getInstance()Lcn/com/wali/zft/plugin;

    move-result-object v0

    invoke-static {}, Lcom/keniu/security/traffic/at;->l()Lcn/com/wali/zft/ZftPluginCallBack;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/com/wali/zft/plugin;->unregistCallBack(Lcn/com/wali/zft/ZftPluginCallBack;)V

    .line 377
    invoke-virtual {p0}, Lcom/keniu/security/traffic/aw;->a()V

    .line 380
    :cond_1
    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/Object;Ljava/lang/Object;)I
    .locals 9
    .parameter
    .parameter
    .parameter

    .prologue
    .line 285
    sget v0, Lcom/keniu/security/monitor/a;->r:I

    if-ne p1, v0, :cond_16

    .line 287
    check-cast p2, Lcom/ijinshan/kinghelper/firewall/core/w;

    .line 288
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "receive message:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Lcom/ijinshan/kinghelper/firewall/core/w;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-boolean v0, p2, Lcom/ijinshan/kinghelper/firewall/core/w;->e:Z

    if-eqz v0, :cond_1

    sget v0, Lcom/ijinshan/kinghelper/firewall/core/SmsFirewallBroadcastReceiver;->a:I

    .line 289
    :cond_0
    :goto_0
    sget v1, Lcom/ijinshan/kinghelper/firewall/core/SmsFirewallBroadcastReceiver;->b:I

    if-ne v0, v1, :cond_15

    .line 291
    iget-object v0, p2, Lcom/ijinshan/kinghelper/firewall/core/w;->g:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0}, Landroid/content/BroadcastReceiver;->abortBroadcast()V

    .line 292
    const/4 v0, 0x2

    .line 297
    :goto_1
    return v0

    .line 288
    :cond_1
    invoke-static {}, Lcn/com/wali/zft/plugin;->getInstance()Lcn/com/wali/zft/plugin;

    move-result-object v0

    iget-object v1, p2, Lcom/ijinshan/kinghelper/firewall/core/w;->f:[Landroid/telephony/SmsMessage;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/com/wali/zft/plugin;->smsNeedBlock(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "smsNeedBlock=0  body is"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Lcom/ijinshan/kinghelper/firewall/core/w;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "address is"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Lcom/ijinshan/kinghelper/firewall/core/w;->f:[Landroid/telephony/SmsMessage;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget v0, Lcom/ijinshan/kinghelper/firewall/core/SmsFirewallBroadcastReceiver;->a:I

    goto :goto_0

    :cond_2
    invoke-static {}, Lcn/com/wali/zft/plugin;->getInstance()Lcn/com/wali/zft/plugin;

    move-result-object v0

    iget-object v1, p2, Lcom/ijinshan/kinghelper/firewall/core/w;->f:[Landroid/telephony/SmsMessage;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/com/wali/zft/plugin;->smsNeedBlock(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_14

    sget-boolean v0, Lcom/keniu/security/traffic/at;->a:Z

    if-nez v0, :cond_3

    invoke-static {}, Lcom/keniu/security/traffic/at;->j()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/keniu/security/traffic/at;->c()Landroid/content/Context;

    move-result-object v0

    const-string v1, "13"

    invoke-static {v0, v1}, Lcom/jxphone/mosecurity/a/a;->d(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {}, Lcom/keniu/security/traffic/at;->k()Z

    :cond_3
    invoke-static {}, Lcom/keniu/security/traffic/at;->i()[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    invoke-static {v0}, Lcom/keniu/security/traffic/at;->b([Ljava/lang/String;)[Ljava/lang/String;

    :cond_4
    invoke-static {}, Lcom/keniu/security/traffic/at;->i()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p2, Lcom/ijinshan/kinghelper/firewall/core/w;->c:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {}, Lcom/keniu/security/traffic/at;->i()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/keniu/security/traffic/at;->i()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_8

    :cond_5
    invoke-static {}, Lcom/keniu/security/traffic/at;->i()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p2, Lcom/ijinshan/kinghelper/firewall/core/w;->d:Ljava/lang/String;

    aput-object v2, v0, v1

    :goto_2
    iget-object v0, p2, Lcom/ijinshan/kinghelper/firewall/core/w;->c:Ljava/lang/String;

    iget-object v1, p2, Lcom/ijinshan/kinghelper/firewall/core/w;->d:Ljava/lang/String;

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    sget-boolean v2, Lcom/keniu/security/traffic/aw;->a:Z

    if-eqz v2, :cond_9

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "\u5df2\u7ecf\u6821\u6b63\u6210\u529f\uff0c\u76f4\u63a5\u8fd4\u56de"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_6
    :goto_3
    sget v0, Lcom/ijinshan/kinghelper/firewall/core/SmsFirewallBroadcastReceiver;->b:I

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isAsynFinished========"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcn/com/wali/zft/plugin;->getInstance()Lcn/com/wali/zft/plugin;

    move-result-object v3

    invoke-virtual {v3}, Lcn/com/wali/zft/plugin;->isAsynFinished()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-static {}, Lcn/com/wali/zft/plugin;->getInstance()Lcn/com/wali/zft/plugin;

    move-result-object v1

    invoke-virtual {v1}, Lcn/com/wali/zft/plugin;->isAsynFinished()I

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "p.isAsynFinished() = 0,you can end"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-boolean v1, Lcom/keniu/security/traffic/aw;->a:Z

    if-nez v1, :cond_7

    sget-boolean v1, Lcom/keniu/security/traffic/at;->a:Z

    if-nez v1, :cond_7

    invoke-static {}, Lcom/keniu/security/traffic/at;->h()V

    :cond_7
    invoke-static {}, Lcn/com/wali/zft/plugin;->getInstance()Lcn/com/wali/zft/plugin;

    move-result-object v1

    invoke-virtual {v1}, Lcn/com/wali/zft/plugin;->endAsyn_1_1()I

    invoke-static {}, Lcn/com/wali/zft/plugin;->getInstance()Lcn/com/wali/zft/plugin;

    move-result-object v1

    invoke-static {}, Lcom/keniu/security/traffic/at;->l()Lcn/com/wali/zft/ZftPluginCallBack;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/com/wali/zft/plugin;->unregistCallBack(Lcn/com/wali/zft/ZftPluginCallBack;)V

    invoke-virtual {p0}, Lcom/keniu/security/traffic/aw;->a()V

    goto/16 :goto_0

    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/keniu/security/traffic/at;->i()[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v3, v1, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p2, Lcom/ijinshan/kinghelper/firewall/core/w;->d:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    goto/16 :goto_2

    :cond_9
    invoke-static {}, Lcom/keniu/security/traffic/at;->c()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/keniu/security/traffic/y;->a(Landroid/content/Context;)Lcom/keniu/security/traffic/y;

    move-result-object v3

    const-wide/16 v6, 0x0

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-static {}, Lcn/com/wali/zft/plugin;->getInstance()Lcn/com/wali/zft/plugin;

    move-result-object v4

    invoke-virtual {v4, v1, v0, v2}, Lcn/com/wali/zft/plugin;->Asyn_1_1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuffer;)Ljava/util/HashMap;

    move-result-object v2

    if-eqz v2, :cond_12

    const-string v4, "GTCYL"

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    const-string v0, "GTCYL"

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GTCYL============="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const/4 v2, 0x1

    sput-boolean v2, Lcom/keniu/security/traffic/aw;->a:Z

    move-wide v1, v0

    :goto_4
    sget-boolean v0, Lcom/keniu/security/traffic/aw;->a:Z

    if-eqz v0, :cond_6

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u89e3\u6790\u6210\u529f newTraffic=="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-wide/16 v6, 0x0

    cmp-long v0, v1, v6

    if-ltz v0, :cond_13

    invoke-static {}, Lcom/keniu/security/traffic/at;->c()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v3, v5}, Lcom/keniu/security/traffic/y;->a(Ljava/util/Date;)J

    move-result-wide v3

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    const/4 v7, 0x1

    invoke-static/range {v0 .. v7}, Lcom/keniu/security/traffic/dd;->a(Landroid/content/Context;JJJZ)V

    sget-boolean v0, Lcom/keniu/security/traffic/at;->a:Z

    if-nez v0, :cond_a

    invoke-static {}, Lcom/keniu/security/traffic/at;->c()Landroid/content/Context;

    move-result-object v0

    const-string v1, "14"

    invoke-static {v0, v1}, Lcom/jxphone/mosecurity/a/a;->d(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {}, Lcom/keniu/security/traffic/at;->c()Landroid/content/Context;

    move-result-object v0

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    if-eqz p1, :cond_a

    invoke-direct {p0, p1}, Lcom/keniu/security/traffic/aw;->a(Landroid/app/NotificationManager;)V

    :cond_a
    :goto_5
    const/4 v0, 0x0

    sput-boolean v0, Lcom/keniu/security/traffic/at;->b:Z

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "updateTrafficMainData"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/keniu/security/traffic/at;->c()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_3

    :cond_b
    const-string v4, "TOTAL_GPRS_USED"

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    const-string v0, "TOTAL_GPRS_USED"

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TOTAL_GPRS_USED============="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const/4 v2, 0x1

    sput-boolean v2, Lcom/keniu/security/traffic/aw;->a:Z

    move-wide v1, v0

    goto/16 :goto_4

    :cond_c
    const-string v4, "GTCSY"

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    const-string v0, "GTCSY"

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GTCSY============="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-wide v0, v3, Lcom/keniu/security/traffic/y;->d:J

    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sub-long/2addr v0, v6

    const/4 v2, 0x1

    sput-boolean v2, Lcom/keniu/security/traffic/aw;->a:Z

    move-wide v1, v0

    goto/16 :goto_4

    :cond_d
    const-string v4, "TOTAL_GPRS_BALANCE"

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    const-string v0, "TOTAL_GPRS_BALANCE"

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TOTAL_GPRS_BALANCE============="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-wide v0, v3, Lcom/keniu/security/traffic/y;->d:J

    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sub-long/2addr v0, v6

    const/4 v2, 0x1

    sput-boolean v2, Lcom/keniu/security/traffic/aw;->a:Z

    move-wide v1, v0

    goto/16 :goto_4

    :cond_e
    const/4 v2, 0x0

    sput-boolean v2, Lcom/keniu/security/traffic/aw;->a:Z

    invoke-static {}, Lcom/keniu/security/traffic/at;->m()[Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_f

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    invoke-static {v2}, Lcom/keniu/security/traffic/at;->a([Ljava/lang/String;)[Ljava/lang/String;

    :cond_f
    invoke-static {}, Lcom/keniu/security/traffic/at;->m()[Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    aput-object v0, v2, v4

    invoke-static {}, Lcom/keniu/security/traffic/at;->m()[Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    aget-object v0, v0, v2

    if-eqz v0, :cond_10

    invoke-static {}, Lcom/keniu/security/traffic/at;->m()[Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    aget-object v0, v0, v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_11

    :cond_10
    invoke-static {}, Lcom/keniu/security/traffic/at;->m()[Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v1, v0, v2

    move-wide v1, v6

    goto/16 :goto_4

    :cond_11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/keniu/security/traffic/at;->m()[Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    aget-object v8, v2, v4

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, "\n"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v4

    :cond_12
    move-wide v1, v6

    goto/16 :goto_4

    :cond_13
    sget-boolean v0, Lcom/keniu/security/traffic/at;->a:Z

    if-nez v0, :cond_a

    invoke-static {}, Lcom/keniu/security/traffic/at;->c()Landroid/content/Context;

    move-result-object v0

    const-string v1, "16"

    invoke-static {v0, v1}, Lcom/jxphone/mosecurity/a/a;->d(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {}, Lcom/keniu/security/traffic/at;->c()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b0308

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/keniu/security/traffic/at;->a(Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_14
    sget v0, Lcom/ijinshan/kinghelper/firewall/core/SmsFirewallBroadcastReceiver;->b:I

    goto/16 :goto_0

    .line 294
    :cond_15
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 297
    :cond_16
    const/4 v0, 0x0

    goto/16 :goto_1
.end method

.method public final a()V
    .locals 2

    .prologue
    .line 301
    invoke-static {}, Lcom/keniu/security/monitor/a;->a()Lcom/keniu/security/monitor/a;

    move-result-object v0

    .line 303
    sget v1, Lcom/keniu/security/monitor/a;->r:I

    invoke-virtual {v0, v1, p0}, Lcom/keniu/security/monitor/a;->a(ILcom/keniu/security/monitor/b;)Z

    .line 304
    return-void
.end method

.method public final b()V
    .locals 3

    .prologue
    .line 308
    invoke-static {}, Lcom/keniu/security/monitor/a;->a()Lcom/keniu/security/monitor/a;

    move-result-object v0

    .line 310
    sget v1, Lcom/keniu/security/monitor/a;->r:I

    invoke-virtual {v0, v1, p0}, Lcom/keniu/security/monitor/a;->a(ILcom/keniu/security/monitor/b;)Z

    .line 312
    sget v1, Lcom/keniu/security/monitor/a;->r:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Lcom/keniu/security/monitor/a;->a(ILcom/keniu/security/monitor/b;I)Z

    .line 314
    return-void
.end method
