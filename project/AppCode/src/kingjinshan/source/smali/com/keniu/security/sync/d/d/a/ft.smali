.class public final Lcom/keniu/security/sync/d/d/a/ft;
.super Lcom/b/a/dk;
.source "Appsvr.java"

# interfaces
.implements Lcom/keniu/security/sync/d/d/a/fv;


# static fields
.field public static final a:I = 0x1

.field public static final b:I = 0x2

.field private static final c:Lcom/keniu/security/sync/d/d/a/ft;

.field private static final i:J


# instance fields
.field private d:I

.field private e:Lcom/keniu/security/sync/d/d/a/ge;

.field private f:Ljava/lang/Object;

.field private g:B

.field private h:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 37506
    new-instance v0, Lcom/keniu/security/sync/d/d/a/ft;

    invoke-direct {v0}, Lcom/keniu/security/sync/d/d/a/ft;-><init>()V

    .line 37507
    sput-object v0, Lcom/keniu/security/sync/d/d/a/ft;->c:Lcom/keniu/security/sync/d/d/a/ft;

    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->h()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v1

    iput-object v1, v0, Lcom/keniu/security/sync/d/d/a/ft;->e:Lcom/keniu/security/sync/d/d/a/ge;

    const-string v1, ""

    iput-object v1, v0, Lcom/keniu/security/sync/d/d/a/ft;->f:Ljava/lang/Object;

    .line 37508
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 36998
    invoke-direct {p0}, Lcom/b/a/dk;-><init>()V

    .line 37069
    iput-byte v0, p0, Lcom/keniu/security/sync/d/d/a/ft;->g:B

    .line 37098
    iput v0, p0, Lcom/keniu/security/sync/d/d/a/ft;->h:I

    .line 36998
    return-void
.end method

.method synthetic constructor <init>(Lcom/keniu/security/sync/d/d/a/fu;)V
    .locals 1
    .parameter

    .prologue
    .line 36991
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/keniu/security/sync/d/d/a/ft;-><init>(Lcom/keniu/security/sync/d/d/a/fu;B)V

    return-void
.end method

.method private constructor <init>(Lcom/keniu/security/sync/d/d/a/fu;B)V
    .locals 1
    .parameter
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 36996
    invoke-direct {p0, p1}, Lcom/b/a/dk;-><init>(Lcom/b/a/dn;)V

    .line 37069
    iput-byte v0, p0, Lcom/keniu/security/sync/d/d/a/ft;->g:B

    .line 37098
    iput v0, p0, Lcom/keniu/security/sync/d/d/a/ft;->h:I

    .line 36997
    return-void
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/ft;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 36991
    iput p1, p0, Lcom/keniu/security/sync/d/d/a/ft;->d:I

    return p1
.end method

.method private static a(Lcom/b/a/i;)Lcom/keniu/security/sync/d/d/a/ft;
    .locals 1
    .parameter

    .prologue
    .line 37127
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/fu;->i()Lcom/keniu/security/sync/d/d/a/fu;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/fu;->a(Lcom/b/a/i;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/fu;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/fu;->a(Lcom/keniu/security/sync/d/d/a/fu;)Lcom/keniu/security/sync/d/d/a/ft;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/i;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/ft;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 37133
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/fu;->i()Lcom/keniu/security/sync/d/d/a/fu;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/fu;->a(Lcom/b/a/i;Lcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/fu;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/fu;->a(Lcom/keniu/security/sync/d/d/a/fu;)Lcom/keniu/security/sync/d/d/a/ft;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/m;)Lcom/keniu/security/sync/d/d/a/ft;
    .locals 1
    .parameter

    .prologue
    .line 37181
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/fu;->i()Lcom/keniu/security/sync/d/d/a/fu;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/fu;->a(Lcom/b/a/m;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/fu;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/fu;->a(Lcom/keniu/security/sync/d/d/a/fu;)Lcom/keniu/security/sync/d/d/a/ft;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/ft;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 37187
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/fu;->i()Lcom/keniu/security/sync/d/d/a/fu;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/fu;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/fu;

    move-result-object v0

    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/fu;->a(Lcom/keniu/security/sync/d/d/a/fu;)Lcom/keniu/security/sync/d/d/a/ft;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/io/InputStream;)Lcom/keniu/security/sync/d/d/a/ft;
    .locals 1
    .parameter

    .prologue
    .line 37149
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/fu;->i()Lcom/keniu/security/sync/d/d/a/fu;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/fu;->a(Ljava/io/InputStream;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/fu;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/fu;->a(Lcom/keniu/security/sync/d/d/a/fu;)Lcom/keniu/security/sync/d/d/a/ft;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/ft;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 37155
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/fu;->i()Lcom/keniu/security/sync/d/d/a/fu;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/fu;->a(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/fu;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/fu;->a(Lcom/keniu/security/sync/d/d/a/fu;)Lcom/keniu/security/sync/d/d/a/ft;

    move-result-object v0

    return-object v0
.end method

.method private static a([B)Lcom/keniu/security/sync/d/d/a/ft;
    .locals 1
    .parameter

    .prologue
    .line 37138
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/fu;->i()Lcom/keniu/security/sync/d/d/a/fu;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/fu;->a([B)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/fu;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/fu;->a(Lcom/keniu/security/sync/d/d/a/fu;)Lcom/keniu/security/sync/d/d/a/ft;

    move-result-object v0

    return-object v0
.end method

.method private static a([BLcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/ft;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 37144
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/fu;->i()Lcom/keniu/security/sync/d/d/a/fu;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/fu;->a([BLcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/fu;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/fu;->a(Lcom/keniu/security/sync/d/d/a/fu;)Lcom/keniu/security/sync/d/d/a/ft;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/keniu/security/sync/d/d/a/ft;)Lcom/keniu/security/sync/d/d/a/fu;
    .locals 1
    .parameter

    .prologue
    .line 37194
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/fu;->i()Lcom/keniu/security/sync/d/d/a/fu;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/fu;->a(Lcom/keniu/security/sync/d/d/a/ft;)Lcom/keniu/security/sync/d/d/a/fu;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/ft;Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/ge;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 36991
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/ft;->e:Lcom/keniu/security/sync/d/d/a/ge;

    return-object p1
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/ft;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 36991
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/ft;->f:Ljava/lang/Object;

    return-object p1
.end method

.method private static b(Ljava/io/InputStream;)Lcom/keniu/security/sync/d/d/a/ft;
    .locals 2
    .parameter

    .prologue
    .line 37160
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/fu;->i()Lcom/keniu/security/sync/d/d/a/fu;

    move-result-object v0

    .line 37161
    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/fu;->b(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 37162
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/fu;->a(Lcom/keniu/security/sync/d/d/a/fu;)Lcom/keniu/security/sync/d/d/a/ft;

    move-result-object v0

    .line 37164
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/ft;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 37171
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/fu;->i()Lcom/keniu/security/sync/d/d/a/fu;

    move-result-object v0

    .line 37172
    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/fu;->b(Ljava/io/InputStream;Lcom/b/a/df;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 37173
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/fu;->a(Lcom/keniu/security/sync/d/d/a/fu;)Lcom/keniu/security/sync/d/d/a/ft;

    move-result-object v0

    .line 37175
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Lcom/b/a/dp;)Lcom/keniu/security/sync/d/d/a/fu;
    .locals 1
    .parameter

    .prologue
    .line 37201
    new-instance v0, Lcom/keniu/security/sync/d/d/a/fu;

    invoke-direct {v0, p0}, Lcom/keniu/security/sync/d/d/a/fu;-><init>(Lcom/b/a/dp;)V

    .line 37202
    return-object v0
.end method

.method public static h()Lcom/keniu/security/sync/d/d/a/ft;
    .locals 1

    .prologue
    .line 37002
    sget-object v0, Lcom/keniu/security/sync/d/d/a/ft;->c:Lcom/keniu/security/sync/d/d/a/ft;

    return-object v0
.end method

.method public static final i()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 37011
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/a;->bl()Lcom/b/a/cj;

    move-result-object v0

    return-object v0
.end method

.method static synthetic o()Z
    .locals 1

    .prologue
    .line 36991
    sget-boolean v0, Lcom/keniu/security/sync/d/d/a/ft;->j:Z

    return v0
.end method

.method private static p()Lcom/keniu/security/sync/d/d/a/ft;
    .locals 1

    .prologue
    .line 37006
    sget-object v0, Lcom/keniu/security/sync/d/d/a/ft;->c:Lcom/keniu/security/sync/d/d/a/ft;

    return-object v0
.end method

.method private q()Lcom/b/a/i;
    .locals 2

    .prologue
    .line 37054
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ft;->f:Ljava/lang/Object;

    .line 37055
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 37056
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/b/a/i;->a(Ljava/lang/String;)Lcom/b/a/i;

    move-result-object v0

    .line 37058
    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ft;->f:Ljava/lang/Object;

    .line 37061
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/b/a/i;

    goto :goto_0
.end method

.method private r()V
    .locals 1

    .prologue
    .line 37066
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->h()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ft;->e:Lcom/keniu/security/sync/d/d/a/ge;

    .line 37067
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ft;->f:Ljava/lang/Object;

    .line 37068
    return-void
.end method

.method private static s()Lcom/keniu/security/sync/d/d/a/fu;
    .locals 1

    .prologue
    .line 37191
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/fu;->i()Lcom/keniu/security/sync/d/d/a/fu;

    move-result-object v0

    return-object v0
.end method

.method private static t()Lcom/keniu/security/sync/d/d/a/fu;
    .locals 1

    .prologue
    .line 37192
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/fu;->i()Lcom/keniu/security/sync/d/d/a/fu;

    move-result-object v0

    return-object v0
.end method

.method private u()Lcom/keniu/security/sync/d/d/a/fu;
    .locals 1

    .prologue
    .line 37196
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/fu;->i()Lcom/keniu/security/sync/d/d/a/fu;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/fu;->a(Lcom/keniu/security/sync/d/d/a/ft;)Lcom/keniu/security/sync/d/d/a/fu;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final B()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 37121
    invoke-super {p0}, Lcom/b/a/dk;->B()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic D()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 36991
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ft;->u()Lcom/keniu/security/sync/d/d/a/fu;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic E()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 36991
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/fu;->i()Lcom/keniu/security/sync/d/d/a/fu;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic F()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 36991
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ft;->u()Lcom/keniu/security/sync/d/d/a/fu;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic G()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 36991
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/fu;->i()Lcom/keniu/security/sync/d/d/a/fu;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic H()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 36991
    sget-object v0, Lcom/keniu/security/sync/d/d/a/ft;->c:Lcom/keniu/security/sync/d/d/a/ft;

    return-object v0
.end method

.method public final bridge synthetic I()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 36991
    sget-object v0, Lcom/keniu/security/sync/d/d/a/ft;->c:Lcom/keniu/security/sync/d/d/a/ft;

    return-object v0
.end method

.method protected final synthetic a(Lcom/b/a/dp;)Lcom/b/a/ew;
    .locals 1
    .parameter

    .prologue
    .line 36991
    new-instance v0, Lcom/keniu/security/sync/d/d/a/fu;

    invoke-direct {v0, p1}, Lcom/keniu/security/sync/d/d/a/fu;-><init>(Lcom/b/a/dp;)V

    return-object v0
.end method

.method public final a(Lcom/b/a/n;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 37088
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ft;->b()I

    .line 37089
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ft;->d:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 37090
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ft;->e:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-virtual {p1, v1, v0}, Lcom/b/a/n;->b(ILcom/b/a/ex;)V

    .line 37092
    :cond_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ft;->d:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 37093
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ft;->q()Lcom/b/a/i;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/b/a/n;->a(ILcom/b/a/i;)V

    .line 37095
    :cond_1
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ft;->b_()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/b/a/gg;->a(Lcom/b/a/n;)V

    .line 37096
    return-void
.end method

.method public final a()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 37071
    iget-byte v0, p0, Lcom/keniu/security/sync/d/d/a/ft;->g:B

    .line 37072
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-ne v0, v3, :cond_0

    move v0, v3

    .line 37083
    :goto_0
    return v0

    :cond_0
    move v0, v2

    .line 37072
    goto :goto_0

    .line 37074
    :cond_1
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ft;->j()Z

    move-result v0

    if-nez v0, :cond_2

    .line 37075
    iput-byte v2, p0, Lcom/keniu/security/sync/d/d/a/ft;->g:B

    move v0, v2

    .line 37076
    goto :goto_0

    .line 37078
    :cond_2
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ft;->e:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/ge;->a()Z

    move-result v0

    if-nez v0, :cond_3

    .line 37079
    iput-byte v2, p0, Lcom/keniu/security/sync/d/d/a/ft;->g:B

    move v0, v2

    .line 37080
    goto :goto_0

    .line 37082
    :cond_3
    iput-byte v3, p0, Lcom/keniu/security/sync/d/d/a/ft;->g:B

    move v0, v3

    .line 37083
    goto :goto_0
.end method

.method public final b()I
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 37100
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ft;->h:I

    .line 37101
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 37114
    :goto_0
    return v0

    .line 37103
    :cond_0
    const/4 v0, 0x0

    .line 37104
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/ft;->d:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_1

    .line 37105
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ft;->e:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-static {v2, v0}, Lcom/b/a/n;->e(ILcom/b/a/ex;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 37108
    :cond_1
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/ft;->d:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_2

    .line 37109
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ft;->q()Lcom/b/a/i;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/b/a/n;->c(ILcom/b/a/i;)I

    move-result v1

    add-int/2addr v0, v1

    .line 37112
    :cond_2
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ft;->b_()Lcom/b/a/gg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/b/a/gg;->b()I

    move-result v1

    add-int/2addr v0, v1

    .line 37113
    iput v0, p0, Lcom/keniu/security/sync/d/d/a/ft;->h:I

    goto :goto_0
.end method

.method protected final g()Lcom/b/a/dv;
    .locals 1

    .prologue
    .line 37016
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/a;->bm()Lcom/b/a/dv;

    move-result-object v0

    return-object v0
.end method

.method public final j()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 37024
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ft;->d:I

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
    .line 37027
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ft;->e:Lcom/keniu/security/sync/d/d/a/ge;

    return-object v0
.end method

.method public final l()Lcom/keniu/security/sync/d/d/a/gg;
    .locals 1

    .prologue
    .line 37030
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ft;->e:Lcom/keniu/security/sync/d/d/a/ge;

    return-object v0
.end method

.method public final m()Z
    .locals 2

    .prologue
    .line 37037
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ft;->d:I

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

.method public final n()Ljava/lang/String;
    .locals 3

    .prologue
    .line 37040
    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/ft;->f:Ljava/lang/Object;

    .line 37041
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 37042
    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object p0, v0

    move-object v1, p0

    .line 37050
    :goto_0
    return-object v1

    .line 37044
    :cond_0
    check-cast v1, Lcom/b/a/i;

    .line 37046
    invoke-virtual {v1}, Lcom/b/a/i;->b()Ljava/lang/String;

    move-result-object v2

    .line 37047
    invoke-static {v1}, Lcom/b/a/ep;->a(Lcom/b/a/i;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 37048
    iput-object v2, p0, Lcom/keniu/security/sync/d/d/a/ft;->f:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 37050
    goto :goto_0
.end method
