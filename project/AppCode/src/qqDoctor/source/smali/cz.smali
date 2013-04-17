.class public final Lcz;
.super Ljava/lang/Object;

# interfaces
.implements Lcg;
.implements Ldo;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ldl;

.field private c:Landroid/os/Handler;

.field private d:I

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:B

.field private h:Ldf;

.field private i:I

.field private j:I

.field private k:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 3

    const/4 v2, -0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcz;->a:Landroid/content/Context;

    iput-object v1, p0, Lcz;->b:Ldl;

    iput-object v1, p0, Lcz;->c:Landroid/os/Handler;

    iput v2, p0, Lcz;->d:I

    const-string v0, ""

    iput-object v0, p0, Lcz;->e:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcz;->f:Ljava/lang/String;

    iput-byte v2, p0, Lcz;->g:B

    iput-object v1, p0, Lcz;->h:Ldf;

    const/16 v0, 0x1e

    iput v0, p0, Lcz;->i:I

    const/4 v0, 0x0

    iput v0, p0, Lcz;->j:I

    const-string v0, "com.tencent.qqpim.action_register_sms_sended_to_activity"

    iput-object v0, p0, Lcz;->k:Ljava/lang/String;

    iput-object p1, p0, Lcz;->a:Landroid/content/Context;

    iput-object p2, p0, Lcz;->c:Landroid/os/Handler;

    return-void
.end method

.method private a(Ljava/io/InputStream;)Z
    .locals 8

    const/4 v5, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/16 v6, 0x3004

    const/4 v1, 0x0

    invoke-static {p1}, Lde;->a(Ljava/io/InputStream;)Lcom/qq/jce/wup/UniPacket;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcz;->c:Landroid/os/Handler;

    const/16 v2, 0x67

    invoke-virtual {v0, v6, v2, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    iget-object v2, p0, Lcz;->c:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move v0, v1

    :goto_0
    return v0

    :cond_0
    iget v4, p0, Lcz;->d:I

    if-nez v4, :cond_8

    :try_start_0
    const-string v4, "sinfo"

    invoke-virtual {v0, v4}, Lcom/qq/jce/wup/UniPacket;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQQPIM/RegResp;
    :try_end_0
    .catch Lcom/qq/jce/wup/ObjectCreateException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    if-nez v0, :cond_2

    iget-object v0, p0, Lcz;->c:Landroid/os/Handler;

    const/16 v3, 0x67

    invoke-virtual {v0, v6, v3, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcz;->c:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    :goto_2
    move v0, v2

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, v3

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, LQQPIM/RegResp;->getHeader()LQQPIM/RespHeader;

    move-result-object v3

    invoke-virtual {v3}, LQQPIM/RespHeader;->getResult()I

    move-result v3

    if-eqz v3, :cond_3

    iget-object v0, p0, Lcz;->c:Landroid/os/Handler;

    const/16 v4, 0x3005

    invoke-virtual {v0, v4, v3, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcz;->c:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_2

    :cond_3
    invoke-virtual {v0}, LQQPIM/RegResp;->getAccessNum()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, LQQPIM/RegResp;->getVerifyCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, LQQPIM/RegResp;->getRegMethod()B

    move-result v0

    if-ne v2, v0, :cond_7

    if-eqz v3, :cond_4

    if-eqz v4, :cond_4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_6

    :cond_4
    :goto_3
    iget-object v0, p0, Lcz;->h:Ldf;

    if-nez v0, :cond_5

    new-instance v0, Ldf;

    invoke-direct {v0, p0}, Ldf;-><init>(Lcg;)V

    iput-object v0, p0, Lcz;->h:Ldf;

    :cond_5
    iget-object v0, p0, Lcz;->h:Ldf;

    iget-object v1, v0, Ldf;->c:Landroid/os/Handler;

    if-eqz v1, :cond_1

    iget-object v1, v0, Ldf;->d:Ljava/lang/Runnable;

    if-eqz v1, :cond_1

    iget-object v1, v0, Ldf;->c:Landroid/os/Handler;

    iget-object v0, v0, Ldf;->d:Ljava/lang/Runnable;

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2

    :cond_6
    new-instance v0, Landroid/content/Intent;

    const-string v5, "com.tencent.qqpim.action_register_sms_sended"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-string v6, "intent_key_action_when_register_sms_sended"

    iget-object v7, p0, Lcz;->k:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    sget-object v5, Lde;->b:Landroid/content/Context;

    const/high16 v6, 0x800

    invoke-static {v5, v1, v0, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-static {}, Lap;->a()Lap;

    move-result-object v1

    invoke-virtual {v1, v3, v4, v0}, Lap;->a(Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;)Z

    goto :goto_3

    :cond_7
    const/4 v3, 0x2

    if-ne v3, v0, :cond_1

    iget-object v0, p0, Lcz;->c:Landroid/os/Handler;

    const/16 v3, 0x6a

    invoke-virtual {v0, v6, v3, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcz;->c:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_2

    :cond_8
    iget v4, p0, Lcz;->d:I

    if-eq v2, v4, :cond_9

    iget v4, p0, Lcz;->d:I

    if-ne v5, v4, :cond_f

    :cond_9
    :try_start_1
    const-string v4, "sinfo"

    invoke-virtual {v0, v4}, Lcom/qq/jce/wup/UniPacket;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQQPIM/StatusResp;
    :try_end_1
    .catch Lcom/qq/jce/wup/ObjectCreateException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_4
    if-nez v0, :cond_a

    iget-object v0, p0, Lcz;->c:Landroid/os/Handler;

    const/16 v3, 0x69

    invoke-virtual {v0, v6, v3, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcz;->c:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_2

    :catch_1
    move-exception v0

    move-object v0, v3

    goto :goto_4

    :cond_a
    invoke-virtual {v0}, LQQPIM/StatusResp;->getHeader()LQQPIM/RespHeader;

    move-result-object v3

    invoke-virtual {v3}, LQQPIM/RespHeader;->getResult()I

    move-result v3

    if-eqz v3, :cond_c

    const/4 v0, -0x1

    iget v4, p0, Lcz;->d:I

    if-eq v0, v4, :cond_b

    invoke-direct {p0}, Lcz;->b()V

    goto/16 :goto_2

    :cond_b
    iget-object v0, p0, Lcz;->c:Landroid/os/Handler;

    const/16 v4, 0x3005

    invoke-virtual {v0, v4, v3, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcz;->c:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_2

    :cond_c
    iget v3, p0, Lcz;->d:I

    if-ne v5, v3, :cond_d

    invoke-virtual {v0}, LQQPIM/StatusResp;->getMobileno()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcz;->e:Ljava/lang/String;

    iget-object v0, p0, Lcz;->e:Ljava/lang/String;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcz;->e:Ljava/lang/String;

    const-string v3, "+86"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, "+86"

    invoke-static {v0}, Lda;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcz;->e:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lda;->c(Ljava/lang/String;)V

    :cond_d
    iget-object v0, p0, Lcz;->h:Ldf;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcz;->h:Ldf;

    iget-object v3, v0, Ldf;->c:Landroid/os/Handler;

    if-eqz v3, :cond_e

    iget-object v3, v0, Ldf;->d:Ljava/lang/Runnable;

    if-eqz v3, :cond_e

    iget-object v3, v0, Ldf;->c:Landroid/os/Handler;

    iget-object v0, v0, Ldf;->d:Ljava/lang/Runnable;

    invoke-virtual {v3, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_e
    iget-object v0, p0, Lcz;->c:Landroid/os/Handler;

    const/16 v3, 0x65

    invoke-virtual {v0, v6, v3, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcz;->c:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_2

    :cond_f
    const/4 v4, 0x2

    iget v5, p0, Lcz;->d:I

    if-ne v4, v5, :cond_13

    :try_start_2
    const-string v4, "sinfo"

    invoke-virtual {v0, v4}, Lcom/qq/jce/wup/UniPacket;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQQPIM/RegResp;
    :try_end_2
    .catch Lcom/qq/jce/wup/ObjectCreateException; {:try_start_2 .. :try_end_2} :catch_2

    :goto_5
    if-nez v0, :cond_10

    iget-object v0, p0, Lcz;->c:Landroid/os/Handler;

    const/16 v3, 0x67

    invoke-virtual {v0, v6, v3, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcz;->c:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_2

    :catch_2
    move-exception v0

    move-object v0, v3

    goto :goto_5

    :cond_10
    invoke-virtual {v0}, LQQPIM/RegResp;->getHeader()LQQPIM/RespHeader;

    move-result-object v3

    invoke-virtual {v3}, LQQPIM/RespHeader;->getResult()I

    move-result v3

    if-eqz v3, :cond_11

    iget-object v0, p0, Lcz;->c:Landroid/os/Handler;

    const/16 v3, 0x6d

    invoke-virtual {v0, v6, v3, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcz;->c:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_2

    :cond_11
    invoke-virtual {v0}, LQQPIM/RegResp;->getRegMethod()B

    move-result v0

    if-ne v2, v0, :cond_12

    iget-object v0, p0, Lcz;->c:Landroid/os/Handler;

    const/16 v3, 0x3001

    const/16 v4, 0x6b

    invoke-virtual {v0, v3, v4, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcz;->c:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_2

    :cond_12
    iget-object v0, p0, Lcz;->c:Landroid/os/Handler;

    const/16 v3, 0x3001

    const/16 v4, 0x6c

    invoke-virtual {v0, v3, v4, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcz;->c:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_2

    :cond_13
    const/4 v1, 0x4

    iget v4, p0, Lcz;->d:I

    if-ne v1, v4, :cond_1

    :try_start_3
    const-string v1, "sinfo"

    invoke-virtual {v0, v1}, Lcom/qq/jce/wup/UniPacket;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQQPIM/CtyCodeResp;
    :try_end_3
    .catch Lcom/qq/jce/wup/ObjectCreateException; {:try_start_3 .. :try_end_3} :catch_3

    :goto_6
    if-nez v0, :cond_14

    iget-object v0, p0, Lcz;->c:Landroid/os/Handler;

    const/16 v1, 0x3007

    invoke-virtual {v0, v1, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcz;->c:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_2

    :catch_3
    move-exception v0

    move-object v0, v3

    goto :goto_6

    :cond_14
    invoke-virtual {v0}, LQQPIM/CtyCodeResp;->getResult()I

    move-result v1

    if-eqz v1, :cond_15

    iget-object v0, p0, Lcz;->c:Landroid/os/Handler;

    const/16 v1, 0x3007

    invoke-virtual {v0, v1, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcz;->c:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_2

    :cond_15
    invoke-virtual {v0}, LQQPIM/CtyCodeResp;->getCodelist()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcz;->c:Landroid/os/Handler;

    const/16 v3, 0x3007

    invoke-virtual {v1, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcz;->c:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_2
.end method

.method private a(Ljava/lang/String;)[B
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcz;->a:Landroid/content/Context;

    invoke-static {p1}, Lda;->a(Ljava/lang/String;)LQQPIM/ReqHeader;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v2, LQQPIM/StatusReq;

    invoke-direct {v2}, LQQPIM/StatusReq;-><init>()V

    invoke-virtual {v2, v1}, LQQPIM/StatusReq;->setHeader(LQQPIM/ReqHeader;)V

    new-instance v1, Lcom/qq/jce/wup/UniPacket;

    invoke-direct {v1}, Lcom/qq/jce/wup/UniPacket;-><init>()V

    const-string v3, "UTF-8"

    invoke-virtual {v1, v3}, Lcom/qq/jce/wup/UniPacket;->setEncodeName(Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/qq/jce/wup/UniPacket;->setRequestId(I)V

    const-string v3, "mobile"

    invoke-virtual {v1, v3}, Lcom/qq/jce/wup/UniPacket;->setServantName(Ljava/lang/String;)V

    const-string v3, "getRegStatus"

    invoke-virtual {v1, v3}, Lcom/qq/jce/wup/UniPacket;->setFuncName(Ljava/lang/String;)V

    const-string v3, "cinfo"

    invoke-virtual {v1, v3, v2}, Lcom/qq/jce/wup/UniPacket;->put(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/qq/jce/wup/UniPacket;->encode()[B

    move-result-object v1

    :try_start_0
    const-string v2, "DFG#$%^#%$RGHR(&*M<><"

    const-string v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {v1, v2}, La;->b([B[B)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method

.method private b()V
    .locals 4

    const/4 v0, -0x1

    iget v1, p0, Lcz;->d:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x3

    iput v0, p0, Lcz;->d:I

    iget-object v0, p0, Lcz;->e:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcz;->a(Ljava/lang/String;)[B

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcz;->c:Landroid/os/Handler;

    const/16 v1, 0x3004

    const/16 v2, 0x69

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcz;->c:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcz;->b:Ldl;

    invoke-static {}, Lde;->c()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Ldl;->c:Ljava/lang/String;

    iput-object v0, v1, Ldl;->d:[B

    new-instance v0, Ldn;

    invoke-direct {v0, v1}, Ldn;-><init>(Ldl;)V

    iput-object v0, v1, Ldl;->b:Ljava/lang/Thread;

    iget-object v0, v1, Ldl;->b:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;B)[B
    .locals 4

    const/4 v1, 0x0

    new-instance v2, LQQPIM/RegReq;

    invoke-direct {v2}, LQQPIM/RegReq;-><init>()V

    iget-object v0, p0, Lcz;->a:Landroid/content/Context;

    invoke-static {p1}, Lda;->a(Ljava/lang/String;)LQQPIM/ReqHeader;

    move-result-object v0

    if-nez v0, :cond_0

    move-object v0, v1

    :goto_0
    if-nez v0, :cond_2

    move-object v0, v1

    :goto_1
    return-object v0

    :cond_0
    invoke-virtual {v2, v0}, LQQPIM/RegReq;->setHeader(LQQPIM/ReqHeader;)V

    invoke-static {p2}, Lde;->a(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcx;->a([B)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, ""

    :cond_1
    invoke-virtual {v2, v0}, LQQPIM/RegReq;->setMd5pwd(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, LQQPIM/RegReq;->setRegMethod(B)V

    move-object v0, v2

    goto :goto_0

    :cond_2
    new-instance v2, Lcom/qq/jce/wup/UniPacket;

    invoke-direct {v2}, Lcom/qq/jce/wup/UniPacket;-><init>()V

    const-string v3, "UTF-8"

    invoke-virtual {v2, v3}, Lcom/qq/jce/wup/UniPacket;->setEncodeName(Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/qq/jce/wup/UniPacket;->setRequestId(I)V

    const-string v3, "mobile"

    invoke-virtual {v2, v3}, Lcom/qq/jce/wup/UniPacket;->setServantName(Ljava/lang/String;)V

    const-string v3, "validateMobile"

    invoke-virtual {v2, v3}, Lcom/qq/jce/wup/UniPacket;->setFuncName(Ljava/lang/String;)V

    const-string v3, "cinfo"

    invoke-virtual {v2, v3, v0}, Lcom/qq/jce/wup/UniPacket;->put(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/qq/jce/wup/UniPacket;->encode()[B

    move-result-object v0

    :try_start_0
    const-string v2, "DFG#$%^#%$RGHR(&*M<><"

    const-string v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {v0, v2}, La;->b([B[B)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    move-object v0, v1

    goto :goto_1
.end method

.method private c()V
    .locals 2

    const/4 v1, -0x1

    iput v1, p0, Lcz;->d:I

    const-string v0, ""

    iput-object v0, p0, Lcz;->e:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcz;->f:Ljava/lang/String;

    iput-byte v1, p0, Lcz;->g:B

    iget-object v0, p0, Lcz;->h:Ldf;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcz;->h:Ldf;

    iget-object v1, v0, Ldf;->c:Landroid/os/Handler;

    if-eqz v1, :cond_0

    iget-object v1, v0, Ldf;->d:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    iget-object v1, v0, Ldf;->c:Landroid/os/Handler;

    iget-object v0, v0, Ldf;->d:Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    const/16 v0, 0x1e

    iput v0, p0, Lcz;->i:I

    return-void
.end method

.method private d()[B
    .locals 5

    const/4 v4, 0x1

    const/4 v0, 0x0

    new-instance v1, LQQPIM/RegReq;

    invoke-direct {v1}, LQQPIM/RegReq;-><init>()V

    iget-object v2, p0, Lcz;->a:Landroid/content/Context;

    invoke-static {}, Lda;->a()LQQPIM/ReqHeader;

    move-result-object v2

    if-nez v2, :cond_0

    move-object v1, v0

    :goto_0
    if-nez v1, :cond_1

    :goto_1
    return-object v0

    :cond_0
    invoke-virtual {v1, v2}, LQQPIM/RegReq;->setHeader(LQQPIM/ReqHeader;)V

    const-string v2, ""

    invoke-virtual {v1, v2}, LQQPIM/RegReq;->setMd5pwd(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, LQQPIM/RegReq;->setRegMethod(B)V

    goto :goto_0

    :cond_1
    new-instance v2, Lcom/qq/jce/wup/UniPacket;

    invoke-direct {v2}, Lcom/qq/jce/wup/UniPacket;-><init>()V

    const-string v3, "UTF-8"

    invoke-virtual {v2, v3}, Lcom/qq/jce/wup/UniPacket;->setEncodeName(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Lcom/qq/jce/wup/UniPacket;->setRequestId(I)V

    const-string v3, "mobile"

    invoke-virtual {v2, v3}, Lcom/qq/jce/wup/UniPacket;->setServantName(Ljava/lang/String;)V

    const-string v3, "validateMobile"

    invoke-virtual {v2, v3}, Lcom/qq/jce/wup/UniPacket;->setFuncName(Ljava/lang/String;)V

    const-string v3, "cinfo"

    invoke-virtual {v2, v3, v1}, Lcom/qq/jce/wup/UniPacket;->put(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/qq/jce/wup/UniPacket;->encode()[B

    move-result-object v1

    :try_start_0
    const-string v2, "DFG#$%^#%$RGHR(&*M<><"

    const-string v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {v1, v2}, La;->b([B[B)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public final a()V
    .locals 5

    const/16 v4, 0x3004

    iget v0, p0, Lcz;->i:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcz;->i:I

    iget v0, p0, Lcz;->i:I

    if-gtz v0, :cond_1

    const/4 v0, -0x1

    iput v0, p0, Lcz;->d:I

    iget-object v0, p0, Lcz;->e:Ljava/lang/String;

    iget-object v1, p0, Lcz;->c:Landroid/os/Handler;

    const/16 v2, 0x66

    const/4 v3, 0x0

    invoke-virtual {v1, v4, v2, v3, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcz;->c:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcz;->i:I

    iget-object v1, p0, Lcz;->c:Landroid/os/Handler;

    const/16 v2, 0x6e

    invoke-virtual {v1, v4, v2, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcz;->c:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget-object v0, p0, Lcz;->h:Ldf;

    if-nez v0, :cond_2

    new-instance v0, Ldf;

    invoke-direct {v0, p0}, Ldf;-><init>(Lcg;)V

    iput-object v0, p0, Lcz;->h:Ldf;

    :cond_2
    iget-object v0, p0, Lcz;->h:Ldf;

    iget-object v1, v0, Ldf;->c:Landroid/os/Handler;

    if-eqz v1, :cond_0

    iget-object v1, v0, Ldf;->d:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    iget-object v1, v0, Ldf;->c:Landroid/os/Handler;

    iget-object v0, v0, Ldf;->d:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public final a(ILorg/apache/http/HttpEntity;)V
    .locals 5

    const/16 v4, 0x3004

    const/16 v3, 0x67

    const/4 v1, 0x0

    const/4 v0, -0x1

    iget v2, p0, Lcz;->d:I

    if-ne v0, v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v0, 0xc8

    if-ne v0, p1, :cond_2

    if-nez p2, :cond_6

    :cond_2
    iget v0, p0, Lcz;->j:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcz;->j:I

    const/4 v0, 0x3

    iget v2, p0, Lcz;->j:I

    if-gt v0, v2, :cond_3

    iput v1, p0, Lcz;->j:I

    move v0, v1

    :goto_1
    if-nez v0, :cond_0

    invoke-direct {p0}, Lcz;->c()V

    iget-object v0, p0, Lcz;->c:Landroid/os/Handler;

    const/16 v2, 0x3003

    invoke-virtual {v0, v2, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcz;->c:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_3
    iget v0, p0, Lcz;->d:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    move v0, v1

    goto :goto_1

    :pswitch_1
    invoke-direct {p0}, Lcz;->b()V

    :goto_2
    const/4 v0, 0x1

    goto :goto_1

    :pswitch_2
    iget-object v0, p0, Lcz;->b:Ldl;

    if-nez v0, :cond_4

    new-instance v0, Ldl;

    invoke-direct {v0, p0}, Ldl;-><init>(Ldo;)V

    iput-object v0, p0, Lcz;->b:Ldl;

    :cond_4
    iget-object v0, p0, Lcz;->b:Ldl;

    iget-object v2, p0, Lcz;->a:Landroid/content/Context;

    iput-object v2, v0, Ldl;->f:Landroid/content/Context;

    invoke-direct {p0}, Lcz;->d()[B

    move-result-object v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcz;->c:Landroid/os/Handler;

    invoke-virtual {v0, v4, v3, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    iget-object v2, p0, Lcz;->c:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_2

    :cond_5
    const/4 v2, 0x2

    iput v2, p0, Lcz;->d:I

    const-string v2, ""

    iput-object v2, p0, Lcz;->e:Ljava/lang/String;

    const-string v2, ""

    iput-object v2, p0, Lcz;->f:Ljava/lang/String;

    iget-object v2, p0, Lcz;->b:Ldl;

    invoke-static {}, Lde;->c()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Ldl;->c:Ljava/lang/String;

    iput-object v0, v2, Ldl;->d:[B

    new-instance v0, Ldn;

    invoke-direct {v0, v2}, Ldn;-><init>(Ldl;)V

    iput-object v0, v2, Ldl;->b:Ljava/lang/Thread;

    iget-object v0, v2, Ldl;->b:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_2

    :pswitch_3
    iget-object v0, p0, Lcz;->e:Ljava/lang/String;

    iget-object v2, p0, Lcz;->f:Ljava/lang/String;

    iget-byte v3, p0, Lcz;->g:B

    invoke-virtual {p0, v0, v2, v3}, Lcz;->a(Ljava/lang/String;Ljava/lang/String;B)V

    goto :goto_2

    :cond_6
    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Lcz;->j:I

    invoke-interface {p2}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {p0, v0}, Lcz;->a(Ljava/io/InputStream;)Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    iget-object v0, p0, Lcz;->c:Landroid/os/Handler;

    invoke-virtual {v0, v4, v3, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcz;->c:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    iget-object v0, p0, Lcz;->c:Landroid/os/Handler;

    invoke-virtual {v0, v4, v3, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcz;->c:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    :catch_2
    move-exception v0

    iget-object v0, p0, Lcz;->c:Landroid/os/Handler;

    invoke-virtual {v0, v4, v3, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcz;->c:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;B)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcz;->b:Ldl;

    if-nez v0, :cond_0

    new-instance v0, Ldl;

    invoke-direct {v0, p0}, Ldl;-><init>(Ldo;)V

    iput-object v0, p0, Lcz;->b:Ldl;

    :cond_0
    iget-object v0, p0, Lcz;->b:Ldl;

    iget-object v1, p0, Lcz;->a:Landroid/content/Context;

    iput-object v1, v0, Ldl;->f:Landroid/content/Context;

    invoke-direct {p0}, Lcz;->c()V

    invoke-direct {p0, p1, p2, p3}, Lcz;->b(Ljava/lang/String;Ljava/lang/String;B)[B

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcz;->c:Landroid/os/Handler;

    const/16 v1, 0x3004

    const/16 v2, 0x67

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcz;->c:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    return-void

    :cond_1
    iput v3, p0, Lcz;->d:I

    iput-object p1, p0, Lcz;->e:Ljava/lang/String;

    iput-object p2, p0, Lcz;->f:Ljava/lang/String;

    iput-byte p3, p0, Lcz;->g:B

    iget-object v1, p0, Lcz;->b:Ldl;

    invoke-static {}, Lde;->c()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Ldl;->c:Ljava/lang/String;

    iput-object v0, v1, Ldl;->d:[B

    new-instance v0, Ldn;

    invoke-direct {v0, v1}, Ldn;-><init>(Ldl;)V

    iput-object v0, v1, Ldl;->b:Ljava/lang/Thread;

    iget-object v0, v1, Ldl;->b:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method
