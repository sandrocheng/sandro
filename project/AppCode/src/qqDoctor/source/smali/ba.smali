.class public final Lba;
.super Ljava/lang/Object;

# interfaces
.implements Lcd;
.implements Ldo;


# instance fields
.field private a:Ljava/lang/String;

.field private b:[B

.field private c:Ljava/lang/String;

.field private d:Lca;

.field private e:Ldl;

.field private f:Landroid/content/Context;

.field private g:Landroid/os/Handler;

.field private h:I

.field private i:Z

.field private j:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lba;->d:Lca;

    iput-object v0, p0, Lba;->e:Ldl;

    iput-object v0, p0, Lba;->f:Landroid/content/Context;

    iput-object v0, p0, Lba;->g:Landroid/os/Handler;

    iput v1, p0, Lba;->h:I

    iput-boolean v1, p0, Lba;->i:Z

    iput-boolean v1, p0, Lba;->j:Z

    invoke-static {}, Lbl;->f()Lca;

    move-result-object v0

    iput-object v0, p0, Lba;->d:Lca;

    iput-object p1, p0, Lba;->f:Landroid/content/Context;

    iput-object p2, p0, Lba;->g:Landroid/os/Handler;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lde;->b:Landroid/content/Context;

    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;[BZ)I
    .locals 4

    const/4 v0, 0x0

    invoke-static {}, Lcw;->d()Lcw;

    invoke-static {}, Lcw;->g()V

    iput-boolean v0, p0, Lba;->i:Z

    iget-object v1, p0, Lba;->e:Ldl;

    if-nez v1, :cond_0

    new-instance v1, Ldl;

    invoke-direct {v1, p0}, Ldl;-><init>(Ldo;)V

    iput-object v1, p0, Lba;->e:Ldl;

    :cond_0
    iget-object v1, p0, Lba;->e:Ldl;

    iget-object v2, p0, Lba;->f:Landroid/content/Context;

    iput-object v2, v1, Ldl;->f:Landroid/content/Context;

    iput-object p1, p0, Lba;->a:Ljava/lang/String;

    iput-object p2, p0, Lba;->b:[B

    iput-boolean p3, p0, Lba;->j:Z

    invoke-direct {p0, p1, p2}, Lba;->c(Ljava/lang/String;[B)[B

    move-result-object v1

    if-nez v1, :cond_1

    const/16 v0, 0xc9

    :goto_0
    return v0

    :cond_1
    iget-object v2, p0, Lba;->e:Ldl;

    invoke-static {}, Lde;->c()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Ldl;->c:Ljava/lang/String;

    iput-object v1, v2, Ldl;->d:[B

    new-instance v1, Ldn;

    invoke-direct {v1, v2}, Ldn;-><init>(Ldl;)V

    iput-object v1, v2, Ldl;->b:Ljava/lang/Thread;

    iget-object v1, v2, Ldl;->b:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method private a(Ljava/io/InputStream;)Z
    .locals 6

    const/4 v1, 0x0

    invoke-static {p1}, Lde;->a(Ljava/io/InputStream;)Lcom/qq/jce/wup/UniPacket;

    move-result-object v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v2, 0x0

    :try_start_0
    const-string v3, "sinfo"

    invoke-virtual {v0, v3}, Lcom/qq/jce/wup/UniPacket;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQQPIM/LoginResp;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    if-nez v0, :cond_1

    iget-object v0, p0, Lba;->g:Landroid/os/Handler;

    const/16 v2, 0x3004

    const/16 v3, 0x67

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lba;->g:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_2
    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v3, "MobileLoginModel"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "processInputStream(), "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Ldk;->c(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v2

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, LQQPIM/LoginResp;->getHeader()LQQPIM/RespHeader;

    move-result-object v2

    invoke-virtual {v2}, LQQPIM/RespHeader;->getResult()I

    move-result v2

    if-eqz v2, :cond_2

    iget-object v0, p0, Lba;->g:Landroid/os/Handler;

    const/16 v3, 0x3005

    invoke-virtual {v0, v3, v2, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lba;->g:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, LQQPIM/LoginResp;->getLoginKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lba;->c:Ljava/lang/String;

    iget-boolean v0, p0, Lba;->j:Z

    if-eqz v0, :cond_3

    invoke-static {}, Lcw;->d()Lcw;

    move-result-object v0

    iget-object v3, p0, Lba;->c:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcw;->a(Ljava/lang/String;)V

    iget-object v3, p0, Lba;->a:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcw;->b(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcw;->c()V

    invoke-static {}, Lcw;->g()V

    :cond_3
    iget-object v0, p0, Lba;->g:Landroid/os/Handler;

    const/16 v3, 0x2001

    invoke-virtual {v0, v3, v2, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lba;->g:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_2
.end method

.method private c(Ljava/lang/String;[B)[B
    .locals 4

    new-instance v0, LQQPIM/LoginReq;

    invoke-direct {v0}, LQQPIM/LoginReq;-><init>()V

    iget-object v1, p0, Lba;->f:Landroid/content/Context;

    invoke-static {p1}, Lda;->a(Ljava/lang/String;)LQQPIM/ReqHeader;

    move-result-object v1

    invoke-virtual {v0, v1}, LQQPIM/LoginReq;->setHeader(LQQPIM/ReqHeader;)V

    invoke-static {p2}, Lcx;->a([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, LQQPIM/LoginReq;->setMd5pwd(Ljava/lang/String;)V

    new-instance v1, Lcom/qq/jce/wup/UniPacket;

    invoke-direct {v1}, Lcom/qq/jce/wup/UniPacket;-><init>()V

    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Lcom/qq/jce/wup/UniPacket;->setEncodeName(Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/qq/jce/wup/UniPacket;->setRequestId(I)V

    const-string v2, "mobile"

    invoke-virtual {v1, v2}, Lcom/qq/jce/wup/UniPacket;->setServantName(Ljava/lang/String;)V

    const-string v2, "mobileLogin"

    invoke-virtual {v1, v2}, Lcom/qq/jce/wup/UniPacket;->setFuncName(Ljava/lang/String;)V

    const-string v2, "cinfo"

    invoke-virtual {v1, v2, v0}, Lcom/qq/jce/wup/UniPacket;->put(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/qq/jce/wup/UniPacket;->encode()[B

    move-result-object v0

    :try_start_0
    const-string v1, "DFG#$%^#%$RGHR(&*M<><"

    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v0, v1}, La;->b([B[B)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "MobileLoginModel"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "constructLoginData(), "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Ldk;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    const/4 v2, 0x0

    iput-object p1, p0, Lba;->a:Ljava/lang/String;

    invoke-static {p2}, Lde;->a(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lba;->b:[B

    iput-boolean v2, p0, Lba;->j:Z

    iget-object v0, p0, Lba;->a:Ljava/lang/String;

    iget-object v1, p0, Lba;->b:[B

    invoke-direct {p0, v0, v1, v2}, Lba;->a(Ljava/lang/String;[BZ)I

    move-result v0

    return v0
.end method

.method public final a(Ljava/lang/String;Z)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final a(Ljava/lang/String;[B)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final a([Ljava/lang/String;[Ljava/lang/String;)I
    .locals 7

    const/16 v0, 0xa

    const/4 v2, 0x0

    const-string v1, "MobileLoginModel"

    const-string v3, "getSavedAccount enter"

    invoke-static {v1, v3}, Ldk;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lba;->d:Lca;

    sget-object v3, Lca$a;->v:Lca$a;

    invoke-interface {v1, v3}, Lca;->a(Lca$a;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lde;->d(Ljava/lang/String;)[B

    move-result-object v1

    sget-object v3, Lde;->b:Landroid/content/Context;

    invoke-static {v3}, Lde;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "h^J9o`"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v1, v3}, La;->a([B[B)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    :try_start_0
    const-string v3, ";"

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    array-length v1, v3
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    if-le v1, v0, :cond_1

    :goto_0
    move v1, v2

    :goto_1
    if-lt v1, v0, :cond_0

    :goto_2
    const-string v1, "MobileLoginModel"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getSavedAccount leave ret ="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ldk;->b(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v0

    :goto_3
    return v2

    :cond_0
    :try_start_1
    aget-object v4, v3, v1

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    aget-object v5, v3, v1

    const/4 v6, 0x0

    invoke-virtual {v5, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    aput-object v5, p1, v1

    aget-object v5, v3, v1

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v5, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lde;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, p2, v1
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "MobileLoginModel"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getSavedAccount(), "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Ldk;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :catch_1
    move-exception v0

    const-string v1, "MobileLoginModel"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getSavedAccount(), "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/regex/PatternSyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Ldk;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :catch_2
    move-exception v0

    const-string v1, "MobileLoginModel"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getSavedAccount(), "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Ldk;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_1
    move v0, v1

    goto/16 :goto_0

    :cond_2
    move v0, v2

    goto/16 :goto_2
.end method

.method public final a(ILorg/apache/http/HttpEntity;)V
    .locals 7

    const/4 v0, 0x1

    const/16 v6, 0x3004

    const/16 v5, 0x67

    const/4 v1, 0x0

    iget-boolean v2, p0, Lba;->i:Z

    if-eqz v2, :cond_1

    invoke-static {}, Lcw;->d()Lcw;

    move-result-object v0

    invoke-virtual {v0}, Lcw;->a()V

    iget-object v0, p0, Lba;->g:Landroid/os/Handler;

    const/16 v2, 0x2001

    const/16 v3, -0x3e8

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lba;->g:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v2, 0xc8

    if-ne v2, p1, :cond_2

    if-nez p2, :cond_4

    :cond_2
    iget v2, p0, Lba;->h:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lba;->h:I

    const/4 v2, 0x3

    iget v3, p0, Lba;->h:I

    if-gt v2, v3, :cond_3

    iput v1, p0, Lba;->h:I

    move v0, v1

    :goto_1
    if-nez v0, :cond_0

    iget-object v0, p0, Lba;->g:Landroid/os/Handler;

    const/16 v2, 0x3003

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lba;->g:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lba;->a:Ljava/lang/String;

    iget-object v3, p0, Lba;->b:[B

    invoke-direct {p0, v2, v3, v0}, Lba;->a(Ljava/lang/String;[BZ)I

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Lba;->h:I

    invoke-interface {p2}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {p0, v0}, Lba;->a(Ljava/io/InputStream;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lba;->g:Landroid/os/Handler;

    const/16 v2, 0x3004

    const/16 v3, 0x67

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    iget-object v2, p0, Lba;->g:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "MobileLoginModel"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "binaryPostResponse(), "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Ldk;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lba;->g:Landroid/os/Handler;

    invoke-virtual {v0, v6, v5, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lba;->g:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v2, "MobileLoginModel"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "binaryPostResponse(), "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Ldk;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lba;->g:Landroid/os/Handler;

    invoke-virtual {v0, v6, v5, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lba;->g:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lba;->d:Lca;

    sget-object v1, Lca$a;->c:Lca$a;

    invoke-interface {v0, v1, p1}, Lca;->a(Lca$a;Ljava/lang/String;)V

    return-void
.end method

.method public final a()Z
    .locals 2

    iget-object v0, p0, Lba;->d:Lca;

    sget-object v1, Lca$a;->d:Lca$a;

    invoke-interface {v0, v1}, Lca;->d(Lca$a;)Z

    move-result v0

    return v0
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    const/4 v2, 0x1

    iput-object p1, p0, Lba;->a:Ljava/lang/String;

    invoke-static {p2}, Lde;->a(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lba;->b:[B

    iput-boolean v2, p0, Lba;->j:Z

    iget-object v0, p0, Lba;->a:Ljava/lang/String;

    iget-object v1, p0, Lba;->b:[B

    invoke-direct {p0, v0, v1, v2}, Lba;->a(Ljava/lang/String;[BZ)I

    move-result v0

    return v0
.end method

.method public final b(Ljava/lang/String;[B)I
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lba;->a(Ljava/lang/String;[BZ)I

    move-result v0

    return v0
.end method

.method public final b()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lba;->d:Lca;

    sget-object v1, Lca$a;->c:Lca$a;

    invoke-interface {v0, v1}, Lca;->a(Lca$a;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lba;->d:Lca;

    sget-object v1, Lca$a;->u:Lca$a;

    invoke-interface {v0, v1}, Lca;->a(Lca$a;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lde;->d(Ljava/lang/String;)[B

    move-result-object v0

    sget-object v1, Lde;->b:Landroid/content/Context;

    invoke-static {v1}, Lde;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "h^J9o`"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v0, v1}, La;->a([B[B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final e()V
    .locals 2

    const-string v0, "MobileLoginModel"

    const-string v1, "stop"

    invoke-static {v0, v1}, Ldk;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lba;->i:Z

    return-void
.end method

.method public final f()Z
    .locals 1

    iget-boolean v0, p0, Lba;->i:Z

    return v0
.end method
