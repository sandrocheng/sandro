.class public abstract Lcom/keniu/security/f/ae;
.super Ljava/lang/Object;
.source "UpdateTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final a:I = 0x0

.field public static final b:I = 0x1

.field public static final c:I = 0x2

.field public static final d:I = 0x3

.field public static final e:I = 0x4

.field public static final f:I = 0x5

.field public static final g:I = 0x6

.field public static final h:I = 0x7

.field public static final i:I = 0x8

.field public static final j:I = 0x0

.field public static final k:I = 0x1

.field public static final l:I = 0x2

.field public static final m:I = 0x3

.field public static final n:I = 0x4

.field public static final o:I = 0x5

.field public static final p:I = 0x6

.field public static final q:I = 0x7

.field public static final r:I = 0x8

.field public static final s:I = 0x9

.field public static final t:I = 0xa

.field public static final u:I = 0x0

.field public static final v:I = 0x1

.field public static final w:I = 0x2

.field public static final x:I = 0x3

.field protected static final y:Ljava/lang/String; = "UTF-8"

.field protected static final z:I = 0x7530


# instance fields
.field private A:I

.field private B:I

.field private volatile C:Z

.field private D:Ljava/lang/Integer;


# direct methods
.method protected constructor <init>(I)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 248
    iput v1, p0, Lcom/keniu/security/f/ae;->A:I

    .line 249
    iput v1, p0, Lcom/keniu/security/f/ae;->B:I

    .line 251
    iput-boolean v1, p0, Lcom/keniu/security/f/ae;->C:Z

    .line 252
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    iput-object v0, p0, Lcom/keniu/security/f/ae;->D:Ljava/lang/Integer;

    .line 117
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/f/ae;->D:Ljava/lang/Integer;

    .line 118
    return-void
.end method

.method protected static a(Ljava/lang/String;Lcom/keniu/security/f/aa;Lcom/keniu/security/f/af;)I
    .locals 10
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    const/16 v8, 0xa

    const/4 v7, 0x0

    .line 152
    .line 155
    :try_start_0
    new-instance v1, Ljava/net/URL;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/keniu/security/f/aa;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 157
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    .line 159
    const/16 v2, 0x7530

    invoke-virtual {v1, v2}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 160
    const/16 v2, 0x7530

    invoke-virtual {v1, v2}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 161
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/net/URLConnection;->setUseCaches(Z)V

    .line 163
    invoke-virtual {v1}, Ljava/net/URLConnection;->connect()V

    .line 165
    instance-of v2, v1, Ljava/net/HttpURLConnection;

    if-eqz v2, :cond_0

    .line 167
    move-object v0, v1

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object p0, v0

    .line 168
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    const/16 v3, 0x190

    if-lt v2, v3, :cond_0

    move v1, v8

    .line 235
    :goto_0
    return v1

    .line 175
    :cond_0
    invoke-virtual {v1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 178
    :try_start_1
    iget-object v2, p1, Lcom/keniu/security/f/aa;->c:Ljava/lang/String;

    if-eqz v2, :cond_b

    .line 180
    const-string v2, "MD5"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 181
    new-instance v3, Ljava/security/DigestInputStream;

    invoke-direct {v3, v1, v2}, Ljava/security/DigestInputStream;-><init>(Ljava/io/InputStream;Ljava/security/MessageDigest;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7

    move-object v1, v3

    .line 184
    :goto_1
    const/16 v3, 0x2000

    :try_start_2
    new-array v3, v3, [B

    move v4, v7

    .line 189
    :goto_2
    invoke-virtual {v1, v3}, Ljava/io/InputStream;->read([B)I

    move-result v5

    .line 190
    if-lez v5, :cond_3

    .line 192
    invoke-interface {p2, v3, v5}, Lcom/keniu/security/f/af;->a([BI)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_7

    move-result v6

    .line 193
    if-eqz v6, :cond_2

    .line 229
    if-eqz v1, :cond_1

    .line 233
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :cond_1
    :goto_3
    move v1, v6

    .line 235
    goto :goto_0

    .line 198
    :cond_2
    add-int/2addr v4, v5

    .line 205
    goto :goto_2

    .line 207
    :cond_3
    :try_start_4
    iget v3, p1, Lcom/keniu/security/f/aa;->b:I

    if-eqz v3, :cond_5

    iget v3, p1, Lcom/keniu/security/f/aa;->b:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_7

    if-eq v3, v4, :cond_5

    .line 209
    if-eqz v1, :cond_4

    .line 233
    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    :cond_4
    :goto_4
    move v1, v8

    .line 235
    goto :goto_0

    .line 212
    :cond_5
    if-eqz v2, :cond_7

    .line 214
    :try_start_6
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    invoke-static {v2}, Lcom/keniu/security/f/k;->a([B)Ljava/lang/String;

    move-result-object v2

    .line 215
    iget-object v3, p1, Lcom/keniu/security/f/aa;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_7

    move-result v2

    if-eqz v2, :cond_7

    .line 217
    if-eqz v1, :cond_6

    .line 233
    :try_start_7
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 235
    :cond_6
    :goto_5
    const/16 v1, 0x9

    goto :goto_0

    .line 221
    :cond_7
    if-eqz v1, :cond_8

    .line 233
    :try_start_8
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    :cond_8
    :goto_6
    move v1, v7

    .line 235
    goto :goto_0

    .line 225
    :catch_0
    move-exception v1

    move-object v1, v4

    :goto_7
    if-eqz v1, :cond_9

    .line 233
    :try_start_9
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    :cond_9
    :goto_8
    move v1, v8

    .line 235
    goto :goto_0

    .line 229
    :catchall_0
    move-exception v1

    move-object v2, v4

    :goto_9
    if-eqz v2, :cond_a

    .line 233
    :try_start_a
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    .line 235
    :cond_a
    :goto_a
    throw v1

    :catch_1
    move-exception v1

    goto :goto_3

    :catch_2
    move-exception v1

    goto :goto_4

    :catch_3
    move-exception v1

    goto :goto_5

    :catch_4
    move-exception v1

    goto :goto_6

    :catch_5
    move-exception v1

    goto :goto_8

    :catch_6
    move-exception v2

    goto :goto_a

    .line 229
    :catchall_1
    move-exception v2

    move-object v9, v2

    move-object v2, v1

    move-object v1, v9

    goto :goto_9

    :catchall_2
    move-exception v2

    move-object v9, v2

    move-object v2, v1

    move-object v1, v9

    goto :goto_9

    .line 225
    :catch_7
    move-exception v2

    goto :goto_7

    :cond_b
    move-object v2, v4

    goto :goto_1
.end method

.method public static a(I)Z
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 54
    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 v0, 0x7

    if-eq p0, v0, :cond_0

    if-ne p0, v1, :cond_1

    :cond_0
    move v0, v1

    .line 64
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected static a(Lcom/keniu/security/f/h;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 242
    const-string v0, "version"

    invoke-virtual {p0, v0, p1}, Lcom/keniu/security/f/h;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 243
    invoke-static {v0, p2}, Lcom/keniu/security/f/ag;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(I)Z
    .locals 1
    .parameter

    .prologue
    .line 69
    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/4 v0, 0x6

    if-ne p0, v0, :cond_1

    .line 75
    :cond_0
    const/4 v0, 0x1

    .line 77
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private e(I)V
    .locals 0
    .parameter

    .prologue
    .line 102
    iput p1, p0, Lcom/keniu/security/f/ae;->A:I

    .line 103
    return-void
.end method


# virtual methods
.method protected final c(I)V
    .locals 0
    .parameter

    .prologue
    .line 112
    iput p1, p0, Lcom/keniu/security/f/ae;->B:I

    .line 113
    return-void
.end method

.method protected final d(I)V
    .locals 0
    .parameter

    .prologue
    .line 128
    iput p1, p0, Lcom/keniu/security/f/ae;->A:I

    .line 129
    invoke-virtual {p0}, Lcom/keniu/security/f/ae;->k()V

    .line 130
    return-void
.end method

.method public final f()V
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/keniu/security/f/ae;->C:Z

    .line 83
    return-void
.end method

.method public final g()Z
    .locals 1

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/keniu/security/f/ae;->C:Z

    return v0
.end method

.method protected final h()V
    .locals 1

    .prologue
    .line 92
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/keniu/security/f/ae;->C:Z

    .line 93
    return-void
.end method

.method public final i()I
    .locals 1

    .prologue
    .line 97
    iget v0, p0, Lcom/keniu/security/f/ae;->A:I

    return v0
.end method

.method public final j()I
    .locals 1

    .prologue
    .line 107
    iget v0, p0, Lcom/keniu/security/f/ae;->B:I

    return v0
.end method

.method protected final k()V
    .locals 3

    .prologue
    .line 122
    invoke-static {}, Lcom/keniu/security/monitor/a;->a()Lcom/keniu/security/monitor/a;

    move-result-object v0

    .line 123
    sget v1, Lcom/keniu/security/monitor/a;->q:I

    iget-object v2, p0, Lcom/keniu/security/f/ae;->D:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2, p0}, Lcom/keniu/security/monitor/a;->a(ILjava/lang/Object;Ljava/lang/Object;)I

    .line 124
    return-void
.end method

.method protected final l()Z
    .locals 1

    .prologue
    .line 134
    iget-boolean v0, p0, Lcom/keniu/security/f/ae;->C:Z

    if-eqz v0, :cond_0

    .line 136
    const/4 v0, 0x2

    iput v0, p0, Lcom/keniu/security/f/ae;->B:I

    .line 137
    const/4 v0, 0x1

    .line 140
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
