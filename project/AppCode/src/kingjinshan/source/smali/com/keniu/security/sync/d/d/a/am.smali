.class public final Lcom/keniu/security/sync/d/d/a/am;
.super Lcom/b/a/dk;
.source "Appsvr.java"

# interfaces
.implements Lcom/keniu/security/sync/d/d/a/ao;


# static fields
.field public static final a:I = 0x1

.field public static final b:I = 0x2

.field public static final c:I = 0x3

.field private static final d:Lcom/keniu/security/sync/d/d/a/am;

.field private static final l:J


# instance fields
.field private e:I

.field private f:Ljava/lang/Object;

.field private g:Ljava/lang/Object;

.field private h:Ljava/lang/Object;

.field private i:B

.field private k:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 29058
    new-instance v0, Lcom/keniu/security/sync/d/d/a/am;

    invoke-direct {v0}, Lcom/keniu/security/sync/d/d/a/am;-><init>()V

    .line 29059
    sput-object v0, Lcom/keniu/security/sync/d/d/a/am;->d:Lcom/keniu/security/sync/d/d/a/am;

    const-string v1, ""

    iput-object v1, v0, Lcom/keniu/security/sync/d/d/a/am;->f:Ljava/lang/Object;

    const-string v1, ""

    iput-object v1, v0, Lcom/keniu/security/sync/d/d/a/am;->g:Ljava/lang/Object;

    const-string v1, ""

    iput-object v1, v0, Lcom/keniu/security/sync/d/d/a/am;->h:Ljava/lang/Object;

    .line 29060
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 28508
    invoke-direct {p0}, Lcom/b/a/dk;-><init>()V

    .line 28631
    iput-byte v0, p0, Lcom/keniu/security/sync/d/d/a/am;->i:B

    .line 28663
    iput v0, p0, Lcom/keniu/security/sync/d/d/a/am;->k:I

    .line 28508
    return-void
.end method

.method synthetic constructor <init>(Lcom/keniu/security/sync/d/d/a/an;)V
    .locals 1
    .parameter

    .prologue
    .line 28501
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/keniu/security/sync/d/d/a/am;-><init>(Lcom/keniu/security/sync/d/d/a/an;B)V

    return-void
.end method

.method private constructor <init>(Lcom/keniu/security/sync/d/d/a/an;B)V
    .locals 1
    .parameter
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 28506
    invoke-direct {p0, p1}, Lcom/b/a/dk;-><init>(Lcom/b/a/dn;)V

    .line 28631
    iput-byte v0, p0, Lcom/keniu/security/sync/d/d/a/am;->i:B

    .line 28663
    iput v0, p0, Lcom/keniu/security/sync/d/d/a/am;->k:I

    .line 28507
    return-void
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/am;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 28501
    iput p1, p0, Lcom/keniu/security/sync/d/d/a/am;->e:I

    return p1
.end method

.method private static a(Lcom/b/a/i;)Lcom/keniu/security/sync/d/d/a/am;
    .locals 1
    .parameter

    .prologue
    .line 28696
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/an;->i()Lcom/keniu/security/sync/d/d/a/an;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/an;->a(Lcom/b/a/i;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/an;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/an;->a(Lcom/keniu/security/sync/d/d/a/an;)Lcom/keniu/security/sync/d/d/a/am;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/i;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/am;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 28702
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/an;->i()Lcom/keniu/security/sync/d/d/a/an;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/an;->a(Lcom/b/a/i;Lcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/an;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/an;->a(Lcom/keniu/security/sync/d/d/a/an;)Lcom/keniu/security/sync/d/d/a/am;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/m;)Lcom/keniu/security/sync/d/d/a/am;
    .locals 1
    .parameter

    .prologue
    .line 28750
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/an;->i()Lcom/keniu/security/sync/d/d/a/an;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/an;->a(Lcom/b/a/m;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/an;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/an;->a(Lcom/keniu/security/sync/d/d/a/an;)Lcom/keniu/security/sync/d/d/a/am;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/am;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 28756
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/an;->i()Lcom/keniu/security/sync/d/d/a/an;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/an;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/an;

    move-result-object v0

    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/an;->a(Lcom/keniu/security/sync/d/d/a/an;)Lcom/keniu/security/sync/d/d/a/am;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/io/InputStream;)Lcom/keniu/security/sync/d/d/a/am;
    .locals 1
    .parameter

    .prologue
    .line 28718
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/an;->i()Lcom/keniu/security/sync/d/d/a/an;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/an;->a(Ljava/io/InputStream;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/an;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/an;->a(Lcom/keniu/security/sync/d/d/a/an;)Lcom/keniu/security/sync/d/d/a/am;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/am;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 28724
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/an;->i()Lcom/keniu/security/sync/d/d/a/an;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/an;->a(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/an;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/an;->a(Lcom/keniu/security/sync/d/d/a/an;)Lcom/keniu/security/sync/d/d/a/am;

    move-result-object v0

    return-object v0
.end method

.method private static a([B)Lcom/keniu/security/sync/d/d/a/am;
    .locals 1
    .parameter

    .prologue
    .line 28707
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/an;->i()Lcom/keniu/security/sync/d/d/a/an;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/an;->a([B)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/an;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/an;->a(Lcom/keniu/security/sync/d/d/a/an;)Lcom/keniu/security/sync/d/d/a/am;

    move-result-object v0

    return-object v0
.end method

.method private static a([BLcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/am;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 28713
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/an;->i()Lcom/keniu/security/sync/d/d/a/an;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/an;->a([BLcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/an;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/an;->a(Lcom/keniu/security/sync/d/d/a/an;)Lcom/keniu/security/sync/d/d/a/am;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/keniu/security/sync/d/d/a/am;)Lcom/keniu/security/sync/d/d/a/an;
    .locals 1
    .parameter

    .prologue
    .line 28763
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/an;->i()Lcom/keniu/security/sync/d/d/a/an;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/an;->a(Lcom/keniu/security/sync/d/d/a/am;)Lcom/keniu/security/sync/d/d/a/an;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/am;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 28501
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/am;->f:Ljava/lang/Object;

    return-object p1
.end method

.method private static b(Ljava/io/InputStream;)Lcom/keniu/security/sync/d/d/a/am;
    .locals 2
    .parameter

    .prologue
    .line 28729
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/an;->i()Lcom/keniu/security/sync/d/d/a/an;

    move-result-object v0

    .line 28730
    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/an;->b(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 28731
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/an;->a(Lcom/keniu/security/sync/d/d/a/an;)Lcom/keniu/security/sync/d/d/a/am;

    move-result-object v0

    .line 28733
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/am;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 28740
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/an;->i()Lcom/keniu/security/sync/d/d/a/an;

    move-result-object v0

    .line 28741
    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/an;->b(Ljava/io/InputStream;Lcom/b/a/df;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 28742
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/an;->a(Lcom/keniu/security/sync/d/d/a/an;)Lcom/keniu/security/sync/d/d/a/am;

    move-result-object v0

    .line 28744
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Lcom/b/a/dp;)Lcom/keniu/security/sync/d/d/a/an;
    .locals 1
    .parameter

    .prologue
    .line 28770
    new-instance v0, Lcom/keniu/security/sync/d/d/a/an;

    invoke-direct {v0, p0}, Lcom/keniu/security/sync/d/d/a/an;-><init>(Lcom/b/a/dp;)V

    .line 28771
    return-object v0
.end method

.method static synthetic b(Lcom/keniu/security/sync/d/d/a/am;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 28501
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/am;->g:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic c(Lcom/keniu/security/sync/d/d/a/am;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 28501
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/am;->h:Ljava/lang/Object;

    return-object p1
.end method

.method public static h()Lcom/keniu/security/sync/d/d/a/am;
    .locals 1

    .prologue
    .line 28512
    sget-object v0, Lcom/keniu/security/sync/d/d/a/am;->d:Lcom/keniu/security/sync/d/d/a/am;

    return-object v0
.end method

.method public static final i()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 28521
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/a;->aH()Lcom/b/a/cj;

    move-result-object v0

    return-object v0
.end method

.method static synthetic p()Z
    .locals 1

    .prologue
    .line 28501
    sget-boolean v0, Lcom/keniu/security/sync/d/d/a/am;->j:Z

    return v0
.end method

.method private static q()Lcom/keniu/security/sync/d/d/a/am;
    .locals 1

    .prologue
    .line 28516
    sget-object v0, Lcom/keniu/security/sync/d/d/a/am;->d:Lcom/keniu/security/sync/d/d/a/am;

    return-object v0
.end method

.method private r()Lcom/b/a/i;
    .locals 2

    .prologue
    .line 28551
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/am;->f:Ljava/lang/Object;

    .line 28552
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 28553
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/b/a/i;->a(Ljava/lang/String;)Lcom/b/a/i;

    move-result-object v0

    .line 28555
    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/am;->f:Ljava/lang/Object;

    .line 28558
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/b/a/i;

    goto :goto_0
.end method

.method private s()Lcom/b/a/i;
    .locals 2

    .prologue
    .line 28583
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/am;->g:Ljava/lang/Object;

    .line 28584
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 28585
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/b/a/i;->a(Ljava/lang/String;)Lcom/b/a/i;

    move-result-object v0

    .line 28587
    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/am;->g:Ljava/lang/Object;

    .line 28590
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/b/a/i;

    goto :goto_0
.end method

.method private t()Lcom/b/a/i;
    .locals 2

    .prologue
    .line 28615
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/am;->h:Ljava/lang/Object;

    .line 28616
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 28617
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/b/a/i;->a(Ljava/lang/String;)Lcom/b/a/i;

    move-result-object v0

    .line 28619
    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/am;->h:Ljava/lang/Object;

    .line 28622
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/b/a/i;

    goto :goto_0
.end method

.method private u()V
    .locals 1

    .prologue
    .line 28627
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/am;->f:Ljava/lang/Object;

    .line 28628
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/am;->g:Ljava/lang/Object;

    .line 28629
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/am;->h:Ljava/lang/Object;

    .line 28630
    return-void
.end method

.method private static v()Lcom/keniu/security/sync/d/d/a/an;
    .locals 1

    .prologue
    .line 28760
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/an;->i()Lcom/keniu/security/sync/d/d/a/an;

    move-result-object v0

    return-object v0
.end method

.method private static w()Lcom/keniu/security/sync/d/d/a/an;
    .locals 1

    .prologue
    .line 28761
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/an;->i()Lcom/keniu/security/sync/d/d/a/an;

    move-result-object v0

    return-object v0
.end method

.method private x()Lcom/keniu/security/sync/d/d/a/an;
    .locals 1

    .prologue
    .line 28765
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/an;->i()Lcom/keniu/security/sync/d/d/a/an;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/an;->a(Lcom/keniu/security/sync/d/d/a/am;)Lcom/keniu/security/sync/d/d/a/an;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final B()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 28690
    invoke-super {p0}, Lcom/b/a/dk;->B()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic D()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 28501
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/am;->x()Lcom/keniu/security/sync/d/d/a/an;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic E()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 28501
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/an;->i()Lcom/keniu/security/sync/d/d/a/an;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic F()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 28501
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/am;->x()Lcom/keniu/security/sync/d/d/a/an;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic G()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 28501
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/an;->i()Lcom/keniu/security/sync/d/d/a/an;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic H()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 28501
    sget-object v0, Lcom/keniu/security/sync/d/d/a/am;->d:Lcom/keniu/security/sync/d/d/a/am;

    return-object v0
.end method

.method public final bridge synthetic I()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 28501
    sget-object v0, Lcom/keniu/security/sync/d/d/a/am;->d:Lcom/keniu/security/sync/d/d/a/am;

    return-object v0
.end method

.method protected final synthetic a(Lcom/b/a/dp;)Lcom/b/a/ew;
    .locals 1
    .parameter

    .prologue
    .line 28501
    new-instance v0, Lcom/keniu/security/sync/d/d/a/an;

    invoke-direct {v0, p1}, Lcom/keniu/security/sync/d/d/a/an;-><init>(Lcom/b/a/dp;)V

    return-object v0
.end method

.method public final a(Lcom/b/a/n;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 28650
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/am;->b()I

    .line 28651
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/am;->e:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 28652
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/am;->r()Lcom/b/a/i;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/b/a/n;->a(ILcom/b/a/i;)V

    .line 28654
    :cond_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/am;->e:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 28655
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/am;->s()Lcom/b/a/i;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/b/a/n;->a(ILcom/b/a/i;)V

    .line 28657
    :cond_1
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/am;->e:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 28658
    const/4 v0, 0x3

    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/am;->t()Lcom/b/a/i;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/b/a/n;->a(ILcom/b/a/i;)V

    .line 28660
    :cond_2
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/am;->b_()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/b/a/gg;->a(Lcom/b/a/n;)V

    .line 28661
    return-void
.end method

.method public final a()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 28633
    iget-byte v0, p0, Lcom/keniu/security/sync/d/d/a/am;->i:B

    .line 28634
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-ne v0, v3, :cond_0

    move v0, v3

    .line 28645
    :goto_0
    return v0

    :cond_0
    move v0, v2

    .line 28634
    goto :goto_0

    .line 28636
    :cond_1
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/am;->j()Z

    move-result v0

    if-nez v0, :cond_2

    .line 28637
    iput-byte v2, p0, Lcom/keniu/security/sync/d/d/a/am;->i:B

    move v0, v2

    .line 28638
    goto :goto_0

    .line 28640
    :cond_2
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/am;->l()Z

    move-result v0

    if-nez v0, :cond_3

    .line 28641
    iput-byte v2, p0, Lcom/keniu/security/sync/d/d/a/am;->i:B

    move v0, v2

    .line 28642
    goto :goto_0

    .line 28644
    :cond_3
    iput-byte v3, p0, Lcom/keniu/security/sync/d/d/a/am;->i:B

    move v0, v3

    .line 28645
    goto :goto_0
.end method

.method public final b()I
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 28665
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/am;->k:I

    .line 28666
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 28683
    :goto_0
    return v0

    .line 28668
    :cond_0
    const/4 v0, 0x0

    .line 28669
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/am;->e:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_1

    .line 28670
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/am;->r()Lcom/b/a/i;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/b/a/n;->c(ILcom/b/a/i;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 28673
    :cond_1
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/am;->e:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_2

    .line 28674
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/am;->s()Lcom/b/a/i;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/b/a/n;->c(ILcom/b/a/i;)I

    move-result v1

    add-int/2addr v0, v1

    .line 28677
    :cond_2
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/am;->e:I

    and-int/lit8 v1, v1, 0x4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    .line 28678
    const/4 v1, 0x3

    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/am;->t()Lcom/b/a/i;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/b/a/n;->c(ILcom/b/a/i;)I

    move-result v1

    add-int/2addr v0, v1

    .line 28681
    :cond_3
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/am;->b_()Lcom/b/a/gg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/b/a/gg;->b()I

    move-result v1

    add-int/2addr v0, v1

    .line 28682
    iput v0, p0, Lcom/keniu/security/sync/d/d/a/am;->k:I

    goto :goto_0
.end method

.method protected final g()Lcom/b/a/dv;
    .locals 1

    .prologue
    .line 28526
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/a;->aI()Lcom/b/a/dv;

    move-result-object v0

    return-object v0
.end method

.method public final j()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 28534
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/am;->e:I

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
    .line 28537
    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/am;->f:Ljava/lang/Object;

    .line 28538
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 28539
    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object p0, v0

    move-object v1, p0

    .line 28547
    :goto_0
    return-object v1

    .line 28541
    :cond_0
    check-cast v1, Lcom/b/a/i;

    .line 28543
    invoke-virtual {v1}, Lcom/b/a/i;->b()Ljava/lang/String;

    move-result-object v2

    .line 28544
    invoke-static {v1}, Lcom/b/a/ep;->a(Lcom/b/a/i;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 28545
    iput-object v2, p0, Lcom/keniu/security/sync/d/d/a/am;->f:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 28547
    goto :goto_0
.end method

.method public final l()Z
    .locals 2

    .prologue
    .line 28566
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/am;->e:I

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
    .line 28569
    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/am;->g:Ljava/lang/Object;

    .line 28570
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 28571
    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object p0, v0

    move-object v1, p0

    .line 28579
    :goto_0
    return-object v1

    .line 28573
    :cond_0
    check-cast v1, Lcom/b/a/i;

    .line 28575
    invoke-virtual {v1}, Lcom/b/a/i;->b()Ljava/lang/String;

    move-result-object v2

    .line 28576
    invoke-static {v1}, Lcom/b/a/ep;->a(Lcom/b/a/i;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 28577
    iput-object v2, p0, Lcom/keniu/security/sync/d/d/a/am;->g:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 28579
    goto :goto_0
.end method

.method public final n()Z
    .locals 2

    .prologue
    .line 28598
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/am;->e:I

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

.method public final o()Ljava/lang/String;
    .locals 3

    .prologue
    .line 28601
    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/am;->h:Ljava/lang/Object;

    .line 28602
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 28603
    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object p0, v0

    move-object v1, p0

    .line 28611
    :goto_0
    return-object v1

    .line 28605
    :cond_0
    check-cast v1, Lcom/b/a/i;

    .line 28607
    invoke-virtual {v1}, Lcom/b/a/i;->b()Ljava/lang/String;

    move-result-object v2

    .line 28608
    invoke-static {v1}, Lcom/b/a/ep;->a(Lcom/b/a/i;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 28609
    iput-object v2, p0, Lcom/keniu/security/sync/d/d/a/am;->h:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 28611
    goto :goto_0
.end method
