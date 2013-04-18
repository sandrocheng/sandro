.class public final Lcom/keniu/security/sync/d/d/a/aj;
.super Lcom/b/a/dk;
.source "Appsvr.java"

# interfaces
.implements Lcom/keniu/security/sync/d/d/a/al;


# static fields
.field public static final a:I = 0x1

.field private static final b:Lcom/keniu/security/sync/d/d/a/aj;

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
    .line 35427
    new-instance v0, Lcom/keniu/security/sync/d/d/a/aj;

    invoke-direct {v0}, Lcom/keniu/security/sync/d/d/a/aj;-><init>()V

    .line 35428
    sput-object v0, Lcom/keniu/security/sync/d/d/a/aj;->b:Lcom/keniu/security/sync/d/d/a/aj;

    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->h()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v1

    iput-object v1, v0, Lcom/keniu/security/sync/d/d/a/aj;->d:Lcom/keniu/security/sync/d/d/a/ge;

    .line 35429
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 35009
    invoke-direct {p0}, Lcom/b/a/dk;-><init>()V

    .line 35047
    iput-byte v0, p0, Lcom/keniu/security/sync/d/d/a/aj;->e:B

    .line 35073
    iput v0, p0, Lcom/keniu/security/sync/d/d/a/aj;->f:I

    .line 35009
    return-void
.end method

.method synthetic constructor <init>(Lcom/keniu/security/sync/d/d/a/ak;)V
    .locals 1
    .parameter

    .prologue
    .line 35002
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/keniu/security/sync/d/d/a/aj;-><init>(Lcom/keniu/security/sync/d/d/a/ak;B)V

    return-void
.end method

.method private constructor <init>(Lcom/keniu/security/sync/d/d/a/ak;B)V
    .locals 1
    .parameter
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 35007
    invoke-direct {p0, p1}, Lcom/b/a/dk;-><init>(Lcom/b/a/dn;)V

    .line 35047
    iput-byte v0, p0, Lcom/keniu/security/sync/d/d/a/aj;->e:B

    .line 35073
    iput v0, p0, Lcom/keniu/security/sync/d/d/a/aj;->f:I

    .line 35008
    return-void
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/aj;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 35002
    iput p1, p0, Lcom/keniu/security/sync/d/d/a/aj;->c:I

    return p1
.end method

.method private static a(Lcom/b/a/i;)Lcom/keniu/security/sync/d/d/a/aj;
    .locals 1
    .parameter

    .prologue
    .line 35098
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ak;->i()Lcom/keniu/security/sync/d/d/a/ak;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/ak;->a(Lcom/b/a/i;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/ak;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/ak;->a(Lcom/keniu/security/sync/d/d/a/ak;)Lcom/keniu/security/sync/d/d/a/aj;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/i;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/aj;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 35104
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ak;->i()Lcom/keniu/security/sync/d/d/a/ak;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/ak;->a(Lcom/b/a/i;Lcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/ak;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/ak;->a(Lcom/keniu/security/sync/d/d/a/ak;)Lcom/keniu/security/sync/d/d/a/aj;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/m;)Lcom/keniu/security/sync/d/d/a/aj;
    .locals 1
    .parameter

    .prologue
    .line 35152
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ak;->i()Lcom/keniu/security/sync/d/d/a/ak;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/ak;->a(Lcom/b/a/m;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/ak;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/ak;->a(Lcom/keniu/security/sync/d/d/a/ak;)Lcom/keniu/security/sync/d/d/a/aj;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/aj;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 35158
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ak;->i()Lcom/keniu/security/sync/d/d/a/ak;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/ak;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/ak;

    move-result-object v0

    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/ak;->a(Lcom/keniu/security/sync/d/d/a/ak;)Lcom/keniu/security/sync/d/d/a/aj;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/io/InputStream;)Lcom/keniu/security/sync/d/d/a/aj;
    .locals 1
    .parameter

    .prologue
    .line 35120
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ak;->i()Lcom/keniu/security/sync/d/d/a/ak;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/ak;->a(Ljava/io/InputStream;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/ak;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/ak;->a(Lcom/keniu/security/sync/d/d/a/ak;)Lcom/keniu/security/sync/d/d/a/aj;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/aj;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 35126
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ak;->i()Lcom/keniu/security/sync/d/d/a/ak;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/ak;->a(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/ak;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/ak;->a(Lcom/keniu/security/sync/d/d/a/ak;)Lcom/keniu/security/sync/d/d/a/aj;

    move-result-object v0

    return-object v0
.end method

.method private static a([B)Lcom/keniu/security/sync/d/d/a/aj;
    .locals 1
    .parameter

    .prologue
    .line 35109
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ak;->i()Lcom/keniu/security/sync/d/d/a/ak;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/ak;->a([B)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/ak;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/ak;->a(Lcom/keniu/security/sync/d/d/a/ak;)Lcom/keniu/security/sync/d/d/a/aj;

    move-result-object v0

    return-object v0
.end method

.method private static a([BLcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/aj;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 35115
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ak;->i()Lcom/keniu/security/sync/d/d/a/ak;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/ak;->a([BLcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/ak;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/ak;->a(Lcom/keniu/security/sync/d/d/a/ak;)Lcom/keniu/security/sync/d/d/a/aj;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/keniu/security/sync/d/d/a/aj;)Lcom/keniu/security/sync/d/d/a/ak;
    .locals 1
    .parameter

    .prologue
    .line 35165
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ak;->i()Lcom/keniu/security/sync/d/d/a/ak;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/ak;->a(Lcom/keniu/security/sync/d/d/a/aj;)Lcom/keniu/security/sync/d/d/a/ak;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/aj;Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/ge;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 35002
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/aj;->d:Lcom/keniu/security/sync/d/d/a/ge;

    return-object p1
.end method

.method private static b(Ljava/io/InputStream;)Lcom/keniu/security/sync/d/d/a/aj;
    .locals 2
    .parameter

    .prologue
    .line 35131
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ak;->i()Lcom/keniu/security/sync/d/d/a/ak;

    move-result-object v0

    .line 35132
    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/ak;->b(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 35133
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/ak;->a(Lcom/keniu/security/sync/d/d/a/ak;)Lcom/keniu/security/sync/d/d/a/aj;

    move-result-object v0

    .line 35135
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/aj;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 35142
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ak;->i()Lcom/keniu/security/sync/d/d/a/ak;

    move-result-object v0

    .line 35143
    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/ak;->b(Ljava/io/InputStream;Lcom/b/a/df;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 35144
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/ak;->a(Lcom/keniu/security/sync/d/d/a/ak;)Lcom/keniu/security/sync/d/d/a/aj;

    move-result-object v0

    .line 35146
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Lcom/b/a/dp;)Lcom/keniu/security/sync/d/d/a/ak;
    .locals 1
    .parameter

    .prologue
    .line 35172
    new-instance v0, Lcom/keniu/security/sync/d/d/a/ak;

    invoke-direct {v0, p0}, Lcom/keniu/security/sync/d/d/a/ak;-><init>(Lcom/b/a/dp;)V

    .line 35173
    return-object v0
.end method

.method public static h()Lcom/keniu/security/sync/d/d/a/aj;
    .locals 1

    .prologue
    .line 35013
    sget-object v0, Lcom/keniu/security/sync/d/d/a/aj;->b:Lcom/keniu/security/sync/d/d/a/aj;

    return-object v0
.end method

.method public static final i()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 35022
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/a;->bd()Lcom/b/a/cj;

    move-result-object v0

    return-object v0
.end method

.method static synthetic m()Z
    .locals 1

    .prologue
    .line 35002
    sget-boolean v0, Lcom/keniu/security/sync/d/d/a/aj;->j:Z

    return v0
.end method

.method private static n()Lcom/keniu/security/sync/d/d/a/aj;
    .locals 1

    .prologue
    .line 35017
    sget-object v0, Lcom/keniu/security/sync/d/d/a/aj;->b:Lcom/keniu/security/sync/d/d/a/aj;

    return-object v0
.end method

.method private o()V
    .locals 1

    .prologue
    .line 35045
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->h()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/aj;->d:Lcom/keniu/security/sync/d/d/a/ge;

    .line 35046
    return-void
.end method

.method private static p()Lcom/keniu/security/sync/d/d/a/ak;
    .locals 1

    .prologue
    .line 35162
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ak;->i()Lcom/keniu/security/sync/d/d/a/ak;

    move-result-object v0

    return-object v0
.end method

.method private static q()Lcom/keniu/security/sync/d/d/a/ak;
    .locals 1

    .prologue
    .line 35163
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ak;->i()Lcom/keniu/security/sync/d/d/a/ak;

    move-result-object v0

    return-object v0
.end method

.method private r()Lcom/keniu/security/sync/d/d/a/ak;
    .locals 1

    .prologue
    .line 35167
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ak;->i()Lcom/keniu/security/sync/d/d/a/ak;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/ak;->a(Lcom/keniu/security/sync/d/d/a/aj;)Lcom/keniu/security/sync/d/d/a/ak;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final B()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 35092
    invoke-super {p0}, Lcom/b/a/dk;->B()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic D()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 35002
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/aj;->r()Lcom/keniu/security/sync/d/d/a/ak;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic E()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 35002
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ak;->i()Lcom/keniu/security/sync/d/d/a/ak;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic F()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 35002
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/aj;->r()Lcom/keniu/security/sync/d/d/a/ak;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic G()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 35002
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ak;->i()Lcom/keniu/security/sync/d/d/a/ak;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic H()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 35002
    sget-object v0, Lcom/keniu/security/sync/d/d/a/aj;->b:Lcom/keniu/security/sync/d/d/a/aj;

    return-object v0
.end method

.method public final bridge synthetic I()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 35002
    sget-object v0, Lcom/keniu/security/sync/d/d/a/aj;->b:Lcom/keniu/security/sync/d/d/a/aj;

    return-object v0
.end method

.method protected final synthetic a(Lcom/b/a/dp;)Lcom/b/a/ew;
    .locals 1
    .parameter

    .prologue
    .line 35002
    new-instance v0, Lcom/keniu/security/sync/d/d/a/ak;

    invoke-direct {v0, p1}, Lcom/keniu/security/sync/d/d/a/ak;-><init>(Lcom/b/a/dp;)V

    return-object v0
.end method

.method public final a(Lcom/b/a/n;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 35066
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/aj;->b()I

    .line 35067
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/aj;->c:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 35068
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/aj;->d:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-virtual {p1, v1, v0}, Lcom/b/a/n;->b(ILcom/b/a/ex;)V

    .line 35070
    :cond_0
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/aj;->b_()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/b/a/gg;->a(Lcom/b/a/n;)V

    .line 35071
    return-void
.end method

.method public final a()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 35049
    iget-byte v0, p0, Lcom/keniu/security/sync/d/d/a/aj;->e:B

    .line 35050
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-ne v0, v3, :cond_0

    move v0, v3

    .line 35061
    :goto_0
    return v0

    :cond_0
    move v0, v2

    .line 35050
    goto :goto_0

    .line 35052
    :cond_1
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/aj;->j()Z

    move-result v0

    if-nez v0, :cond_2

    .line 35053
    iput-byte v2, p0, Lcom/keniu/security/sync/d/d/a/aj;->e:B

    move v0, v2

    .line 35054
    goto :goto_0

    .line 35056
    :cond_2
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/aj;->d:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/ge;->a()Z

    move-result v0

    if-nez v0, :cond_3

    .line 35057
    iput-byte v2, p0, Lcom/keniu/security/sync/d/d/a/aj;->e:B

    move v0, v2

    .line 35058
    goto :goto_0

    .line 35060
    :cond_3
    iput-byte v3, p0, Lcom/keniu/security/sync/d/d/a/aj;->e:B

    move v0, v3

    .line 35061
    goto :goto_0
.end method

.method public final b()I
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 35075
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/aj;->f:I

    .line 35076
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 35085
    :goto_0
    return v0

    .line 35078
    :cond_0
    const/4 v0, 0x0

    .line 35079
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/aj;->c:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_1

    .line 35080
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/aj;->d:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-static {v2, v0}, Lcom/b/a/n;->e(ILcom/b/a/ex;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 35083
    :cond_1
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/aj;->b_()Lcom/b/a/gg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/b/a/gg;->b()I

    move-result v1

    add-int/2addr v0, v1

    .line 35084
    iput v0, p0, Lcom/keniu/security/sync/d/d/a/aj;->f:I

    goto :goto_0
.end method

.method protected final g()Lcom/b/a/dv;
    .locals 1

    .prologue
    .line 35027
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/a;->be()Lcom/b/a/dv;

    move-result-object v0

    return-object v0
.end method

.method public final j()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 35035
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/aj;->c:I

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
    .line 35038
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/aj;->d:Lcom/keniu/security/sync/d/d/a/ge;

    return-object v0
.end method

.method public final l()Lcom/keniu/security/sync/d/d/a/gg;
    .locals 1

    .prologue
    .line 35041
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/aj;->d:Lcom/keniu/security/sync/d/d/a/ge;

    return-object v0
.end method
