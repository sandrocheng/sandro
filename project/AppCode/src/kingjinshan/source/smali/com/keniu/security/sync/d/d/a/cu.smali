.class public final Lcom/keniu/security/sync/d/d/a/cu;
.super Lcom/b/a/dk;
.source "Appsvr.java"

# interfaces
.implements Lcom/keniu/security/sync/d/d/a/cw;


# static fields
.field public static final a:I = 0x1

.field public static final b:I = 0x2

.field public static final c:I = 0x3

.field public static final d:I = 0x4

.field public static final e:I = 0x5

.field private static final f:Lcom/keniu/security/sync/d/d/a/cu;

.field private static final p:J


# instance fields
.field private g:I

.field private h:Ljava/lang/Object;

.field private i:Ljava/lang/Object;

.field private k:Ljava/lang/Object;

.field private l:Ljava/lang/Object;

.field private m:I

.field private n:B

.field private o:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 17308
    new-instance v0, Lcom/keniu/security/sync/d/d/a/cu;

    invoke-direct {v0}, Lcom/keniu/security/sync/d/d/a/cu;-><init>()V

    .line 17309
    sput-object v0, Lcom/keniu/security/sync/d/d/a/cu;->f:Lcom/keniu/security/sync/d/d/a/cu;

    const-string v1, ""

    iput-object v1, v0, Lcom/keniu/security/sync/d/d/a/cu;->h:Ljava/lang/Object;

    const-string v1, ""

    iput-object v1, v0, Lcom/keniu/security/sync/d/d/a/cu;->i:Ljava/lang/Object;

    const-string v1, ""

    iput-object v1, v0, Lcom/keniu/security/sync/d/d/a/cu;->k:Ljava/lang/Object;

    const-string v1, ""

    iput-object v1, v0, Lcom/keniu/security/sync/d/d/a/cu;->l:Ljava/lang/Object;

    const/4 v1, 0x0

    iput v1, v0, Lcom/keniu/security/sync/d/d/a/cu;->m:I

    .line 17310
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 16591
    invoke-direct {p0}, Lcom/b/a/dk;-><init>()V

    .line 16758
    iput-byte v0, p0, Lcom/keniu/security/sync/d/d/a/cu;->n:B

    .line 16808
    iput v0, p0, Lcom/keniu/security/sync/d/d/a/cu;->o:I

    .line 16591
    return-void
.end method

.method synthetic constructor <init>(Lcom/keniu/security/sync/d/d/a/cv;)V
    .locals 1
    .parameter

    .prologue
    .line 16584
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/keniu/security/sync/d/d/a/cu;-><init>(Lcom/keniu/security/sync/d/d/a/cv;B)V

    return-void
.end method

.method private constructor <init>(Lcom/keniu/security/sync/d/d/a/cv;B)V
    .locals 1
    .parameter
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 16589
    invoke-direct {p0, p1}, Lcom/b/a/dk;-><init>(Lcom/b/a/dn;)V

    .line 16758
    iput-byte v0, p0, Lcom/keniu/security/sync/d/d/a/cu;->n:B

    .line 16808
    iput v0, p0, Lcom/keniu/security/sync/d/d/a/cu;->o:I

    .line 16590
    return-void
.end method

.method private A()V
    .locals 1

    .prologue
    .line 16752
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/cu;->h:Ljava/lang/Object;

    .line 16753
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/cu;->i:Ljava/lang/Object;

    .line 16754
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/cu;->k:Ljava/lang/Object;

    .line 16755
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/cu;->l:Ljava/lang/Object;

    .line 16756
    const/4 v0, 0x0

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/cu;->m:I

    .line 16757
    return-void
.end method

.method private static J()Lcom/keniu/security/sync/d/d/a/cv;
    .locals 1

    .prologue
    .line 16914
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/cv;->t()Lcom/keniu/security/sync/d/d/a/cv;

    move-result-object v0

    return-object v0
.end method

.method private K()Lcom/keniu/security/sync/d/d/a/cv;
    .locals 1

    .prologue
    .line 16918
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/cv;->t()Lcom/keniu/security/sync/d/d/a/cv;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/cv;->a(Lcom/keniu/security/sync/d/d/a/cu;)Lcom/keniu/security/sync/d/d/a/cv;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/cu;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 16584
    iput p1, p0, Lcom/keniu/security/sync/d/d/a/cu;->m:I

    return p1
.end method

.method private static a(Lcom/b/a/i;)Lcom/keniu/security/sync/d/d/a/cu;
    .locals 1
    .parameter

    .prologue
    .line 16849
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/cv;->t()Lcom/keniu/security/sync/d/d/a/cv;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/cv;->a(Lcom/b/a/i;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/cv;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/cv;->a(Lcom/keniu/security/sync/d/d/a/cv;)Lcom/keniu/security/sync/d/d/a/cu;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/i;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/cu;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 16855
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/cv;->t()Lcom/keniu/security/sync/d/d/a/cv;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/cv;->a(Lcom/b/a/i;Lcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/cv;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/cv;->a(Lcom/keniu/security/sync/d/d/a/cv;)Lcom/keniu/security/sync/d/d/a/cu;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/m;)Lcom/keniu/security/sync/d/d/a/cu;
    .locals 1
    .parameter

    .prologue
    .line 16903
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/cv;->t()Lcom/keniu/security/sync/d/d/a/cv;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/cv;->a(Lcom/b/a/m;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/cv;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/cv;->a(Lcom/keniu/security/sync/d/d/a/cv;)Lcom/keniu/security/sync/d/d/a/cu;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/cu;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 16909
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/cv;->t()Lcom/keniu/security/sync/d/d/a/cv;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/cv;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/cv;

    move-result-object v0

    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/cv;->a(Lcom/keniu/security/sync/d/d/a/cv;)Lcom/keniu/security/sync/d/d/a/cu;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/io/InputStream;)Lcom/keniu/security/sync/d/d/a/cu;
    .locals 1
    .parameter

    .prologue
    .line 16871
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/cv;->t()Lcom/keniu/security/sync/d/d/a/cv;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/cv;->a(Ljava/io/InputStream;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/cv;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/cv;->a(Lcom/keniu/security/sync/d/d/a/cv;)Lcom/keniu/security/sync/d/d/a/cu;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/cu;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 16877
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/cv;->t()Lcom/keniu/security/sync/d/d/a/cv;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/cv;->a(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/cv;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/cv;->a(Lcom/keniu/security/sync/d/d/a/cv;)Lcom/keniu/security/sync/d/d/a/cu;

    move-result-object v0

    return-object v0
.end method

.method private static a([B)Lcom/keniu/security/sync/d/d/a/cu;
    .locals 1
    .parameter

    .prologue
    .line 16860
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/cv;->t()Lcom/keniu/security/sync/d/d/a/cv;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/cv;->a([B)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/cv;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/cv;->a(Lcom/keniu/security/sync/d/d/a/cv;)Lcom/keniu/security/sync/d/d/a/cu;

    move-result-object v0

    return-object v0
.end method

.method private static a([BLcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/cu;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 16866
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/cv;->t()Lcom/keniu/security/sync/d/d/a/cv;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/cv;->a([BLcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/cv;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/cv;->a(Lcom/keniu/security/sync/d/d/a/cv;)Lcom/keniu/security/sync/d/d/a/cu;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/keniu/security/sync/d/d/a/cu;)Lcom/keniu/security/sync/d/d/a/cv;
    .locals 1
    .parameter

    .prologue
    .line 16916
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/cv;->t()Lcom/keniu/security/sync/d/d/a/cv;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/cv;->a(Lcom/keniu/security/sync/d/d/a/cu;)Lcom/keniu/security/sync/d/d/a/cv;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/cu;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 16584
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/cu;->h:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic b(Lcom/keniu/security/sync/d/d/a/cu;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 16584
    iput p1, p0, Lcom/keniu/security/sync/d/d/a/cu;->g:I

    return p1
.end method

.method private static b(Ljava/io/InputStream;)Lcom/keniu/security/sync/d/d/a/cu;
    .locals 2
    .parameter

    .prologue
    .line 16882
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/cv;->t()Lcom/keniu/security/sync/d/d/a/cv;

    move-result-object v0

    .line 16883
    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/cv;->b(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 16884
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/cv;->a(Lcom/keniu/security/sync/d/d/a/cv;)Lcom/keniu/security/sync/d/d/a/cu;

    move-result-object v0

    .line 16886
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/cu;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 16893
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/cv;->t()Lcom/keniu/security/sync/d/d/a/cv;

    move-result-object v0

    .line 16894
    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/cv;->b(Ljava/io/InputStream;Lcom/b/a/df;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 16895
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/cv;->a(Lcom/keniu/security/sync/d/d/a/cv;)Lcom/keniu/security/sync/d/d/a/cu;

    move-result-object v0

    .line 16897
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Lcom/b/a/dp;)Lcom/keniu/security/sync/d/d/a/cv;
    .locals 1
    .parameter

    .prologue
    .line 16923
    new-instance v0, Lcom/keniu/security/sync/d/d/a/cv;

    invoke-direct {v0, p0}, Lcom/keniu/security/sync/d/d/a/cv;-><init>(Lcom/b/a/dp;)V

    .line 16924
    return-object v0
.end method

.method static synthetic b(Lcom/keniu/security/sync/d/d/a/cu;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 16584
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/cu;->i:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic c(Lcom/keniu/security/sync/d/d/a/cu;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 16584
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/cu;->k:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic d(Lcom/keniu/security/sync/d/d/a/cu;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 16584
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/cu;->l:Ljava/lang/Object;

    return-object p1
.end method

.method public static h()Lcom/keniu/security/sync/d/d/a/cu;
    .locals 1

    .prologue
    .line 16595
    sget-object v0, Lcom/keniu/security/sync/d/d/a/cu;->f:Lcom/keniu/security/sync/d/d/a/cu;

    return-object v0
.end method

.method public static final i()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 16604
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/a;->X()Lcom/b/a/cj;

    move-result-object v0

    return-object v0
.end method

.method public static t()Lcom/keniu/security/sync/d/d/a/cv;
    .locals 1

    .prologue
    .line 16913
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/cv;->t()Lcom/keniu/security/sync/d/d/a/cv;

    move-result-object v0

    return-object v0
.end method

.method static synthetic u()Z
    .locals 1

    .prologue
    .line 16584
    sget-boolean v0, Lcom/keniu/security/sync/d/d/a/cu;->j:Z

    return v0
.end method

.method private static v()Lcom/keniu/security/sync/d/d/a/cu;
    .locals 1

    .prologue
    .line 16599
    sget-object v0, Lcom/keniu/security/sync/d/d/a/cu;->f:Lcom/keniu/security/sync/d/d/a/cu;

    return-object v0
.end method

.method private w()Lcom/b/a/i;
    .locals 2

    .prologue
    .line 16634
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/cu;->h:Ljava/lang/Object;

    .line 16635
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 16636
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/b/a/i;->a(Ljava/lang/String;)Lcom/b/a/i;

    move-result-object v0

    .line 16638
    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/cu;->h:Ljava/lang/Object;

    .line 16641
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/b/a/i;

    goto :goto_0
.end method

.method private x()Lcom/b/a/i;
    .locals 2

    .prologue
    .line 16666
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/cu;->i:Ljava/lang/Object;

    .line 16667
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 16668
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/b/a/i;->a(Ljava/lang/String;)Lcom/b/a/i;

    move-result-object v0

    .line 16670
    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/cu;->i:Ljava/lang/Object;

    .line 16673
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/b/a/i;

    goto :goto_0
.end method

.method private y()Lcom/b/a/i;
    .locals 2

    .prologue
    .line 16698
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/cu;->k:Ljava/lang/Object;

    .line 16699
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 16700
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/b/a/i;->a(Ljava/lang/String;)Lcom/b/a/i;

    move-result-object v0

    .line 16702
    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/cu;->k:Ljava/lang/Object;

    .line 16705
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/b/a/i;

    goto :goto_0
.end method

.method private z()Lcom/b/a/i;
    .locals 2

    .prologue
    .line 16730
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/cu;->l:Ljava/lang/Object;

    .line 16731
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 16732
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/b/a/i;->a(Ljava/lang/String;)Lcom/b/a/i;

    move-result-object v0

    .line 16734
    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/cu;->l:Ljava/lang/Object;

    .line 16737
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/b/a/i;

    goto :goto_0
.end method


# virtual methods
.method protected final B()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 16843
    invoke-super {p0}, Lcom/b/a/dk;->B()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic D()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 16584
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/cu;->K()Lcom/keniu/security/sync/d/d/a/cv;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic E()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 16584
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/cv;->t()Lcom/keniu/security/sync/d/d/a/cv;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic F()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 16584
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/cu;->K()Lcom/keniu/security/sync/d/d/a/cv;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic G()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 16584
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/cv;->t()Lcom/keniu/security/sync/d/d/a/cv;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic H()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 16584
    sget-object v0, Lcom/keniu/security/sync/d/d/a/cu;->f:Lcom/keniu/security/sync/d/d/a/cu;

    return-object v0
.end method

.method public final bridge synthetic I()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 16584
    sget-object v0, Lcom/keniu/security/sync/d/d/a/cu;->f:Lcom/keniu/security/sync/d/d/a/cu;

    return-object v0
.end method

.method protected final synthetic a(Lcom/b/a/dp;)Lcom/b/a/ew;
    .locals 1
    .parameter

    .prologue
    .line 16584
    new-instance v0, Lcom/keniu/security/sync/d/d/a/cv;

    invoke-direct {v0, p1}, Lcom/keniu/security/sync/d/d/a/cv;-><init>(Lcom/b/a/dp;)V

    return-object v0
.end method

.method public final a(Lcom/b/a/n;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 16789
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/cu;->b()I

    .line 16790
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/cu;->g:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 16791
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/cu;->w()Lcom/b/a/i;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/b/a/n;->a(ILcom/b/a/i;)V

    .line 16793
    :cond_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/cu;->g:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 16794
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/cu;->x()Lcom/b/a/i;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/b/a/n;->a(ILcom/b/a/i;)V

    .line 16796
    :cond_1
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/cu;->g:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_2

    .line 16797
    const/4 v0, 0x3

    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/cu;->y()Lcom/b/a/i;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/b/a/n;->a(ILcom/b/a/i;)V

    .line 16799
    :cond_2
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/cu;->g:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3

    .line 16800
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/cu;->z()Lcom/b/a/i;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Lcom/b/a/n;->a(ILcom/b/a/i;)V

    .line 16802
    :cond_3
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/cu;->g:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_4

    .line 16803
    const/4 v0, 0x5

    iget v1, p0, Lcom/keniu/security/sync/d/d/a/cu;->m:I

    invoke-virtual {p1, v0, v1}, Lcom/b/a/n;->a(II)V

    .line 16805
    :cond_4
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/cu;->b_()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/b/a/gg;->a(Lcom/b/a/n;)V

    .line 16806
    return-void
.end method

.method public final a()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 16760
    iget-byte v0, p0, Lcom/keniu/security/sync/d/d/a/cu;->n:B

    .line 16761
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-ne v0, v3, :cond_0

    move v0, v3

    .line 16784
    :goto_0
    return v0

    :cond_0
    move v0, v2

    .line 16761
    goto :goto_0

    .line 16763
    :cond_1
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/cu;->j()Z

    move-result v0

    if-nez v0, :cond_2

    .line 16764
    iput-byte v2, p0, Lcom/keniu/security/sync/d/d/a/cu;->n:B

    move v0, v2

    .line 16765
    goto :goto_0

    .line 16767
    :cond_2
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/cu;->l()Z

    move-result v0

    if-nez v0, :cond_3

    .line 16768
    iput-byte v2, p0, Lcom/keniu/security/sync/d/d/a/cu;->n:B

    move v0, v2

    .line 16769
    goto :goto_0

    .line 16771
    :cond_3
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/cu;->n()Z

    move-result v0

    if-nez v0, :cond_4

    .line 16772
    iput-byte v2, p0, Lcom/keniu/security/sync/d/d/a/cu;->n:B

    move v0, v2

    .line 16773
    goto :goto_0

    .line 16775
    :cond_4
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/cu;->p()Z

    move-result v0

    if-nez v0, :cond_5

    .line 16776
    iput-byte v2, p0, Lcom/keniu/security/sync/d/d/a/cu;->n:B

    move v0, v2

    .line 16777
    goto :goto_0

    .line 16779
    :cond_5
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/cu;->r()Z

    move-result v0

    if-nez v0, :cond_6

    .line 16780
    iput-byte v2, p0, Lcom/keniu/security/sync/d/d/a/cu;->n:B

    move v0, v2

    .line 16781
    goto :goto_0

    .line 16783
    :cond_6
    iput-byte v3, p0, Lcom/keniu/security/sync/d/d/a/cu;->n:B

    move v0, v3

    .line 16784
    goto :goto_0
.end method

.method public final b()I
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 16810
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/cu;->o:I

    .line 16811
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 16836
    :goto_0
    return v0

    .line 16813
    :cond_0
    const/4 v0, 0x0

    .line 16814
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/cu;->g:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_1

    .line 16815
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/cu;->w()Lcom/b/a/i;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/b/a/n;->c(ILcom/b/a/i;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 16818
    :cond_1
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/cu;->g:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_2

    .line 16819
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/cu;->x()Lcom/b/a/i;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/b/a/n;->c(ILcom/b/a/i;)I

    move-result v1

    add-int/2addr v0, v1

    .line 16822
    :cond_2
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/cu;->g:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v4, :cond_3

    .line 16823
    const/4 v1, 0x3

    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/cu;->y()Lcom/b/a/i;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/b/a/n;->c(ILcom/b/a/i;)I

    move-result v1

    add-int/2addr v0, v1

    .line 16826
    :cond_3
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/cu;->g:I

    and-int/lit8 v1, v1, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_4

    .line 16827
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/cu;->z()Lcom/b/a/i;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/b/a/n;->c(ILcom/b/a/i;)I

    move-result v1

    add-int/2addr v0, v1

    .line 16830
    :cond_4
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/cu;->g:I

    and-int/lit8 v1, v1, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_5

    .line 16831
    const/4 v1, 0x5

    iget v2, p0, Lcom/keniu/security/sync/d/d/a/cu;->m:I

    invoke-static {v1, v2}, Lcom/b/a/n;->d(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 16834
    :cond_5
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/cu;->b_()Lcom/b/a/gg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/b/a/gg;->b()I

    move-result v1

    add-int/2addr v0, v1

    .line 16835
    iput v0, p0, Lcom/keniu/security/sync/d/d/a/cu;->o:I

    goto :goto_0
.end method

.method protected final g()Lcom/b/a/dv;
    .locals 1

    .prologue
    .line 16609
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/a;->Y()Lcom/b/a/dv;

    move-result-object v0

    return-object v0
.end method

.method public final j()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 16617
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/cu;->g:I

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
    .line 16620
    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/cu;->h:Ljava/lang/Object;

    .line 16621
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 16622
    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object p0, v0

    move-object v1, p0

    .line 16630
    :goto_0
    return-object v1

    .line 16624
    :cond_0
    check-cast v1, Lcom/b/a/i;

    .line 16626
    invoke-virtual {v1}, Lcom/b/a/i;->b()Ljava/lang/String;

    move-result-object v2

    .line 16627
    invoke-static {v1}, Lcom/b/a/ep;->a(Lcom/b/a/i;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 16628
    iput-object v2, p0, Lcom/keniu/security/sync/d/d/a/cu;->h:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 16630
    goto :goto_0
.end method

.method public final l()Z
    .locals 2

    .prologue
    .line 16649
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/cu;->g:I

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
    .line 16652
    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/cu;->i:Ljava/lang/Object;

    .line 16653
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 16654
    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object p0, v0

    move-object v1, p0

    .line 16662
    :goto_0
    return-object v1

    .line 16656
    :cond_0
    check-cast v1, Lcom/b/a/i;

    .line 16658
    invoke-virtual {v1}, Lcom/b/a/i;->b()Ljava/lang/String;

    move-result-object v2

    .line 16659
    invoke-static {v1}, Lcom/b/a/ep;->a(Lcom/b/a/i;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 16660
    iput-object v2, p0, Lcom/keniu/security/sync/d/d/a/cu;->i:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 16662
    goto :goto_0
.end method

.method public final n()Z
    .locals 2

    .prologue
    .line 16681
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/cu;->g:I

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
    .line 16684
    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/cu;->k:Ljava/lang/Object;

    .line 16685
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 16686
    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object p0, v0

    move-object v1, p0

    .line 16694
    :goto_0
    return-object v1

    .line 16688
    :cond_0
    check-cast v1, Lcom/b/a/i;

    .line 16690
    invoke-virtual {v1}, Lcom/b/a/i;->b()Ljava/lang/String;

    move-result-object v2

    .line 16691
    invoke-static {v1}, Lcom/b/a/ep;->a(Lcom/b/a/i;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 16692
    iput-object v2, p0, Lcom/keniu/security/sync/d/d/a/cu;->k:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 16694
    goto :goto_0
.end method

.method public final p()Z
    .locals 2

    .prologue
    .line 16713
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/cu;->g:I

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

.method public final q()Ljava/lang/String;
    .locals 3

    .prologue
    .line 16716
    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/cu;->l:Ljava/lang/Object;

    .line 16717
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 16718
    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object p0, v0

    move-object v1, p0

    .line 16726
    :goto_0
    return-object v1

    .line 16720
    :cond_0
    check-cast v1, Lcom/b/a/i;

    .line 16722
    invoke-virtual {v1}, Lcom/b/a/i;->b()Ljava/lang/String;

    move-result-object v2

    .line 16723
    invoke-static {v1}, Lcom/b/a/ep;->a(Lcom/b/a/i;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 16724
    iput-object v2, p0, Lcom/keniu/security/sync/d/d/a/cu;->l:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 16726
    goto :goto_0
.end method

.method public final r()Z
    .locals 2

    .prologue
    .line 16745
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/cu;->g:I

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

.method public final s()I
    .locals 1

    .prologue
    .line 16748
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/cu;->m:I

    return v0
.end method
