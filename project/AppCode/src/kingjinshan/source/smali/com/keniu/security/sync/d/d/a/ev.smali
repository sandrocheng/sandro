.class public final Lcom/keniu/security/sync/d/d/a/ev;
.super Lcom/b/a/dk;
.source "Appsvr.java"

# interfaces
.implements Lcom/keniu/security/sync/d/d/a/ex;


# static fields
.field public static final a:I = 0x1

.field public static final b:I = 0x2

.field public static final c:I = 0x3

.field private static final d:Lcom/keniu/security/sync/d/d/a/ev;

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
    .line 4569
    new-instance v0, Lcom/keniu/security/sync/d/d/a/ev;

    invoke-direct {v0}, Lcom/keniu/security/sync/d/d/a/ev;-><init>()V

    .line 4570
    sput-object v0, Lcom/keniu/security/sync/d/d/a/ev;->d:Lcom/keniu/security/sync/d/d/a/ev;

    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->h()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v1

    iput-object v1, v0, Lcom/keniu/security/sync/d/d/a/ev;->f:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gj;->h()Lcom/keniu/security/sync/d/d/a/gj;

    move-result-object v1

    iput-object v1, v0, Lcom/keniu/security/sync/d/d/a/ev;->g:Lcom/keniu/security/sync/d/d/a/gj;

    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gy;->h()Lcom/keniu/security/sync/d/d/a/gy;

    move-result-object v1

    iput-object v1, v0, Lcom/keniu/security/sync/d/d/a/ev;->h:Lcom/keniu/security/sync/d/d/a/gy;

    .line 4571
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 3875
    invoke-direct {p0}, Lcom/b/a/dk;-><init>()V

    .line 3941
    iput-byte v0, p0, Lcom/keniu/security/sync/d/d/a/ev;->i:B

    .line 3973
    iput v0, p0, Lcom/keniu/security/sync/d/d/a/ev;->k:I

    .line 3875
    return-void
.end method

.method synthetic constructor <init>(Lcom/keniu/security/sync/d/d/a/ew;)V
    .locals 1
    .parameter

    .prologue
    .line 3868
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/keniu/security/sync/d/d/a/ev;-><init>(Lcom/keniu/security/sync/d/d/a/ew;B)V

    return-void
.end method

.method private constructor <init>(Lcom/keniu/security/sync/d/d/a/ew;B)V
    .locals 1
    .parameter
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 3873
    invoke-direct {p0, p1}, Lcom/b/a/dk;-><init>(Lcom/b/a/dn;)V

    .line 3941
    iput-byte v0, p0, Lcom/keniu/security/sync/d/d/a/ev;->i:B

    .line 3973
    iput v0, p0, Lcom/keniu/security/sync/d/d/a/ev;->k:I

    .line 3874
    return-void
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/ev;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 3868
    iput p1, p0, Lcom/keniu/security/sync/d/d/a/ev;->e:I

    return p1
.end method

.method private static a(Lcom/b/a/i;)Lcom/keniu/security/sync/d/d/a/ev;
    .locals 1
    .parameter

    .prologue
    .line 4006
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ew;->i()Lcom/keniu/security/sync/d/d/a/ew;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/ew;->a(Lcom/b/a/i;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/ew;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/ew;->a(Lcom/keniu/security/sync/d/d/a/ew;)Lcom/keniu/security/sync/d/d/a/ev;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/i;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/ev;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 4012
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ew;->i()Lcom/keniu/security/sync/d/d/a/ew;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/ew;->a(Lcom/b/a/i;Lcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/ew;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/ew;->a(Lcom/keniu/security/sync/d/d/a/ew;)Lcom/keniu/security/sync/d/d/a/ev;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/m;)Lcom/keniu/security/sync/d/d/a/ev;
    .locals 1
    .parameter

    .prologue
    .line 4060
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ew;->i()Lcom/keniu/security/sync/d/d/a/ew;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/ew;->a(Lcom/b/a/m;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/ew;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/ew;->a(Lcom/keniu/security/sync/d/d/a/ew;)Lcom/keniu/security/sync/d/d/a/ev;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/ev;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 4066
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ew;->i()Lcom/keniu/security/sync/d/d/a/ew;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/ew;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/ew;

    move-result-object v0

    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/ew;->a(Lcom/keniu/security/sync/d/d/a/ew;)Lcom/keniu/security/sync/d/d/a/ev;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/io/InputStream;)Lcom/keniu/security/sync/d/d/a/ev;
    .locals 1
    .parameter

    .prologue
    .line 4028
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ew;->i()Lcom/keniu/security/sync/d/d/a/ew;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/ew;->a(Ljava/io/InputStream;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/ew;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/ew;->a(Lcom/keniu/security/sync/d/d/a/ew;)Lcom/keniu/security/sync/d/d/a/ev;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/ev;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 4034
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ew;->i()Lcom/keniu/security/sync/d/d/a/ew;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/ew;->a(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/ew;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/ew;->a(Lcom/keniu/security/sync/d/d/a/ew;)Lcom/keniu/security/sync/d/d/a/ev;

    move-result-object v0

    return-object v0
.end method

.method private static a([B)Lcom/keniu/security/sync/d/d/a/ev;
    .locals 1
    .parameter

    .prologue
    .line 4017
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ew;->i()Lcom/keniu/security/sync/d/d/a/ew;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/ew;->a([B)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/ew;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/ew;->a(Lcom/keniu/security/sync/d/d/a/ew;)Lcom/keniu/security/sync/d/d/a/ev;

    move-result-object v0

    return-object v0
.end method

.method private static a([BLcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/ev;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 4023
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ew;->i()Lcom/keniu/security/sync/d/d/a/ew;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/ew;->a([BLcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/ew;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/ew;->a(Lcom/keniu/security/sync/d/d/a/ew;)Lcom/keniu/security/sync/d/d/a/ev;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/keniu/security/sync/d/d/a/ev;)Lcom/keniu/security/sync/d/d/a/ew;
    .locals 1
    .parameter

    .prologue
    .line 4073
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ew;->i()Lcom/keniu/security/sync/d/d/a/ew;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/ew;->a(Lcom/keniu/security/sync/d/d/a/ev;)Lcom/keniu/security/sync/d/d/a/ew;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/ev;Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/ge;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 3868
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/ev;->f:Lcom/keniu/security/sync/d/d/a/ge;

    return-object p1
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/ev;Lcom/keniu/security/sync/d/d/a/gj;)Lcom/keniu/security/sync/d/d/a/gj;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 3868
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/ev;->g:Lcom/keniu/security/sync/d/d/a/gj;

    return-object p1
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/ev;Lcom/keniu/security/sync/d/d/a/gy;)Lcom/keniu/security/sync/d/d/a/gy;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 3868
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/ev;->h:Lcom/keniu/security/sync/d/d/a/gy;

    return-object p1
.end method

.method private static b(Ljava/io/InputStream;)Lcom/keniu/security/sync/d/d/a/ev;
    .locals 2
    .parameter

    .prologue
    .line 4039
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ew;->i()Lcom/keniu/security/sync/d/d/a/ew;

    move-result-object v0

    .line 4040
    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/ew;->b(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4041
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/ew;->a(Lcom/keniu/security/sync/d/d/a/ew;)Lcom/keniu/security/sync/d/d/a/ev;

    move-result-object v0

    .line 4043
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/ev;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 4050
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ew;->i()Lcom/keniu/security/sync/d/d/a/ew;

    move-result-object v0

    .line 4051
    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/ew;->b(Ljava/io/InputStream;Lcom/b/a/df;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4052
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/ew;->a(Lcom/keniu/security/sync/d/d/a/ew;)Lcom/keniu/security/sync/d/d/a/ev;

    move-result-object v0

    .line 4054
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Lcom/b/a/dp;)Lcom/keniu/security/sync/d/d/a/ew;
    .locals 1
    .parameter

    .prologue
    .line 4080
    new-instance v0, Lcom/keniu/security/sync/d/d/a/ew;

    invoke-direct {v0, p0}, Lcom/keniu/security/sync/d/d/a/ew;-><init>(Lcom/b/a/dp;)V

    .line 4081
    return-object v0
.end method

.method public static h()Lcom/keniu/security/sync/d/d/a/ev;
    .locals 1

    .prologue
    .line 3879
    sget-object v0, Lcom/keniu/security/sync/d/d/a/ev;->d:Lcom/keniu/security/sync/d/d/a/ev;

    return-object v0
.end method

.method public static final i()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 3888
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/a;->p()Lcom/b/a/cj;

    move-result-object v0

    return-object v0
.end method

.method static synthetic s()Z
    .locals 1

    .prologue
    .line 3868
    sget-boolean v0, Lcom/keniu/security/sync/d/d/a/ev;->j:Z

    return v0
.end method

.method private static t()Lcom/keniu/security/sync/d/d/a/ev;
    .locals 1

    .prologue
    .line 3883
    sget-object v0, Lcom/keniu/security/sync/d/d/a/ev;->d:Lcom/keniu/security/sync/d/d/a/ev;

    return-object v0
.end method

.method private u()V
    .locals 1

    .prologue
    .line 3937
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->h()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ev;->f:Lcom/keniu/security/sync/d/d/a/ge;

    .line 3938
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gj;->h()Lcom/keniu/security/sync/d/d/a/gj;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ev;->g:Lcom/keniu/security/sync/d/d/a/gj;

    .line 3939
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gy;->h()Lcom/keniu/security/sync/d/d/a/gy;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ev;->h:Lcom/keniu/security/sync/d/d/a/gy;

    .line 3940
    return-void
.end method

.method private static v()Lcom/keniu/security/sync/d/d/a/ew;
    .locals 1

    .prologue
    .line 4070
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ew;->i()Lcom/keniu/security/sync/d/d/a/ew;

    move-result-object v0

    return-object v0
.end method

.method private static w()Lcom/keniu/security/sync/d/d/a/ew;
    .locals 1

    .prologue
    .line 4071
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ew;->i()Lcom/keniu/security/sync/d/d/a/ew;

    move-result-object v0

    return-object v0
.end method

.method private x()Lcom/keniu/security/sync/d/d/a/ew;
    .locals 1

    .prologue
    .line 4075
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ew;->i()Lcom/keniu/security/sync/d/d/a/ew;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/ew;->a(Lcom/keniu/security/sync/d/d/a/ev;)Lcom/keniu/security/sync/d/d/a/ew;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final B()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 4000
    invoke-super {p0}, Lcom/b/a/dk;->B()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic D()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 3868
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ev;->x()Lcom/keniu/security/sync/d/d/a/ew;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic E()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 3868
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ew;->i()Lcom/keniu/security/sync/d/d/a/ew;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic F()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 3868
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ev;->x()Lcom/keniu/security/sync/d/d/a/ew;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic G()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 3868
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ew;->i()Lcom/keniu/security/sync/d/d/a/ew;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic H()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 3868
    sget-object v0, Lcom/keniu/security/sync/d/d/a/ev;->d:Lcom/keniu/security/sync/d/d/a/ev;

    return-object v0
.end method

.method public final bridge synthetic I()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 3868
    sget-object v0, Lcom/keniu/security/sync/d/d/a/ev;->d:Lcom/keniu/security/sync/d/d/a/ev;

    return-object v0
.end method

.method protected final synthetic a(Lcom/b/a/dp;)Lcom/b/a/ew;
    .locals 1
    .parameter

    .prologue
    .line 3868
    new-instance v0, Lcom/keniu/security/sync/d/d/a/ew;

    invoke-direct {v0, p1}, Lcom/keniu/security/sync/d/d/a/ew;-><init>(Lcom/b/a/dp;)V

    return-object v0
.end method

.method public final a(Lcom/b/a/n;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 3960
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ev;->b()I

    .line 3961
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ev;->e:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 3962
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ev;->f:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-virtual {p1, v1, v0}, Lcom/b/a/n;->b(ILcom/b/a/ex;)V

    .line 3964
    :cond_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ev;->e:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 3965
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ev;->g:Lcom/keniu/security/sync/d/d/a/gj;

    invoke-virtual {p1, v2, v0}, Lcom/b/a/n;->b(ILcom/b/a/ex;)V

    .line 3967
    :cond_1
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ev;->e:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 3968
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/ev;->h:Lcom/keniu/security/sync/d/d/a/gy;

    invoke-virtual {p1, v0, v1}, Lcom/b/a/n;->b(ILcom/b/a/ex;)V

    .line 3970
    :cond_2
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ev;->b_()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/b/a/gg;->a(Lcom/b/a/n;)V

    .line 3971
    return-void
.end method

.method public final a()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 3943
    iget-byte v0, p0, Lcom/keniu/security/sync/d/d/a/ev;->i:B

    .line 3944
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-ne v0, v3, :cond_0

    move v0, v3

    .line 3955
    :goto_0
    return v0

    :cond_0
    move v0, v2

    .line 3944
    goto :goto_0

    .line 3946
    :cond_1
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ev;->j()Z

    move-result v0

    if-nez v0, :cond_2

    .line 3947
    iput-byte v2, p0, Lcom/keniu/security/sync/d/d/a/ev;->i:B

    move v0, v2

    .line 3948
    goto :goto_0

    .line 3950
    :cond_2
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ev;->f:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/ge;->a()Z

    move-result v0

    if-nez v0, :cond_3

    .line 3951
    iput-byte v2, p0, Lcom/keniu/security/sync/d/d/a/ev;->i:B

    move v0, v2

    .line 3952
    goto :goto_0

    .line 3954
    :cond_3
    iput-byte v3, p0, Lcom/keniu/security/sync/d/d/a/ev;->i:B

    move v0, v3

    .line 3955
    goto :goto_0
.end method

.method public final b()I
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 3975
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ev;->k:I

    .line 3976
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 3993
    :goto_0
    return v0

    .line 3978
    :cond_0
    const/4 v0, 0x0

    .line 3979
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/ev;->e:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_1

    .line 3980
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ev;->f:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-static {v2, v0}, Lcom/b/a/n;->e(ILcom/b/a/ex;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 3983
    :cond_1
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/ev;->e:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_2

    .line 3984
    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/ev;->g:Lcom/keniu/security/sync/d/d/a/gj;

    invoke-static {v3, v1}, Lcom/b/a/n;->e(ILcom/b/a/ex;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3987
    :cond_2
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/ev;->e:I

    and-int/lit8 v1, v1, 0x4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    .line 3988
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/keniu/security/sync/d/d/a/ev;->h:Lcom/keniu/security/sync/d/d/a/gy;

    invoke-static {v1, v2}, Lcom/b/a/n;->e(ILcom/b/a/ex;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3991
    :cond_3
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ev;->b_()Lcom/b/a/gg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/b/a/gg;->b()I

    move-result v1

    add-int/2addr v0, v1

    .line 3992
    iput v0, p0, Lcom/keniu/security/sync/d/d/a/ev;->k:I

    goto :goto_0
.end method

.method protected final g()Lcom/b/a/dv;
    .locals 1

    .prologue
    .line 3893
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/a;->q()Lcom/b/a/dv;

    move-result-object v0

    return-object v0
.end method

.method public final j()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 3901
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ev;->e:I

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
    .line 3904
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ev;->f:Lcom/keniu/security/sync/d/d/a/ge;

    return-object v0
.end method

.method public final l()Lcom/keniu/security/sync/d/d/a/gg;
    .locals 1

    .prologue
    .line 3907
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ev;->f:Lcom/keniu/security/sync/d/d/a/ge;

    return-object v0
.end method

.method public final m()Z
    .locals 2

    .prologue
    .line 3914
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ev;->e:I

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
    .line 3917
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ev;->g:Lcom/keniu/security/sync/d/d/a/gj;

    return-object v0
.end method

.method public final o()Lcom/keniu/security/sync/d/d/a/gl;
    .locals 1

    .prologue
    .line 3920
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ev;->g:Lcom/keniu/security/sync/d/d/a/gj;

    return-object v0
.end method

.method public final p()Z
    .locals 2

    .prologue
    .line 3927
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ev;->e:I

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
    .line 3930
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ev;->h:Lcom/keniu/security/sync/d/d/a/gy;

    return-object v0
.end method

.method public final r()Lcom/keniu/security/sync/d/d/a/ha;
    .locals 1

    .prologue
    .line 3933
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ev;->h:Lcom/keniu/security/sync/d/d/a/gy;

    return-object v0
.end method
