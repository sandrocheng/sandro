.class public final Lcom/keniu/security/sync/d/d/a/ci;
.super Lcom/b/a/dk;
.source "Appsvr.java"

# interfaces
.implements Lcom/keniu/security/sync/d/d/a/ck;


# static fields
.field public static final a:I = 0x1

.field public static final b:I = 0x2

.field public static final c:I = 0x3

.field public static final d:I = 0x4

.field public static final e:I = 0x5

.field private static final f:Lcom/keniu/security/sync/d/d/a/ci;

.field private static final p:J


# instance fields
.field private g:I

.field private h:Ljava/lang/Object;

.field private i:Ljava/lang/Object;

.field private k:Ljava/lang/Object;

.field private l:I

.field private m:J

.field private n:B

.field private o:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 5278
    new-instance v0, Lcom/keniu/security/sync/d/d/a/ci;

    invoke-direct {v0}, Lcom/keniu/security/sync/d/d/a/ci;-><init>()V

    .line 5279
    sput-object v0, Lcom/keniu/security/sync/d/d/a/ci;->f:Lcom/keniu/security/sync/d/d/a/ci;

    const-string v1, ""

    iput-object v1, v0, Lcom/keniu/security/sync/d/d/a/ci;->h:Ljava/lang/Object;

    const-string v1, ""

    iput-object v1, v0, Lcom/keniu/security/sync/d/d/a/ci;->i:Ljava/lang/Object;

    const-string v1, ""

    iput-object v1, v0, Lcom/keniu/security/sync/d/d/a/ci;->k:Ljava/lang/Object;

    const/4 v1, 0x0

    iput v1, v0, Lcom/keniu/security/sync/d/d/a/ci;->l:I

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/keniu/security/sync/d/d/a/ci;->m:J

    .line 5280
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 4606
    invoke-direct {p0}, Lcom/b/a/dk;-><init>()V

    .line 4751
    iput-byte v0, p0, Lcom/keniu/security/sync/d/d/a/ci;->n:B

    .line 4797
    iput v0, p0, Lcom/keniu/security/sync/d/d/a/ci;->o:I

    .line 4606
    return-void
.end method

.method synthetic constructor <init>(Lcom/keniu/security/sync/d/d/a/cj;)V
    .locals 1
    .parameter

    .prologue
    .line 4599
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/keniu/security/sync/d/d/a/ci;-><init>(Lcom/keniu/security/sync/d/d/a/cj;B)V

    return-void
.end method

.method private constructor <init>(Lcom/keniu/security/sync/d/d/a/cj;B)V
    .locals 1
    .parameter
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 4604
    invoke-direct {p0, p1}, Lcom/b/a/dk;-><init>(Lcom/b/a/dn;)V

    .line 4751
    iput-byte v0, p0, Lcom/keniu/security/sync/d/d/a/ci;->n:B

    .line 4797
    iput v0, p0, Lcom/keniu/security/sync/d/d/a/ci;->o:I

    .line 4605
    return-void
.end method

.method private static A()Lcom/keniu/security/sync/d/d/a/cj;
    .locals 1

    .prologue
    .line 4903
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/cj;->t()Lcom/keniu/security/sync/d/d/a/cj;

    move-result-object v0

    return-object v0
.end method

.method private J()Lcom/keniu/security/sync/d/d/a/cj;
    .locals 1

    .prologue
    .line 4907
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/cj;->t()Lcom/keniu/security/sync/d/d/a/cj;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/cj;->a(Lcom/keniu/security/sync/d/d/a/ci;)Lcom/keniu/security/sync/d/d/a/cj;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/ci;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 4599
    iput p1, p0, Lcom/keniu/security/sync/d/d/a/ci;->l:I

    return p1
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/ci;J)J
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 4599
    iput-wide p1, p0, Lcom/keniu/security/sync/d/d/a/ci;->m:J

    return-wide p1
.end method

.method private static a(Lcom/b/a/i;)Lcom/keniu/security/sync/d/d/a/ci;
    .locals 1
    .parameter

    .prologue
    .line 4838
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/cj;->t()Lcom/keniu/security/sync/d/d/a/cj;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/cj;->a(Lcom/b/a/i;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/cj;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/cj;->a(Lcom/keniu/security/sync/d/d/a/cj;)Lcom/keniu/security/sync/d/d/a/ci;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/i;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/ci;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 4844
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/cj;->t()Lcom/keniu/security/sync/d/d/a/cj;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/cj;->a(Lcom/b/a/i;Lcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/cj;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/cj;->a(Lcom/keniu/security/sync/d/d/a/cj;)Lcom/keniu/security/sync/d/d/a/ci;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/m;)Lcom/keniu/security/sync/d/d/a/ci;
    .locals 1
    .parameter

    .prologue
    .line 4892
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/cj;->t()Lcom/keniu/security/sync/d/d/a/cj;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/cj;->a(Lcom/b/a/m;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/cj;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/cj;->a(Lcom/keniu/security/sync/d/d/a/cj;)Lcom/keniu/security/sync/d/d/a/ci;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/ci;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 4898
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/cj;->t()Lcom/keniu/security/sync/d/d/a/cj;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/cj;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/cj;

    move-result-object v0

    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/cj;->a(Lcom/keniu/security/sync/d/d/a/cj;)Lcom/keniu/security/sync/d/d/a/ci;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/io/InputStream;)Lcom/keniu/security/sync/d/d/a/ci;
    .locals 1
    .parameter

    .prologue
    .line 4860
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/cj;->t()Lcom/keniu/security/sync/d/d/a/cj;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/cj;->a(Ljava/io/InputStream;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/cj;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/cj;->a(Lcom/keniu/security/sync/d/d/a/cj;)Lcom/keniu/security/sync/d/d/a/ci;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/ci;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 4866
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/cj;->t()Lcom/keniu/security/sync/d/d/a/cj;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/cj;->a(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/cj;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/cj;->a(Lcom/keniu/security/sync/d/d/a/cj;)Lcom/keniu/security/sync/d/d/a/ci;

    move-result-object v0

    return-object v0
.end method

.method private static a([B)Lcom/keniu/security/sync/d/d/a/ci;
    .locals 1
    .parameter

    .prologue
    .line 4849
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/cj;->t()Lcom/keniu/security/sync/d/d/a/cj;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/cj;->a([B)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/cj;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/cj;->a(Lcom/keniu/security/sync/d/d/a/cj;)Lcom/keniu/security/sync/d/d/a/ci;

    move-result-object v0

    return-object v0
.end method

.method private static a([BLcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/ci;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 4855
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/cj;->t()Lcom/keniu/security/sync/d/d/a/cj;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/cj;->a([BLcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/cj;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/cj;->a(Lcom/keniu/security/sync/d/d/a/cj;)Lcom/keniu/security/sync/d/d/a/ci;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/keniu/security/sync/d/d/a/ci;)Lcom/keniu/security/sync/d/d/a/cj;
    .locals 1
    .parameter

    .prologue
    .line 4905
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/cj;->t()Lcom/keniu/security/sync/d/d/a/cj;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/cj;->a(Lcom/keniu/security/sync/d/d/a/ci;)Lcom/keniu/security/sync/d/d/a/cj;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/ci;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 4599
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/ci;->h:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic b(Lcom/keniu/security/sync/d/d/a/ci;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 4599
    iput p1, p0, Lcom/keniu/security/sync/d/d/a/ci;->g:I

    return p1
.end method

.method private static b(Ljava/io/InputStream;)Lcom/keniu/security/sync/d/d/a/ci;
    .locals 2
    .parameter

    .prologue
    .line 4871
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/cj;->t()Lcom/keniu/security/sync/d/d/a/cj;

    move-result-object v0

    .line 4872
    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/cj;->b(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4873
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/cj;->a(Lcom/keniu/security/sync/d/d/a/cj;)Lcom/keniu/security/sync/d/d/a/ci;

    move-result-object v0

    .line 4875
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/ci;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 4882
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/cj;->t()Lcom/keniu/security/sync/d/d/a/cj;

    move-result-object v0

    .line 4883
    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/cj;->b(Ljava/io/InputStream;Lcom/b/a/df;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4884
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/cj;->a(Lcom/keniu/security/sync/d/d/a/cj;)Lcom/keniu/security/sync/d/d/a/ci;

    move-result-object v0

    .line 4886
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Lcom/b/a/dp;)Lcom/keniu/security/sync/d/d/a/cj;
    .locals 1
    .parameter

    .prologue
    .line 4912
    new-instance v0, Lcom/keniu/security/sync/d/d/a/cj;

    invoke-direct {v0, p0}, Lcom/keniu/security/sync/d/d/a/cj;-><init>(Lcom/b/a/dp;)V

    .line 4913
    return-object v0
.end method

.method static synthetic b(Lcom/keniu/security/sync/d/d/a/ci;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 4599
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/ci;->i:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic c(Lcom/keniu/security/sync/d/d/a/ci;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 4599
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/ci;->k:Ljava/lang/Object;

    return-object p1
.end method

.method public static h()Lcom/keniu/security/sync/d/d/a/ci;
    .locals 1

    .prologue
    .line 4610
    sget-object v0, Lcom/keniu/security/sync/d/d/a/ci;->f:Lcom/keniu/security/sync/d/d/a/ci;

    return-object v0
.end method

.method public static final i()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 4619
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/a;->r()Lcom/b/a/cj;

    move-result-object v0

    return-object v0
.end method

.method public static t()Lcom/keniu/security/sync/d/d/a/cj;
    .locals 1

    .prologue
    .line 4902
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/cj;->t()Lcom/keniu/security/sync/d/d/a/cj;

    move-result-object v0

    return-object v0
.end method

.method static synthetic u()Z
    .locals 1

    .prologue
    .line 4599
    sget-boolean v0, Lcom/keniu/security/sync/d/d/a/ci;->j:Z

    return v0
.end method

.method private static v()Lcom/keniu/security/sync/d/d/a/ci;
    .locals 1

    .prologue
    .line 4614
    sget-object v0, Lcom/keniu/security/sync/d/d/a/ci;->f:Lcom/keniu/security/sync/d/d/a/ci;

    return-object v0
.end method

.method private w()Lcom/b/a/i;
    .locals 2

    .prologue
    .line 4649
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ci;->h:Ljava/lang/Object;

    .line 4650
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 4651
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/b/a/i;->a(Ljava/lang/String;)Lcom/b/a/i;

    move-result-object v0

    .line 4653
    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ci;->h:Ljava/lang/Object;

    .line 4656
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/b/a/i;

    goto :goto_0
.end method

.method private x()Lcom/b/a/i;
    .locals 2

    .prologue
    .line 4681
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ci;->i:Ljava/lang/Object;

    .line 4682
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 4683
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/b/a/i;->a(Ljava/lang/String;)Lcom/b/a/i;

    move-result-object v0

    .line 4685
    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ci;->i:Ljava/lang/Object;

    .line 4688
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/b/a/i;

    goto :goto_0
.end method

.method private y()Lcom/b/a/i;
    .locals 2

    .prologue
    .line 4713
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ci;->k:Ljava/lang/Object;

    .line 4714
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 4715
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/b/a/i;->a(Ljava/lang/String;)Lcom/b/a/i;

    move-result-object v0

    .line 4717
    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ci;->k:Ljava/lang/Object;

    .line 4720
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/b/a/i;

    goto :goto_0
.end method

.method private z()V
    .locals 2

    .prologue
    .line 4745
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ci;->h:Ljava/lang/Object;

    .line 4746
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ci;->i:Ljava/lang/Object;

    .line 4747
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ci;->k:Ljava/lang/Object;

    .line 4748
    const/4 v0, 0x0

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/ci;->l:I

    .line 4749
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/keniu/security/sync/d/d/a/ci;->m:J

    .line 4750
    return-void
.end method


# virtual methods
.method protected final B()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 4832
    invoke-super {p0}, Lcom/b/a/dk;->B()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic D()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 4599
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ci;->J()Lcom/keniu/security/sync/d/d/a/cj;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic E()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 4599
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/cj;->t()Lcom/keniu/security/sync/d/d/a/cj;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic F()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 4599
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ci;->J()Lcom/keniu/security/sync/d/d/a/cj;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic G()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 4599
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/cj;->t()Lcom/keniu/security/sync/d/d/a/cj;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic H()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 4599
    sget-object v0, Lcom/keniu/security/sync/d/d/a/ci;->f:Lcom/keniu/security/sync/d/d/a/ci;

    return-object v0
.end method

.method public final bridge synthetic I()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 4599
    sget-object v0, Lcom/keniu/security/sync/d/d/a/ci;->f:Lcom/keniu/security/sync/d/d/a/ci;

    return-object v0
.end method

.method protected final synthetic a(Lcom/b/a/dp;)Lcom/b/a/ew;
    .locals 1
    .parameter

    .prologue
    .line 4599
    new-instance v0, Lcom/keniu/security/sync/d/d/a/cj;

    invoke-direct {v0, p1}, Lcom/keniu/security/sync/d/d/a/cj;-><init>(Lcom/b/a/dp;)V

    return-object v0
.end method

.method public final a(Lcom/b/a/n;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 4778
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ci;->b()I

    .line 4779
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ci;->g:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 4780
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ci;->w()Lcom/b/a/i;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/b/a/n;->a(ILcom/b/a/i;)V

    .line 4782
    :cond_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ci;->g:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 4783
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ci;->x()Lcom/b/a/i;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/b/a/n;->a(ILcom/b/a/i;)V

    .line 4785
    :cond_1
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ci;->g:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_2

    .line 4786
    const/4 v0, 0x3

    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ci;->y()Lcom/b/a/i;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/b/a/n;->a(ILcom/b/a/i;)V

    .line 4788
    :cond_2
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ci;->g:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3

    .line 4789
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ci;->l:I

    invoke-virtual {p1, v3, v0}, Lcom/b/a/n;->a(II)V

    .line 4791
    :cond_3
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ci;->g:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_4

    .line 4792
    const/4 v0, 0x5

    iget-wide v1, p0, Lcom/keniu/security/sync/d/d/a/ci;->m:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/b/a/n;->b(IJ)V

    .line 4794
    :cond_4
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ci;->b_()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/b/a/gg;->a(Lcom/b/a/n;)V

    .line 4795
    return-void
.end method

.method public final a()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4753
    iget-byte v0, p0, Lcom/keniu/security/sync/d/d/a/ci;->n:B

    .line 4754
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-ne v0, v3, :cond_0

    move v0, v3

    .line 4773
    :goto_0
    return v0

    :cond_0
    move v0, v2

    .line 4754
    goto :goto_0

    .line 4756
    :cond_1
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ci;->j()Z

    move-result v0

    if-nez v0, :cond_2

    .line 4757
    iput-byte v2, p0, Lcom/keniu/security/sync/d/d/a/ci;->n:B

    move v0, v2

    .line 4758
    goto :goto_0

    .line 4760
    :cond_2
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ci;->l()Z

    move-result v0

    if-nez v0, :cond_3

    .line 4761
    iput-byte v2, p0, Lcom/keniu/security/sync/d/d/a/ci;->n:B

    move v0, v2

    .line 4762
    goto :goto_0

    .line 4764
    :cond_3
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ci;->n()Z

    move-result v0

    if-nez v0, :cond_4

    .line 4765
    iput-byte v2, p0, Lcom/keniu/security/sync/d/d/a/ci;->n:B

    move v0, v2

    .line 4766
    goto :goto_0

    .line 4768
    :cond_4
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ci;->p()Z

    move-result v0

    if-nez v0, :cond_5

    .line 4769
    iput-byte v2, p0, Lcom/keniu/security/sync/d/d/a/ci;->n:B

    move v0, v2

    .line 4770
    goto :goto_0

    .line 4772
    :cond_5
    iput-byte v3, p0, Lcom/keniu/security/sync/d/d/a/ci;->n:B

    move v0, v3

    .line 4773
    goto :goto_0
.end method

.method public final b()I
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 4799
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ci;->o:I

    .line 4800
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 4825
    :goto_0
    return v0

    .line 4802
    :cond_0
    const/4 v0, 0x0

    .line 4803
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/ci;->g:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_1

    .line 4804
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ci;->w()Lcom/b/a/i;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/b/a/n;->c(ILcom/b/a/i;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 4807
    :cond_1
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/ci;->g:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_2

    .line 4808
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ci;->x()Lcom/b/a/i;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/b/a/n;->c(ILcom/b/a/i;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4811
    :cond_2
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/ci;->g:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v4, :cond_3

    .line 4812
    const/4 v1, 0x3

    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ci;->y()Lcom/b/a/i;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/b/a/n;->c(ILcom/b/a/i;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4815
    :cond_3
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/ci;->g:I

    and-int/lit8 v1, v1, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_4

    .line 4816
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/ci;->l:I

    invoke-static {v4, v1}, Lcom/b/a/n;->d(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4819
    :cond_4
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/ci;->g:I

    and-int/lit8 v1, v1, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_5

    .line 4820
    const/4 v1, 0x5

    iget-wide v2, p0, Lcom/keniu/security/sync/d/d/a/ci;->m:J

    invoke-static {v1, v2, v3}, Lcom/b/a/n;->e(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 4823
    :cond_5
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ci;->b_()Lcom/b/a/gg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/b/a/gg;->b()I

    move-result v1

    add-int/2addr v0, v1

    .line 4824
    iput v0, p0, Lcom/keniu/security/sync/d/d/a/ci;->o:I

    goto :goto_0
.end method

.method protected final g()Lcom/b/a/dv;
    .locals 1

    .prologue
    .line 4624
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/a;->s()Lcom/b/a/dv;

    move-result-object v0

    return-object v0
.end method

.method public final j()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 4632
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ci;->g:I

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
    .line 4635
    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/ci;->h:Ljava/lang/Object;

    .line 4636
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 4637
    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object p0, v0

    move-object v1, p0

    .line 4645
    :goto_0
    return-object v1

    .line 4639
    :cond_0
    check-cast v1, Lcom/b/a/i;

    .line 4641
    invoke-virtual {v1}, Lcom/b/a/i;->b()Ljava/lang/String;

    move-result-object v2

    .line 4642
    invoke-static {v1}, Lcom/b/a/ep;->a(Lcom/b/a/i;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4643
    iput-object v2, p0, Lcom/keniu/security/sync/d/d/a/ci;->h:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 4645
    goto :goto_0
.end method

.method public final l()Z
    .locals 2

    .prologue
    .line 4664
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ci;->g:I

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
    .line 4667
    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/ci;->i:Ljava/lang/Object;

    .line 4668
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 4669
    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object p0, v0

    move-object v1, p0

    .line 4677
    :goto_0
    return-object v1

    .line 4671
    :cond_0
    check-cast v1, Lcom/b/a/i;

    .line 4673
    invoke-virtual {v1}, Lcom/b/a/i;->b()Ljava/lang/String;

    move-result-object v2

    .line 4674
    invoke-static {v1}, Lcom/b/a/ep;->a(Lcom/b/a/i;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4675
    iput-object v2, p0, Lcom/keniu/security/sync/d/d/a/ci;->i:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 4677
    goto :goto_0
.end method

.method public final n()Z
    .locals 2

    .prologue
    .line 4696
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ci;->g:I

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
    .line 4699
    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/ci;->k:Ljava/lang/Object;

    .line 4700
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 4701
    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object p0, v0

    move-object v1, p0

    .line 4709
    :goto_0
    return-object v1

    .line 4703
    :cond_0
    check-cast v1, Lcom/b/a/i;

    .line 4705
    invoke-virtual {v1}, Lcom/b/a/i;->b()Ljava/lang/String;

    move-result-object v2

    .line 4706
    invoke-static {v1}, Lcom/b/a/ep;->a(Lcom/b/a/i;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4707
    iput-object v2, p0, Lcom/keniu/security/sync/d/d/a/ci;->k:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 4709
    goto :goto_0
.end method

.method public final p()Z
    .locals 2

    .prologue
    .line 4728
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ci;->g:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final q()I
    .locals 1

    .prologue
    .line 4731
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ci;->l:I

    return v0
.end method

.method public final r()Z
    .locals 2

    .prologue
    .line 4738
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ci;->g:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final s()J
    .locals 2

    .prologue
    .line 4741
    iget-wide v0, p0, Lcom/keniu/security/sync/d/d/a/ci;->m:J

    return-wide v0
.end method
