.class public final Lcom/keniu/security/sync/d/c/a;
.super Ljava/lang/Object;
.source "TAppManager.java"


# static fields
.field private static final a:Ljava/lang/String; = "TpanServ.AppManager"


# instance fields
.field private b:Lcom/keniu/security/sync/d/a/a;

.field private c:Lcom/keniu/security/sync/d/a/b;

.field private d:Lcom/keniu/security/sync/d/a/c;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Lcom/keniu/security/sync/d/c/b;

    invoke-direct {v0, p0}, Lcom/keniu/security/sync/d/c/b;-><init>(Lcom/keniu/security/sync/d/c/a;)V

    iput-object v0, p0, Lcom/keniu/security/sync/d/c/a;->d:Lcom/keniu/security/sync/d/a/c;

    .line 34
    new-instance v0, Lcom/keniu/security/sync/d/a/a;

    invoke-direct {v0}, Lcom/keniu/security/sync/d/a/a;-><init>()V

    iput-object v0, p0, Lcom/keniu/security/sync/d/c/a;->b:Lcom/keniu/security/sync/d/a/a;

    .line 35
    new-instance v0, Lcom/keniu/security/sync/d/a/b;

    invoke-direct {v0}, Lcom/keniu/security/sync/d/a/b;-><init>()V

    iput-object v0, p0, Lcom/keniu/security/sync/d/c/a;->c:Lcom/keniu/security/sync/d/a/b;

    .line 36
    return-void
.end method

.method public static a(Lcom/keniu/security/sync/d/d/a/cf;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 295
    if-eqz p0, :cond_0

    .line 296
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/cf;->n()Lcom/keniu/security/sync/d/d/a/gj;

    move-result-object v0

    .line 297
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/gj;->k()Ljava/lang/String;

    move-result-object v0

    .line 299
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Lcom/keniu/security/sync/d/d/a/cf;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 303
    if-eqz p0, :cond_1

    .line 304
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/cf;->p()Ljava/util/List;

    move-result-object v0

    .line 305
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/gj;

    .line 306
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/gj;->q()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 307
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/gj;->k()Ljava/lang/String;

    move-result-object v0

    .line 311
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x0

    const/4 v7, -0x1

    .line 57
    const/4 v0, 0x0

    .line 59
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 61
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 62
    const/4 v2, 0x5

    invoke-virtual {v1, v2, v7}, Ljava/util/Calendar;->add(II)V

    .line 63
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyyMMddHHmmss"

    invoke-direct {v2, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 64
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 65
    if-lez p4, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "__"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 66
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "_"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 70
    :try_start_0
    iget-object v1, p0, Lcom/keniu/security/sync/d/c/a;->b:Lcom/keniu/security/sync/d/a/a;

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v1

    invoke-static {p1, p2, v4, v1, v2}, Lcom/keniu/security/sync/d/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Lcom/keniu/security/sync/d/d/a/dx;
    :try_end_0
    .catch Lcom/keniu/security/sync/d/e/d; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    move-object v9, v1

    move v1, v0

    move-object v0, v9

    .line 79
    :goto_0
    if-eqz v1, :cond_2

    move v0, v1

    .line 154
    :cond_1
    :goto_1
    return v0

    .line 71
    :catch_0
    move-exception v0

    .line 72
    const-string v1, "TpanServ.AppManager"

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/e/d;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 73
    invoke-virtual {v0}, Lcom/keniu/security/sync/d/e/d;->a()I

    move-result v0

    move v1, v0

    move-object v0, v8

    .line 77
    goto :goto_0

    .line 74
    :catch_1
    move-exception v0

    .line 75
    const-string v1, "TpanServ.AppManager"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v8

    move v1, v7

    .line 76
    goto :goto_0

    .line 83
    :cond_2
    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/dx;->k()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v2

    invoke-virtual {v2}, Lcom/keniu/security/sync/d/d/a/ge;->k()I

    move-result v2

    .line 84
    if-eqz v2, :cond_3

    move v0, v2

    .line 85
    goto :goto_1

    .line 88
    :cond_3
    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/dx;->p()Lcom/keniu/security/sync/d/d/a/gn;

    move-result-object v2

    .line 92
    :try_start_1
    iget-object v0, p0, Lcom/keniu/security/sync/d/c/a;->c:Lcom/keniu/security/sync/d/a/b;

    invoke-static {v2}, Lcom/keniu/security/sync/d/a/b;->a(Lcom/keniu/security/sync/d/d/a/gn;)Lcom/keniu/security/sync/d/d/a/hm;
    :try_end_1
    .catch Lcom/keniu/security/sync/d/e/d; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v0

    move v6, v1

    move-object v1, v0

    .line 101
    :goto_2
    if-eqz v6, :cond_4

    move v0, v6

    .line 102
    goto :goto_1

    .line 93
    :catch_2
    move-exception v0

    .line 94
    const-string v1, "TpanServ.AppManager"

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/e/d;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 95
    invoke-virtual {v0}, Lcom/keniu/security/sync/d/e/d;->a()I

    move-result v0

    move-object v1, v8

    move v6, v0

    .line 99
    goto :goto_2

    .line 96
    :catch_3
    move-exception v0

    .line 97
    const-string v1, "TpanServ.AppManager"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v1, v8

    move v6, v7

    .line 98
    goto :goto_2

    .line 104
    :cond_4
    invoke-virtual {v1}, Lcom/keniu/security/sync/d/d/a/hm;->k()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/ge;->k()I

    move-result v0

    .line 105
    if-nez v0, :cond_1

    .line 112
    :try_start_2
    iget-object v0, p0, Lcom/keniu/security/sync/d/c/a;->c:Lcom/keniu/security/sync/d/a/b;

    invoke-virtual {v1}, Lcom/keniu/security/sync/d/d/a/hm;->p()I

    move-result v1

    iget-object v5, p0, Lcom/keniu/security/sync/d/c/a;->d:Lcom/keniu/security/sync/d/a/c;

    invoke-virtual/range {v0 .. v5}, Lcom/keniu/security/sync/d/a/b;->a(ILcom/keniu/security/sync/d/d/a/gn;Ljava/io/File;Ljava/lang/String;Lcom/keniu/security/sync/d/a/c;)Lcom/keniu/security/sync/d/d/a/ie;
    :try_end_2
    .catch Lcom/keniu/security/sync/d/e/d; {:try_start_2 .. :try_end_2} :catch_4
    .catch Lcom/keniu/security/sync/d/e/e; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_7

    move-result-object v0

    move v1, v6

    .line 127
    :goto_3
    if-eqz v1, :cond_5

    move v0, v1

    .line 128
    goto :goto_1

    .line 113
    :catch_4
    move-exception v0

    .line 114
    const-string v1, "TpanServ.AppManager"

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/e/d;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 115
    invoke-virtual {v0}, Lcom/keniu/security/sync/d/e/d;->a()I

    move-result v0

    move v1, v0

    move-object v0, v8

    .line 125
    goto :goto_3

    .line 116
    :catch_5
    move-exception v0

    .line 117
    const-string v1, "TpanServ.AppManager"

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/e/e;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 118
    invoke-virtual {v0}, Lcom/keniu/security/sync/d/e/e;->a()I

    move-result v0

    move v1, v0

    move-object v0, v8

    .line 125
    goto :goto_3

    .line 119
    :catch_6
    move-exception v0

    .line 120
    const-string v1, "TpanServ.AppManager"

    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 121
    const/4 v0, -0x3

    move v1, v0

    move-object v0, v8

    .line 125
    goto :goto_3

    .line 122
    :catch_7
    move-exception v0

    .line 123
    const-string v1, "TpanServ.AppManager"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v8

    move v1, v7

    .line 124
    goto :goto_3

    .line 131
    :cond_5
    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/ie;->k()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v2

    invoke-virtual {v2}, Lcom/keniu/security/sync/d/d/a/ge;->k()I

    move-result v2

    .line 132
    if-eqz v2, :cond_6

    move v0, v2

    .line 133
    goto/16 :goto_1

    .line 136
    :cond_6
    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/ie;->n()Lcom/keniu/security/sync/d/d/a/gn;

    move-result-object v0

    .line 139
    :try_start_3
    iget-object v2, p0, Lcom/keniu/security/sync/d/c/a;->b:Lcom/keniu/security/sync/d/a/a;

    invoke-static {v0, p1, v4}, Lcom/keniu/security/sync/d/a/a;->a(Lcom/keniu/security/sync/d/d/a/gn;Ljava/lang/String;Ljava/lang/String;)Lcom/keniu/security/sync/d/d/a/r;
    :try_end_3
    .catch Lcom/keniu/security/sync/d/e/d; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_9

    move-result-object v0

    move v9, v1

    move-object v1, v0

    move v0, v9

    .line 148
    :goto_4
    if-nez v0, :cond_1

    .line 152
    invoke-virtual {v1}, Lcom/keniu/security/sync/d/d/a/r;->k()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/ge;->k()I

    move-result v0

    goto/16 :goto_1

    .line 140
    :catch_8
    move-exception v0

    .line 141
    const-string v1, "TpanServ.AppManager"

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/e/d;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 142
    invoke-virtual {v0}, Lcom/keniu/security/sync/d/e/d;->a()I

    move-result v0

    move-object v1, v8

    .line 146
    goto :goto_4

    .line 143
    :catch_9
    move-exception v0

    .line 144
    const-string v1, "TpanServ.AppManager"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v7

    move-object v1, v8

    .line 145
    goto :goto_4
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x0

    const/4 v6, 0x0

    const/4 v7, -0x1

    .line 172
    .line 174
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 175
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 179
    :try_start_0
    const-string v1, ">>>>> open read"

    invoke-static {p0, v1}, Lcom/keniu/security/sync/i;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 180
    iget-object v1, p0, Lcom/keniu/security/sync/d/c/a;->b:Lcom/keniu/security/sync/d/a/a;

    invoke-virtual {v1, p1, p2, v0, p4}, Lcom/keniu/security/sync/d/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/keniu/security/sync/d/d/a/cx;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/keniu/security/sync/d/e/d; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v1

    move v2, v6

    .line 192
    :goto_0
    if-eqz v2, :cond_1

    move v0, v2

    .line 251
    :cond_0
    :goto_1
    return v0

    .line 181
    :catch_0
    move-exception v1

    .line 182
    const-string v2, "TpanServ.AppManager"

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v1, v8

    move v2, v7

    .line 190
    goto :goto_0

    .line 184
    :catch_1
    move-exception v1

    .line 185
    const-string v2, "TpanServ.AppManager"

    invoke-virtual {v1}, Lcom/keniu/security/sync/d/e/d;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 186
    invoke-virtual {v1}, Lcom/keniu/security/sync/d/e/d;->a()I

    move-result v1

    move v2, v1

    move-object v1, v8

    .line 190
    goto :goto_0

    .line 187
    :catch_2
    move-exception v1

    .line 188
    const-string v2, "TpanServ.AppManager"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v1, v8

    move v2, v7

    .line 189
    goto :goto_0

    .line 195
    :cond_1
    invoke-virtual {v1}, Lcom/keniu/security/sync/d/d/a/cx;->k()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v3

    invoke-virtual {v3}, Lcom/keniu/security/sync/d/d/a/ge;->k()I

    move-result v3

    .line 196
    if-eqz v3, :cond_2

    move v0, v3

    .line 197
    goto :goto_1

    .line 201
    :cond_2
    invoke-virtual {v1}, Lcom/keniu/security/sync/d/d/a/cx;->n()Lcom/keniu/security/sync/d/d/a/gn;

    move-result-object v4

    .line 205
    :try_start_1
    invoke-virtual {v4}, Lcom/keniu/security/sync/d/d/a/gn;->q()I

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v1}, Lcom/keniu/security/sync/d/d/a/cx;->q()I
    :try_end_1
    .catch Lcom/keniu/security/sync/d/e/d; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lcom/keniu/security/sync/d/e/e; {:try_start_1 .. :try_end_1} :catch_4
    .catch Lcom/keniu/security/sync/d/b/a; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6

    move-result v5

    if-lez v5, :cond_3

    .line 206
    const/4 v5, 0x1

    .line 207
    :try_start_2
    iget-object v6, p0, Lcom/keniu/security/sync/d/c/a;->c:Lcom/keniu/security/sync/d/a/b;

    invoke-virtual {v1}, Lcom/keniu/security/sync/d/d/a/cx;->p()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v6, v1, p3}, Lcom/keniu/security/sync/d/a/b;->a(Ljava/util/List;Ljava/lang/String;)Lcom/keniu/security/sync/d/d/a/hs;
    :try_end_2
    .catch Lcom/keniu/security/sync/d/e/d; {:try_start_2 .. :try_end_2} :catch_c
    .catch Lcom/keniu/security/sync/d/e/e; {:try_start_2 .. :try_end_2} :catch_b
    .catch Lcom/keniu/security/sync/d/b/a; {:try_start_2 .. :try_end_2} :catch_a
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_9

    move v1, v2

    move v2, v5

    .line 229
    :goto_2
    if-eqz v1, :cond_4

    move v0, v1

    .line 230
    goto :goto_1

    .line 210
    :cond_3
    :try_start_3
    iget-object v1, p0, Lcom/keniu/security/sync/d/c/a;->c:Lcom/keniu/security/sync/d/a/b;

    invoke-virtual {v1, v4, p3}, Lcom/keniu/security/sync/d/a/b;->a(Lcom/keniu/security/sync/d/d/a/gn;Ljava/lang/String;)Lcom/keniu/security/sync/d/d/a/hs;
    :try_end_3
    .catch Lcom/keniu/security/sync/d/e/d; {:try_start_3 .. :try_end_3} :catch_3
    .catch Lcom/keniu/security/sync/d/e/e; {:try_start_3 .. :try_end_3} :catch_4
    .catch Lcom/keniu/security/sync/d/b/a; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6

    move v1, v2

    move v2, v6

    .line 227
    goto :goto_2

    .line 215
    :catch_3
    move-exception v1

    move v2, v6

    .line 216
    :goto_3
    const-string v5, "TpanServ.AppManager"

    invoke-virtual {v1}, Lcom/keniu/security/sync/d/e/d;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 217
    invoke-virtual {v1}, Lcom/keniu/security/sync/d/e/d;->a()I

    move-result v1

    goto :goto_2

    .line 218
    :catch_4
    move-exception v1

    move v2, v6

    .line 219
    :goto_4
    const-string v5, "TpanServ.AppManager"

    invoke-virtual {v1}, Lcom/keniu/security/sync/d/e/e;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 220
    invoke-virtual {v1}, Lcom/keniu/security/sync/d/e/e;->a()I

    move-result v1

    goto :goto_2

    .line 221
    :catch_5
    move-exception v1

    move v2, v6

    .line 222
    :goto_5
    const-string v5, "TpanServ.AppManager"

    invoke-virtual {v1}, Lcom/keniu/security/sync/d/b/a;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 223
    invoke-static {}, Lcom/keniu/security/sync/d/b/a;->a()I

    move-result v1

    goto :goto_2

    .line 224
    :catch_6
    move-exception v1

    move v2, v6

    .line 225
    :goto_6
    const-string v5, "TpanServ.AppManager"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v1, v7

    .line 226
    goto :goto_2

    .line 233
    :cond_4
    if-nez v2, :cond_5

    .line 236
    :try_start_4
    iget-object v2, p0, Lcom/keniu/security/sync/d/c/a;->b:Lcom/keniu/security/sync/d/a/a;

    invoke-static {v4, p1, v0}, Lcom/keniu/security/sync/d/a/a;->a(Lcom/keniu/security/sync/d/d/a/gn;Ljava/lang/String;Ljava/lang/String;)Lcom/keniu/security/sync/d/d/a/r;
    :try_end_4
    .catch Lcom/keniu/security/sync/d/e/d; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_8

    move-result-object v0

    move v9, v1

    move-object v1, v0

    move v0, v9

    .line 245
    :goto_7
    if-nez v0, :cond_0

    .line 249
    invoke-virtual {v1}, Lcom/keniu/security/sync/d/d/a/r;->k()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/ge;->k()I

    move-result v0

    goto/16 :goto_1

    .line 237
    :catch_7
    move-exception v0

    .line 238
    const-string v1, "TpanServ.AppManager"

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/e/d;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 239
    invoke-virtual {v0}, Lcom/keniu/security/sync/d/e/d;->a()I

    move-result v0

    move-object v1, v8

    .line 243
    goto :goto_7

    .line 240
    :catch_8
    move-exception v0

    .line 241
    const-string v1, "TpanServ.AppManager"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v7

    move-object v1, v8

    .line 242
    goto :goto_7

    .line 224
    :catch_9
    move-exception v1

    move v2, v5

    goto :goto_6

    .line 221
    :catch_a
    move-exception v1

    move v2, v5

    goto :goto_5

    .line 218
    :catch_b
    move-exception v1

    move v2, v5

    goto :goto_4

    .line 215
    :catch_c
    move-exception v1

    move v2, v5

    goto :goto_3

    :cond_5
    move v0, v3

    goto/16 :goto_1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)Lcom/keniu/security/sync/d/d/a/cf;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 284
    :try_start_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/c/a;->b:Lcom/keniu/security/sync/d/a/a;

    invoke-static {p1, p2}, Lcom/keniu/security/sync/d/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/keniu/security/sync/d/d/a/cf;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ExceptionInInitializerError; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 290
    :goto_0
    return-object v0

    .line 285
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 290
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 319
    .line 320
    :try_start_0
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 323
    iget-object v2, p0, Lcom/keniu/security/sync/d/c/a;->b:Lcom/keniu/security/sync/d/a/a;

    invoke-static {p1, p2, p3, v0, v1}, Lcom/keniu/security/sync/d/a/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Lcom/keniu/security/sync/d/d/a/cl;
    :try_end_0
    .catch Lcom/keniu/security/sync/d/e/d; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 324
    :try_start_1
    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/cl;->k()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v1

    invoke-virtual {v1}, Lcom/keniu/security/sync/d/d/a/ge;->k()I
    :try_end_1
    .catch Lcom/keniu/security/sync/d/e/d; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result v1

    .line 332
    :goto_0
    if-eqz v1, :cond_0

    move-object v0, v4

    .line 338
    :goto_1
    return-object v0

    .line 325
    :catch_0
    move-exception v0

    move-object v1, v4

    .line 326
    :goto_2
    const-string v2, "TpanServ.AppManager"

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/e/d;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 327
    invoke-virtual {v0}, Lcom/keniu/security/sync/d/e/d;->a()I

    move-result v0

    move-object v5, v1

    move v1, v0

    move-object v0, v5

    .line 331
    goto :goto_0

    .line 328
    :catch_1
    move-exception v0

    move-object v1, v4

    .line 329
    :goto_3
    const-string v2, "TpanServ.AppManager"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 330
    const/4 v0, -0x1

    move-object v5, v1

    move v1, v0

    move-object v0, v5

    goto :goto_0

    .line 336
    :cond_0
    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/cl;->n()Lcom/keniu/security/sync/d/d/a/gj;

    move-result-object v0

    .line 337
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/gj;->k()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    move-object v0, v4

    .line 338
    goto :goto_1

    .line 328
    :catch_2
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_3

    .line 325
    :catch_3
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_2
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 345
    const/4 v0, 0x0

    .line 347
    :try_start_0
    iget-object v1, p0, Lcom/keniu/security/sync/d/c/a;->b:Lcom/keniu/security/sync/d/a/a;

    invoke-static {p1, p2}, Lcom/keniu/security/sync/d/a/a;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/keniu/security/sync/d/d/a/ad;

    move-result-object v1

    .line 350
    invoke-virtual {v1}, Lcom/keniu/security/sync/d/d/a/ad;->k()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v1

    invoke-virtual {v1}, Lcom/keniu/security/sync/d/d/a/ge;->k()I
    :try_end_0
    .catch Lcom/keniu/security/sync/d/e/d; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 351
    if-eqz v1, :cond_0

    move v0, v1

    .line 363
    :cond_0
    :goto_0
    return v0

    .line 354
    :catch_0
    move-exception v0

    .line 355
    const-string v1, "TpanServ.AppManager"

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/e/d;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 356
    invoke-virtual {v0}, Lcom/keniu/security/sync/d/e/d;->a()I

    move-result v0

    goto :goto_0

    .line 357
    :catch_1
    move-exception v0

    .line 358
    const-string v1, "TpanServ.AppManager"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 359
    const/4 v0, -0x1

    goto :goto_0
.end method
