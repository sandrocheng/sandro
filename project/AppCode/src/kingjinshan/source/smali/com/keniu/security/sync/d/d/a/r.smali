.class public final Lcom/keniu/security/sync/d/d/a/r;
.super Lcom/b/a/dk;
.source "Appsvr.java"

# interfaces
.implements Lcom/keniu/security/sync/d/d/a/t;


# static fields
.field public static final a:I = 0x1

.field public static final b:I = 0x2

.field public static final c:I = 0x3

.field private static final d:Lcom/keniu/security/sync/d/d/a/r;

.field private static final l:J


# instance fields
.field private e:I

.field private f:Lcom/keniu/security/sync/d/d/a/ge;

.field private g:Lcom/keniu/security/sync/d/d/a/gj;

.field private h:Lcom/keniu/security/sync/d/d/a/gy;

.field private i:B

.field private k:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 16554
    new-instance v0, Lcom/keniu/security/sync/d/d/a/r;

    invoke-direct {v0}, Lcom/keniu/security/sync/d/d/a/r;-><init>()V

    .line 16555
    sput-object v0, Lcom/keniu/security/sync/d/d/a/r;->d:Lcom/keniu/security/sync/d/d/a/r;

    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->h()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v1

    iput-object v1, v0, Lcom/keniu/security/sync/d/d/a/r;->f:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gj;->h()Lcom/keniu/security/sync/d/d/a/gj;

    move-result-object v1

    iput-object v1, v0, Lcom/keniu/security/sync/d/d/a/r;->g:Lcom/keniu/security/sync/d/d/a/gj;

    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gy;->h()Lcom/keniu/security/sync/d/d/a/gy;

    move-result-object v1

    iput-object v1, v0, Lcom/keniu/security/sync/d/d/a/r;->h:Lcom/keniu/security/sync/d/d/a/gy;

    .line 16556
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 15860
    invoke-direct {p0}, Lcom/b/a/dk;-><init>()V

    .line 15926
    iput-byte v0, p0, Lcom/keniu/security/sync/d/d/a/r;->i:B

    .line 15958
    iput v0, p0, Lcom/keniu/security/sync/d/d/a/r;->k:I

    .line 15860
    return-void
.end method

.method synthetic constructor <init>(Lcom/keniu/security/sync/d/d/a/s;)V
    .locals 1
    .parameter

    .prologue
    .line 15853
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/keniu/security/sync/d/d/a/r;-><init>(Lcom/keniu/security/sync/d/d/a/s;B)V

    return-void
.end method

.method private constructor <init>(Lcom/keniu/security/sync/d/d/a/s;B)V
    .locals 1
    .parameter
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 15858
    invoke-direct {p0, p1}, Lcom/b/a/dk;-><init>(Lcom/b/a/dn;)V

    .line 15926
    iput-byte v0, p0, Lcom/keniu/security/sync/d/d/a/r;->i:B

    .line 15958
    iput v0, p0, Lcom/keniu/security/sync/d/d/a/r;->k:I

    .line 15859
    return-void
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/r;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 15853
    iput p1, p0, Lcom/keniu/security/sync/d/d/a/r;->e:I

    return p1
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/r;Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/ge;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 15853
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/r;->f:Lcom/keniu/security/sync/d/d/a/ge;

    return-object p1
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/r;Lcom/keniu/security/sync/d/d/a/gj;)Lcom/keniu/security/sync/d/d/a/gj;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 15853
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/r;->g:Lcom/keniu/security/sync/d/d/a/gj;

    return-object p1
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/r;Lcom/keniu/security/sync/d/d/a/gy;)Lcom/keniu/security/sync/d/d/a/gy;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 15853
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/r;->h:Lcom/keniu/security/sync/d/d/a/gy;

    return-object p1
.end method

.method private static a(Lcom/b/a/i;)Lcom/keniu/security/sync/d/d/a/r;
    .locals 1
    .parameter

    .prologue
    .line 15991
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/s;->i()Lcom/keniu/security/sync/d/d/a/s;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/s;->a(Lcom/b/a/i;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/s;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/s;->a(Lcom/keniu/security/sync/d/d/a/s;)Lcom/keniu/security/sync/d/d/a/r;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/i;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/r;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 15997
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/s;->i()Lcom/keniu/security/sync/d/d/a/s;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/s;->a(Lcom/b/a/i;Lcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/s;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/s;->a(Lcom/keniu/security/sync/d/d/a/s;)Lcom/keniu/security/sync/d/d/a/r;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/m;)Lcom/keniu/security/sync/d/d/a/r;
    .locals 1
    .parameter

    .prologue
    .line 16045
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/s;->i()Lcom/keniu/security/sync/d/d/a/s;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/s;->a(Lcom/b/a/m;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/s;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/s;->a(Lcom/keniu/security/sync/d/d/a/s;)Lcom/keniu/security/sync/d/d/a/r;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/r;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 16051
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/s;->i()Lcom/keniu/security/sync/d/d/a/s;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/s;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/s;

    move-result-object v0

    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/s;->a(Lcom/keniu/security/sync/d/d/a/s;)Lcom/keniu/security/sync/d/d/a/r;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/io/InputStream;)Lcom/keniu/security/sync/d/d/a/r;
    .locals 1
    .parameter

    .prologue
    .line 16013
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/s;->i()Lcom/keniu/security/sync/d/d/a/s;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/s;->a(Ljava/io/InputStream;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/s;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/s;->a(Lcom/keniu/security/sync/d/d/a/s;)Lcom/keniu/security/sync/d/d/a/r;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/r;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 16019
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/s;->i()Lcom/keniu/security/sync/d/d/a/s;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/s;->a(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/s;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/s;->a(Lcom/keniu/security/sync/d/d/a/s;)Lcom/keniu/security/sync/d/d/a/r;

    move-result-object v0

    return-object v0
.end method

.method private static a([B)Lcom/keniu/security/sync/d/d/a/r;
    .locals 1
    .parameter

    .prologue
    .line 16002
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/s;->i()Lcom/keniu/security/sync/d/d/a/s;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/s;->a([B)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/s;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/s;->a(Lcom/keniu/security/sync/d/d/a/s;)Lcom/keniu/security/sync/d/d/a/r;

    move-result-object v0

    return-object v0
.end method

.method private static a([BLcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/r;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 16008
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/s;->i()Lcom/keniu/security/sync/d/d/a/s;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/s;->a([BLcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/s;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/s;->a(Lcom/keniu/security/sync/d/d/a/s;)Lcom/keniu/security/sync/d/d/a/r;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/keniu/security/sync/d/d/a/r;)Lcom/keniu/security/sync/d/d/a/s;
    .locals 1
    .parameter

    .prologue
    .line 16058
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/s;->i()Lcom/keniu/security/sync/d/d/a/s;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/s;->a(Lcom/keniu/security/sync/d/d/a/r;)Lcom/keniu/security/sync/d/d/a/s;

    move-result-object v0

    return-object v0
.end method

.method private static b(Ljava/io/InputStream;)Lcom/keniu/security/sync/d/d/a/r;
    .locals 2
    .parameter

    .prologue
    .line 16024
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/s;->i()Lcom/keniu/security/sync/d/d/a/s;

    move-result-object v0

    .line 16025
    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/s;->b(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 16026
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/s;->a(Lcom/keniu/security/sync/d/d/a/s;)Lcom/keniu/security/sync/d/d/a/r;

    move-result-object v0

    .line 16028
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/r;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 16035
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/s;->i()Lcom/keniu/security/sync/d/d/a/s;

    move-result-object v0

    .line 16036
    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/s;->b(Ljava/io/InputStream;Lcom/b/a/df;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 16037
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/s;->a(Lcom/keniu/security/sync/d/d/a/s;)Lcom/keniu/security/sync/d/d/a/r;

    move-result-object v0

    .line 16039
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Lcom/b/a/dp;)Lcom/keniu/security/sync/d/d/a/s;
    .locals 1
    .parameter

    .prologue
    .line 16065
    new-instance v0, Lcom/keniu/security/sync/d/d/a/s;

    invoke-direct {v0, p0}, Lcom/keniu/security/sync/d/d/a/s;-><init>(Lcom/b/a/dp;)V

    .line 16066
    return-object v0
.end method

.method public static h()Lcom/keniu/security/sync/d/d/a/r;
    .locals 1

    .prologue
    .line 15864
    sget-object v0, Lcom/keniu/security/sync/d/d/a/r;->d:Lcom/keniu/security/sync/d/d/a/r;

    return-object v0
.end method

.method public static final i()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 15873
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/a;->V()Lcom/b/a/cj;

    move-result-object v0

    return-object v0
.end method

.method static synthetic s()Z
    .locals 1

    .prologue
    .line 15853
    sget-boolean v0, Lcom/keniu/security/sync/d/d/a/r;->j:Z

    return v0
.end method

.method private static t()Lcom/keniu/security/sync/d/d/a/r;
    .locals 1

    .prologue
    .line 15868
    sget-object v0, Lcom/keniu/security/sync/d/d/a/r;->d:Lcom/keniu/security/sync/d/d/a/r;

    return-object v0
.end method

.method private u()V
    .locals 1

    .prologue
    .line 15922
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->h()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/r;->f:Lcom/keniu/security/sync/d/d/a/ge;

    .line 15923
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gj;->h()Lcom/keniu/security/sync/d/d/a/gj;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/r;->g:Lcom/keniu/security/sync/d/d/a/gj;

    .line 15924
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gy;->h()Lcom/keniu/security/sync/d/d/a/gy;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/r;->h:Lcom/keniu/security/sync/d/d/a/gy;

    .line 15925
    return-void
.end method

.method private static v()Lcom/keniu/security/sync/d/d/a/s;
    .locals 1

    .prologue
    .line 16055
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/s;->i()Lcom/keniu/security/sync/d/d/a/s;

    move-result-object v0

    return-object v0
.end method

.method private static w()Lcom/keniu/security/sync/d/d/a/s;
    .locals 1

    .prologue
    .line 16056
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/s;->i()Lcom/keniu/security/sync/d/d/a/s;

    move-result-object v0

    return-object v0
.end method

.method private x()Lcom/keniu/security/sync/d/d/a/s;
    .locals 1

    .prologue
    .line 16060
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/s;->i()Lcom/keniu/security/sync/d/d/a/s;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/s;->a(Lcom/keniu/security/sync/d/d/a/r;)Lcom/keniu/security/sync/d/d/a/s;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final B()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 15985
    invoke-super {p0}, Lcom/b/a/dk;->B()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic D()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 15853
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/r;->x()Lcom/keniu/security/sync/d/d/a/s;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic E()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 15853
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/s;->i()Lcom/keniu/security/sync/d/d/a/s;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic F()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 15853
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/r;->x()Lcom/keniu/security/sync/d/d/a/s;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic G()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 15853
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/s;->i()Lcom/keniu/security/sync/d/d/a/s;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic H()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 15853
    sget-object v0, Lcom/keniu/security/sync/d/d/a/r;->d:Lcom/keniu/security/sync/d/d/a/r;

    return-object v0
.end method

.method public final bridge synthetic I()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 15853
    sget-object v0, Lcom/keniu/security/sync/d/d/a/r;->d:Lcom/keniu/security/sync/d/d/a/r;

    return-object v0
.end method

.method protected final synthetic a(Lcom/b/a/dp;)Lcom/b/a/ew;
    .locals 1
    .parameter

    .prologue
    .line 15853
    new-instance v0, Lcom/keniu/security/sync/d/d/a/s;

    invoke-direct {v0, p1}, Lcom/keniu/security/sync/d/d/a/s;-><init>(Lcom/b/a/dp;)V

    return-object v0
.end method

.method public final a(Lcom/b/a/n;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 15945
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/r;->b()I

    .line 15946
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/r;->e:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 15947
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/r;->f:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-virtual {p1, v1, v0}, Lcom/b/a/n;->b(ILcom/b/a/ex;)V

    .line 15949
    :cond_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/r;->e:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 15950
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/r;->g:Lcom/keniu/security/sync/d/d/a/gj;

    invoke-virtual {p1, v2, v0}, Lcom/b/a/n;->b(ILcom/b/a/ex;)V

    .line 15952
    :cond_1
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/r;->e:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 15953
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/r;->h:Lcom/keniu/security/sync/d/d/a/gy;

    invoke-virtual {p1, v0, v1}, Lcom/b/a/n;->b(ILcom/b/a/ex;)V

    .line 15955
    :cond_2
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/r;->b_()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/b/a/gg;->a(Lcom/b/a/n;)V

    .line 15956
    return-void
.end method

.method public final a()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 15928
    iget-byte v0, p0, Lcom/keniu/security/sync/d/d/a/r;->i:B

    .line 15929
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-ne v0, v3, :cond_0

    move v0, v3

    .line 15940
    :goto_0
    return v0

    :cond_0
    move v0, v2

    .line 15929
    goto :goto_0

    .line 15931
    :cond_1
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/r;->j()Z

    move-result v0

    if-nez v0, :cond_2

    .line 15932
    iput-byte v2, p0, Lcom/keniu/security/sync/d/d/a/r;->i:B

    move v0, v2

    .line 15933
    goto :goto_0

    .line 15935
    :cond_2
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/r;->f:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/ge;->a()Z

    move-result v0

    if-nez v0, :cond_3

    .line 15936
    iput-byte v2, p0, Lcom/keniu/security/sync/d/d/a/r;->i:B

    move v0, v2

    .line 15937
    goto :goto_0

    .line 15939
    :cond_3
    iput-byte v3, p0, Lcom/keniu/security/sync/d/d/a/r;->i:B

    move v0, v3

    .line 15940
    goto :goto_0
.end method

.method public final b()I
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 15960
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/r;->k:I

    .line 15961
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 15978
    :goto_0
    return v0

    .line 15963
    :cond_0
    const/4 v0, 0x0

    .line 15964
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/r;->e:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_1

    .line 15965
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/r;->f:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-static {v2, v0}, Lcom/b/a/n;->e(ILcom/b/a/ex;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 15968
    :cond_1
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/r;->e:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_2

    .line 15969
    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/r;->g:Lcom/keniu/security/sync/d/d/a/gj;

    invoke-static {v3, v1}, Lcom/b/a/n;->e(ILcom/b/a/ex;)I

    move-result v1

    add-int/2addr v0, v1

    .line 15972
    :cond_2
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/r;->e:I

    and-int/lit8 v1, v1, 0x4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    .line 15973
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/keniu/security/sync/d/d/a/r;->h:Lcom/keniu/security/sync/d/d/a/gy;

    invoke-static {v1, v2}, Lcom/b/a/n;->e(ILcom/b/a/ex;)I

    move-result v1

    add-int/2addr v0, v1

    .line 15976
    :cond_3
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/r;->b_()Lcom/b/a/gg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/b/a/gg;->b()I

    move-result v1

    add-int/2addr v0, v1

    .line 15977
    iput v0, p0, Lcom/keniu/security/sync/d/d/a/r;->k:I

    goto :goto_0
.end method

.method protected final g()Lcom/b/a/dv;
    .locals 1

    .prologue
    .line 15878
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/a;->W()Lcom/b/a/dv;

    move-result-object v0

    return-object v0
.end method

.method public final j()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 15886
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/r;->e:I

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
    .line 15889
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/r;->f:Lcom/keniu/security/sync/d/d/a/ge;

    return-object v0
.end method

.method public final l()Lcom/keniu/security/sync/d/d/a/gg;
    .locals 1

    .prologue
    .line 15892
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/r;->f:Lcom/keniu/security/sync/d/d/a/ge;

    return-object v0
.end method

.method public final m()Z
    .locals 2

    .prologue
    .line 15899
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/r;->e:I

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

.method public final n()Lcom/keniu/security/sync/d/d/a/gj;
    .locals 1

    .prologue
    .line 15902
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/r;->g:Lcom/keniu/security/sync/d/d/a/gj;

    return-object v0
.end method

.method public final o()Lcom/keniu/security/sync/d/d/a/gl;
    .locals 1

    .prologue
    .line 15905
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/r;->g:Lcom/keniu/security/sync/d/d/a/gj;

    return-object v0
.end method

.method public final p()Z
    .locals 2

    .prologue
    .line 15912
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/r;->e:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final q()Lcom/keniu/security/sync/d/d/a/gy;
    .locals 1

    .prologue
    .line 15915
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/r;->h:Lcom/keniu/security/sync/d/d/a/gy;

    return-object v0
.end method

.method public final r()Lcom/keniu/security/sync/d/d/a/ha;
    .locals 1

    .prologue
    .line 15918
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/r;->h:Lcom/keniu/security/sync/d/d/a/gy;

    return-object v0
.end method
