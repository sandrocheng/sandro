.class public final Lcom/keniu/security/sync/d/d/a/fw;
.super Lcom/b/a/dk;
.source "Appsvr.java"

# interfaces
.implements Lcom/keniu/security/sync/d/d/a/fy;


# static fields
.field public static final a:I = 0x1

.field public static final b:I = 0x2

.field private static final c:Lcom/keniu/security/sync/d/d/a/fw;

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
    .line 34062
    new-instance v0, Lcom/keniu/security/sync/d/d/a/fw;

    invoke-direct {v0}, Lcom/keniu/security/sync/d/d/a/fw;-><init>()V

    .line 34063
    sput-object v0, Lcom/keniu/security/sync/d/d/a/fw;->c:Lcom/keniu/security/sync/d/d/a/fw;

    const-string v1, ""

    iput-object v1, v0, Lcom/keniu/security/sync/d/d/a/fw;->e:Ljava/lang/Object;

    const-string v1, ""

    iput-object v1, v0, Lcom/keniu/security/sync/d/d/a/fw;->f:Ljava/lang/Object;

    .line 34064
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 33602
    invoke-direct {p0}, Lcom/b/a/dk;-><init>()V

    .line 33692
    iput-byte v0, p0, Lcom/keniu/security/sync/d/d/a/fw;->g:B

    .line 33721
    iput v0, p0, Lcom/keniu/security/sync/d/d/a/fw;->h:I

    .line 33602
    return-void
.end method

.method synthetic constructor <init>(Lcom/keniu/security/sync/d/d/a/fx;)V
    .locals 1
    .parameter

    .prologue
    .line 33595
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/keniu/security/sync/d/d/a/fw;-><init>(Lcom/keniu/security/sync/d/d/a/fx;B)V

    return-void
.end method

.method private constructor <init>(Lcom/keniu/security/sync/d/d/a/fx;B)V
    .locals 1
    .parameter
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 33600
    invoke-direct {p0, p1}, Lcom/b/a/dk;-><init>(Lcom/b/a/dn;)V

    .line 33692
    iput-byte v0, p0, Lcom/keniu/security/sync/d/d/a/fw;->g:B

    .line 33721
    iput v0, p0, Lcom/keniu/security/sync/d/d/a/fw;->h:I

    .line 33601
    return-void
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/fw;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 33595
    iput p1, p0, Lcom/keniu/security/sync/d/d/a/fw;->d:I

    return p1
.end method

.method private static a(Lcom/b/a/i;)Lcom/keniu/security/sync/d/d/a/fw;
    .locals 1
    .parameter

    .prologue
    .line 33750
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/fx;->i()Lcom/keniu/security/sync/d/d/a/fx;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/fx;->a(Lcom/b/a/i;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/fx;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/fx;->a(Lcom/keniu/security/sync/d/d/a/fx;)Lcom/keniu/security/sync/d/d/a/fw;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/i;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/fw;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 33756
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/fx;->i()Lcom/keniu/security/sync/d/d/a/fx;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/fx;->a(Lcom/b/a/i;Lcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/fx;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/fx;->a(Lcom/keniu/security/sync/d/d/a/fx;)Lcom/keniu/security/sync/d/d/a/fw;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/m;)Lcom/keniu/security/sync/d/d/a/fw;
    .locals 1
    .parameter

    .prologue
    .line 33804
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/fx;->i()Lcom/keniu/security/sync/d/d/a/fx;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/fx;->a(Lcom/b/a/m;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/fx;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/fx;->a(Lcom/keniu/security/sync/d/d/a/fx;)Lcom/keniu/security/sync/d/d/a/fw;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/fw;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 33810
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/fx;->i()Lcom/keniu/security/sync/d/d/a/fx;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/fx;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/fx;

    move-result-object v0

    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/fx;->a(Lcom/keniu/security/sync/d/d/a/fx;)Lcom/keniu/security/sync/d/d/a/fw;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/io/InputStream;)Lcom/keniu/security/sync/d/d/a/fw;
    .locals 1
    .parameter

    .prologue
    .line 33772
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/fx;->i()Lcom/keniu/security/sync/d/d/a/fx;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/fx;->a(Ljava/io/InputStream;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/fx;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/fx;->a(Lcom/keniu/security/sync/d/d/a/fx;)Lcom/keniu/security/sync/d/d/a/fw;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/fw;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 33778
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/fx;->i()Lcom/keniu/security/sync/d/d/a/fx;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/fx;->a(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/fx;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/fx;->a(Lcom/keniu/security/sync/d/d/a/fx;)Lcom/keniu/security/sync/d/d/a/fw;

    move-result-object v0

    return-object v0
.end method

.method private static a([B)Lcom/keniu/security/sync/d/d/a/fw;
    .locals 1
    .parameter

    .prologue
    .line 33761
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/fx;->i()Lcom/keniu/security/sync/d/d/a/fx;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/fx;->a([B)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/fx;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/fx;->a(Lcom/keniu/security/sync/d/d/a/fx;)Lcom/keniu/security/sync/d/d/a/fw;

    move-result-object v0

    return-object v0
.end method

.method private static a([BLcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/fw;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 33767
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/fx;->i()Lcom/keniu/security/sync/d/d/a/fx;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/fx;->a([BLcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/fx;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/fx;->a(Lcom/keniu/security/sync/d/d/a/fx;)Lcom/keniu/security/sync/d/d/a/fw;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/keniu/security/sync/d/d/a/fw;)Lcom/keniu/security/sync/d/d/a/fx;
    .locals 1
    .parameter

    .prologue
    .line 33817
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/fx;->i()Lcom/keniu/security/sync/d/d/a/fx;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/fx;->a(Lcom/keniu/security/sync/d/d/a/fw;)Lcom/keniu/security/sync/d/d/a/fx;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/fw;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 33595
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/fw;->e:Ljava/lang/Object;

    return-object p1
.end method

.method private static b(Ljava/io/InputStream;)Lcom/keniu/security/sync/d/d/a/fw;
    .locals 2
    .parameter

    .prologue
    .line 33783
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/fx;->i()Lcom/keniu/security/sync/d/d/a/fx;

    move-result-object v0

    .line 33784
    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/fx;->b(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 33785
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/fx;->a(Lcom/keniu/security/sync/d/d/a/fx;)Lcom/keniu/security/sync/d/d/a/fw;

    move-result-object v0

    .line 33787
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/fw;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 33794
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/fx;->i()Lcom/keniu/security/sync/d/d/a/fx;

    move-result-object v0

    .line 33795
    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/fx;->b(Ljava/io/InputStream;Lcom/b/a/df;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 33796
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/fx;->a(Lcom/keniu/security/sync/d/d/a/fx;)Lcom/keniu/security/sync/d/d/a/fw;

    move-result-object v0

    .line 33798
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Lcom/b/a/dp;)Lcom/keniu/security/sync/d/d/a/fx;
    .locals 1
    .parameter

    .prologue
    .line 33824
    new-instance v0, Lcom/keniu/security/sync/d/d/a/fx;

    invoke-direct {v0, p0}, Lcom/keniu/security/sync/d/d/a/fx;-><init>(Lcom/b/a/dp;)V

    .line 33825
    return-object v0
.end method

.method static synthetic b(Lcom/keniu/security/sync/d/d/a/fw;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 33595
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/fw;->f:Ljava/lang/Object;

    return-object p1
.end method

.method public static h()Lcom/keniu/security/sync/d/d/a/fw;
    .locals 1

    .prologue
    .line 33606
    sget-object v0, Lcom/keniu/security/sync/d/d/a/fw;->c:Lcom/keniu/security/sync/d/d/a/fw;

    return-object v0
.end method

.method public static final i()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 33615
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/a;->aX()Lcom/b/a/cj;

    move-result-object v0

    return-object v0
.end method

.method static synthetic n()Z
    .locals 1

    .prologue
    .line 33595
    sget-boolean v0, Lcom/keniu/security/sync/d/d/a/fw;->j:Z

    return v0
.end method

.method private static o()Lcom/keniu/security/sync/d/d/a/fw;
    .locals 1

    .prologue
    .line 33610
    sget-object v0, Lcom/keniu/security/sync/d/d/a/fw;->c:Lcom/keniu/security/sync/d/d/a/fw;

    return-object v0
.end method

.method private p()Lcom/b/a/i;
    .locals 2

    .prologue
    .line 33645
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/fw;->e:Ljava/lang/Object;

    .line 33646
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 33647
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/b/a/i;->a(Ljava/lang/String;)Lcom/b/a/i;

    move-result-object v0

    .line 33649
    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/fw;->e:Ljava/lang/Object;

    .line 33652
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/b/a/i;

    goto :goto_0
.end method

.method private q()Lcom/b/a/i;
    .locals 2

    .prologue
    .line 33677
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/fw;->f:Ljava/lang/Object;

    .line 33678
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 33679
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/b/a/i;->a(Ljava/lang/String;)Lcom/b/a/i;

    move-result-object v0

    .line 33681
    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/fw;->f:Ljava/lang/Object;

    .line 33684
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/b/a/i;

    goto :goto_0
.end method

.method private r()V
    .locals 1

    .prologue
    .line 33689
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/fw;->e:Ljava/lang/Object;

    .line 33690
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/fw;->f:Ljava/lang/Object;

    .line 33691
    return-void
.end method

.method private static s()Lcom/keniu/security/sync/d/d/a/fx;
    .locals 1

    .prologue
    .line 33814
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/fx;->i()Lcom/keniu/security/sync/d/d/a/fx;

    move-result-object v0

    return-object v0
.end method

.method private static t()Lcom/keniu/security/sync/d/d/a/fx;
    .locals 1

    .prologue
    .line 33815
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/fx;->i()Lcom/keniu/security/sync/d/d/a/fx;

    move-result-object v0

    return-object v0
.end method

.method private u()Lcom/keniu/security/sync/d/d/a/fx;
    .locals 1

    .prologue
    .line 33819
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/fx;->i()Lcom/keniu/security/sync/d/d/a/fx;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/fx;->a(Lcom/keniu/security/sync/d/d/a/fw;)Lcom/keniu/security/sync/d/d/a/fx;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final B()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 33744
    invoke-super {p0}, Lcom/b/a/dk;->B()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic D()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 33595
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/fw;->u()Lcom/keniu/security/sync/d/d/a/fx;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic E()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 33595
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/fx;->i()Lcom/keniu/security/sync/d/d/a/fx;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic F()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 33595
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/fw;->u()Lcom/keniu/security/sync/d/d/a/fx;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic G()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 33595
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/fx;->i()Lcom/keniu/security/sync/d/d/a/fx;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic H()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 33595
    sget-object v0, Lcom/keniu/security/sync/d/d/a/fw;->c:Lcom/keniu/security/sync/d/d/a/fw;

    return-object v0
.end method

.method public final bridge synthetic I()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 33595
    sget-object v0, Lcom/keniu/security/sync/d/d/a/fw;->c:Lcom/keniu/security/sync/d/d/a/fw;

    return-object v0
.end method

.method protected final synthetic a(Lcom/b/a/dp;)Lcom/b/a/ew;
    .locals 1
    .parameter

    .prologue
    .line 33595
    new-instance v0, Lcom/keniu/security/sync/d/d/a/fx;

    invoke-direct {v0, p1}, Lcom/keniu/security/sync/d/d/a/fx;-><init>(Lcom/b/a/dp;)V

    return-object v0
.end method

.method public final a(Lcom/b/a/n;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 33711
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/fw;->b()I

    .line 33712
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/fw;->d:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 33713
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/fw;->p()Lcom/b/a/i;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/b/a/n;->a(ILcom/b/a/i;)V

    .line 33715
    :cond_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/fw;->d:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 33716
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/fw;->q()Lcom/b/a/i;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/b/a/n;->a(ILcom/b/a/i;)V

    .line 33718
    :cond_1
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/fw;->b_()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/b/a/gg;->a(Lcom/b/a/n;)V

    .line 33719
    return-void
.end method

.method public final a()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 33694
    iget-byte v0, p0, Lcom/keniu/security/sync/d/d/a/fw;->g:B

    .line 33695
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-ne v0, v3, :cond_0

    move v0, v3

    .line 33706
    :goto_0
    return v0

    :cond_0
    move v0, v2

    .line 33695
    goto :goto_0

    .line 33697
    :cond_1
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/fw;->j()Z

    move-result v0

    if-nez v0, :cond_2

    .line 33698
    iput-byte v2, p0, Lcom/keniu/security/sync/d/d/a/fw;->g:B

    move v0, v2

    .line 33699
    goto :goto_0

    .line 33701
    :cond_2
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/fw;->l()Z

    move-result v0

    if-nez v0, :cond_3

    .line 33702
    iput-byte v2, p0, Lcom/keniu/security/sync/d/d/a/fw;->g:B

    move v0, v2

    .line 33703
    goto :goto_0

    .line 33705
    :cond_3
    iput-byte v3, p0, Lcom/keniu/security/sync/d/d/a/fw;->g:B

    move v0, v3

    .line 33706
    goto :goto_0
.end method

.method public final b()I
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 33723
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/fw;->h:I

    .line 33724
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 33737
    :goto_0
    return v0

    .line 33726
    :cond_0
    const/4 v0, 0x0

    .line 33727
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/fw;->d:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_1

    .line 33728
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/fw;->p()Lcom/b/a/i;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/b/a/n;->c(ILcom/b/a/i;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 33731
    :cond_1
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/fw;->d:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_2

    .line 33732
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/fw;->q()Lcom/b/a/i;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/b/a/n;->c(ILcom/b/a/i;)I

    move-result v1

    add-int/2addr v0, v1

    .line 33735
    :cond_2
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/fw;->b_()Lcom/b/a/gg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/b/a/gg;->b()I

    move-result v1

    add-int/2addr v0, v1

    .line 33736
    iput v0, p0, Lcom/keniu/security/sync/d/d/a/fw;->h:I

    goto :goto_0
.end method

.method protected final g()Lcom/b/a/dv;
    .locals 1

    .prologue
    .line 33620
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/a;->aY()Lcom/b/a/dv;

    move-result-object v0

    return-object v0
.end method

.method public final j()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 33628
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/fw;->d:I

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
    .line 33631
    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/fw;->e:Ljava/lang/Object;

    .line 33632
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 33633
    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object p0, v0

    move-object v1, p0

    .line 33641
    :goto_0
    return-object v1

    .line 33635
    :cond_0
    check-cast v1, Lcom/b/a/i;

    .line 33637
    invoke-virtual {v1}, Lcom/b/a/i;->b()Ljava/lang/String;

    move-result-object v2

    .line 33638
    invoke-static {v1}, Lcom/b/a/ep;->a(Lcom/b/a/i;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 33639
    iput-object v2, p0, Lcom/keniu/security/sync/d/d/a/fw;->e:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 33641
    goto :goto_0
.end method

.method public final l()Z
    .locals 2

    .prologue
    .line 33660
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/fw;->d:I

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
    .line 33663
    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/fw;->f:Ljava/lang/Object;

    .line 33664
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 33665
    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object p0, v0

    move-object v1, p0

    .line 33673
    :goto_0
    return-object v1

    .line 33667
    :cond_0
    check-cast v1, Lcom/b/a/i;

    .line 33669
    invoke-virtual {v1}, Lcom/b/a/i;->b()Ljava/lang/String;

    move-result-object v2

    .line 33670
    invoke-static {v1}, Lcom/b/a/ep;->a(Lcom/b/a/i;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 33671
    iput-object v2, p0, Lcom/keniu/security/sync/d/d/a/fw;->f:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 33673
    goto :goto_0
.end method
