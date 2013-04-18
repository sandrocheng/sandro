.class public final Lcom/keniu/security/sync/d/d/a/bw;
.super Lcom/b/a/dk;
.source "Appsvr.java"

# interfaces
.implements Lcom/keniu/security/sync/d/d/a/by;


# static fields
.field public static final a:I = 0x1

.field private static final b:Lcom/keniu/security/sync/d/d/a/bw;

.field private static final g:J


# instance fields
.field private c:I

.field private d:Ljava/lang/Object;

.field private e:B

.field private f:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 22542
    new-instance v0, Lcom/keniu/security/sync/d/d/a/bw;

    invoke-direct {v0}, Lcom/keniu/security/sync/d/d/a/bw;-><init>()V

    .line 22543
    sput-object v0, Lcom/keniu/security/sync/d/d/a/bw;->b:Lcom/keniu/security/sync/d/d/a/bw;

    const-string v1, ""

    iput-object v1, v0, Lcom/keniu/security/sync/d/d/a/bw;->d:Ljava/lang/Object;

    .line 22544
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 22180
    invoke-direct {p0}, Lcom/b/a/dk;-><init>()V

    .line 22237
    iput-byte v0, p0, Lcom/keniu/security/sync/d/d/a/bw;->e:B

    .line 22259
    iput v0, p0, Lcom/keniu/security/sync/d/d/a/bw;->f:I

    .line 22180
    return-void
.end method

.method synthetic constructor <init>(Lcom/keniu/security/sync/d/d/a/bx;)V
    .locals 1
    .parameter

    .prologue
    .line 22173
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/keniu/security/sync/d/d/a/bw;-><init>(Lcom/keniu/security/sync/d/d/a/bx;B)V

    return-void
.end method

.method private constructor <init>(Lcom/keniu/security/sync/d/d/a/bx;B)V
    .locals 1
    .parameter
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 22178
    invoke-direct {p0, p1}, Lcom/b/a/dk;-><init>(Lcom/b/a/dn;)V

    .line 22237
    iput-byte v0, p0, Lcom/keniu/security/sync/d/d/a/bw;->e:B

    .line 22259
    iput v0, p0, Lcom/keniu/security/sync/d/d/a/bw;->f:I

    .line 22179
    return-void
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/bw;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 22173
    iput p1, p0, Lcom/keniu/security/sync/d/d/a/bw;->c:I

    return p1
.end method

.method private static a(Lcom/b/a/i;)Lcom/keniu/security/sync/d/d/a/bw;
    .locals 1
    .parameter

    .prologue
    .line 22284
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/bx;->i()Lcom/keniu/security/sync/d/d/a/bx;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/bx;->a(Lcom/b/a/i;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/bx;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/bx;->a(Lcom/keniu/security/sync/d/d/a/bx;)Lcom/keniu/security/sync/d/d/a/bw;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/i;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/bw;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 22290
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/bx;->i()Lcom/keniu/security/sync/d/d/a/bx;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/bx;->a(Lcom/b/a/i;Lcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/bx;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/bx;->a(Lcom/keniu/security/sync/d/d/a/bx;)Lcom/keniu/security/sync/d/d/a/bw;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/m;)Lcom/keniu/security/sync/d/d/a/bw;
    .locals 1
    .parameter

    .prologue
    .line 22338
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/bx;->i()Lcom/keniu/security/sync/d/d/a/bx;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/bx;->a(Lcom/b/a/m;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/bx;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/bx;->a(Lcom/keniu/security/sync/d/d/a/bx;)Lcom/keniu/security/sync/d/d/a/bw;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/bw;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 22344
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/bx;->i()Lcom/keniu/security/sync/d/d/a/bx;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/bx;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/bx;

    move-result-object v0

    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/bx;->a(Lcom/keniu/security/sync/d/d/a/bx;)Lcom/keniu/security/sync/d/d/a/bw;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/io/InputStream;)Lcom/keniu/security/sync/d/d/a/bw;
    .locals 1
    .parameter

    .prologue
    .line 22306
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/bx;->i()Lcom/keniu/security/sync/d/d/a/bx;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/bx;->a(Ljava/io/InputStream;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/bx;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/bx;->a(Lcom/keniu/security/sync/d/d/a/bx;)Lcom/keniu/security/sync/d/d/a/bw;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/bw;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 22312
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/bx;->i()Lcom/keniu/security/sync/d/d/a/bx;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/bx;->a(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/bx;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/bx;->a(Lcom/keniu/security/sync/d/d/a/bx;)Lcom/keniu/security/sync/d/d/a/bw;

    move-result-object v0

    return-object v0
.end method

.method private static a([B)Lcom/keniu/security/sync/d/d/a/bw;
    .locals 1
    .parameter

    .prologue
    .line 22295
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/bx;->i()Lcom/keniu/security/sync/d/d/a/bx;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/bx;->a([B)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/bx;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/bx;->a(Lcom/keniu/security/sync/d/d/a/bx;)Lcom/keniu/security/sync/d/d/a/bw;

    move-result-object v0

    return-object v0
.end method

.method private static a([BLcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/bw;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 22301
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/bx;->i()Lcom/keniu/security/sync/d/d/a/bx;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/bx;->a([BLcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/bx;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/bx;->a(Lcom/keniu/security/sync/d/d/a/bx;)Lcom/keniu/security/sync/d/d/a/bw;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/keniu/security/sync/d/d/a/bw;)Lcom/keniu/security/sync/d/d/a/bx;
    .locals 1
    .parameter

    .prologue
    .line 22351
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/bx;->i()Lcom/keniu/security/sync/d/d/a/bx;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/bx;->a(Lcom/keniu/security/sync/d/d/a/bw;)Lcom/keniu/security/sync/d/d/a/bx;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/bw;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 22173
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/bw;->d:Ljava/lang/Object;

    return-object p1
.end method

.method private static b(Ljava/io/InputStream;)Lcom/keniu/security/sync/d/d/a/bw;
    .locals 2
    .parameter

    .prologue
    .line 22317
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/bx;->i()Lcom/keniu/security/sync/d/d/a/bx;

    move-result-object v0

    .line 22318
    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/bx;->b(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 22319
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/bx;->a(Lcom/keniu/security/sync/d/d/a/bx;)Lcom/keniu/security/sync/d/d/a/bw;

    move-result-object v0

    .line 22321
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/bw;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 22328
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/bx;->i()Lcom/keniu/security/sync/d/d/a/bx;

    move-result-object v0

    .line 22329
    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/bx;->b(Ljava/io/InputStream;Lcom/b/a/df;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 22330
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/bx;->a(Lcom/keniu/security/sync/d/d/a/bx;)Lcom/keniu/security/sync/d/d/a/bw;

    move-result-object v0

    .line 22332
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Lcom/b/a/dp;)Lcom/keniu/security/sync/d/d/a/bx;
    .locals 1
    .parameter

    .prologue
    .line 22358
    new-instance v0, Lcom/keniu/security/sync/d/d/a/bx;

    invoke-direct {v0, p0}, Lcom/keniu/security/sync/d/d/a/bx;-><init>(Lcom/b/a/dp;)V

    .line 22359
    return-object v0
.end method

.method public static h()Lcom/keniu/security/sync/d/d/a/bw;
    .locals 1

    .prologue
    .line 22184
    sget-object v0, Lcom/keniu/security/sync/d/d/a/bw;->b:Lcom/keniu/security/sync/d/d/a/bw;

    return-object v0
.end method

.method public static final i()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 22193
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/a;->an()Lcom/b/a/cj;

    move-result-object v0

    return-object v0
.end method

.method static synthetic l()Z
    .locals 1

    .prologue
    .line 22173
    sget-boolean v0, Lcom/keniu/security/sync/d/d/a/bw;->j:Z

    return v0
.end method

.method private static m()Lcom/keniu/security/sync/d/d/a/bw;
    .locals 1

    .prologue
    .line 22188
    sget-object v0, Lcom/keniu/security/sync/d/d/a/bw;->b:Lcom/keniu/security/sync/d/d/a/bw;

    return-object v0
.end method

.method private n()Lcom/b/a/i;
    .locals 2

    .prologue
    .line 22223
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/bw;->d:Ljava/lang/Object;

    .line 22224
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 22225
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/b/a/i;->a(Ljava/lang/String;)Lcom/b/a/i;

    move-result-object v0

    .line 22227
    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/bw;->d:Ljava/lang/Object;

    .line 22230
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/b/a/i;

    goto :goto_0
.end method

.method private o()V
    .locals 1

    .prologue
    .line 22235
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/bw;->d:Ljava/lang/Object;

    .line 22236
    return-void
.end method

.method private static p()Lcom/keniu/security/sync/d/d/a/bx;
    .locals 1

    .prologue
    .line 22348
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/bx;->i()Lcom/keniu/security/sync/d/d/a/bx;

    move-result-object v0

    return-object v0
.end method

.method private static q()Lcom/keniu/security/sync/d/d/a/bx;
    .locals 1

    .prologue
    .line 22349
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/bx;->i()Lcom/keniu/security/sync/d/d/a/bx;

    move-result-object v0

    return-object v0
.end method

.method private r()Lcom/keniu/security/sync/d/d/a/bx;
    .locals 1

    .prologue
    .line 22353
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/bx;->i()Lcom/keniu/security/sync/d/d/a/bx;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/bx;->a(Lcom/keniu/security/sync/d/d/a/bw;)Lcom/keniu/security/sync/d/d/a/bx;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final B()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 22278
    invoke-super {p0}, Lcom/b/a/dk;->B()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic D()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 22173
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/bw;->r()Lcom/keniu/security/sync/d/d/a/bx;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic E()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 22173
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/bx;->i()Lcom/keniu/security/sync/d/d/a/bx;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic F()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 22173
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/bw;->r()Lcom/keniu/security/sync/d/d/a/bx;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic G()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 22173
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/bx;->i()Lcom/keniu/security/sync/d/d/a/bx;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic H()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 22173
    sget-object v0, Lcom/keniu/security/sync/d/d/a/bw;->b:Lcom/keniu/security/sync/d/d/a/bw;

    return-object v0
.end method

.method public final bridge synthetic I()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 22173
    sget-object v0, Lcom/keniu/security/sync/d/d/a/bw;->b:Lcom/keniu/security/sync/d/d/a/bw;

    return-object v0
.end method

.method protected final synthetic a(Lcom/b/a/dp;)Lcom/b/a/ew;
    .locals 1
    .parameter

    .prologue
    .line 22173
    new-instance v0, Lcom/keniu/security/sync/d/d/a/bx;

    invoke-direct {v0, p1}, Lcom/keniu/security/sync/d/d/a/bx;-><init>(Lcom/b/a/dp;)V

    return-object v0
.end method

.method public final a(Lcom/b/a/n;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 22252
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/bw;->b()I

    .line 22253
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/bw;->c:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 22254
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/bw;->n()Lcom/b/a/i;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/b/a/n;->a(ILcom/b/a/i;)V

    .line 22256
    :cond_0
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/bw;->b_()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/b/a/gg;->a(Lcom/b/a/n;)V

    .line 22257
    return-void
.end method

.method public final a()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 22239
    iget-byte v0, p0, Lcom/keniu/security/sync/d/d/a/bw;->e:B

    .line 22240
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-ne v0, v2, :cond_0

    move v0, v2

    .line 22247
    :goto_0
    return v0

    :cond_0
    move v0, v3

    .line 22240
    goto :goto_0

    .line 22242
    :cond_1
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/bw;->j()Z

    move-result v0

    if-nez v0, :cond_2

    .line 22243
    iput-byte v3, p0, Lcom/keniu/security/sync/d/d/a/bw;->e:B

    move v0, v3

    .line 22244
    goto :goto_0

    .line 22246
    :cond_2
    iput-byte v2, p0, Lcom/keniu/security/sync/d/d/a/bw;->e:B

    move v0, v2

    .line 22247
    goto :goto_0
.end method

.method public final b()I
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 22261
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/bw;->f:I

    .line 22262
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 22271
    :goto_0
    return v0

    .line 22264
    :cond_0
    const/4 v0, 0x0

    .line 22265
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/bw;->c:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_1

    .line 22266
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/bw;->n()Lcom/b/a/i;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/b/a/n;->c(ILcom/b/a/i;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 22269
    :cond_1
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/bw;->b_()Lcom/b/a/gg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/b/a/gg;->b()I

    move-result v1

    add-int/2addr v0, v1

    .line 22270
    iput v0, p0, Lcom/keniu/security/sync/d/d/a/bw;->f:I

    goto :goto_0
.end method

.method protected final g()Lcom/b/a/dv;
    .locals 1

    .prologue
    .line 22198
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/a;->ao()Lcom/b/a/dv;

    move-result-object v0

    return-object v0
.end method

.method public final j()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 22206
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/bw;->c:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final k()Ljava/lang/String;
    .locals 3

    .prologue
    .line 22209
    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/bw;->d:Ljava/lang/Object;

    .line 22210
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 22211
    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object p0, v0

    move-object v1, p0

    .line 22219
    :goto_0
    return-object v1

    .line 22213
    :cond_0
    check-cast v1, Lcom/b/a/i;

    .line 22215
    invoke-virtual {v1}, Lcom/b/a/i;->b()Ljava/lang/String;

    move-result-object v2

    .line 22216
    invoke-static {v1}, Lcom/b/a/ep;->a(Lcom/b/a/i;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 22217
    iput-object v2, p0, Lcom/keniu/security/sync/d/d/a/bw;->d:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 22219
    goto :goto_0
.end method
