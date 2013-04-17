.class public final Laz;
.super Ljava/lang/Object;

# interfaces
.implements Lcd;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:[B

.field private d:[B

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:I

.field private j:Lcom/tencent/tccsync/LoginUtil;

.field private k:Ljava/lang/String;

.field private l:Lca;

.field private m:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Laz;->l:Lca;

    const/4 v0, 0x0

    iput-boolean v0, p0, Laz;->m:Z

    new-instance v0, Lcom/tencent/tccsync/LoginUtil;

    invoke-direct {v0}, Lcom/tencent/tccsync/LoginUtil;-><init>()V

    iput-object v0, p0, Laz;->j:Lcom/tencent/tccsync/LoginUtil;

    invoke-direct {p0}, Laz;->g()V

    invoke-static {}, Lbl;->f()Lca;

    move-result-object v0

    iput-object v0, p0, Laz;->l:Lca;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lde;->b:Landroid/content/Context;

    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;[BZ)I
    .locals 11

    const/4 v0, 0x0

    iput-boolean v0, p0, Laz;->m:Z

    :try_start_0
    iput-object p1, p0, Laz;->b:Ljava/lang/String;

    iput-object p2, p0, Laz;->c:[B

    iget-boolean v0, p0, Laz;->m:Z

    if-eqz v0, :cond_0

    const/16 v0, -0x3e8

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Laz;->j:Lcom/tencent/tccsync/LoginUtil;

    iget-object v1, p0, Laz;->a:Ljava/lang/String;

    iget-object v4, p0, Laz;->d:[B

    iget-object v5, p0, Laz;->e:Ljava/lang/String;

    iget-object v6, p0, Laz;->f:Ljava/lang/String;

    iget-object v7, p0, Laz;->g:Ljava/lang/String;

    iget-object v8, p0, Laz;->h:Ljava/lang/String;

    const/4 v9, 0x0

    iget v10, p0, Laz;->i:I

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v10}, Lcom/tencent/tccsync/LoginUtil;->makeLoginRequestPackageMd5(Ljava/lang/String;Ljava/lang/String;[B[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    iget-boolean v0, p0, Laz;->m:Z

    if-eqz v0, :cond_1

    const/16 v0, -0x3e8

    goto :goto_0

    :cond_1
    iget-object v0, p0, Laz;->j:Lcom/tencent/tccsync/LoginUtil;

    invoke-virtual {v0}, Lcom/tencent/tccsync/LoginUtil;->getPostUrl()Ljava/lang/String;
    :try_end_0
    .catch Lcom/tencent/tccsync/LoginUtilException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_1
    invoke-static {}, Lcj;->a()Lcj;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcj;->a(Ljava/lang/String;)Ldd;

    move-result-object v1

    iget-object v0, p0, Laz;->j:Lcom/tencent/tccsync/LoginUtil;

    invoke-virtual {v0}, Lcom/tencent/tccsync/LoginUtil;->getPostBody()[B

    move-result-object v0

    if-eqz v1, :cond_2

    iget-boolean v3, p0, Laz;->m:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v3, :cond_4

    :cond_2
    if-eqz v1, :cond_3

    :try_start_2
    invoke-virtual {v1}, Ldd;->d()V

    invoke-static {}, Lcj;->a()Lcj;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcj;->a(Ldd;)V
    :try_end_2
    .catch Lcom/tencent/tccsync/LoginUtilException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    :cond_3
    const/16 v0, -0x64

    goto :goto_0

    :cond_4
    const/4 v3, 0x0

    :try_start_3
    invoke-virtual {v1, v3}, Ldd;->a(I)V

    invoke-virtual {v1, v0}, Ldd;->a([B)I

    iget-boolean v0, p0, Laz;->m:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    if-eqz v0, :cond_6

    if-eqz v1, :cond_5

    :try_start_4
    invoke-virtual {v1}, Ldd;->d()V

    invoke-static {}, Lcj;->a()Lcj;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcj;->a(Ldd;)V
    :try_end_4
    .catch Lcom/tencent/tccsync/LoginUtilException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    :cond_5
    const/16 v0, -0x3e8

    goto :goto_0

    :cond_6
    :try_start_5
    invoke-virtual {v1}, Ldd;->c()[B
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    move-result-object v0

    if-eqz v1, :cond_7

    :try_start_6
    invoke-virtual {v1}, Ldd;->d()V

    invoke-static {}, Lcj;->a()Lcj;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcj;->a(Ldd;)V

    :cond_7
    :goto_1
    if-nez v0, :cond_9

    invoke-direct {p0}, Laz;->g()V

    iget-object v0, p0, Laz;->j:Lcom/tencent/tccsync/LoginUtil;

    invoke-virtual {v0}, Lcom/tencent/tccsync/LoginUtil;->clear()V

    const-string v0, "LoginModel"

    const-string v1, "[loginByMd5] recv err"

    invoke-static {v0, v1}, Ldk;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Lcom/tencent/tccsync/LoginUtilException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_2

    const/16 v0, -0x64

    goto/16 :goto_0

    :catch_0
    move-exception v0

    :try_start_7
    const-string v3, "LoginModel"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "loginByMd5(), "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Ldk;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eqz v1, :cond_f

    :try_start_8
    invoke-virtual {v1}, Ldd;->d()V

    invoke-static {}, Lcj;->a()Lcj;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcj;->a(Ldd;)V

    move-object v0, v2

    goto :goto_1

    :catchall_0
    move-exception v0

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Ldd;->d()V

    invoke-static {}, Lcj;->a()Lcj;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcj;->a(Ldd;)V

    :cond_8
    throw v0
    :try_end_8
    .catch Lcom/tencent/tccsync/LoginUtilException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_2

    :catch_1
    move-exception v0

    const-string v1, "LoginModel"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "loginByMd5(), "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/tencent/tccsync/LoginUtilException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Ldk;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, -0x65

    goto/16 :goto_0

    :cond_9
    :try_start_9
    iget-boolean v1, p0, Laz;->m:Z

    if-eqz v1, :cond_a

    const/16 v0, -0x3e8

    goto/16 :goto_0

    :cond_a
    iget-object v1, p0, Laz;->j:Lcom/tencent/tccsync/LoginUtil;

    array-length v2, v0

    invoke-virtual {v1, v0, v2}, Lcom/tencent/tccsync/LoginUtil;->solveLoginResponPackge([BI)I

    move-result v0

    iget-boolean v1, p0, Laz;->m:Z

    if-eqz v1, :cond_c

    invoke-static {}, Lcw;->d()Lcw;

    move-result-object v0

    invoke-virtual {v0}, Lcw;->a()V

    const/16 v0, -0x3e8

    :cond_b
    :goto_2
    invoke-static {}, Lcw;->d()Lcw;

    invoke-static {}, Lcw;->g()V
    :try_end_9
    .catch Lcom/tencent/tccsync/LoginUtilException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception v0

    const-string v1, "LoginModel"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "loginByMd5(), "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Ldk;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, -0x65

    goto/16 :goto_0

    :cond_c
    if-eqz v0, :cond_d

    const/16 v1, 0x3eb

    if-ne v1, v0, :cond_e

    :cond_d
    if-eqz p3, :cond_e

    :try_start_a
    iget-object v1, p0, Laz;->j:Lcom/tencent/tccsync/LoginUtil;

    invoke-virtual {v1}, Lcom/tencent/tccsync/LoginUtil;->getKey()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Laz;->k:Ljava/lang/String;

    invoke-static {}, Lcw;->d()Lcw;

    move-result-object v1

    iget-object v2, p0, Laz;->k:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcw;->a(Ljava/lang/String;)V

    iget-object v2, p0, Laz;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcw;->b(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcw;->c()V

    :cond_e
    const/16 v1, 0x65

    if-eq v0, v1, :cond_b

    const/16 v1, 0xd1

    if-eq v0, v1, :cond_b

    iget-object v1, p0, Laz;->j:Lcom/tencent/tccsync/LoginUtil;

    invoke-virtual {v1}, Lcom/tencent/tccsync/LoginUtil;->clear()V
    :try_end_a
    .catch Lcom/tencent/tccsync/LoginUtilException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_2

    goto :goto_2

    :cond_f
    move-object v0, v2

    goto/16 :goto_1
.end method

.method private g()V
    .locals 4

    const/4 v3, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, ""

    iput-object v2, p0, Laz;->b:Ljava/lang/String;

    iput-object v3, p0, Laz;->c:[B

    iput-object v3, p0, Laz;->d:[B

    const-string v2, ""

    iput-object v2, p0, Laz;->e:Ljava/lang/String;

    invoke-static {}, Lde;->b()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Laz;->a:Ljava/lang/String;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    const-string v3, "mounted"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v0

    :goto_0
    if-eqz v2, :cond_1

    :goto_1
    invoke-static {v0}, Lde;->a(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Laz;->f:Ljava/lang/String;

    invoke-static {}, Lde;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Laz;->g:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Laz;->h:Ljava/lang/String;

    const/16 v0, 0x10

    iput v0, p0, Laz;->i:I

    return-void

    :cond_0
    move v2, v1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    iput-object p1, p0, Laz;->b:Ljava/lang/String;

    invoke-static {p2}, Lde;->a(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Laz;->c:[B

    iget-object v0, p0, Laz;->c:[B

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Laz;->a(Ljava/lang/String;[BZ)I

    move-result v0

    return v0
.end method

.method public final a(Ljava/lang/String;Z)I
    .locals 2

    iput-object p1, p0, Laz;->e:Ljava/lang/String;

    iget-object v0, p0, Laz;->b:Ljava/lang/String;

    iget-object v1, p0, Laz;->c:[B

    invoke-direct {p0, v0, v1, p2}, Laz;->a(Ljava/lang/String;[BZ)I

    move-result v0

    return v0
.end method

.method public final a(Ljava/lang/String;[B)I
    .locals 3

    iput-object p2, p0, Laz;->d:[B

    if-eqz p1, :cond_0

    iput-object p1, p0, Laz;->b:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Laz;->b:Ljava/lang/String;

    iget-object v1, p0, Laz;->c:[B

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Laz;->a(Ljava/lang/String;[BZ)I

    move-result v0

    return v0
.end method

.method public final a([Ljava/lang/String;[Ljava/lang/String;)I
    .locals 7

    const/16 v0, 0xa

    const/4 v2, 0x0

    const-string v1, "LoginModel"

    const-string v3, "getSavedAccount enter"

    invoke-static {v1, v3}, Ldk;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Laz;->l:Lca;

    sget-object v3, Lca$a;->x:Lca$a;

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
    const-string v1, "LoginModel"

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

    const-string v1, "LoginModel"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getSavedAccount NullPointerException "

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

    const-string v1, "LoginModel"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getSavedAccount PatternSyntaxException "

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

    const-string v1, "LoginModel"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getSavedAccount Throwable "

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

.method public final a(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Laz;->l:Lca;

    sget-object v1, Lca$a;->b:Lca$a;

    invoke-interface {v0, v1, p1}, Lca;->a(Lca$a;Ljava/lang/String;)V

    return-void
.end method

.method public final a()Z
    .locals 2

    iget-object v0, p0, Laz;->l:Lca;

    sget-object v1, Lca$a;->e:Lca$a;

    invoke-interface {v0, v1}, Lca;->d(Lca$a;)Z

    move-result v0

    return v0
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    iput-object p1, p0, Laz;->b:Ljava/lang/String;

    invoke-static {p2}, Lde;->a(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Laz;->c:[B

    iget-object v0, p0, Laz;->b:Ljava/lang/String;

    iget-object v1, p0, Laz;->c:[B

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Laz;->a(Ljava/lang/String;[BZ)I

    move-result v0

    return v0
.end method

.method public final b(Ljava/lang/String;[B)I
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Laz;->a(Ljava/lang/String;[BZ)I

    move-result v0

    return v0
.end method

.method public final b()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Laz;->l:Lca;

    sget-object v1, Lca$a;->b:Lca$a;

    invoke-interface {v0, v1}, Lca;->a(Lca$a;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Laz;->l:Lca;

    sget-object v1, Lca$a;->w:Lca$a;

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

    iget-object v0, p0, Laz;->j:Lcom/tencent/tccsync/LoginUtil;

    invoke-virtual {v0}, Lcom/tencent/tccsync/LoginUtil;->getVerifyImageUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final e()V
    .locals 2

    const-string v0, "LoginModel"

    const-string v1, "stop"

    invoke-static {v0, v1}, Ldk;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Laz;->m:Z

    return-void
.end method

.method public final f()Z
    .locals 1

    iget-boolean v0, p0, Laz;->m:Z

    return v0
.end method
