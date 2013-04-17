.class public final Lmw;
.super Ljava/lang/Object;


# instance fields
.field public a:Ljava/lang/String;

.field public b:[B

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Z

.field public f:Lcom/tencent/tccdb/LoginUtil;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:I

.field private l:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmw;->e:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lmw;->l:Landroid/content/Context;

    invoke-static {}, Lcom/tencent/qqpimsecure/service/QQPimApplication;->a()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lmw;->l:Landroid/content/Context;

    new-instance v0, Lcom/tencent/tccdb/LoginUtil;

    invoke-direct {v0}, Lcom/tencent/tccdb/LoginUtil;-><init>()V

    iput-object v0, p0, Lmw;->f:Lcom/tencent/tccdb/LoginUtil;

    invoke-direct {p0}, Lmw;->a()V

    return-void
.end method

.method private a()V
    .locals 1

    const-string v0, ""

    iput-object v0, p0, Lmw;->a:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lmw;->b:[B

    const-string v0, ""

    iput-object v0, p0, Lmw;->c:Ljava/lang/String;

    const-string v0, "login_host_url"

    invoke-static {v0}, Lcom/tencent/tmsecure/common/TMSApplication;->getStrFromEnvMap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmw;->g:Ljava/lang/String;

    iget-object v0, p0, Lmw;->l:Landroid/content/Context;

    invoke-static {v0}, Lft;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmw;->h:Ljava/lang/String;

    invoke-static {}, Lqx;->a()Lqx;

    move-result-object v0

    invoke-virtual {v0}, Lqx;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmw;->i:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lmw;->j:Ljava/lang/String;

    const/16 v0, 0x10

    iput v0, p0, Lmw;->k:I

    return-void
.end method

.method public static a(Ljava/lang/String;)[B
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    const-string v1, ""

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    :try_start_0
    const-string v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v1, v0

    :goto_1
    :try_start_1
    const-string v0, "UTF-8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/security/MessageDigest;->update([B)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    move-object v1, v0

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_2
.end method


# virtual methods
.method public final a(Ljava/lang/String;[B)I
    .locals 11

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmw;->e:Z

    :try_start_0
    iput-object p1, p0, Lmw;->a:Ljava/lang/String;

    iput-object p2, p0, Lmw;->b:[B

    iget-boolean v0, p0, Lmw;->e:Z

    if-eqz v0, :cond_1

    const/16 v0, -0x3e8

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lmw;->f:Lcom/tencent/tccdb/LoginUtil;

    iget-object v1, p0, Lmw;->g:Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p0, Lmw;->c:Ljava/lang/String;

    iget-object v6, p0, Lmw;->h:Ljava/lang/String;

    iget-object v7, p0, Lmw;->i:Ljava/lang/String;

    iget-object v8, p0, Lmw;->j:Ljava/lang/String;

    const/4 v9, 0x0

    iget v10, p0, Lmw;->k:I

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v10}, Lcom/tencent/tccdb/LoginUtil;->makeLoginRequestPackageMd5(Ljava/lang/String;Ljava/lang/String;[B[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    iget-boolean v0, p0, Lmw;->e:Z

    if-eqz v0, :cond_2

    const/16 v0, -0x3e8

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lmw;->f:Lcom/tencent/tccdb/LoginUtil;

    invoke-virtual {v0}, Lcom/tencent/tccdb/LoginUtil;->getPostUrl()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_1
    new-instance v1, Lfk;

    invoke-direct {v1, v0}, Lfk;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    iget-object v0, p0, Lmw;->f:Lcom/tencent/tccdb/LoginUtil;

    invoke-virtual {v0}, Lcom/tencent/tccdb/LoginUtil;->getPostBody()[B

    move-result-object v0

    iget-boolean v2, p0, Lmw;->e:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    if-eqz v2, :cond_4

    :try_start_3
    iget-object v0, v1, Lfk;->a:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_3

    iget-object v0, v1, Lfk;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    const/4 v0, 0x0

    iput-object v0, v1, Lfk;->a:Ljava/net/HttpURLConnection;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    :cond_3
    const/16 v0, -0x64

    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    :try_start_4
    invoke-virtual {v1, v2}, Lfk;->a(I)V

    invoke-virtual {v1, v0}, Lfk;->a([B)I

    invoke-virtual {v1}, Lfk;->a()I

    iget-boolean v0, p0, Lmw;->e:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    if-eqz v0, :cond_6

    :try_start_5
    iget-object v0, v1, Lfk;->a:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_5

    iget-object v0, v1, Lfk;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    const/4 v0, 0x0

    iput-object v0, v1, Lfk;->a:Ljava/net/HttpURLConnection;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    :cond_5
    const/16 v0, -0x3e8

    goto :goto_0

    :cond_6
    :try_start_6
    invoke-virtual {v1}, Lfk;->b()[B
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    move-result-object v0

    :try_start_7
    iget-object v2, v1, Lfk;->a:Ljava/net/HttpURLConnection;

    if-eqz v2, :cond_7

    iget-object v2, v1, Lfk;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    const/4 v2, 0x0

    iput-object v2, v1, Lfk;->a:Ljava/net/HttpURLConnection;

    :cond_7
    :goto_1
    if-nez v0, :cond_a

    invoke-direct {p0}, Lmw;->a()V

    iget-object v0, p0, Lmw;->f:Lcom/tencent/tccdb/LoginUtil;

    invoke-virtual {v0}, Lcom/tencent/tccdb/LoginUtil;->clear()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1

    const/16 v0, -0x64

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v1, v2

    :goto_2
    :try_start_8
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    if-eqz v1, :cond_f

    :try_start_9
    iget-object v0, v1, Lfk;->a:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_8

    iget-object v0, v1, Lfk;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    const/4 v0, 0x0

    iput-object v0, v1, Lfk;->a:Ljava/net/HttpURLConnection;

    :cond_8
    move-object v0, v3

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_3
    if-eqz v1, :cond_9

    iget-object v2, v1, Lfk;->a:Ljava/net/HttpURLConnection;

    if-eqz v2, :cond_9

    iget-object v2, v1, Lfk;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    const/4 v2, 0x0

    iput-object v2, v1, Lfk;->a:Ljava/net/HttpURLConnection;

    :cond_9
    throw v0
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    const/16 v0, -0x65

    goto/16 :goto_0

    :cond_a
    :try_start_a
    iget-boolean v1, p0, Lmw;->e:Z

    if-eqz v1, :cond_b

    const/16 v0, -0x3e8

    goto/16 :goto_0

    :cond_b
    iget-object v1, p0, Lmw;->f:Lcom/tencent/tccdb/LoginUtil;

    array-length v2, v0

    invoke-virtual {v1, v0, v2}, Lcom/tencent/tccdb/LoginUtil;->solveLoginResponPackge([BI)I

    move-result v0

    iget-boolean v1, p0, Lmw;->e:Z

    if-eqz v1, :cond_c

    const/16 v0, -0x3e8

    goto/16 :goto_0

    :cond_c
    if-eqz v0, :cond_d

    const/16 v1, 0x3eb

    if-ne v1, v0, :cond_e

    :cond_d
    iget-object v1, p0, Lmw;->f:Lcom/tencent/tccdb/LoginUtil;

    invoke-virtual {v1}, Lcom/tencent/tccdb/LoginUtil;->getKey()Ljava/lang/String;

    iget-object v1, p0, Lmw;->f:Lcom/tencent/tccdb/LoginUtil;

    invoke-virtual {v1}, Lcom/tencent/tccdb/LoginUtil;->getWapSid()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lmw;->d:Ljava/lang/String;

    :cond_e
    const/16 v1, 0x65

    if-eq v0, v1, :cond_0

    const/16 v1, 0xd1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lmw;->f:Lcom/tencent/tccdb/LoginUtil;

    invoke-virtual {v1}, Lcom/tencent/tccdb/LoginUtil;->clear()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_1

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    goto :goto_3

    :catch_2
    move-exception v0

    goto :goto_2

    :cond_f
    move-object v0, v3

    goto :goto_1
.end method
