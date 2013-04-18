.class public final Lcom/keniu/security/a/f;
.super Ljava/lang/Object;
.source "AppScanner.java"


# instance fields
.field a:Ljava/util/ArrayList;

.field b:Ljava/util/ArrayList;

.field c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const-string v0, "ss"

    iput-object v0, p0, Lcom/keniu/security/a/f;->c:Ljava/lang/String;

    .line 29
    return-void
.end method

.method private static a()Lcom/keniu/security/a/f;
    .locals 1

    .prologue
    .line 23
    new-instance v0, Lcom/keniu/security/a/f;

    invoke-direct {v0}, Lcom/keniu/security/a/f;-><init>()V

    return-object v0
.end method

.method public static b(Landroid/content/pm/ApplicationInfo;)Ljava/util/ArrayList;
    .locals 5
    .parameter

    .prologue
    .line 129
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 130
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 131
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 134
    :try_start_0
    new-instance v2, Ljava/util/zip/ZipFile;

    invoke-direct {v2, v1}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    .line 135
    const-string v1, "AndroidManifest.xml"

    invoke-virtual {v2, v1}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v1

    .line 136
    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-virtual {v2, v1}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 137
    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v1

    long-to-int v1, v1

    invoke-virtual {v3, v1}, Ljava/io/InputStream;->mark(I)V

    .line 138
    new-instance v1, Lcom/keniu/security/a/b;

    invoke-direct {v1, v3}, Lcom/keniu/security/a/b;-><init>(Ljava/io/InputStream;)V

    .line 139
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1}, Lcom/keniu/security/a/b;->a()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 140
    invoke-virtual {v1, v2}, Lcom/keniu/security/a/b;->a(I)Ljava/lang/String;

    move-result-object v4

    .line 141
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/keniu/security/a/r;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 139
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 144
    :cond_0
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    :goto_1
    return-object v0

    .line 145
    :catch_0
    move-exception v1

    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 150
    :catchall_0
    move-exception v0

    throw v0
.end method

.method public static c(Landroid/content/pm/ApplicationInfo;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 156
    invoke-static {p0}, Lcom/keniu/security/a/k;->a(Landroid/content/pm/ApplicationInfo;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/content/pm/ApplicationInfo;)Z
    .locals 13
    .parameter

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 86
    new-instance v1, Lcom/keniu/security/a/h;

    invoke-direct {v1, p0}, Lcom/keniu/security/a/h;-><init>(Lcom/keniu/security/a/f;)V

    move v2, v9

    .line 87
    :goto_0
    sget-object v0, Lcom/keniu/security/a/a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_e

    move v3, v9

    .line 88
    :goto_1
    sget-object v0, Lcom/keniu/security/a/a;->b:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keniu/security/a/e;

    invoke-virtual {v0}, Lcom/keniu/security/a/e;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_d

    move v4, v9

    move v5, v10

    move v6, v9

    .line 92
    :goto_2
    sget-object v0, Lcom/keniu/security/a/a;->b:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keniu/security/a/e;

    invoke-virtual {v0}, Lcom/keniu/security/a/e;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    sget-object v0, Lcom/keniu/security/a/a;->b:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keniu/security/a/e;

    invoke-virtual {v0}, Lcom/keniu/security/a/e;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    div-int v0, v7, v0

    if-ge v4, v0, :cond_b

    .line 95
    sget-object v0, Lcom/keniu/security/a/a;->b:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keniu/security/a/e;

    invoke-virtual {v0}, Lcom/keniu/security/a/e;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keniu/security/a/p;

    invoke-virtual {v0}, Lcom/keniu/security/a/p;->a()I

    move-result v0

    if-ne v0, v10, :cond_5

    .line 97
    sget-object v0, Lcom/keniu/security/a/a;->b:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keniu/security/a/e;

    invoke-virtual {v0}, Lcom/keniu/security/a/e;->b()Ljava/util/List;

    move-result-object v0

    mul-int/lit8 v7, v3, 0x2

    add-int/2addr v7, v4

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keniu/security/a/p;

    invoke-virtual {v0}, Lcom/keniu/security/a/p;->b()Ljava/lang/String;

    move-result-object v7

    iget-object v0, v1, Lcom/keniu/security/a/h;->a:Lcom/keniu/security/a/f;

    iget-object v0, v0, Lcom/keniu/security/a/f;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, v1, Lcom/keniu/security/a/h;->a:Lcom/keniu/security/a/f;

    iget-object v0, v0, Lcom/keniu/security/a/f;->c:Ljava/lang/String;

    iget-object v8, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/keniu/security/a/s;->b()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v1, Lcom/keniu/security/a/h;->a:Lcom/keniu/security/a/f;

    invoke-static {}, Lcom/keniu/security/a/s;->b()Ljava/util/ArrayList;

    move-result-object v8

    iput-object v8, v0, Lcom/keniu/security/a/f;->a:Ljava/util/ArrayList;

    :cond_0
    :goto_3
    iget-object v0, v1, Lcom/keniu/security/a/h;->a:Lcom/keniu/security/a/f;

    iget-object v0, v0, Lcom/keniu/security/a/f;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v10

    :goto_4
    if-eqz v0, :cond_4

    .line 99
    add-int/lit8 v0, v6, 0x1

    move v12, v5

    move v5, v0

    move v0, v12

    .line 94
    :goto_5
    add-int/lit8 v4, v4, 0x1

    move v6, v5

    move v5, v0

    goto/16 :goto_2

    .line 97
    :cond_2
    iget-object v0, v1, Lcom/keniu/security/a/h;->a:Lcom/keniu/security/a/f;

    iget-object v8, v1, Lcom/keniu/security/a/h;->a:Lcom/keniu/security/a/f;

    invoke-static {p1}, Lcom/keniu/security/a/f;->b(Landroid/content/pm/ApplicationInfo;)Ljava/util/ArrayList;

    move-result-object v8

    iput-object v8, v0, Lcom/keniu/security/a/f;->a:Ljava/util/ArrayList;

    iget-object v0, v1, Lcom/keniu/security/a/h;->a:Lcom/keniu/security/a/f;

    iget-object v0, v0, Lcom/keniu/security/a/f;->a:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/keniu/security/a/s;->a(Ljava/util/ArrayList;)V

    goto :goto_3

    :cond_3
    move v0, v9

    goto :goto_4

    :cond_4
    move v0, v9

    move v5, v6

    .line 102
    goto :goto_5

    .line 103
    :cond_5
    if-ne v5, v10, :cond_f

    sget-object v0, Lcom/keniu/security/a/a;->b:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keniu/security/a/e;

    invoke-virtual {v0}, Lcom/keniu/security/a/e;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keniu/security/a/p;

    invoke-virtual {v0}, Lcom/keniu/security/a/p;->a()I

    move-result v0

    if-ne v0, v11, :cond_f

    .line 105
    invoke-static {}, Lcom/keniu/security/a/s;->a()Ljava/util/HashMap;

    move-result-object v0

    iget-object v7, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 107
    add-int/lit8 v0, v6, 0x1

    move v12, v5

    move v5, v0

    move v0, v12

    .line 108
    goto :goto_5

    .line 110
    :cond_6
    sget-object v0, Lcom/keniu/security/a/a;->b:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keniu/security/a/e;

    invoke-virtual {v0}, Lcom/keniu/security/a/e;->b()Ljava/util/List;

    move-result-object v0

    mul-int/lit8 v7, v3, 0x2

    add-int/2addr v7, v4

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keniu/security/a/p;

    invoke-virtual {v0}, Lcom/keniu/security/a/p;->b()Ljava/lang/String;

    move-result-object v7

    iget-object v0, v1, Lcom/keniu/security/a/h;->a:Lcom/keniu/security/a/f;

    iget-object v0, v0, Lcom/keniu/security/a/f;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_7

    iget-object v0, v1, Lcom/keniu/security/a/h;->a:Lcom/keniu/security/a/f;

    iget-object v0, v0, Lcom/keniu/security/a/f;->c:Ljava/lang/String;

    iget-object v8, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {}, Lcom/keniu/security/a/s;->c()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, v1, Lcom/keniu/security/a/h;->a:Lcom/keniu/security/a/f;

    invoke-static {}, Lcom/keniu/security/a/s;->c()Ljava/util/ArrayList;

    move-result-object v8

    iput-object v8, v0, Lcom/keniu/security/a/f;->b:Ljava/util/ArrayList;

    :cond_7
    :goto_6
    iget-object v0, v1, Lcom/keniu/security/a/h;->a:Lcom/keniu/security/a/f;

    iget-object v0, v0, Lcom/keniu/security/a/f;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_8
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    move v0, v10

    :goto_7
    if-eqz v0, :cond_f

    .line 113
    add-int/lit8 v0, v6, 0x1

    move v12, v5

    move v5, v0

    move v0, v12

    goto/16 :goto_5

    .line 110
    :cond_9
    iget-object v0, v1, Lcom/keniu/security/a/h;->a:Lcom/keniu/security/a/f;

    iget-object v8, v1, Lcom/keniu/security/a/h;->a:Lcom/keniu/security/a/f;

    invoke-static {p1}, Lcom/keniu/security/a/k;->a(Landroid/content/pm/ApplicationInfo;)Ljava/util/ArrayList;

    move-result-object v8

    iput-object v8, v0, Lcom/keniu/security/a/f;->b:Ljava/util/ArrayList;

    iget-object v0, v1, Lcom/keniu/security/a/h;->a:Lcom/keniu/security/a/f;

    iget-object v0, v0, Lcom/keniu/security/a/f;->b:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/keniu/security/a/s;->b(Ljava/util/ArrayList;)V

    goto :goto_6

    :cond_a
    move v0, v9

    goto :goto_7

    .line 118
    :cond_b
    if-ne v6, v11, :cond_c

    .line 119
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/keniu/security/a/f;->c:Ljava/lang/String;

    move v0, v10

    .line 125
    :goto_8
    return v0

    .line 89
    :cond_c
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto/16 :goto_1

    .line 87
    :cond_d
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_0

    .line 124
    :cond_e
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/keniu/security/a/f;->c:Ljava/lang/String;

    move v0, v9

    .line 125
    goto :goto_8

    :cond_f
    move v0, v5

    move v5, v6

    goto/16 :goto_5
.end method
