.class public final Lcom/keniu/security/sync/d/d/a/fz;
.super Lcom/b/a/dk;
.source "Appsvr.java"

# interfaces
.implements Lcom/keniu/security/sync/d/d/a/gb;


# static fields
.field public static final a:I = 0x1

.field private static final b:Lcom/keniu/security/sync/d/d/a/fz;

.field private static final g:J


# instance fields
.field private c:I

.field private d:Lcom/keniu/security/sync/d/d/a/ge;

.field private e:B

.field private f:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 34502
    new-instance v0, Lcom/keniu/security/sync/d/d/a/fz;

    invoke-direct {v0}, Lcom/keniu/security/sync/d/d/a/fz;-><init>()V

    .line 34503
    sput-object v0, Lcom/keniu/security/sync/d/d/a/fz;->b:Lcom/keniu/security/sync/d/d/a/fz;

    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->h()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v1

    iput-object v1, v0, Lcom/keniu/security/sync/d/d/a/fz;->d:Lcom/keniu/security/sync/d/d/a/ge;

    .line 34504
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 34084
    invoke-direct {p0}, Lcom/b/a/dk;-><init>()V

    .line 34122
    iput-byte v0, p0, Lcom/keniu/security/sync/d/d/a/fz;->e:B

    .line 34148
    iput v0, p0, Lcom/keniu/security/sync/d/d/a/fz;->f:I

    .line 34084
    return-void
.end method

.method synthetic constructor <init>(Lcom/keniu/security/sync/d/d/a/ga;)V
    .locals 1
    .parameter

    .prologue
    .line 34077
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/keniu/security/sync/d/d/a/fz;-><init>(Lcom/keniu/security/sync/d/d/a/ga;B)V

    return-void
.end method

.method private constructor <init>(Lcom/keniu/security/sync/d/d/a/ga;B)V
    .locals 1
    .parameter
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 34082
    invoke-direct {p0, p1}, Lcom/b/a/dk;-><init>(Lcom/b/a/dn;)V

    .line 34122
    iput-byte v0, p0, Lcom/keniu/security/sync/d/d/a/fz;->e:B

    .line 34148
    iput v0, p0, Lcom/keniu/security/sync/d/d/a/fz;->f:I

    .line 34083
    return-void
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/fz;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 34077
    iput p1, p0, Lcom/keniu/security/sync/d/d/a/fz;->c:I

    return p1
.end method

.method private static a(Lcom/b/a/i;)Lcom/keniu/security/sync/d/d/a/fz;
    .locals 1
    .parameter

    .prologue
    .line 34173
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ga;->i()Lcom/keniu/security/sync/d/d/a/ga;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/ga;->a(Lcom/b/a/i;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/ga;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/ga;->a(Lcom/keniu/security/sync/d/d/a/ga;)Lcom/keniu/security/sync/d/d/a/fz;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/i;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/fz;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 34179
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ga;->i()Lcom/keniu/security/sync/d/d/a/ga;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/ga;->a(Lcom/b/a/i;Lcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/ga;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/ga;->a(Lcom/keniu/security/sync/d/d/a/ga;)Lcom/keniu/security/sync/d/d/a/fz;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/m;)Lcom/keniu/security/sync/d/d/a/fz;
    .locals 1
    .parameter

    .prologue
    .line 34227
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ga;->i()Lcom/keniu/security/sync/d/d/a/ga;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/ga;->a(Lcom/b/a/m;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/ga;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/ga;->a(Lcom/keniu/security/sync/d/d/a/ga;)Lcom/keniu/security/sync/d/d/a/fz;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/fz;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 34233
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ga;->i()Lcom/keniu/security/sync/d/d/a/ga;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/ga;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/ga;

    move-result-object v0

    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/ga;->a(Lcom/keniu/security/sync/d/d/a/ga;)Lcom/keniu/security/sync/d/d/a/fz;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/io/InputStream;)Lcom/keniu/security/sync/d/d/a/fz;
    .locals 1
    .parameter

    .prologue
    .line 34195
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ga;->i()Lcom/keniu/security/sync/d/d/a/ga;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/ga;->a(Ljava/io/InputStream;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/ga;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/ga;->a(Lcom/keniu/security/sync/d/d/a/ga;)Lcom/keniu/security/sync/d/d/a/fz;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/fz;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 34201
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ga;->i()Lcom/keniu/security/sync/d/d/a/ga;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/ga;->a(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/ga;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/ga;->a(Lcom/keniu/security/sync/d/d/a/ga;)Lcom/keniu/security/sync/d/d/a/fz;

    move-result-object v0

    return-object v0
.end method

.method private static a([B)Lcom/keniu/security/sync/d/d/a/fz;
    .locals 1
    .parameter

    .prologue
    .line 34184
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ga;->i()Lcom/keniu/security/sync/d/d/a/ga;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/ga;->a([B)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/ga;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/ga;->a(Lcom/keniu/security/sync/d/d/a/ga;)Lcom/keniu/security/sync/d/d/a/fz;

    move-result-object v0

    return-object v0
.end method

.method private static a([BLcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/fz;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 34190
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ga;->i()Lcom/keniu/security/sync/d/d/a/ga;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/ga;->a([BLcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/ga;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/ga;->a(Lcom/keniu/security/sync/d/d/a/ga;)Lcom/keniu/security/sync/d/d/a/fz;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/keniu/security/sync/d/d/a/fz;)Lcom/keniu/security/sync/d/d/a/ga;
    .locals 1
    .parameter

    .prologue
    .line 34240
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ga;->i()Lcom/keniu/security/sync/d/d/a/ga;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/ga;->a(Lcom/keniu/security/sync/d/d/a/fz;)Lcom/keniu/security/sync/d/d/a/ga;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/fz;Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/ge;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 34077
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/fz;->d:Lcom/keniu/security/sync/d/d/a/ge;

    return-object p1
.end method

.method private static b(Ljava/io/InputStream;)Lcom/keniu/security/sync/d/d/a/fz;
    .locals 2
    .parameter

    .prologue
    .line 34206
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ga;->i()Lcom/keniu/security/sync/d/d/a/ga;

    move-result-object v0

    .line 34207
    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/ga;->b(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 34208
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/ga;->a(Lcom/keniu/security/sync/d/d/a/ga;)Lcom/keniu/security/sync/d/d/a/fz;

    move-result-object v0

    .line 34210
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/fz;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 34217
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ga;->i()Lcom/keniu/security/sync/d/d/a/ga;

    move-result-object v0

    .line 34218
    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/ga;->b(Ljava/io/InputStream;Lcom/b/a/df;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 34219
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/ga;->a(Lcom/keniu/security/sync/d/d/a/ga;)Lcom/keniu/security/sync/d/d/a/fz;

    move-result-object v0

    .line 34221
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Lcom/b/a/dp;)Lcom/keniu/security/sync/d/d/a/ga;
    .locals 1
    .parameter

    .prologue
    .line 34247
    new-instance v0, Lcom/keniu/security/sync/d/d/a/ga;

    invoke-direct {v0, p0}, Lcom/keniu/security/sync/d/d/a/ga;-><init>(Lcom/b/a/dp;)V

    .line 34248
    return-object v0
.end method

.method public static h()Lcom/keniu/security/sync/d/d/a/fz;
    .locals 1

    .prologue
    .line 34088
    sget-object v0, Lcom/keniu/security/sync/d/d/a/fz;->b:Lcom/keniu/security/sync/d/d/a/fz;

    return-object v0
.end method

.method public static final i()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 34097
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/a;->aZ()Lcom/b/a/cj;

    move-result-object v0

    return-object v0
.end method

.method static synthetic m()Z
    .locals 1

    .prologue
    .line 34077
    sget-boolean v0, Lcom/keniu/security/sync/d/d/a/fz;->j:Z

    return v0
.end method

.method private static n()Lcom/keniu/security/sync/d/d/a/fz;
    .locals 1

    .prologue
    .line 34092
    sget-object v0, Lcom/keniu/security/sync/d/d/a/fz;->b:Lcom/keniu/security/sync/d/d/a/fz;

    return-object v0
.end method

.method private o()V
    .locals 1

    .prologue
    .line 34120
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->h()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/fz;->d:Lcom/keniu/security/sync/d/d/a/ge;

    .line 34121
    return-void
.end method

.method private static p()Lcom/keniu/security/sync/d/d/a/ga;
    .locals 1

    .prologue
    .line 34237
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ga;->i()Lcom/keniu/security/sync/d/d/a/ga;

    move-result-object v0

    return-object v0
.end method

.method private static q()Lcom/keniu/security/sync/d/d/a/ga;
    .locals 1

    .prologue
    .line 34238
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ga;->i()Lcom/keniu/security/sync/d/d/a/ga;

    move-result-object v0

    return-object v0
.end method

.method private r()Lcom/keniu/security/sync/d/d/a/ga;
    .locals 1

    .prologue
    .line 34242
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ga;->i()Lcom/keniu/security/sync/d/d/a/ga;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/ga;->a(Lcom/keniu/security/sync/d/d/a/fz;)Lcom/keniu/security/sync/d/d/a/ga;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final B()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 34167
    invoke-super {p0}, Lcom/b/a/dk;->B()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic D()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 34077
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/fz;->r()Lcom/keniu/security/sync/d/d/a/ga;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic E()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 34077
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ga;->i()Lcom/keniu/security/sync/d/d/a/ga;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic F()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 34077
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/fz;->r()Lcom/keniu/security/sync/d/d/a/ga;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic G()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 34077
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ga;->i()Lcom/keniu/security/sync/d/d/a/ga;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic H()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 34077
    sget-object v0, Lcom/keniu/security/sync/d/d/a/fz;->b:Lcom/keniu/security/sync/d/d/a/fz;

    return-object v0
.end method

.method public final bridge synthetic I()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 34077
    sget-object v0, Lcom/keniu/security/sync/d/d/a/fz;->b:Lcom/keniu/security/sync/d/d/a/fz;

    return-object v0
.end method

.method protected final synthetic a(Lcom/b/a/dp;)Lcom/b/a/ew;
    .locals 1
    .parameter

    .prologue
    .line 34077
    new-instance v0, Lcom/keniu/security/sync/d/d/a/ga;

    invoke-direct {v0, p1}, Lcom/keniu/security/sync/d/d/a/ga;-><init>(Lcom/b/a/dp;)V

    return-object v0
.end method

.method public final a(Lcom/b/a/n;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 34141
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/fz;->b()I

    .line 34142
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/fz;->c:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 34143
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/fz;->d:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-virtual {p1, v1, v0}, Lcom/b/a/n;->b(ILcom/b/a/ex;)V

    .line 34145
    :cond_0
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/fz;->b_()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/b/a/gg;->a(Lcom/b/a/n;)V

    .line 34146
    return-void
.end method

.method public final a()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 34124
    iget-byte v0, p0, Lcom/keniu/security/sync/d/d/a/fz;->e:B

    .line 34125
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-ne v0, v3, :cond_0

    move v0, v3

    .line 34136
    :goto_0
    return v0

    :cond_0
    move v0, v2

    .line 34125
    goto :goto_0

    .line 34127
    :cond_1
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/fz;->j()Z

    move-result v0

    if-nez v0, :cond_2

    .line 34128
    iput-byte v2, p0, Lcom/keniu/security/sync/d/d/a/fz;->e:B

    move v0, v2

    .line 34129
    goto :goto_0

    .line 34131
    :cond_2
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/fz;->d:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/ge;->a()Z

    move-result v0

    if-nez v0, :cond_3

    .line 34132
    iput-byte v2, p0, Lcom/keniu/security/sync/d/d/a/fz;->e:B

    move v0, v2

    .line 34133
    goto :goto_0

    .line 34135
    :cond_3
    iput-byte v3, p0, Lcom/keniu/security/sync/d/d/a/fz;->e:B

    move v0, v3

    .line 34136
    goto :goto_0
.end method

.method public final b()I
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 34150
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/fz;->f:I

    .line 34151
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 34160
    :goto_0
    return v0

    .line 34153
    :cond_0
    const/4 v0, 0x0

    .line 34154
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/fz;->c:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_1

    .line 34155
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/fz;->d:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-static {v2, v0}, Lcom/b/a/n;->e(ILcom/b/a/ex;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 34158
    :cond_1
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/fz;->b_()Lcom/b/a/gg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/b/a/gg;->b()I

    move-result v1

    add-int/2addr v0, v1

    .line 34159
    iput v0, p0, Lcom/keniu/security/sync/d/d/a/fz;->f:I

    goto :goto_0
.end method

.method protected final g()Lcom/b/a/dv;
    .locals 1

    .prologue
    .line 34102
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/a;->ba()Lcom/b/a/dv;

    move-result-object v0

    return-object v0
.end method

.method public final j()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 34110
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/fz;->c:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final k()Lcom/keniu/security/sync/d/d/a/ge;
    .locals 1

    .prologue
    .line 34113
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/fz;->d:Lcom/keniu/security/sync/d/d/a/ge;

    return-object v0
.end method

.method public final l()Lcom/keniu/security/sync/d/d/a/gg;
    .locals 1

    .prologue
    .line 34116
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/fz;->d:Lcom/keniu/security/sync/d/d/a/ge;

    return-object v0
.end method
