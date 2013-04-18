.class public final Lcom/keniu/security/sync/d/d/a/i;
.super Lcom/b/a/dk;
.source "Appsvr.java"

# interfaces
.implements Lcom/keniu/security/sync/d/d/a/k;


# static fields
.field public static final a:I = 0x1

.field public static final b:I = 0x2

.field private static final c:Lcom/keniu/security/sync/d/d/a/i;

.field private static final i:J


# instance fields
.field private d:I

.field private e:Ljava/lang/Object;

.field private f:Ljava/lang/Object;

.field private g:B

.field private h:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 26542
    new-instance v0, Lcom/keniu/security/sync/d/d/a/i;

    invoke-direct {v0}, Lcom/keniu/security/sync/d/d/a/i;-><init>()V

    .line 26543
    sput-object v0, Lcom/keniu/security/sync/d/d/a/i;->c:Lcom/keniu/security/sync/d/d/a/i;

    const-string v1, ""

    iput-object v1, v0, Lcom/keniu/security/sync/d/d/a/i;->e:Ljava/lang/Object;

    const-string v1, ""

    iput-object v1, v0, Lcom/keniu/security/sync/d/d/a/i;->f:Ljava/lang/Object;

    .line 26544
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 26082
    invoke-direct {p0}, Lcom/b/a/dk;-><init>()V

    .line 26172
    iput-byte v0, p0, Lcom/keniu/security/sync/d/d/a/i;->g:B

    .line 26201
    iput v0, p0, Lcom/keniu/security/sync/d/d/a/i;->h:I

    .line 26082
    return-void
.end method

.method synthetic constructor <init>(Lcom/keniu/security/sync/d/d/a/j;)V
    .locals 1
    .parameter

    .prologue
    .line 26075
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/keniu/security/sync/d/d/a/i;-><init>(Lcom/keniu/security/sync/d/d/a/j;B)V

    return-void
.end method

.method private constructor <init>(Lcom/keniu/security/sync/d/d/a/j;B)V
    .locals 1
    .parameter
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 26080
    invoke-direct {p0, p1}, Lcom/b/a/dk;-><init>(Lcom/b/a/dn;)V

    .line 26172
    iput-byte v0, p0, Lcom/keniu/security/sync/d/d/a/i;->g:B

    .line 26201
    iput v0, p0, Lcom/keniu/security/sync/d/d/a/i;->h:I

    .line 26081
    return-void
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/i;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 26075
    iput p1, p0, Lcom/keniu/security/sync/d/d/a/i;->d:I

    return p1
.end method

.method private static a(Lcom/b/a/i;)Lcom/keniu/security/sync/d/d/a/i;
    .locals 1
    .parameter

    .prologue
    .line 26230
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/j;->i()Lcom/keniu/security/sync/d/d/a/j;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/j;->a(Lcom/b/a/i;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/j;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/j;->a(Lcom/keniu/security/sync/d/d/a/j;)Lcom/keniu/security/sync/d/d/a/i;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/i;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/i;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 26236
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/j;->i()Lcom/keniu/security/sync/d/d/a/j;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/j;->a(Lcom/b/a/i;Lcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/j;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/j;->a(Lcom/keniu/security/sync/d/d/a/j;)Lcom/keniu/security/sync/d/d/a/i;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/m;)Lcom/keniu/security/sync/d/d/a/i;
    .locals 1
    .parameter

    .prologue
    .line 26284
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/j;->i()Lcom/keniu/security/sync/d/d/a/j;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/j;->a(Lcom/b/a/m;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/j;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/j;->a(Lcom/keniu/security/sync/d/d/a/j;)Lcom/keniu/security/sync/d/d/a/i;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/i;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 26290
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/j;->i()Lcom/keniu/security/sync/d/d/a/j;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/j;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/j;

    move-result-object v0

    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/j;->a(Lcom/keniu/security/sync/d/d/a/j;)Lcom/keniu/security/sync/d/d/a/i;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/io/InputStream;)Lcom/keniu/security/sync/d/d/a/i;
    .locals 1
    .parameter

    .prologue
    .line 26252
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/j;->i()Lcom/keniu/security/sync/d/d/a/j;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/j;->a(Ljava/io/InputStream;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/j;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/j;->a(Lcom/keniu/security/sync/d/d/a/j;)Lcom/keniu/security/sync/d/d/a/i;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/i;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 26258
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/j;->i()Lcom/keniu/security/sync/d/d/a/j;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/j;->a(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/j;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/j;->a(Lcom/keniu/security/sync/d/d/a/j;)Lcom/keniu/security/sync/d/d/a/i;

    move-result-object v0

    return-object v0
.end method

.method private static a([B)Lcom/keniu/security/sync/d/d/a/i;
    .locals 1
    .parameter

    .prologue
    .line 26241
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/j;->i()Lcom/keniu/security/sync/d/d/a/j;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/j;->a([B)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/j;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/j;->a(Lcom/keniu/security/sync/d/d/a/j;)Lcom/keniu/security/sync/d/d/a/i;

    move-result-object v0

    return-object v0
.end method

.method private static a([BLcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/i;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 26247
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/j;->i()Lcom/keniu/security/sync/d/d/a/j;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/j;->a([BLcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/j;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/j;->a(Lcom/keniu/security/sync/d/d/a/j;)Lcom/keniu/security/sync/d/d/a/i;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/keniu/security/sync/d/d/a/i;)Lcom/keniu/security/sync/d/d/a/j;
    .locals 1
    .parameter

    .prologue
    .line 26297
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/j;->i()Lcom/keniu/security/sync/d/d/a/j;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/j;->a(Lcom/keniu/security/sync/d/d/a/i;)Lcom/keniu/security/sync/d/d/a/j;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/i;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 26075
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/i;->e:Ljava/lang/Object;

    return-object p1
.end method

.method private static b(Ljava/io/InputStream;)Lcom/keniu/security/sync/d/d/a/i;
    .locals 2
    .parameter

    .prologue
    .line 26263
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/j;->i()Lcom/keniu/security/sync/d/d/a/j;

    move-result-object v0

    .line 26264
    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/j;->b(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 26265
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/j;->a(Lcom/keniu/security/sync/d/d/a/j;)Lcom/keniu/security/sync/d/d/a/i;

    move-result-object v0

    .line 26267
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/i;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 26274
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/j;->i()Lcom/keniu/security/sync/d/d/a/j;

    move-result-object v0

    .line 26275
    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/j;->b(Ljava/io/InputStream;Lcom/b/a/df;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 26276
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/j;->a(Lcom/keniu/security/sync/d/d/a/j;)Lcom/keniu/security/sync/d/d/a/i;

    move-result-object v0

    .line 26278
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Lcom/b/a/dp;)Lcom/keniu/security/sync/d/d/a/j;
    .locals 1
    .parameter

    .prologue
    .line 26304
    new-instance v0, Lcom/keniu/security/sync/d/d/a/j;

    invoke-direct {v0, p0}, Lcom/keniu/security/sync/d/d/a/j;-><init>(Lcom/b/a/dp;)V

    .line 26305
    return-object v0
.end method

.method static synthetic b(Lcom/keniu/security/sync/d/d/a/i;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 26075
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/i;->f:Ljava/lang/Object;

    return-object p1
.end method

.method public static h()Lcom/keniu/security/sync/d/d/a/i;
    .locals 1

    .prologue
    .line 26086
    sget-object v0, Lcom/keniu/security/sync/d/d/a/i;->c:Lcom/keniu/security/sync/d/d/a/i;

    return-object v0
.end method

.method public static final i()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 26095
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/a;->az()Lcom/b/a/cj;

    move-result-object v0

    return-object v0
.end method

.method static synthetic n()Z
    .locals 1

    .prologue
    .line 26075
    sget-boolean v0, Lcom/keniu/security/sync/d/d/a/i;->j:Z

    return v0
.end method

.method private static o()Lcom/keniu/security/sync/d/d/a/i;
    .locals 1

    .prologue
    .line 26090
    sget-object v0, Lcom/keniu/security/sync/d/d/a/i;->c:Lcom/keniu/security/sync/d/d/a/i;

    return-object v0
.end method

.method private p()Lcom/b/a/i;
    .locals 2

    .prologue
    .line 26125
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/i;->e:Ljava/lang/Object;

    .line 26126
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 26127
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/b/a/i;->a(Ljava/lang/String;)Lcom/b/a/i;

    move-result-object v0

    .line 26129
    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/i;->e:Ljava/lang/Object;

    .line 26132
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/b/a/i;

    goto :goto_0
.end method

.method private q()Lcom/b/a/i;
    .locals 2

    .prologue
    .line 26157
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/i;->f:Ljava/lang/Object;

    .line 26158
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 26159
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/b/a/i;->a(Ljava/lang/String;)Lcom/b/a/i;

    move-result-object v0

    .line 26161
    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/i;->f:Ljava/lang/Object;

    .line 26164
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/b/a/i;

    goto :goto_0
.end method

.method private r()V
    .locals 1

    .prologue
    .line 26169
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/i;->e:Ljava/lang/Object;

    .line 26170
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/i;->f:Ljava/lang/Object;

    .line 26171
    return-void
.end method

.method private static s()Lcom/keniu/security/sync/d/d/a/j;
    .locals 1

    .prologue
    .line 26294
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/j;->i()Lcom/keniu/security/sync/d/d/a/j;

    move-result-object v0

    return-object v0
.end method

.method private static t()Lcom/keniu/security/sync/d/d/a/j;
    .locals 1

    .prologue
    .line 26295
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/j;->i()Lcom/keniu/security/sync/d/d/a/j;

    move-result-object v0

    return-object v0
.end method

.method private u()Lcom/keniu/security/sync/d/d/a/j;
    .locals 1

    .prologue
    .line 26299
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/j;->i()Lcom/keniu/security/sync/d/d/a/j;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/j;->a(Lcom/keniu/security/sync/d/d/a/i;)Lcom/keniu/security/sync/d/d/a/j;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final B()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 26224
    invoke-super {p0}, Lcom/b/a/dk;->B()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic D()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 26075
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/i;->u()Lcom/keniu/security/sync/d/d/a/j;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic E()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 26075
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/j;->i()Lcom/keniu/security/sync/d/d/a/j;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic F()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 26075
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/i;->u()Lcom/keniu/security/sync/d/d/a/j;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic G()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 26075
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/j;->i()Lcom/keniu/security/sync/d/d/a/j;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic H()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 26075
    sget-object v0, Lcom/keniu/security/sync/d/d/a/i;->c:Lcom/keniu/security/sync/d/d/a/i;

    return-object v0
.end method

.method public final bridge synthetic I()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 26075
    sget-object v0, Lcom/keniu/security/sync/d/d/a/i;->c:Lcom/keniu/security/sync/d/d/a/i;

    return-object v0
.end method

.method protected final synthetic a(Lcom/b/a/dp;)Lcom/b/a/ew;
    .locals 1
    .parameter

    .prologue
    .line 26075
    new-instance v0, Lcom/keniu/security/sync/d/d/a/j;

    invoke-direct {v0, p1}, Lcom/keniu/security/sync/d/d/a/j;-><init>(Lcom/b/a/dp;)V

    return-object v0
.end method

.method public final a(Lcom/b/a/n;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 26191
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/i;->b()I

    .line 26192
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/i;->d:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 26193
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/i;->p()Lcom/b/a/i;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/b/a/n;->a(ILcom/b/a/i;)V

    .line 26195
    :cond_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/i;->d:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 26196
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/i;->q()Lcom/b/a/i;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/b/a/n;->a(ILcom/b/a/i;)V

    .line 26198
    :cond_1
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/i;->b_()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/b/a/gg;->a(Lcom/b/a/n;)V

    .line 26199
    return-void
.end method

.method public final a()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 26174
    iget-byte v0, p0, Lcom/keniu/security/sync/d/d/a/i;->g:B

    .line 26175
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-ne v0, v3, :cond_0

    move v0, v3

    .line 26186
    :goto_0
    return v0

    :cond_0
    move v0, v2

    .line 26175
    goto :goto_0

    .line 26177
    :cond_1
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/i;->j()Z

    move-result v0

    if-nez v0, :cond_2

    .line 26178
    iput-byte v2, p0, Lcom/keniu/security/sync/d/d/a/i;->g:B

    move v0, v2

    .line 26179
    goto :goto_0

    .line 26181
    :cond_2
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/i;->l()Z

    move-result v0

    if-nez v0, :cond_3

    .line 26182
    iput-byte v2, p0, Lcom/keniu/security/sync/d/d/a/i;->g:B

    move v0, v2

    .line 26183
    goto :goto_0

    .line 26185
    :cond_3
    iput-byte v3, p0, Lcom/keniu/security/sync/d/d/a/i;->g:B

    move v0, v3

    .line 26186
    goto :goto_0
.end method

.method public final b()I
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 26203
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/i;->h:I

    .line 26204
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 26217
    :goto_0
    return v0

    .line 26206
    :cond_0
    const/4 v0, 0x0

    .line 26207
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/i;->d:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_1

    .line 26208
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/i;->p()Lcom/b/a/i;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/b/a/n;->c(ILcom/b/a/i;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 26211
    :cond_1
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/i;->d:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_2

    .line 26212
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/i;->q()Lcom/b/a/i;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/b/a/n;->c(ILcom/b/a/i;)I

    move-result v1

    add-int/2addr v0, v1

    .line 26215
    :cond_2
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/i;->b_()Lcom/b/a/gg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/b/a/gg;->b()I

    move-result v1

    add-int/2addr v0, v1

    .line 26216
    iput v0, p0, Lcom/keniu/security/sync/d/d/a/i;->h:I

    goto :goto_0
.end method

.method protected final g()Lcom/b/a/dv;
    .locals 1

    .prologue
    .line 26100
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/a;->aA()Lcom/b/a/dv;

    move-result-object v0

    return-object v0
.end method

.method public final j()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 26108
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/i;->d:I

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
    .line 26111
    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/i;->e:Ljava/lang/Object;

    .line 26112
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 26113
    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object p0, v0

    move-object v1, p0

    .line 26121
    :goto_0
    return-object v1

    .line 26115
    :cond_0
    check-cast v1, Lcom/b/a/i;

    .line 26117
    invoke-virtual {v1}, Lcom/b/a/i;->b()Ljava/lang/String;

    move-result-object v2

    .line 26118
    invoke-static {v1}, Lcom/b/a/ep;->a(Lcom/b/a/i;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 26119
    iput-object v2, p0, Lcom/keniu/security/sync/d/d/a/i;->e:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 26121
    goto :goto_0
.end method

.method public final l()Z
    .locals 2

    .prologue
    .line 26140
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/i;->d:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final m()Ljava/lang/String;
    .locals 3

    .prologue
    .line 26143
    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/i;->f:Ljava/lang/Object;

    .line 26144
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 26145
    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object p0, v0

    move-object v1, p0

    .line 26153
    :goto_0
    return-object v1

    .line 26147
    :cond_0
    check-cast v1, Lcom/b/a/i;

    .line 26149
    invoke-virtual {v1}, Lcom/b/a/i;->b()Ljava/lang/String;

    move-result-object v2

    .line 26150
    invoke-static {v1}, Lcom/b/a/ep;->a(Lcom/b/a/i;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 26151
    iput-object v2, p0, Lcom/keniu/security/sync/d/d/a/i;->f:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 26153
    goto :goto_0
.end method
