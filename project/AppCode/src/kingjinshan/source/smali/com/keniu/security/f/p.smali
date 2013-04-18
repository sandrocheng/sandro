.class public final Lcom/keniu/security/f/p;
.super Lcom/keniu/security/f/ae;
.source "UpdateApk.java"


# instance fields
.field private A:Lcom/keniu/security/f/h;

.field private B:Lcom/keniu/security/f/h;

.field private C:Lcom/keniu/security/f/r;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/keniu/security/f/ae;-><init>(I)V

    .line 175
    new-instance v0, Lcom/keniu/security/f/r;

    invoke-direct {v0}, Lcom/keniu/security/f/r;-><init>()V

    iput-object v0, p0, Lcom/keniu/security/f/p;->C:Lcom/keniu/security/f/r;

    .line 12
    return-void
.end method

.method static synthetic a(Lcom/keniu/security/f/p;)Lcom/keniu/security/f/r;
    .locals 1
    .parameter

    .prologue
    .line 7
    iget-object v0, p0, Lcom/keniu/security/f/p;->C:Lcom/keniu/security/f/r;

    return-object v0
.end method

.method private b()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 47
    :try_start_0
    iget-object v0, p0, Lcom/keniu/security/f/p;->A:Lcom/keniu/security/f/h;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/keniu/security/f/ab;->a()Lcom/keniu/security/f/ab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/f/ab;->m()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/keniu/security/f/p;->A:Lcom/keniu/security/f/h;

    invoke-static {v1, v0}, Lcom/keniu/security/f/z;->a(Lcom/keniu/security/f/h;Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lcom/keniu/security/f/p;->a(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/keniu/security/f/p;->A:Lcom/keniu/security/f/h;

    const-string v2, "mosecurity.apk"

    invoke-static {v1, v2, v0}, Lcom/keniu/security/f/p;->a(Lcom/keniu/security/f/h;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    move-result v0

    if-eqz v0, :cond_1

    move v0, v8

    :goto_0
    if-nez v0, :cond_2

    .line 140
    invoke-virtual {p0}, Lcom/keniu/security/f/p;->j()I

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    :try_start_1
    invoke-static {}, Lcom/keniu/security/f/ab;->a()Lcom/keniu/security/f/ab;

    move-result-object v0

    .line 145
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Lcom/keniu/security/f/ab;->j()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 146
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_8

    .line 154
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v7

    .line 47
    goto :goto_0

    .line 52
    :cond_2
    :try_start_2
    invoke-static {}, Lcom/keniu/security/f/ab;->a()Lcom/keniu/security/f/ab;

    move-result-object v0

    .line 53
    invoke-virtual {v0}, Lcom/keniu/security/f/ab;->i()Z

    move-result v1

    if-nez v1, :cond_3

    .line 55
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/keniu/security/f/p;->c(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    .line 140
    invoke-virtual {p0}, Lcom/keniu/security/f/p;->j()I

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    :try_start_3
    invoke-static {}, Lcom/keniu/security/f/ab;->a()Lcom/keniu/security/f/ab;

    move-result-object v0

    .line 145
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Lcom/keniu/security/f/ab;->j()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 146
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_1

    .line 59
    :cond_3
    :try_start_4
    invoke-virtual {v0}, Lcom/keniu/security/f/ab;->m()Ljava/lang/String;

    move-result-object v1

    .line 61
    iget-object v2, p0, Lcom/keniu/security/f/p;->B:Lcom/keniu/security/f/h;

    const-string v3, "mosecurity.apk"

    invoke-static {v2, v3, v1}, Lcom/keniu/security/f/z;->a(Lcom/keniu/security/f/h;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 63
    new-instance v2, Lcom/keniu/security/f/aa;

    invoke-direct {v2}, Lcom/keniu/security/f/aa;-><init>()V

    .line 64
    iget-object v3, p0, Lcom/keniu/security/f/p;->B:Lcom/keniu/security/f/h;

    invoke-virtual {v2, v3, v1}, Lcom/keniu/security/f/aa;->a(Lcom/keniu/security/f/h;Ljava/lang/String;)V

    .line 65
    iget-object v1, p0, Lcom/keniu/security/f/p;->C:Lcom/keniu/security/f/r;

    iget v3, v2, Lcom/keniu/security/f/aa;->b:I

    iput v3, v1, Lcom/keniu/security/f/r;->a:I

    .line 67
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/keniu/security/f/p;->d(I)V

    .line 69
    iget-object v1, p0, Lcom/keniu/security/f/p;->A:Lcom/keniu/security/f/h;

    const-string v3, "version"

    const-string v4, "mosecurity.apk"

    invoke-virtual {v1, v3, v4}, Lcom/keniu/security/f/h;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keniu/security/f/ab;->f(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 71
    iget-object v0, p0, Lcom/keniu/security/f/p;->C:Lcom/keniu/security/f/r;

    iget v1, v2, Lcom/keniu/security/f/aa;->b:I

    iput v1, v0, Lcom/keniu/security/f/r;->b:I

    .line 72
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/keniu/security/f/p;->d(I)V

    .line 131
    :cond_4
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/keniu/security/f/p;->d(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    .line 140
    invoke-virtual {p0}, Lcom/keniu/security/f/p;->j()I

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    :try_start_5
    invoke-static {}, Lcom/keniu/security/f/ab;->a()Lcom/keniu/security/f/ab;

    move-result-object v0

    .line 145
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Lcom/keniu/security/f/ab;->j()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 146
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_1

    .line 151
    :catch_1
    move-exception v0

    goto/16 :goto_1

    .line 76
    :cond_5
    :try_start_6
    invoke-virtual {v2}, Lcom/keniu/security/f/aa;->b()I

    move-result v1

    invoke-static {}, Lcom/keniu/security/f/f;->e()J

    move-result-wide v3

    int-to-long v5, v1

    cmp-long v3, v3, v5

    if-gez v3, :cond_6

    invoke-static {}, Lcom/keniu/security/f/f;->g()J

    move-result-wide v3

    int-to-long v5, v1

    cmp-long v1, v3, v5

    if-ltz v1, :cond_7

    :cond_6
    move v1, v8

    :goto_2
    if-nez v1, :cond_8

    .line 78
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/keniu/security/f/p;->c(I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    .line 140
    invoke-virtual {p0}, Lcom/keniu/security/f/p;->j()I

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    :try_start_7
    invoke-static {}, Lcom/keniu/security/f/ab;->a()Lcom/keniu/security/f/ab;

    move-result-object v0

    .line 145
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Lcom/keniu/security/f/ab;->j()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 146
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    goto/16 :goto_1

    :catch_2
    move-exception v0

    goto/16 :goto_1

    :cond_7
    move v1, v7

    .line 76
    goto :goto_2

    .line 82
    :cond_8
    const/4 v1, 0x0

    .line 85
    :try_start_8
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Lcom/keniu/security/f/ab;->j()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 88
    :try_start_9
    new-instance v1, Lcom/keniu/security/f/q;

    invoke-direct {v1, p0, v3}, Lcom/keniu/security/f/q;-><init>(Lcom/keniu/security/f/p;Ljava/io/FileOutputStream;)V

    .line 107
    const/4 v4, 0x5

    invoke-virtual {p0, v4}, Lcom/keniu/security/f/p;->d(I)V

    .line 109
    invoke-virtual {v0}, Lcom/keniu/security/f/ab;->b()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v2, v1}, Lcom/keniu/security/f/p;->a(Ljava/lang/String;Lcom/keniu/security/f/aa;Lcom/keniu/security/f/af;)I

    move-result v1

    .line 110
    if-eqz v1, :cond_9

    .line 112
    invoke-virtual {p0, v1}, Lcom/keniu/security/f/p;->c(I)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 118
    :try_start_a
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_5

    .line 140
    invoke-virtual {p0}, Lcom/keniu/security/f/p;->j()I

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    :try_start_b
    invoke-static {}, Lcom/keniu/security/f/ab;->a()Lcom/keniu/security/f/ab;

    move-result-object v0

    .line 145
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Lcom/keniu/security/f/ab;->j()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 146
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3

    goto/16 :goto_1

    :catch_3
    move-exception v0

    goto/16 :goto_1

    .line 118
    :cond_9
    :try_start_c
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 124
    invoke-virtual {v0, v2}, Lcom/keniu/security/f/ab;->a(Lcom/keniu/security/f/aa;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 126
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/keniu/security/f/p;->c(I)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_5

    .line 140
    invoke-virtual {p0}, Lcom/keniu/security/f/p;->j()I

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    :try_start_d
    invoke-static {}, Lcom/keniu/security/f/ab;->a()Lcom/keniu/security/f/ab;

    move-result-object v0

    .line 145
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Lcom/keniu/security/f/ab;->j()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 146
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_4

    goto/16 :goto_1

    :catch_4
    move-exception v0

    goto/16 :goto_1

    .line 118
    :catchall_0
    move-exception v0

    :goto_3
    if-eqz v1, :cond_a

    .line 120
    :try_start_e
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    :cond_a
    throw v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_5

    .line 133
    :catch_5
    move-exception v0

    .line 135
    const/4 v0, 0x3

    :try_start_f
    invoke-virtual {p0, v0}, Lcom/keniu/security/f/p;->c(I)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    .line 140
    invoke-virtual {p0}, Lcom/keniu/security/f/p;->j()I

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    :try_start_10
    invoke-static {}, Lcom/keniu/security/f/ab;->a()Lcom/keniu/security/f/ab;

    move-result-object v0

    .line 145
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Lcom/keniu/security/f/ab;->j()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 146
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_6

    goto/16 :goto_1

    .line 151
    :catch_6
    move-exception v0

    goto/16 :goto_1

    .line 140
    :catchall_1
    move-exception v0

    invoke-virtual {p0}, Lcom/keniu/security/f/p;->j()I

    move-result v1

    if-eqz v1, :cond_b

    .line 144
    :try_start_11
    invoke-static {}, Lcom/keniu/security/f/ab;->a()Lcom/keniu/security/f/ab;

    move-result-object v1

    .line 145
    new-instance v2, Ljava/io/File;

    invoke-virtual {v1}, Lcom/keniu/security/f/ab;->j()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 146
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 148
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_7

    .line 151
    :cond_b
    :goto_4
    throw v0

    :catch_7
    move-exception v1

    goto :goto_4

    .line 118
    :catchall_2
    move-exception v0

    move-object v1, v3

    goto :goto_3

    .line 151
    :catch_8
    move-exception v0

    goto/16 :goto_1
.end method

.method private c()Z
    .locals 3

    .prologue
    .line 158
    iget-object v0, p0, Lcom/keniu/security/f/p;->A:Lcom/keniu/security/f/h;

    if-eqz v0, :cond_0

    .line 160
    invoke-static {}, Lcom/keniu/security/f/ab;->a()Lcom/keniu/security/f/ab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/f/ab;->m()Ljava/lang/String;

    move-result-object v0

    .line 161
    iget-object v1, p0, Lcom/keniu/security/f/p;->A:Lcom/keniu/security/f/h;

    invoke-static {v1, v0}, Lcom/keniu/security/f/z;->a(Lcom/keniu/security/f/h;Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lcom/keniu/security/f/p;->a(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 163
    iget-object v1, p0, Lcom/keniu/security/f/p;->A:Lcom/keniu/security/f/h;

    const-string v2, "mosecurity.apk"

    invoke-static {v1, v2, v0}, Lcom/keniu/security/f/p;->a(Lcom/keniu/security/f/h;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    const/4 v0, 0x1

    .line 170
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a()Lcom/keniu/security/f/r;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/keniu/security/f/p;->C:Lcom/keniu/security/f/r;

    return-object v0
.end method

.method public final a(Lcom/keniu/security/f/h;Lcom/keniu/security/f/h;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 27
    iput-object p1, p0, Lcom/keniu/security/f/p;->A:Lcom/keniu/security/f/h;

    .line 28
    iput-object p2, p0, Lcom/keniu/security/f/p;->B:Lcom/keniu/security/f/h;

    .line 29
    return-void
.end method

.method public final run()V
    .locals 9

    .prologue
    const/4 v0, 0x3

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 34
    invoke-virtual {p0, v7}, Lcom/keniu/security/f/p;->c(I)V

    .line 35
    invoke-virtual {p0, v0}, Lcom/keniu/security/f/p;->d(I)V

    .line 36
    invoke-virtual {p0}, Lcom/keniu/security/f/p;->l()Z

    move-result v0

    if-nez v0, :cond_0

    .line 38
    :try_start_0
    iget-object v0, p0, Lcom/keniu/security/f/p;->A:Lcom/keniu/security/f/h;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/keniu/security/f/ab;->a()Lcom/keniu/security/f/ab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/f/ab;->m()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/keniu/security/f/p;->A:Lcom/keniu/security/f/h;

    invoke-static {v1, v0}, Lcom/keniu/security/f/z;->a(Lcom/keniu/security/f/h;Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lcom/keniu/security/f/p;->a(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/keniu/security/f/p;->A:Lcom/keniu/security/f/h;

    const-string v2, "mosecurity.apk"

    invoke-static {v1, v2, v0}, Lcom/keniu/security/f/p;->a(Lcom/keniu/security/f/h;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    move-result v0

    if-eqz v0, :cond_1

    move v0, v8

    :goto_0
    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/keniu/security/f/p;->j()I

    move-result v0

    if-eqz v0, :cond_0

    :try_start_1
    invoke-static {}, Lcom/keniu/security/f/ab;->a()Lcom/keniu/security/f/ab;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Lcom/keniu/security/f/ab;->j()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_8

    .line 40
    :cond_0
    :goto_1
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/keniu/security/f/p;->d(I)V

    .line 41
    return-void

    :cond_1
    move v0, v7

    .line 38
    goto :goto_0

    :cond_2
    :try_start_2
    invoke-static {}, Lcom/keniu/security/f/ab;->a()Lcom/keniu/security/f/ab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/f/ab;->i()Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/keniu/security/f/p;->c(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    invoke-virtual {p0}, Lcom/keniu/security/f/p;->j()I

    move-result v0

    if-eqz v0, :cond_0

    :try_start_3
    invoke-static {}, Lcom/keniu/security/f/ab;->a()Lcom/keniu/security/f/ab;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Lcom/keniu/security/f/ab;->j()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_3
    :try_start_4
    invoke-virtual {v0}, Lcom/keniu/security/f/ab;->m()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/keniu/security/f/p;->B:Lcom/keniu/security/f/h;

    const-string v3, "mosecurity.apk"

    invoke-static {v2, v3, v1}, Lcom/keniu/security/f/z;->a(Lcom/keniu/security/f/h;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/keniu/security/f/aa;

    invoke-direct {v2}, Lcom/keniu/security/f/aa;-><init>()V

    iget-object v3, p0, Lcom/keniu/security/f/p;->B:Lcom/keniu/security/f/h;

    invoke-virtual {v2, v3, v1}, Lcom/keniu/security/f/aa;->a(Lcom/keniu/security/f/h;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/keniu/security/f/p;->C:Lcom/keniu/security/f/r;

    iget v3, v2, Lcom/keniu/security/f/aa;->b:I

    iput v3, v1, Lcom/keniu/security/f/r;->a:I

    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/keniu/security/f/p;->d(I)V

    iget-object v1, p0, Lcom/keniu/security/f/p;->A:Lcom/keniu/security/f/h;

    const-string v3, "version"

    const-string v4, "mosecurity.apk"

    invoke-virtual {v1, v3, v4}, Lcom/keniu/security/f/h;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keniu/security/f/ab;->f(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v0, p0, Lcom/keniu/security/f/p;->C:Lcom/keniu/security/f/r;

    iget v1, v2, Lcom/keniu/security/f/aa;->b:I

    iput v1, v0, Lcom/keniu/security/f/r;->b:I

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/keniu/security/f/p;->d(I)V

    :cond_4
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/keniu/security/f/p;->d(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    invoke-virtual {p0}, Lcom/keniu/security/f/p;->j()I

    move-result v0

    if-eqz v0, :cond_0

    :try_start_5
    invoke-static {}, Lcom/keniu/security/f/ab;->a()Lcom/keniu/security/f/ab;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Lcom/keniu/security/f/ab;->j()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_1

    :catch_1
    move-exception v0

    goto/16 :goto_1

    :cond_5
    :try_start_6
    invoke-virtual {v2}, Lcom/keniu/security/f/aa;->b()I

    move-result v1

    invoke-static {}, Lcom/keniu/security/f/f;->e()J

    move-result-wide v3

    int-to-long v5, v1

    cmp-long v3, v3, v5

    if-gez v3, :cond_6

    invoke-static {}, Lcom/keniu/security/f/f;->g()J

    move-result-wide v3

    int-to-long v5, v1

    cmp-long v1, v3, v5

    if-ltz v1, :cond_7

    :cond_6
    move v1, v8

    :goto_2
    if-nez v1, :cond_8

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/keniu/security/f/p;->c(I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    invoke-virtual {p0}, Lcom/keniu/security/f/p;->j()I

    move-result v0

    if-eqz v0, :cond_0

    :try_start_7
    invoke-static {}, Lcom/keniu/security/f/ab;->a()Lcom/keniu/security/f/ab;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Lcom/keniu/security/f/ab;->j()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    goto/16 :goto_1

    :catch_2
    move-exception v0

    goto/16 :goto_1

    :cond_7
    move v1, v7

    goto :goto_2

    :cond_8
    const/4 v1, 0x0

    :try_start_8
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Lcom/keniu/security/f/ab;->j()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :try_start_9
    new-instance v1, Lcom/keniu/security/f/q;

    invoke-direct {v1, p0, v3}, Lcom/keniu/security/f/q;-><init>(Lcom/keniu/security/f/p;Ljava/io/FileOutputStream;)V

    const/4 v4, 0x5

    invoke-virtual {p0, v4}, Lcom/keniu/security/f/p;->d(I)V

    invoke-virtual {v0}, Lcom/keniu/security/f/ab;->b()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v2, v1}, Lcom/keniu/security/f/p;->a(Ljava/lang/String;Lcom/keniu/security/f/aa;Lcom/keniu/security/f/af;)I

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {p0, v1}, Lcom/keniu/security/f/p;->c(I)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :try_start_a
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_5

    invoke-virtual {p0}, Lcom/keniu/security/f/p;->j()I

    move-result v0

    if-eqz v0, :cond_0

    :try_start_b
    invoke-static {}, Lcom/keniu/security/f/ab;->a()Lcom/keniu/security/f/ab;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Lcom/keniu/security/f/ab;->j()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3

    goto/16 :goto_1

    :catch_3
    move-exception v0

    goto/16 :goto_1

    :cond_9
    :try_start_c
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    invoke-virtual {v0, v2}, Lcom/keniu/security/f/ab;->a(Lcom/keniu/security/f/aa;)Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/keniu/security/f/p;->c(I)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_5

    invoke-virtual {p0}, Lcom/keniu/security/f/p;->j()I

    move-result v0

    if-eqz v0, :cond_0

    :try_start_d
    invoke-static {}, Lcom/keniu/security/f/ab;->a()Lcom/keniu/security/f/ab;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Lcom/keniu/security/f/ab;->j()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_4

    goto/16 :goto_1

    :catch_4
    move-exception v0

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    :goto_3
    if-eqz v1, :cond_a

    :try_start_e
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    :cond_a
    throw v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_5

    :catch_5
    move-exception v0

    const/4 v0, 0x3

    :try_start_f
    invoke-virtual {p0, v0}, Lcom/keniu/security/f/p;->c(I)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    invoke-virtual {p0}, Lcom/keniu/security/f/p;->j()I

    move-result v0

    if-eqz v0, :cond_0

    :try_start_10
    invoke-static {}, Lcom/keniu/security/f/ab;->a()Lcom/keniu/security/f/ab;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Lcom/keniu/security/f/ab;->j()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_6

    goto/16 :goto_1

    :catch_6
    move-exception v0

    goto/16 :goto_1

    :catchall_1
    move-exception v0

    invoke-virtual {p0}, Lcom/keniu/security/f/p;->j()I

    move-result v1

    if-eqz v1, :cond_b

    :try_start_11
    invoke-static {}, Lcom/keniu/security/f/ab;->a()Lcom/keniu/security/f/ab;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-virtual {v1}, Lcom/keniu/security/f/ab;->j()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_7

    :cond_b
    :goto_4
    throw v0

    :catch_7
    move-exception v1

    goto :goto_4

    :catchall_2
    move-exception v0

    move-object v1, v3

    goto :goto_3

    :catch_8
    move-exception v0

    goto/16 :goto_1
.end method
