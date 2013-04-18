.class public final Lcom/ijinshan/cleaner/o;
.super Ljava/lang/Object;
.source "CleanRubEngine.java"


# static fields
.field public static a:I = 0x0

.field public static b:I = 0x0

.field public static c:I = 0x0

.field public static final d:I = 0x5

.field public static final e:Ljava/lang/String; = "com.google.android.gm"

.field public static final f:Ljava/lang/String; = "com.google.android.apps.maps"

.field public static final g:Ljava/lang/String; = "com.android.vending"

.field public static final h:Ljava/lang/String; = "\u6d4f\u89c8\u5668\u8bb0\u5f55"

.field public static final i:Ljava/lang/String; = "\u8c37\u6b4c\u5730\u56fe\u641c\u7d22\u8bb0\u5f55"

.field public static final j:Ljava/lang/String; = "Gmail\u641c\u7d22\u8bb0\u5f55"

.field public static final k:Ljava/lang/String; = "\u8c37\u6b4cMarket\u8bb0\u5f55"

.field public static final l:Ljava/lang/String; = "\u526a\u8d34\u677f\u8bb0\u5f55"

.field private static final u:Ljava/lang/String; = "softdetail"

.field private static final v:I = 0x0

.field private static final w:I = 0x1


# instance fields
.field private A:Landroid/database/sqlite/SQLiteDatabase;

.field private B:Z

.field m:J

.field private n:Landroid/content/Context;

.field private o:Lcom/ijinshan/cleaner/s;

.field private p:Landroid/content/pm/PackageManager;

.field private q:Ljava/util/List;

.field private r:Ljava/util/List;

.field private s:Ljava/util/List;

.field private t:Ljava/util/List;

.field private x:F

.field private y:F

.field private z:Lcom/keniu/security/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x1

    sput v0, Lcom/ijinshan/cleaner/o;->a:I

    .line 34
    const/4 v0, 0x2

    sput v0, Lcom/ijinshan/cleaner/o;->b:I

    .line 35
    const/4 v0, 0x4

    sput v0, Lcom/ijinshan/cleaner/o;->c:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput v0, p0, Lcom/ijinshan/cleaner/o;->x:F

    .line 50
    iput v0, p0, Lcom/ijinshan/cleaner/o;->y:F

    .line 381
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ijinshan/cleaner/o;->B:Z

    .line 468
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/ijinshan/cleaner/o;->m:J

    .line 521
    return-void
.end method

.method static synthetic a(Lcom/ijinshan/cleaner/o;F)F
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 31
    iput p1, p0, Lcom/ijinshan/cleaner/o;->x:F

    return p1
.end method

.method static synthetic a(Lcom/ijinshan/cleaner/o;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/ijinshan/cleaner/o;->q:Ljava/util/List;

    return-object v0
.end method

.method private a()V
    .locals 2

    .prologue
    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ijinshan/cleaner/o;->r:Ljava/util/List;

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ijinshan/cleaner/o;->s:Ljava/util/List;

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ijinshan/cleaner/o;->t:Ljava/util/List;

    .line 93
    iget-object v0, p0, Lcom/ijinshan/cleaner/o;->n:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/ijinshan/cleaner/o;->p:Landroid/content/pm/PackageManager;

    .line 94
    iget-object v0, p0, Lcom/ijinshan/cleaner/o;->p:Landroid/content/pm/PackageManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ijinshan/cleaner/o;->q:Ljava/util/List;

    .line 95
    iget-object v0, p0, Lcom/ijinshan/cleaner/o;->n:Landroid/content/Context;

    invoke-static {v0}, Lcom/keniu/security/a;->a(Landroid/content/Context;)Lcom/keniu/security/a;

    move-result-object v0

    iput-object v0, p0, Lcom/ijinshan/cleaner/o;->z:Lcom/keniu/security/a;

    .line 96
    return-void
.end method

.method private a(F)V
    .locals 6
    .parameter

    .prologue
    const/high16 v5, 0x40a0

    const/high16 v4, 0x3f80

    .line 260
    new-instance v0, Lcom/ijinshan/cleaner/n;

    iget-object v1, p0, Lcom/ijinshan/cleaner/o;->n:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/ijinshan/cleaner/n;-><init>(Landroid/content/Context;)V

    .line 261
    new-instance v1, Lcom/ijinshan/cleaner/u;

    invoke-direct {v1, p0}, Lcom/ijinshan/cleaner/u;-><init>(Lcom/ijinshan/cleaner/o;)V

    .line 262
    sget v2, Lcom/ijinshan/cleaner/o;->c:I

    iput v2, v1, Lcom/ijinshan/cleaner/u;->a:I

    .line 263
    iget v2, p0, Lcom/ijinshan/cleaner/o;->x:F

    mul-float v3, p1, v4

    div-float/2addr v3, v5

    add-float/2addr v2, v3

    iput v2, p0, Lcom/ijinshan/cleaner/o;->x:F

    .line 264
    iget-object v2, p0, Lcom/ijinshan/cleaner/o;->o:Lcom/ijinshan/cleaner/s;

    iget v2, p0, Lcom/ijinshan/cleaner/o;->x:F

    .line 265
    invoke-virtual {v0}, Lcom/ijinshan/cleaner/n;->d()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 266
    new-instance v2, Lcom/ijinshan/cleaner/a/b;

    invoke-direct {v2}, Lcom/ijinshan/cleaner/a/b;-><init>()V

    .line 267
    const-string v3, "\u6d4f\u89c8\u5668\u8bb0\u5f55"

    invoke-virtual {v2, v3}, Lcom/ijinshan/cleaner/a/b;->a(Ljava/lang/String;)V

    .line 268
    invoke-virtual {v2}, Lcom/ijinshan/cleaner/a/b;->a()V

    .line 269
    iput-object v2, v1, Lcom/ijinshan/cleaner/u;->c:Lcom/ijinshan/cleaner/a/b;

    .line 270
    iget-object v3, p0, Lcom/ijinshan/cleaner/o;->t:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 271
    iget-object v2, p0, Lcom/ijinshan/cleaner/o;->o:Lcom/ijinshan/cleaner/s;

    invoke-interface {v2, v1}, Lcom/ijinshan/cleaner/s;->a(Lcom/ijinshan/cleaner/u;)V

    .line 273
    :cond_0
    iget v2, p0, Lcom/ijinshan/cleaner/o;->x:F

    mul-float v3, p1, v4

    div-float/2addr v3, v5

    add-float/2addr v2, v3

    iput v2, p0, Lcom/ijinshan/cleaner/o;->x:F

    .line 274
    iget-object v2, p0, Lcom/ijinshan/cleaner/o;->o:Lcom/ijinshan/cleaner/s;

    iget v2, p0, Lcom/ijinshan/cleaner/o;->x:F

    .line 275
    const-string v2, "com.google.android.apps.maps"

    invoke-direct {p0, v2}, Lcom/ijinshan/cleaner/o;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/ijinshan/cleaner/o;->z:Lcom/keniu/security/a;

    invoke-virtual {v2}, Lcom/keniu/security/a;->ak()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 276
    new-instance v2, Lcom/ijinshan/cleaner/a/b;

    invoke-direct {v2}, Lcom/ijinshan/cleaner/a/b;-><init>()V

    .line 277
    const-string v3, "\u8c37\u6b4c\u5730\u56fe\u641c\u7d22\u8bb0\u5f55"

    invoke-virtual {v2, v3}, Lcom/ijinshan/cleaner/a/b;->a(Ljava/lang/String;)V

    .line 278
    invoke-virtual {v2}, Lcom/ijinshan/cleaner/a/b;->a()V

    .line 279
    iput-object v2, v1, Lcom/ijinshan/cleaner/u;->c:Lcom/ijinshan/cleaner/a/b;

    .line 280
    iget-object v3, p0, Lcom/ijinshan/cleaner/o;->t:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 281
    iget-object v2, p0, Lcom/ijinshan/cleaner/o;->o:Lcom/ijinshan/cleaner/s;

    invoke-interface {v2, v1}, Lcom/ijinshan/cleaner/s;->a(Lcom/ijinshan/cleaner/u;)V

    .line 283
    :cond_1
    iget v2, p0, Lcom/ijinshan/cleaner/o;->x:F

    mul-float v3, p1, v4

    div-float/2addr v3, v5

    add-float/2addr v2, v3

    iput v2, p0, Lcom/ijinshan/cleaner/o;->x:F

    .line 284
    iget-object v2, p0, Lcom/ijinshan/cleaner/o;->o:Lcom/ijinshan/cleaner/s;

    iget v2, p0, Lcom/ijinshan/cleaner/o;->x:F

    .line 285
    const-string v2, "com.google.android.gm"

    invoke-direct {p0, v2}, Lcom/ijinshan/cleaner/o;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/ijinshan/cleaner/o;->z:Lcom/keniu/security/a;

    invoke-virtual {v2}, Lcom/keniu/security/a;->al()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 286
    new-instance v2, Lcom/ijinshan/cleaner/a/b;

    invoke-direct {v2}, Lcom/ijinshan/cleaner/a/b;-><init>()V

    .line 287
    const-string v3, "Gmail\u641c\u7d22\u8bb0\u5f55"

    invoke-virtual {v2, v3}, Lcom/ijinshan/cleaner/a/b;->a(Ljava/lang/String;)V

    .line 288
    invoke-virtual {v2}, Lcom/ijinshan/cleaner/a/b;->a()V

    .line 289
    iput-object v2, v1, Lcom/ijinshan/cleaner/u;->c:Lcom/ijinshan/cleaner/a/b;

    .line 290
    iget-object v3, p0, Lcom/ijinshan/cleaner/o;->t:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 291
    iget-object v2, p0, Lcom/ijinshan/cleaner/o;->o:Lcom/ijinshan/cleaner/s;

    invoke-interface {v2, v1}, Lcom/ijinshan/cleaner/s;->a(Lcom/ijinshan/cleaner/u;)V

    .line 293
    :cond_2
    iget v2, p0, Lcom/ijinshan/cleaner/o;->x:F

    mul-float v3, p1, v4

    div-float/2addr v3, v5

    add-float/2addr v2, v3

    iput v2, p0, Lcom/ijinshan/cleaner/o;->x:F

    .line 294
    iget-object v2, p0, Lcom/ijinshan/cleaner/o;->o:Lcom/ijinshan/cleaner/s;

    iget v2, p0, Lcom/ijinshan/cleaner/o;->x:F

    .line 295
    const-string v2, "com.android.vending"

    invoke-direct {p0, v2}, Lcom/ijinshan/cleaner/o;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/ijinshan/cleaner/o;->z:Lcom/keniu/security/a;

    invoke-virtual {v2}, Lcom/keniu/security/a;->aj()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 296
    new-instance v2, Lcom/ijinshan/cleaner/a/b;

    invoke-direct {v2}, Lcom/ijinshan/cleaner/a/b;-><init>()V

    .line 297
    const-string v3, "\u8c37\u6b4cMarket\u8bb0\u5f55"

    invoke-virtual {v2, v3}, Lcom/ijinshan/cleaner/a/b;->a(Ljava/lang/String;)V

    .line 298
    invoke-virtual {v2}, Lcom/ijinshan/cleaner/a/b;->a()V

    .line 299
    iput-object v2, v1, Lcom/ijinshan/cleaner/u;->c:Lcom/ijinshan/cleaner/a/b;

    .line 300
    iget-object v3, p0, Lcom/ijinshan/cleaner/o;->t:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 301
    iget-object v2, p0, Lcom/ijinshan/cleaner/o;->o:Lcom/ijinshan/cleaner/s;

    invoke-interface {v2, v1}, Lcom/ijinshan/cleaner/s;->a(Lcom/ijinshan/cleaner/u;)V

    .line 303
    :cond_3
    iget v2, p0, Lcom/ijinshan/cleaner/o;->x:F

    add-float/2addr v2, p1

    iput v2, p0, Lcom/ijinshan/cleaner/o;->x:F

    .line 304
    iget-object v2, p0, Lcom/ijinshan/cleaner/o;->o:Lcom/ijinshan/cleaner/s;

    iget v2, p0, Lcom/ijinshan/cleaner/o;->x:F

    .line 305
    invoke-virtual {v0}, Lcom/ijinshan/cleaner/n;->b()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 306
    new-instance v0, Lcom/ijinshan/cleaner/a/b;

    invoke-direct {v0}, Lcom/ijinshan/cleaner/a/b;-><init>()V

    .line 307
    const-string v2, "\u526a\u8d34\u677f\u8bb0\u5f55"

    invoke-virtual {v0, v2}, Lcom/ijinshan/cleaner/a/b;->a(Ljava/lang/String;)V

    .line 308
    invoke-virtual {v0}, Lcom/ijinshan/cleaner/a/b;->a()V

    .line 309
    iput-object v0, v1, Lcom/ijinshan/cleaner/u;->c:Lcom/ijinshan/cleaner/a/b;

    .line 310
    iget-object v2, p0, Lcom/ijinshan/cleaner/o;->t:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 311
    iget-object v0, p0, Lcom/ijinshan/cleaner/o;->o:Lcom/ijinshan/cleaner/s;

    invoke-interface {v0, v1}, Lcom/ijinshan/cleaner/s;->a(Lcom/ijinshan/cleaner/u;)V

    .line 313
    :cond_4
    return-void
.end method

.method static synthetic a(Landroid/os/Handler;)V
    .locals 2
    .parameter

    .prologue
    .line 31
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private static a(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 99
    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 100
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 101
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 102
    return-void
.end method

.method private a(Lcom/ijinshan/cleaner/a/b;)V
    .locals 4
    .parameter

    .prologue
    .line 175
    new-instance v0, Lcom/ijinshan/cleaner/n;

    iget-object v1, p0, Lcom/ijinshan/cleaner/o;->n:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/ijinshan/cleaner/n;-><init>(Landroid/content/Context;)V

    .line 176
    const-string v1, "\u6d4f\u89c8\u5668\u8bb0\u5f55"

    invoke-virtual {p1}, Lcom/ijinshan/cleaner/a/b;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 177
    invoke-virtual {v0}, Lcom/ijinshan/cleaner/n;->c()V

    .line 179
    :cond_0
    const-string v1, "\u8c37\u6b4c\u5730\u56fe\u641c\u7d22\u8bb0\u5f55"

    invoke-virtual {p1}, Lcom/ijinshan/cleaner/a/b;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 180
    iget-object v1, p0, Lcom/ijinshan/cleaner/o;->z:Lcom/keniu/security/a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/keniu/security/a;->c(J)V

    .line 181
    invoke-virtual {v0}, Lcom/ijinshan/cleaner/n;->f()V

    .line 183
    :cond_1
    const-string v1, "Gmail\u641c\u7d22\u8bb0\u5f55"

    invoke-virtual {p1}, Lcom/ijinshan/cleaner/a/b;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 184
    iget-object v1, p0, Lcom/ijinshan/cleaner/o;->z:Lcom/keniu/security/a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/keniu/security/a;->d(J)V

    .line 185
    invoke-virtual {v0}, Lcom/ijinshan/cleaner/n;->e()V

    .line 187
    :cond_2
    const-string v1, "\u8c37\u6b4cMarket\u8bb0\u5f55"

    invoke-virtual {p1}, Lcom/ijinshan/cleaner/a/b;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 188
    iget-object v1, p0, Lcom/ijinshan/cleaner/o;->z:Lcom/keniu/security/a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/keniu/security/a;->b(J)V

    .line 189
    invoke-virtual {v0}, Lcom/ijinshan/cleaner/n;->g()V

    .line 191
    :cond_3
    const-string v1, "\u526a\u8d34\u677f\u8bb0\u5f55"

    invoke-virtual {p1}, Lcom/ijinshan/cleaner/a/b;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 192
    invoke-virtual {v0}, Lcom/ijinshan/cleaner/n;->a()V

    .line 194
    :cond_4
    return-void
.end method

.method private a(Ljava/io/File;)V
    .locals 4
    .parameter

    .prologue
    .line 210
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 220
    :goto_0
    return-void

    .line 213
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 214
    array-length v1, v0

    .line 215
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_1

    .line 216
    aget-object v3, v0, v2

    invoke-direct {p0, v3}, Lcom/ijinshan/cleaner/o;->a(Ljava/io/File;)V

    .line 215
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 218
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 439
    invoke-static {}, Lcom/ijinshan/cleaner/o;->f()[Ljava/io/File;

    move-result-object v0

    .line 440
    array-length v1, v0

    move v2, v4

    .line 441
    :goto_0
    if-ge v2, v1, :cond_1

    .line 442
    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 443
    const/4 v0, 0x1

    .line 446
    :goto_1
    return v0

    .line 441
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move v0, v4

    .line 446
    goto :goto_1
.end method

.method private b(Ljava/io/File;)J
    .locals 4
    .parameter

    .prologue
    .line 471
    .line 474
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 476
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 477
    if-eqz v0, :cond_0

    .line 478
    array-length v1, v0

    .line 479
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 481
    aget-object v3, v0, v2

    invoke-direct {p0, v3}, Lcom/ijinshan/cleaner/o;->b(Ljava/io/File;)J

    .line 479
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 484
    :cond_0
    iget-wide v0, p0, Lcom/ijinshan/cleaner/o;->m:J

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/ijinshan/cleaner/o;->m:J

    .line 489
    :cond_1
    :goto_1
    iget-wide v0, p0, Lcom/ijinshan/cleaner/o;->m:J

    return-wide v0

    .line 486
    :cond_2
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 487
    iget-wide v0, p0, Lcom/ijinshan/cleaner/o;->m:J

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/ijinshan/cleaner/o;->m:J

    goto :goto_1
.end method

.method private b()V
    .locals 6

    .prologue
    .line 164
    iget-object v0, p0, Lcom/ijinshan/cleaner/o;->t:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ijinshan/cleaner/a/b;

    .line 166
    :try_start_0
    new-instance v2, Lcom/ijinshan/cleaner/n;

    iget-object v3, p0, Lcom/ijinshan/cleaner/o;->n:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/ijinshan/cleaner/n;-><init>(Landroid/content/Context;)V

    const-string v3, "\u6d4f\u89c8\u5668\u8bb0\u5f55"

    invoke-virtual {v0}, Lcom/ijinshan/cleaner/a/b;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lcom/ijinshan/cleaner/n;->c()V

    :cond_1
    const-string v3, "\u8c37\u6b4c\u5730\u56fe\u641c\u7d22\u8bb0\u5f55"

    invoke-virtual {v0}, Lcom/ijinshan/cleaner/a/b;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/ijinshan/cleaner/o;->z:Lcom/keniu/security/a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/keniu/security/a;->c(J)V

    invoke-virtual {v2}, Lcom/ijinshan/cleaner/n;->f()V

    :cond_2
    const-string v3, "Gmail\u641c\u7d22\u8bb0\u5f55"

    invoke-virtual {v0}, Lcom/ijinshan/cleaner/a/b;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/ijinshan/cleaner/o;->z:Lcom/keniu/security/a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/keniu/security/a;->d(J)V

    invoke-virtual {v2}, Lcom/ijinshan/cleaner/n;->e()V

    :cond_3
    const-string v3, "\u8c37\u6b4cMarket\u8bb0\u5f55"

    invoke-virtual {v0}, Lcom/ijinshan/cleaner/a/b;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/ijinshan/cleaner/o;->z:Lcom/keniu/security/a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/keniu/security/a;->b(J)V

    invoke-virtual {v2}, Lcom/ijinshan/cleaner/n;->g()V

    :cond_4
    const-string v3, "\u526a\u8d34\u677f\u8bb0\u5f55"

    invoke-virtual {v0}, Lcom/ijinshan/cleaner/a/b;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v2}, Lcom/ijinshan/cleaner/n;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 168
    :catch_0
    move-exception v0

    goto :goto_0

    .line 171
    :cond_5
    iget-object v0, p0, Lcom/ijinshan/cleaner/o;->t:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 172
    return-void
.end method

.method private b(F)V
    .locals 15
    .parameter

    .prologue
    .line 316
    invoke-static {}, Lcom/ijinshan/cleaner/o;->f()[Ljava/io/File;

    move-result-object v8

    .line 317
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v9

    .line 319
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v10

    .line 320
    if-eqz v8, :cond_6

    .line 321
    array-length v11, v8

    .line 322
    const-string v3, "filepath = ?"

    .line 323
    const/4 v0, 0x0

    .line 324
    const/4 v1, 0x0

    move v12, v1

    :goto_0
    if-ge v12, v11, :cond_6

    .line 325
    aget-object v1, v8, v12

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    .line 326
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v10, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 327
    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v4, v2

    .line 328
    iget v1, p0, Lcom/ijinshan/cleaner/o;->x:F

    add-int/lit8 v2, v12, 0x1

    int-to-float v2, v2

    mul-float v2, v2, p1

    add-float/2addr v1, v2

    iput v1, p0, Lcom/ijinshan/cleaner/o;->x:F

    .line 329
    iget-object v1, p0, Lcom/ijinshan/cleaner/o;->o:Lcom/ijinshan/cleaner/s;

    iget v1, p0, Lcom/ijinshan/cleaner/o;->x:F

    .line 330
    if-eqz v0, :cond_0

    .line 331
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 333
    :cond_0
    iget-object v0, p0, Lcom/ijinshan/cleaner/o;->A:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "softdetail"

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 336
    new-instance v1, Lcom/ijinshan/cleaner/u;

    invoke-direct {v1, p0}, Lcom/ijinshan/cleaner/u;-><init>(Lcom/ijinshan/cleaner/o;)V

    .line 337
    sget v2, Lcom/ijinshan/cleaner/o;->b:I

    iput v2, v1, Lcom/ijinshan/cleaner/u;->a:I

    .line 338
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 340
    :cond_1
    const/4 v2, 0x5

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 341
    if-nez v2, :cond_4

    .line 342
    const/4 v2, 0x3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 343
    invoke-direct {p0, v2}, Lcom/ijinshan/cleaner/o;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 344
    new-instance v2, Lcom/ijinshan/cleaner/a/c;

    invoke-direct {v2}, Lcom/ijinshan/cleaner/a/c;-><init>()V

    .line 345
    const/4 v4, 0x4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 346
    invoke-virtual {v2, v4}, Lcom/ijinshan/cleaner/a/c;->c(Ljava/lang/String;)V

    .line 347
    const-wide/16 v5, 0x0

    iput-wide v5, p0, Lcom/ijinshan/cleaner/o;->m:J

    .line 348
    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v5}, Lcom/ijinshan/cleaner/o;->b(Ljava/io/File;)J

    move-result-wide v5

    .line 350
    invoke-virtual {v2, v5, v6}, Lcom/ijinshan/cleaner/a/c;->a(J)V

    .line 351
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/ijinshan/cleaner/o;->a(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 352
    iput-object v2, v1, Lcom/ijinshan/cleaner/u;->d:Lcom/ijinshan/cleaner/a/c;

    .line 353
    iget-object v4, p0, Lcom/ijinshan/cleaner/o;->s:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 354
    iget-object v2, p0, Lcom/ijinshan/cleaner/o;->o:Lcom/ijinshan/cleaner/s;

    invoke-interface {v2, v1}, Lcom/ijinshan/cleaner/s;->a(Lcom/ijinshan/cleaner/u;)V

    .line 373
    :cond_2
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 376
    :cond_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 324
    add-int/lit8 v1, v12, 0x1

    move v12, v1

    goto/16 :goto_0

    .line 357
    :cond_4
    const/4 v4, 0x1

    if-ne v2, v4, :cond_2

    .line 358
    const/4 v2, 0x4

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 359
    new-instance v4, Lcom/ijinshan/cleaner/a/c;

    invoke-direct {v4}, Lcom/ijinshan/cleaner/a/c;-><init>()V

    .line 360
    invoke-virtual {v4, v2}, Lcom/ijinshan/cleaner/a/c;->c(Ljava/lang/String;)V

    .line 361
    const-wide/16 v5, 0x0

    iput-wide v5, p0, Lcom/ijinshan/cleaner/o;->m:J

    .line 362
    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v5}, Lcom/ijinshan/cleaner/o;->b(Ljava/io/File;)J

    move-result-wide v5

    .line 364
    const-wide/16 v13, 0x0

    cmp-long v7, v5, v13

    if-lez v7, :cond_5

    .line 365
    invoke-virtual {v4, v5, v6}, Lcom/ijinshan/cleaner/a/c;->a(J)V

    .line 367
    :cond_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/ijinshan/cleaner/o;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 368
    iput-object v4, v1, Lcom/ijinshan/cleaner/u;->d:Lcom/ijinshan/cleaner/a/c;

    .line 369
    iget-object v2, p0, Lcom/ijinshan/cleaner/o;->s:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 370
    iget-object v2, p0, Lcom/ijinshan/cleaner/o;->o:Lcom/ijinshan/cleaner/s;

    invoke-interface {v2, v1}, Lcom/ijinshan/cleaner/s;->a(Lcom/ijinshan/cleaner/u;)V

    goto :goto_1

    .line 379
    :cond_6
    return-void
.end method

.method static synthetic b(Lcom/ijinshan/cleaner/o;)Z
    .locals 1
    .parameter

    .prologue
    .line 31
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ijinshan/cleaner/o;->B:Z

    return v0
.end method

.method private b(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 450
    iget-object v0, p0, Lcom/ijinshan/cleaner/o;->q:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 451
    const/4 v0, 0x1

    .line 453
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic c(Lcom/ijinshan/cleaner/o;)Landroid/content/pm/PackageManager;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/ijinshan/cleaner/o;->p:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method private c()V
    .locals 6

    .prologue
    .line 197
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    .line 199
    iget-object v1, p0, Lcom/ijinshan/cleaner/o;->s:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 200
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 201
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/ijinshan/cleaner/o;->s:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 202
    invoke-direct {p0, v3}, Lcom/ijinshan/cleaner/o;->a(Ljava/io/File;)V

    .line 200
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 206
    :cond_0
    iget-object v0, p0, Lcom/ijinshan/cleaner/o;->s:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 207
    return-void
.end method

.method private c(F)V
    .locals 2
    .parameter

    .prologue
    .line 384
    new-instance v0, Lcom/ijinshan/cleaner/p;

    invoke-direct {v0, p0, p1}, Lcom/ijinshan/cleaner/p;-><init>(Lcom/ijinshan/cleaner/o;F)V

    .line 426
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 428
    :goto_0
    iget-boolean v0, p0, Lcom/ijinshan/cleaner/o;->B:Z

    if-nez v0, :cond_0

    .line 429
    const-wide/16 v0, 0xa

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 432
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 436
    :cond_0
    return-void
.end method

.method static synthetic d(Lcom/ijinshan/cleaner/o;)F
    .locals 1
    .parameter

    .prologue
    .line 31
    iget v0, p0, Lcom/ijinshan/cleaner/o;->x:F

    return v0
.end method

.method private d()V
    .locals 5

    .prologue
    .line 224
    :try_start_0
    iget-object v0, p0, Lcom/ijinshan/cleaner/o;->p:Landroid/content/pm/PackageManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "freeStorageAndNotify"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Landroid/content/pm/IPackageDataObserver;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 227
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/os/StatFs;

    invoke-direct {v2, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockSize()I

    move-result v1

    int-to-long v3, v1

    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockCount()I

    move-result v1

    int-to-long v1, v1

    mul-long/2addr v1, v3

    const-wide/16 v3, 0x1

    sub-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 228
    iget-object v2, p0, Lcom/ijinshan/cleaner/o;->p:Landroid/content/pm/PackageManager;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v1, 0x1

    new-instance v4, Lcom/ijinshan/cleaner/r;

    invoke-direct {v4, p0}, Lcom/ijinshan/cleaner/r;-><init>(Lcom/ijinshan/cleaner/o;)V

    aput-object v4, v3, v1

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_4

    .line 241
    :goto_0
    return-void

    .line 230
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_0

    .line 232
    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    .line 234
    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 236
    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 238
    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0
.end method

.method private static e()J
    .locals 4

    .prologue
    .line 244
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    .line 246
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 251
    new-instance v1, Landroid/os/StatFs;

    invoke-direct {v1, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 252
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v0

    int-to-long v2, v0

    .line 253
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockCount()I

    move-result v0

    int-to-long v0, v0

    mul-long/2addr v0, v2

    .line 254
    return-wide v0
.end method

.method static synthetic e(Lcom/ijinshan/cleaner/o;)Lcom/ijinshan/cleaner/s;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/ijinshan/cleaner/o;->o:Lcom/ijinshan/cleaner/s;

    return-object v0
.end method

.method static synthetic f(Lcom/ijinshan/cleaner/o;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/ijinshan/cleaner/o;->r:Ljava/util/List;

    return-object v0
.end method

.method private static f()[Ljava/io/File;
    .locals 3

    .prologue
    .line 459
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 460
    const/4 v1, 0x0

    .line 461
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 463
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 465
    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public final a(I)V
    .locals 7
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x1

    .line 135
    iget-object v0, p0, Lcom/ijinshan/cleaner/o;->o:Lcom/ijinshan/cleaner/s;

    .line 137
    sget v0, Lcom/ijinshan/cleaner/o;->a:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_5

    .line 138
    add-int/lit8 v0, v1, 0x1

    .line 140
    :goto_0
    sget v1, Lcom/ijinshan/cleaner/o;->b:I

    and-int/2addr v1, p1

    if-eqz v1, :cond_0

    .line 141
    add-int/lit8 v0, v0, 0x1

    .line 143
    :cond_0
    sget v1, Lcom/ijinshan/cleaner/o;->c:I

    and-int/2addr v1, p1

    if-eqz v1, :cond_1

    .line 144
    add-int/lit8 v0, v0, 0x1

    .line 146
    :cond_1
    sget v1, Lcom/ijinshan/cleaner/o;->a:I

    and-int/2addr v1, p1

    if-eqz v1, :cond_2

    .line 147
    :try_start_0
    iget-object v1, p0, Lcom/ijinshan/cleaner/o;->p:Landroid/content/pm/PackageManager;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "freeStorageAndNotify"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Landroid/content/pm/IPackageDataObserver;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroid/os/StatFs;

    invoke-direct {v3, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockSize()I

    move-result v2

    int-to-long v4, v2

    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockCount()I

    move-result v2

    int-to-long v2, v2

    mul-long/2addr v2, v4

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-object v3, p0, Lcom/ijinshan/cleaner/o;->p:Landroid/content/pm/PackageManager;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    const/4 v2, 0x1

    new-instance v5, Lcom/ijinshan/cleaner/r;

    invoke-direct {v5, p0}, Lcom/ijinshan/cleaner/r;-><init>(Lcom/ijinshan/cleaner/o;)V

    aput-object v5, v4, v2

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_4

    .line 148
    :goto_1
    iget-object v1, p0, Lcom/ijinshan/cleaner/o;->o:Lcom/ijinshan/cleaner/s;

    sget v1, Lcom/ijinshan/cleaner/o;->a:I

    .line 150
    :cond_2
    sget v1, Lcom/ijinshan/cleaner/o;->b:I

    and-int/2addr v1, p1

    if-eqz v1, :cond_3

    .line 151
    invoke-direct {p0}, Lcom/ijinshan/cleaner/o;->c()V

    .line 152
    iget v1, p0, Lcom/ijinshan/cleaner/o;->y:F

    div-int v2, v6, v0

    int-to-float v2, v2

    add-float/2addr v1, v2

    iput v1, p0, Lcom/ijinshan/cleaner/o;->y:F

    .line 153
    iget-object v1, p0, Lcom/ijinshan/cleaner/o;->o:Lcom/ijinshan/cleaner/s;

    iget v1, p0, Lcom/ijinshan/cleaner/o;->y:F

    sget v1, Lcom/ijinshan/cleaner/o;->b:I

    .line 155
    :cond_3
    sget v1, Lcom/ijinshan/cleaner/o;->c:I

    and-int/2addr v1, p1

    if-eqz v1, :cond_4

    .line 156
    invoke-direct {p0}, Lcom/ijinshan/cleaner/o;->b()V

    .line 157
    iget v1, p0, Lcom/ijinshan/cleaner/o;->y:F

    div-int v0, v6, v0

    int-to-float v0, v0

    add-float/2addr v0, v1

    iput v0, p0, Lcom/ijinshan/cleaner/o;->y:F

    .line 158
    iget-object v0, p0, Lcom/ijinshan/cleaner/o;->o:Lcom/ijinshan/cleaner/s;

    iget v0, p0, Lcom/ijinshan/cleaner/o;->y:F

    sget v0, Lcom/ijinshan/cleaner/o;->b:I

    .line 160
    :cond_4
    iget-object v0, p0, Lcom/ijinshan/cleaner/o;->o:Lcom/ijinshan/cleaner/s;

    .line 161
    return-void

    .line 147
    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_1

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1

    :catch_3
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1

    :catch_4
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_1

    :cond_5
    move v0, v1

    goto/16 :goto_0
.end method

.method public final a(Landroid/content/Context;Lcom/ijinshan/cleaner/s;I)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/high16 v6, 0x40a0

    const/high16 v5, 0x3f80

    .line 105
    iput-object p1, p0, Lcom/ijinshan/cleaner/o;->n:Landroid/content/Context;

    .line 106
    iput-object p2, p0, Lcom/ijinshan/cleaner/o;->o:Lcom/ijinshan/cleaner/s;

    .line 108
    sget v0, Lcom/ijinshan/cleaner/o;->a:I

    and-int/2addr v0, p3

    if-eqz v0, :cond_9

    .line 109
    add-int/lit8 v0, v3, 0x1

    .line 111
    :goto_0
    sget v1, Lcom/ijinshan/cleaner/o;->b:I

    and-int/2addr v1, p3

    if-eqz v1, :cond_0

    .line 112
    add-int/lit8 v0, v0, 0x1

    .line 114
    :cond_0
    sget v1, Lcom/ijinshan/cleaner/o;->c:I

    and-int/2addr v1, p3

    if-eqz v1, :cond_1

    .line 115
    add-int/lit8 v0, v0, 0x1

    .line 117
    :cond_1
    iget-object v1, p0, Lcom/ijinshan/cleaner/o;->o:Lcom/ijinshan/cleaner/s;

    .line 118
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/ijinshan/cleaner/o;->r:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/ijinshan/cleaner/o;->s:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/ijinshan/cleaner/o;->t:Ljava/util/List;

    iget-object v1, p0, Lcom/ijinshan/cleaner/o;->n:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/ijinshan/cleaner/o;->p:Landroid/content/pm/PackageManager;

    iget-object v1, p0, Lcom/ijinshan/cleaner/o;->p:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/ijinshan/cleaner/o;->q:Ljava/util/List;

    iget-object v1, p0, Lcom/ijinshan/cleaner/o;->n:Landroid/content/Context;

    invoke-static {v1}, Lcom/keniu/security/a;->a(Landroid/content/Context;)Lcom/keniu/security/a;

    move-result-object v1

    iput-object v1, p0, Lcom/ijinshan/cleaner/o;->z:Lcom/keniu/security/a;

    .line 119
    sget v1, Lcom/ijinshan/cleaner/o;->a:I

    and-int/2addr v1, p3

    if-eqz v1, :cond_2

    .line 120
    div-int v1, v2, v0

    int-to-float v1, v1

    invoke-direct {p0, v1}, Lcom/ijinshan/cleaner/o;->c(F)V

    .line 122
    :cond_2
    sget v1, Lcom/ijinshan/cleaner/o;->b:I

    and-int/2addr v1, p3

    if-eqz v1, :cond_3

    .line 123
    new-instance v1, Lcom/ijinshan/cleaner/b/a;

    invoke-direct {v1}, Lcom/ijinshan/cleaner/b/a;-><init>()V

    .line 124
    invoke-virtual {v1}, Lcom/ijinshan/cleaner/b/a;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iput-object v1, p0, Lcom/ijinshan/cleaner/o;->A:Landroid/database/sqlite/SQLiteDatabase;

    .line 125
    div-int v1, v2, v0

    int-to-float v1, v1

    invoke-direct {p0, v1}, Lcom/ijinshan/cleaner/o;->b(F)V

    .line 126
    iget-object v1, p0, Lcom/ijinshan/cleaner/o;->A:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 128
    :cond_3
    sget v1, Lcom/ijinshan/cleaner/o;->c:I

    and-int/2addr v1, p3

    if-eqz v1, :cond_8

    .line 129
    div-int v0, v2, v0

    int-to-float v0, v0

    new-instance v1, Lcom/ijinshan/cleaner/n;

    iget-object v2, p0, Lcom/ijinshan/cleaner/o;->n:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/ijinshan/cleaner/n;-><init>(Landroid/content/Context;)V

    new-instance v2, Lcom/ijinshan/cleaner/u;

    invoke-direct {v2, p0}, Lcom/ijinshan/cleaner/u;-><init>(Lcom/ijinshan/cleaner/o;)V

    sget v3, Lcom/ijinshan/cleaner/o;->c:I

    iput v3, v2, Lcom/ijinshan/cleaner/u;->a:I

    iget v3, p0, Lcom/ijinshan/cleaner/o;->x:F

    mul-float v4, v0, v5

    div-float/2addr v4, v6

    add-float/2addr v3, v4

    iput v3, p0, Lcom/ijinshan/cleaner/o;->x:F

    iget-object v3, p0, Lcom/ijinshan/cleaner/o;->o:Lcom/ijinshan/cleaner/s;

    iget v3, p0, Lcom/ijinshan/cleaner/o;->x:F

    invoke-virtual {v1}, Lcom/ijinshan/cleaner/n;->d()Z

    move-result v3

    if-eqz v3, :cond_4

    new-instance v3, Lcom/ijinshan/cleaner/a/b;

    invoke-direct {v3}, Lcom/ijinshan/cleaner/a/b;-><init>()V

    const-string v4, "\u6d4f\u89c8\u5668\u8bb0\u5f55"

    invoke-virtual {v3, v4}, Lcom/ijinshan/cleaner/a/b;->a(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/ijinshan/cleaner/a/b;->a()V

    iput-object v3, v2, Lcom/ijinshan/cleaner/u;->c:Lcom/ijinshan/cleaner/a/b;

    iget-object v4, p0, Lcom/ijinshan/cleaner/o;->t:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/ijinshan/cleaner/o;->o:Lcom/ijinshan/cleaner/s;

    invoke-interface {v3, v2}, Lcom/ijinshan/cleaner/s;->a(Lcom/ijinshan/cleaner/u;)V

    :cond_4
    iget v3, p0, Lcom/ijinshan/cleaner/o;->x:F

    mul-float v4, v0, v5

    div-float/2addr v4, v6

    add-float/2addr v3, v4

    iput v3, p0, Lcom/ijinshan/cleaner/o;->x:F

    iget-object v3, p0, Lcom/ijinshan/cleaner/o;->o:Lcom/ijinshan/cleaner/s;

    iget v3, p0, Lcom/ijinshan/cleaner/o;->x:F

    const-string v3, "com.google.android.apps.maps"

    invoke-direct {p0, v3}, Lcom/ijinshan/cleaner/o;->b(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/ijinshan/cleaner/o;->z:Lcom/keniu/security/a;

    invoke-virtual {v3}, Lcom/keniu/security/a;->ak()Z

    move-result v3

    if-eqz v3, :cond_5

    new-instance v3, Lcom/ijinshan/cleaner/a/b;

    invoke-direct {v3}, Lcom/ijinshan/cleaner/a/b;-><init>()V

    const-string v4, "\u8c37\u6b4c\u5730\u56fe\u641c\u7d22\u8bb0\u5f55"

    invoke-virtual {v3, v4}, Lcom/ijinshan/cleaner/a/b;->a(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/ijinshan/cleaner/a/b;->a()V

    iput-object v3, v2, Lcom/ijinshan/cleaner/u;->c:Lcom/ijinshan/cleaner/a/b;

    iget-object v4, p0, Lcom/ijinshan/cleaner/o;->t:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/ijinshan/cleaner/o;->o:Lcom/ijinshan/cleaner/s;

    invoke-interface {v3, v2}, Lcom/ijinshan/cleaner/s;->a(Lcom/ijinshan/cleaner/u;)V

    :cond_5
    iget v3, p0, Lcom/ijinshan/cleaner/o;->x:F

    mul-float v4, v0, v5

    div-float/2addr v4, v6

    add-float/2addr v3, v4

    iput v3, p0, Lcom/ijinshan/cleaner/o;->x:F

    iget-object v3, p0, Lcom/ijinshan/cleaner/o;->o:Lcom/ijinshan/cleaner/s;

    iget v3, p0, Lcom/ijinshan/cleaner/o;->x:F

    const-string v3, "com.google.android.gm"

    invoke-direct {p0, v3}, Lcom/ijinshan/cleaner/o;->b(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/ijinshan/cleaner/o;->z:Lcom/keniu/security/a;

    invoke-virtual {v3}, Lcom/keniu/security/a;->al()Z

    move-result v3

    if-eqz v3, :cond_6

    new-instance v3, Lcom/ijinshan/cleaner/a/b;

    invoke-direct {v3}, Lcom/ijinshan/cleaner/a/b;-><init>()V

    const-string v4, "Gmail\u641c\u7d22\u8bb0\u5f55"

    invoke-virtual {v3, v4}, Lcom/ijinshan/cleaner/a/b;->a(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/ijinshan/cleaner/a/b;->a()V

    iput-object v3, v2, Lcom/ijinshan/cleaner/u;->c:Lcom/ijinshan/cleaner/a/b;

    iget-object v4, p0, Lcom/ijinshan/cleaner/o;->t:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/ijinshan/cleaner/o;->o:Lcom/ijinshan/cleaner/s;

    invoke-interface {v3, v2}, Lcom/ijinshan/cleaner/s;->a(Lcom/ijinshan/cleaner/u;)V

    :cond_6
    iget v3, p0, Lcom/ijinshan/cleaner/o;->x:F

    mul-float v4, v0, v5

    div-float/2addr v4, v6

    add-float/2addr v3, v4

    iput v3, p0, Lcom/ijinshan/cleaner/o;->x:F

    iget-object v3, p0, Lcom/ijinshan/cleaner/o;->o:Lcom/ijinshan/cleaner/s;

    iget v3, p0, Lcom/ijinshan/cleaner/o;->x:F

    const-string v3, "com.android.vending"

    invoke-direct {p0, v3}, Lcom/ijinshan/cleaner/o;->b(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/ijinshan/cleaner/o;->z:Lcom/keniu/security/a;

    invoke-virtual {v3}, Lcom/keniu/security/a;->aj()Z

    move-result v3

    if-eqz v3, :cond_7

    new-instance v3, Lcom/ijinshan/cleaner/a/b;

    invoke-direct {v3}, Lcom/ijinshan/cleaner/a/b;-><init>()V

    const-string v4, "\u8c37\u6b4cMarket\u8bb0\u5f55"

    invoke-virtual {v3, v4}, Lcom/ijinshan/cleaner/a/b;->a(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/ijinshan/cleaner/a/b;->a()V

    iput-object v3, v2, Lcom/ijinshan/cleaner/u;->c:Lcom/ijinshan/cleaner/a/b;

    iget-object v4, p0, Lcom/ijinshan/cleaner/o;->t:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/ijinshan/cleaner/o;->o:Lcom/ijinshan/cleaner/s;

    invoke-interface {v3, v2}, Lcom/ijinshan/cleaner/s;->a(Lcom/ijinshan/cleaner/u;)V

    :cond_7
    iget v3, p0, Lcom/ijinshan/cleaner/o;->x:F

    add-float/2addr v0, v3

    iput v0, p0, Lcom/ijinshan/cleaner/o;->x:F

    iget-object v0, p0, Lcom/ijinshan/cleaner/o;->o:Lcom/ijinshan/cleaner/s;

    iget v0, p0, Lcom/ijinshan/cleaner/o;->x:F

    invoke-virtual {v1}, Lcom/ijinshan/cleaner/n;->b()Z

    move-result v0

    if-eqz v0, :cond_8

    new-instance v0, Lcom/ijinshan/cleaner/a/b;

    invoke-direct {v0}, Lcom/ijinshan/cleaner/a/b;-><init>()V

    const-string v1, "\u526a\u8d34\u677f\u8bb0\u5f55"

    invoke-virtual {v0, v1}, Lcom/ijinshan/cleaner/a/b;->a(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/ijinshan/cleaner/a/b;->a()V

    iput-object v0, v2, Lcom/ijinshan/cleaner/u;->c:Lcom/ijinshan/cleaner/a/b;

    iget-object v1, p0, Lcom/ijinshan/cleaner/o;->t:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/ijinshan/cleaner/o;->o:Lcom/ijinshan/cleaner/s;

    invoke-interface {v0, v2}, Lcom/ijinshan/cleaner/s;->a(Lcom/ijinshan/cleaner/u;)V

    .line 131
    :cond_8
    iget-object v0, p0, Lcom/ijinshan/cleaner/o;->o:Lcom/ijinshan/cleaner/s;

    .line 132
    return-void

    :cond_9
    move v0, v3

    goto/16 :goto_0
.end method
