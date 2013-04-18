.class public final Lcom/keniu/security/sync/d/a/a;
.super Ljava/lang/Object;
.source "AppAction.java"


# static fields
.field private static final a:Ljava/lang/String; = "http://app.cloud3.1tpan.com/3"

.field private static final b:Ljava/lang/String; = "/list"

.field private static final c:Ljava/lang/String; = "/getspace"

.field private static final d:Ljava/lang/String; = "/info"

.field private static final e:Ljava/lang/String; = "/openread"

.field private static final f:Ljava/lang/String; = "/openwrite"

.field private static final g:Ljava/lang/String; = "/closefile"

.field private static final h:Ljava/lang/String; = "/delete"

.field private static final i:Ljava/lang/String; = "/mkdir"

.field private static final j:Ljava/lang/String; = "/openthumbs"

.field private static final k:Ljava/lang/String; = "/"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method

.method private static a(Ljava/lang/String;)Lcom/keniu/security/sync/d/d/a/bb;
    .locals 4
    .parameter

    .prologue
    .line 85
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ay;->l()Lcom/keniu/security/sync/d/d/a/az;

    move-result-object v0

    .line 86
    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/az;->a(Ljava/lang/String;)Lcom/keniu/security/sync/d/d/a/az;

    .line 88
    const/4 v1, 0x0

    .line 89
    :try_start_0
    new-instance v2, Lcom/keniu/security/sync/d/e/a;

    const-string v3, "http://app.cloud3.1tpan.com/3/getspace"

    invoke-direct {v2, v3}, Lcom/keniu/security/sync/d/e/a;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    :try_start_1
    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/az;->i()Lcom/keniu/security/sync/d/d/a/ay;

    move-result-object v0

    invoke-virtual {v2}, Lcom/keniu/security/sync/d/e/a;->b()Ljava/io/OutputStream;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keniu/security/sync/d/d/a/ay;->a(Ljava/io/OutputStream;)V

    .line 93
    invoke-virtual {v2}, Lcom/keniu/security/sync/d/e/a;->c()Ljava/io/InputStream;

    move-result-object v0

    .line 95
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/bb;->a(Ljava/io/InputStream;)Lcom/keniu/security/sync/d/d/a/bb;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 97
    invoke-static {v2}, Lcom/keniu/security/sync/d/a/a;->a(Lcom/keniu/security/sync/d/e/a;)Lcom/keniu/security/sync/d/e/a;

    .line 100
    return-object v0

    .line 97
    :catchall_0
    move-exception v0

    :goto_0
    invoke-static {v1}, Lcom/keniu/security/sync/d/a/a;->a(Lcom/keniu/security/sync/d/e/a;)Lcom/keniu/security/sync/d/e/a;

    throw v0

    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;J)Lcom/keniu/security/sync/d/d/a/bn;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 112
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/bk;->r()Lcom/keniu/security/sync/d/d/a/bl;

    move-result-object v0

    .line 113
    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/bl;->a(Ljava/lang/String;)Lcom/keniu/security/sync/d/d/a/bl;

    .line 114
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/keniu/security/sync/d/d/a/bl;->a(I)Lcom/keniu/security/sync/d/d/a/bl;

    .line 115
    if-eqz p1, :cond_1

    .line 116
    invoke-virtual {v0, p1}, Lcom/keniu/security/sync/d/d/a/bl;->b(Ljava/lang/String;)Lcom/keniu/security/sync/d/d/a/bl;

    .line 120
    :goto_0
    const-wide/16 v1, 0x0

    cmp-long v1, p2, v1

    if-lez v1, :cond_0

    .line 121
    invoke-virtual {v0, p2, p3}, Lcom/keniu/security/sync/d/d/a/bl;->a(J)Lcom/keniu/security/sync/d/d/a/bl;

    .line 124
    :cond_0
    const/4 v1, 0x0

    .line 125
    :try_start_0
    new-instance v2, Lcom/keniu/security/sync/d/e/a;

    const-string v3, "http://app.cloud3.1tpan.com/3/info"

    invoke-direct {v2, v3}, Lcom/keniu/security/sync/d/e/a;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    :try_start_1
    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/bl;->i()Lcom/keniu/security/sync/d/d/a/bk;

    move-result-object v0

    invoke-virtual {v2}, Lcom/keniu/security/sync/d/e/a;->b()Ljava/io/OutputStream;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keniu/security/sync/d/d/a/bk;->a(Ljava/io/OutputStream;)V

    .line 129
    invoke-virtual {v2}, Lcom/keniu/security/sync/d/e/a;->c()Ljava/io/InputStream;

    move-result-object v0

    .line 131
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/bn;->a(Ljava/io/InputStream;)Lcom/keniu/security/sync/d/d/a/bn;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 133
    invoke-static {v2}, Lcom/keniu/security/sync/d/a/a;->a(Lcom/keniu/security/sync/d/e/a;)Lcom/keniu/security/sync/d/e/a;

    .line 135
    return-object v0

    .line 118
    :cond_1
    const-string v1, "/"

    invoke-virtual {v0, v1}, Lcom/keniu/security/sync/d/d/a/bl;->b(Ljava/lang/String;)Lcom/keniu/security/sync/d/d/a/bl;

    goto :goto_0

    .line 133
    :catchall_0
    move-exception v0

    :goto_1
    invoke-static {v1}, Lcom/keniu/security/sync/d/a/a;->a(Lcom/keniu/security/sync/d/e/a;)Lcom/keniu/security/sync/d/e/a;

    throw v0

    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_1
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Lcom/keniu/security/sync/d/d/a/cf;
    .locals 5
    .parameter
    .parameter

    .prologue
    const-wide/16 v3, -0x1

    const/4 v1, 0x0

    .line 49
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/cc;->t()Lcom/keniu/security/sync/d/d/a/cd;

    move-result-object v0

    .line 50
    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/cd;->a(Ljava/lang/String;)Lcom/keniu/security/sync/d/d/a/cd;

    .line 51
    invoke-virtual {v0, v1}, Lcom/keniu/security/sync/d/d/a/cd;->a(I)Lcom/keniu/security/sync/d/d/a/cd;

    .line 52
    invoke-virtual {v0, v1}, Lcom/keniu/security/sync/d/d/a/cd;->b(I)Lcom/keniu/security/sync/d/d/a/cd;

    .line 53
    if-eqz p1, :cond_1

    .line 54
    invoke-virtual {v0, p1}, Lcom/keniu/security/sync/d/d/a/cd;->b(Ljava/lang/String;)Lcom/keniu/security/sync/d/d/a/cd;

    .line 58
    :goto_0
    const-wide/16 v1, 0x0

    cmp-long v1, v3, v1

    if-lez v1, :cond_0

    .line 59
    invoke-virtual {v0, v3, v4}, Lcom/keniu/security/sync/d/d/a/cd;->a(J)Lcom/keniu/security/sync/d/d/a/cd;

    .line 62
    :cond_0
    const/4 v1, 0x0

    .line 63
    :try_start_0
    new-instance v2, Lcom/keniu/security/sync/d/e/a;

    const-string v3, "http://app.cloud3.1tpan.com/3/list"

    invoke-direct {v2, v3}, Lcom/keniu/security/sync/d/e/a;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    :try_start_1
    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/cd;->i()Lcom/keniu/security/sync/d/d/a/cc;

    move-result-object v0

    invoke-virtual {v2}, Lcom/keniu/security/sync/d/e/a;->b()Ljava/io/OutputStream;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keniu/security/sync/d/d/a/cc;->a(Ljava/io/OutputStream;)V

    .line 67
    invoke-virtual {v2}, Lcom/keniu/security/sync/d/e/a;->c()Ljava/io/InputStream;

    move-result-object v0

    .line 69
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/cf;->a(Ljava/io/InputStream;)Lcom/keniu/security/sync/d/d/a/cf;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 71
    invoke-static {v2}, Lcom/keniu/security/sync/d/a/a;->a(Lcom/keniu/security/sync/d/e/a;)Lcom/keniu/security/sync/d/e/a;

    .line 74
    return-object v0

    .line 56
    :cond_1
    const-string v1, "/"

    invoke-virtual {v0, v1}, Lcom/keniu/security/sync/d/d/a/cd;->b(Ljava/lang/String;)Lcom/keniu/security/sync/d/d/a/cd;

    goto :goto_0

    .line 71
    :catchall_0
    move-exception v0

    :goto_1
    invoke-static {v1}, Lcom/keniu/security/sync/d/a/a;->a(Lcom/keniu/security/sync/d/e/a;)Lcom/keniu/security/sync/d/e/a;

    throw v0

    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_1
.end method

.method private static a(Ljava/lang/String;[Ljava/lang/String;)Lcom/keniu/security/sync/d/d/a/dr;
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 269
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/do;->r()Lcom/keniu/security/sync/d/d/a/dp;

    move-result-object v0

    .line 270
    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/dp;->a(Ljava/lang/String;)Lcom/keniu/security/sync/d/d/a/dp;

    .line 271
    invoke-virtual {v0, v1}, Lcom/keniu/security/sync/d/d/a/dp;->b(I)Lcom/keniu/security/sync/d/d/a/dp;

    .line 272
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 273
    aget-object v2, p1, v1

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/sync/d/d/a/dp;->a(ILjava/lang/String;)Lcom/keniu/security/sync/d/d/a/dp;

    .line 272
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 276
    :cond_0
    const/4 v1, 0x0

    .line 277
    :try_start_0
    new-instance v2, Lcom/keniu/security/sync/d/e/a;

    const-string v3, "http://app.cloud3.1tpan.com/3/openthumbs"

    invoke-direct {v2, v3}, Lcom/keniu/security/sync/d/e/a;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 280
    :try_start_1
    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/dp;->i()Lcom/keniu/security/sync/d/d/a/do;

    move-result-object v0

    invoke-virtual {v2}, Lcom/keniu/security/sync/d/e/a;->b()Ljava/io/OutputStream;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keniu/security/sync/d/d/a/do;->a(Ljava/io/OutputStream;)V

    .line 282
    invoke-virtual {v2}, Lcom/keniu/security/sync/d/e/a;->c()Ljava/io/InputStream;

    move-result-object v0

    .line 283
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/dr;->a(Ljava/io/InputStream;)Lcom/keniu/security/sync/d/d/a/dr;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 285
    invoke-static {v2}, Lcom/keniu/security/sync/d/a/a;->a(Lcom/keniu/security/sync/d/e/a;)Lcom/keniu/security/sync/d/e/a;

    .line 288
    return-object v0

    .line 285
    :catchall_0
    move-exception v0

    :goto_1
    invoke-static {v1}, Lcom/keniu/security/sync/d/a/a;->a(Lcom/keniu/security/sync/d/e/a;)Lcom/keniu/security/sync/d/e/a;

    throw v0

    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_1
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Lcom/keniu/security/sync/d/d/a/dx;
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 169
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/du;->J()Lcom/keniu/security/sync/d/d/a/dv;

    move-result-object v0

    .line 170
    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/dv;->a(Ljava/lang/String;)Lcom/keniu/security/sync/d/d/a/dv;

    .line 171
    invoke-virtual {v0, p2}, Lcom/keniu/security/sync/d/d/a/dv;->c(Ljava/lang/String;)Lcom/keniu/security/sync/d/d/a/dv;

    .line 172
    invoke-virtual {v0, p3, p4}, Lcom/keniu/security/sync/d/d/a/dv;->a(J)Lcom/keniu/security/sync/d/d/a/dv;

    .line 173
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/keniu/security/sync/d/d/a/dv;->a(I)Lcom/keniu/security/sync/d/d/a/dv;

    .line 174
    if-eqz p1, :cond_0

    .line 178
    invoke-virtual {v0, p1}, Lcom/keniu/security/sync/d/d/a/dv;->b(Ljava/lang/String;)Lcom/keniu/security/sync/d/d/a/dv;

    .line 183
    :goto_0
    const/4 v1, 0x0

    .line 184
    :try_start_0
    new-instance v2, Lcom/keniu/security/sync/d/e/a;

    const-string v3, "http://app.cloud3.1tpan.com/3/openwrite"

    invoke-direct {v2, v3}, Lcom/keniu/security/sync/d/e/a;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 187
    :try_start_1
    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/dv;->i()Lcom/keniu/security/sync/d/d/a/du;

    move-result-object v0

    invoke-virtual {v2}, Lcom/keniu/security/sync/d/e/a;->b()Ljava/io/OutputStream;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keniu/security/sync/d/d/a/du;->a(Ljava/io/OutputStream;)V

    .line 188
    invoke-virtual {v2}, Lcom/keniu/security/sync/d/e/a;->c()Ljava/io/InputStream;

    move-result-object v0

    .line 190
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/dx;->a(Ljava/io/InputStream;)Lcom/keniu/security/sync/d/d/a/dx;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 192
    invoke-static {v2}, Lcom/keniu/security/sync/d/a/a;->a(Lcom/keniu/security/sync/d/e/a;)Lcom/keniu/security/sync/d/e/a;

    .line 194
    return-object v0

    .line 180
    :cond_0
    const-string v1, "/"

    invoke-virtual {v0, v1}, Lcom/keniu/security/sync/d/d/a/dv;->b(Ljava/lang/String;)Lcom/keniu/security/sync/d/d/a/dv;

    goto :goto_0

    .line 192
    :catchall_0
    move-exception v0

    :goto_1
    invoke-static {v1}, Lcom/keniu/security/sync/d/a/a;->a(Lcom/keniu/security/sync/d/e/a;)Lcom/keniu/security/sync/d/e/a;

    throw v0

    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_1
.end method

.method public static a(Lcom/keniu/security/sync/d/d/a/gn;Ljava/lang/String;Ljava/lang/String;)Lcom/keniu/security/sync/d/d/a/r;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 199
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/o;->w()Lcom/keniu/security/sync/d/d/a/p;

    move-result-object v0

    .line 200
    invoke-virtual {v0, p1}, Lcom/keniu/security/sync/d/d/a/p;->a(Ljava/lang/String;)Lcom/keniu/security/sync/d/d/a/p;

    .line 201
    invoke-virtual {v0, p2}, Lcom/keniu/security/sync/d/d/a/p;->b(Ljava/lang/String;)Lcom/keniu/security/sync/d/d/a/p;

    .line 202
    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/p;->a(Lcom/keniu/security/sync/d/d/a/gn;)Lcom/keniu/security/sync/d/d/a/p;

    .line 203
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/keniu/security/sync/d/d/a/p;->b(I)Lcom/keniu/security/sync/d/d/a/p;

    .line 204
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/keniu/security/sync/d/d/a/p;->a(I)Lcom/keniu/security/sync/d/d/a/p;

    .line 206
    const/4 v1, 0x0

    .line 207
    :try_start_0
    new-instance v2, Lcom/keniu/security/sync/d/e/a;

    const-string v3, "http://app.cloud3.1tpan.com/3/closefile"

    invoke-direct {v2, v3}, Lcom/keniu/security/sync/d/e/a;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 210
    :try_start_1
    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/p;->i()Lcom/keniu/security/sync/d/d/a/o;

    move-result-object v0

    invoke-virtual {v2}, Lcom/keniu/security/sync/d/e/a;->b()Ljava/io/OutputStream;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keniu/security/sync/d/d/a/o;->a(Ljava/io/OutputStream;)V

    .line 211
    invoke-virtual {v2}, Lcom/keniu/security/sync/d/e/a;->c()Ljava/io/InputStream;

    move-result-object v0

    .line 213
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/r;->a(Ljava/io/InputStream;)Lcom/keniu/security/sync/d/d/a/r;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 215
    invoke-static {v2}, Lcom/keniu/security/sync/d/a/a;->a(Lcom/keniu/security/sync/d/e/a;)Lcom/keniu/security/sync/d/e/a;

    .line 218
    return-object v0

    .line 215
    :catchall_0
    move-exception v0

    :goto_0
    invoke-static {v1}, Lcom/keniu/security/sync/d/a/a;->a(Lcom/keniu/security/sync/d/e/a;)Lcom/keniu/security/sync/d/e/a;

    throw v0

    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_0
.end method

.method private static a(Lcom/keniu/security/sync/d/e/a;)Lcom/keniu/security/sync/d/e/a;
    .locals 1
    .parameter

    .prologue
    .line 292
    if-eqz p0, :cond_0

    .line 293
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/e/a;->d()V

    .line 294
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)Lcom/keniu/security/sync/d/d/a/ad;
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 223
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/aa;->r()Lcom/keniu/security/sync/d/d/a/ab;

    move-result-object v0

    .line 224
    invoke-virtual {v0, p1}, Lcom/keniu/security/sync/d/d/a/ab;->b(Ljava/lang/String;)Lcom/keniu/security/sync/d/d/a/ab;

    .line 225
    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/ab;->a(Ljava/lang/String;)Lcom/keniu/security/sync/d/d/a/ab;

    .line 226
    invoke-virtual {v0, v1}, Lcom/keniu/security/sync/d/d/a/ab;->a(I)Lcom/keniu/security/sync/d/d/a/ab;

    .line 227
    invoke-virtual {v0, v1}, Lcom/keniu/security/sync/d/d/a/ab;->b(I)Lcom/keniu/security/sync/d/d/a/ab;

    .line 229
    const/4 v1, 0x0

    .line 230
    :try_start_0
    new-instance v2, Lcom/keniu/security/sync/d/e/a;

    const-string v3, "http://app.cloud3.1tpan.com/3/delete"

    invoke-direct {v2, v3}, Lcom/keniu/security/sync/d/e/a;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 233
    :try_start_1
    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/ab;->i()Lcom/keniu/security/sync/d/d/a/aa;

    move-result-object v0

    invoke-virtual {v2}, Lcom/keniu/security/sync/d/e/a;->b()Ljava/io/OutputStream;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keniu/security/sync/d/d/a/aa;->a(Ljava/io/OutputStream;)V

    .line 235
    invoke-virtual {v2}, Lcom/keniu/security/sync/d/e/a;->c()Ljava/io/InputStream;

    move-result-object v0

    .line 236
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/ad;->a(Ljava/io/InputStream;)Lcom/keniu/security/sync/d/d/a/ad;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 238
    invoke-static {v2}, Lcom/keniu/security/sync/d/a/a;->a(Lcom/keniu/security/sync/d/e/a;)Lcom/keniu/security/sync/d/e/a;

    .line 240
    return-object v0

    .line 238
    :catchall_0
    move-exception v0

    :goto_0
    invoke-static {v1}, Lcom/keniu/security/sync/d/a/a;->a(Lcom/keniu/security/sync/d/e/a;)Lcom/keniu/security/sync/d/e/a;

    throw v0

    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Lcom/keniu/security/sync/d/d/a/cl;
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 245
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ci;->t()Lcom/keniu/security/sync/d/d/a/cj;

    move-result-object v0

    .line 246
    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/cj;->a(Ljava/lang/String;)Lcom/keniu/security/sync/d/d/a/cj;

    .line 247
    invoke-virtual {v0, p1}, Lcom/keniu/security/sync/d/d/a/cj;->b(Ljava/lang/String;)Lcom/keniu/security/sync/d/d/a/cj;

    .line 248
    invoke-virtual {v0, p2}, Lcom/keniu/security/sync/d/d/a/cj;->c(Ljava/lang/String;)Lcom/keniu/security/sync/d/d/a/cj;

    .line 249
    invoke-virtual {v0, p3, p4}, Lcom/keniu/security/sync/d/d/a/cj;->a(J)Lcom/keniu/security/sync/d/d/a/cj;

    .line 250
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/keniu/security/sync/d/d/a/cj;->a(I)Lcom/keniu/security/sync/d/d/a/cj;

    .line 252
    const/4 v1, 0x0

    .line 253
    :try_start_0
    new-instance v2, Lcom/keniu/security/sync/d/e/a;

    const-string v3, "http://app.cloud3.1tpan.com/3/mkdir"

    invoke-direct {v2, v3}, Lcom/keniu/security/sync/d/e/a;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 256
    :try_start_1
    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/cj;->i()Lcom/keniu/security/sync/d/d/a/ci;

    move-result-object v0

    invoke-virtual {v2}, Lcom/keniu/security/sync/d/e/a;->b()Ljava/io/OutputStream;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keniu/security/sync/d/d/a/ci;->a(Ljava/io/OutputStream;)V

    .line 258
    invoke-virtual {v2}, Lcom/keniu/security/sync/d/e/a;->c()Ljava/io/InputStream;

    move-result-object v0

    .line 259
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/cl;->a(Ljava/io/InputStream;)Lcom/keniu/security/sync/d/d/a/cl;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 261
    invoke-static {v2}, Lcom/keniu/security/sync/d/a/a;->a(Lcom/keniu/security/sync/d/e/a;)Lcom/keniu/security/sync/d/e/a;

    .line 264
    return-object v0

    .line 261
    :catchall_0
    move-exception v0

    :goto_0
    invoke-static {v1}, Lcom/keniu/security/sync/d/a/a;->a(Lcom/keniu/security/sync/d/e/a;)Lcom/keniu/security/sync/d/e/a;

    throw v0

    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/keniu/security/sync/d/d/a/cx;
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 141
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/cu;->t()Lcom/keniu/security/sync/d/d/a/cv;

    move-result-object v0

    .line 142
    invoke-virtual {v0, p1}, Lcom/keniu/security/sync/d/d/a/cv;->a(Ljava/lang/String;)Lcom/keniu/security/sync/d/d/a/cv;

    .line 143
    invoke-virtual {v0, p3}, Lcom/keniu/security/sync/d/d/a/cv;->c(Ljava/lang/String;)Lcom/keniu/security/sync/d/d/a/cv;

    .line 144
    invoke-virtual {v0, p4}, Lcom/keniu/security/sync/d/d/a/cv;->d(Ljava/lang/String;)Lcom/keniu/security/sync/d/d/a/cv;

    .line 145
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/keniu/security/sync/d/d/a/cv;->a(I)Lcom/keniu/security/sync/d/d/a/cv;

    .line 146
    if-eqz p2, :cond_0

    .line 147
    invoke-virtual {v0, p2}, Lcom/keniu/security/sync/d/d/a/cv;->b(Ljava/lang/String;)Lcom/keniu/security/sync/d/d/a/cv;

    .line 152
    :goto_0
    const/4 v1, 0x0

    .line 153
    :try_start_0
    const-string v2, ">>>>> request the host"

    invoke-static {p0, v2}, Lcom/keniu/security/sync/i;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 156
    new-instance v2, Lcom/keniu/security/sync/d/e/a;

    const-string v3, "http://app.cloud3.1tpan.com/3/openread"

    invoke-direct {v2, v3}, Lcom/keniu/security/sync/d/e/a;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 157
    :try_start_1
    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/cv;->i()Lcom/keniu/security/sync/d/d/a/cu;

    move-result-object v0

    invoke-virtual {v2}, Lcom/keniu/security/sync/d/e/a;->b()Ljava/io/OutputStream;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keniu/security/sync/d/d/a/cu;->a(Ljava/io/OutputStream;)V

    .line 158
    invoke-virtual {v2}, Lcom/keniu/security/sync/d/e/a;->c()Ljava/io/InputStream;

    move-result-object v0

    .line 160
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/cx;->a(Ljava/io/InputStream;)Lcom/keniu/security/sync/d/d/a/cx;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 162
    invoke-static {v2}, Lcom/keniu/security/sync/d/a/a;->a(Lcom/keniu/security/sync/d/e/a;)Lcom/keniu/security/sync/d/e/a;

    .line 164
    return-object v0

    .line 149
    :cond_0
    const-string v1, "/"

    invoke-virtual {v0, v1}, Lcom/keniu/security/sync/d/d/a/cv;->b(Ljava/lang/String;)Lcom/keniu/security/sync/d/d/a/cv;

    goto :goto_0

    .line 162
    :catchall_0
    move-exception v0

    :goto_1
    invoke-static {v1}, Lcom/keniu/security/sync/d/a/a;->a(Lcom/keniu/security/sync/d/e/a;)Lcom/keniu/security/sync/d/e/a;

    throw v0

    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_1
.end method
