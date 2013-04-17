.class public final Lcy;
.super Ljava/lang/Object;

# interfaces
.implements Ldo;


# instance fields
.field public a:Ldl;

.field public b:Landroid/os/Handler;

.field public c:Z

.field private d:Landroid/content/Context;

.field private e:I

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcy;->d:Landroid/content/Context;

    iput-object v0, p0, Lcy;->a:Ldl;

    iput-object v0, p0, Lcy;->b:Landroid/os/Handler;

    iput-boolean v1, p0, Lcy;->c:Z

    iput v1, p0, Lcy;->e:I

    const-string v0, ""

    iput-object v0, p0, Lcy;->f:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcy;->g:Ljava/lang/String;

    iput-object p1, p0, Lcy;->d:Landroid/content/Context;

    iput-object p2, p0, Lcy;->b:Landroid/os/Handler;

    return-void
.end method

.method private a(Ljava/io/InputStream;)Z
    .locals 6

    const/16 v5, 0x67

    const/16 v4, 0x3004

    const/4 v1, 0x0

    invoke-static {p1}, Lde;->a(Ljava/io/InputStream;)Lcom/qq/jce/wup/UniPacket;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcy;->b:Landroid/os/Handler;

    invoke-virtual {v0, v4, v5, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    iget-object v2, p0, Lcy;->b:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v2, 0x0

    :try_start_0
    const-string v3, "sinfo"

    invoke-virtual {v0, v3}, Lcom/qq/jce/wup/UniPacket;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQQPIM/VerifyResp;
    :try_end_0
    .catch Lcom/qq/jce/wup/ObjectCreateException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    if-nez v0, :cond_1

    iget-object v0, p0, Lcy;->b:Landroid/os/Handler;

    invoke-virtual {v0, v4, v5, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcy;->b:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_2
    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, v2

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, LQQPIM/VerifyResp;->getHeader()LQQPIM/RespHeader;

    move-result-object v0

    invoke-virtual {v0}, LQQPIM/RespHeader;->getResult()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcy;->b:Landroid/os/Handler;

    const/16 v3, 0x3005

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcy;->b:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcy;->b:Landroid/os/Handler;

    const/16 v2, 0x65

    invoke-virtual {v0, v4, v2, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcy;->b:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_2
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 4

    const/4 v0, 0x0

    new-instance v1, LQQPIM/VerifyReq;

    invoke-direct {v1}, LQQPIM/VerifyReq;-><init>()V

    iget-object v2, p0, Lcy;->d:Landroid/content/Context;

    invoke-static {p1}, Lda;->a(Ljava/lang/String;)LQQPIM/ReqHeader;

    move-result-object v2

    if-nez v2, :cond_0

    move-object v1, v0

    :goto_0
    if-nez v1, :cond_2

    :goto_1
    return-object v0

    :cond_0
    invoke-virtual {v1, v2}, LQQPIM/VerifyReq;->setHeader(LQQPIM/ReqHeader;)V

    if-nez p2, :cond_1

    const-string p2, ""

    :cond_1
    invoke-virtual {v1, p2}, LQQPIM/VerifyReq;->setVerifyCode(Ljava/lang/String;)V

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

    const-string v3, "checkVerifyCode"

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
.method public final a(ILorg/apache/http/HttpEntity;)V
    .locals 4

    const/16 v2, 0x67

    const/16 v3, 0x3004

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcy;->c:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcy;->b:Landroid/os/Handler;

    const/16 v2, 0x68

    invoke-virtual {v0, v3, v2, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcy;->b:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v0, 0xc8

    if-ne v0, p1, :cond_2

    if-nez p2, :cond_4

    :cond_2
    iget v0, p0, Lcy;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcy;->e:I

    const/4 v0, 0x3

    iget v2, p0, Lcy;->e:I

    if-gt v0, v2, :cond_3

    iput v1, p0, Lcy;->e:I

    move v0, v1

    :goto_1
    if-nez v0, :cond_0

    iget-object v0, p0, Lcy;->b:Landroid/os/Handler;

    const/16 v2, 0x3003

    invoke-virtual {v0, v2, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcy;->b:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcy;->f:Ljava/lang/String;

    iget-object v2, p0, Lcy;->g:Ljava/lang/String;

    invoke-virtual {p0, v0, v2}, Lcy;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    goto :goto_1

    :cond_4
    :try_start_0
    invoke-interface {p2}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {p0, v0}, Lcy;->a(Ljava/io/InputStream;)Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    iget-object v0, p0, Lcy;->b:Landroid/os/Handler;

    invoke-virtual {v0, v3, v2, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcy;->b:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    iget-object v0, p0, Lcy;->b:Landroid/os/Handler;

    invoke-virtual {v0, v3, v2, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcy;->b:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcy;->a:Ldl;

    if-nez v0, :cond_0

    new-instance v0, Ldl;

    invoke-direct {v0, p0}, Ldl;-><init>(Ldo;)V

    iput-object v0, p0, Lcy;->a:Ldl;

    :cond_0
    iget-object v0, p0, Lcy;->a:Ldl;

    iget-object v1, p0, Lcy;->d:Landroid/content/Context;

    iput-object v1, v0, Ldl;->f:Landroid/content/Context;

    invoke-direct {p0, p1, p2}, Lcy;->b(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcy;->b:Landroid/os/Handler;

    const/16 v1, 0x3004

    const/16 v2, 0x67

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcy;->b:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    return-void

    :cond_1
    iput-object p1, p0, Lcy;->f:Ljava/lang/String;

    iput-object p2, p0, Lcy;->g:Ljava/lang/String;

    iget-object v1, p0, Lcy;->a:Ldl;

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
