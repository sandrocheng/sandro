.class public final Lcom/keniu/security/sync/d/d/a/da;
.super Lcom/b/a/dk;
.source "Appsvr.java"

# interfaces
.implements Lcom/keniu/security/sync/d/d/a/de;


# static fields
.field public static final a:I = 0x1

.field public static final b:I = 0x2

.field private static final c:Lcom/keniu/security/sync/d/d/a/da;

.field private static final i:J


# instance fields
.field private d:I

.field private e:Ljava/lang/Object;

.field private f:I

.field private g:B

.field private h:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 38029
    new-instance v0, Lcom/keniu/security/sync/d/d/a/da;

    invoke-direct {v0}, Lcom/keniu/security/sync/d/d/a/da;-><init>()V

    .line 38030
    sput-object v0, Lcom/keniu/security/sync/d/d/a/da;->c:Lcom/keniu/security/sync/d/d/a/da;

    const-string v1, ""

    iput-object v1, v0, Lcom/keniu/security/sync/d/d/a/da;->e:Ljava/lang/Object;

    const/4 v1, 0x0

    iput v1, v0, Lcom/keniu/security/sync/d/d/a/da;->f:I

    .line 38031
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 37531
    invoke-direct {p0}, Lcom/b/a/dk;-><init>()V

    .line 37674
    iput-byte v0, p0, Lcom/keniu/security/sync/d/d/a/da;->g:B

    .line 37703
    iput v0, p0, Lcom/keniu/security/sync/d/d/a/da;->h:I

    .line 37531
    return-void
.end method

.method synthetic constructor <init>(Lcom/keniu/security/sync/d/d/a/db;)V
    .locals 1
    .parameter

    .prologue
    .line 37524
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/keniu/security/sync/d/d/a/da;-><init>(Lcom/keniu/security/sync/d/d/a/db;B)V

    return-void
.end method

.method private constructor <init>(Lcom/keniu/security/sync/d/d/a/db;B)V
    .locals 1
    .parameter
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 37529
    invoke-direct {p0, p1}, Lcom/b/a/dk;-><init>(Lcom/b/a/dn;)V

    .line 37674
    iput-byte v0, p0, Lcom/keniu/security/sync/d/d/a/da;->g:B

    .line 37703
    iput v0, p0, Lcom/keniu/security/sync/d/d/a/da;->h:I

    .line 37530
    return-void
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/da;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 37524
    iput p1, p0, Lcom/keniu/security/sync/d/d/a/da;->f:I

    return p1
.end method

.method private static a(Lcom/b/a/i;)Lcom/keniu/security/sync/d/d/a/da;
    .locals 1
    .parameter

    .prologue
    .line 37732
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/db;->i()Lcom/keniu/security/sync/d/d/a/db;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/db;->a(Lcom/b/a/i;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/db;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/db;->a(Lcom/keniu/security/sync/d/d/a/db;)Lcom/keniu/security/sync/d/d/a/da;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/i;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/da;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 37738
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/db;->i()Lcom/keniu/security/sync/d/d/a/db;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/db;->a(Lcom/b/a/i;Lcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/db;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/db;->a(Lcom/keniu/security/sync/d/d/a/db;)Lcom/keniu/security/sync/d/d/a/da;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/m;)Lcom/keniu/security/sync/d/d/a/da;
    .locals 1
    .parameter

    .prologue
    .line 37786
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/db;->i()Lcom/keniu/security/sync/d/d/a/db;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/db;->a(Lcom/b/a/m;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/db;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/db;->a(Lcom/keniu/security/sync/d/d/a/db;)Lcom/keniu/security/sync/d/d/a/da;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/da;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 37792
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/db;->i()Lcom/keniu/security/sync/d/d/a/db;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/db;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/db;

    move-result-object v0

    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/db;->a(Lcom/keniu/security/sync/d/d/a/db;)Lcom/keniu/security/sync/d/d/a/da;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/io/InputStream;)Lcom/keniu/security/sync/d/d/a/da;
    .locals 1
    .parameter

    .prologue
    .line 37754
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/db;->i()Lcom/keniu/security/sync/d/d/a/db;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/db;->a(Ljava/io/InputStream;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/db;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/db;->a(Lcom/keniu/security/sync/d/d/a/db;)Lcom/keniu/security/sync/d/d/a/da;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/da;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 37760
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/db;->i()Lcom/keniu/security/sync/d/d/a/db;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/db;->a(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/db;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/db;->a(Lcom/keniu/security/sync/d/d/a/db;)Lcom/keniu/security/sync/d/d/a/da;

    move-result-object v0

    return-object v0
.end method

.method private static a([B)Lcom/keniu/security/sync/d/d/a/da;
    .locals 1
    .parameter

    .prologue
    .line 37743
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/db;->i()Lcom/keniu/security/sync/d/d/a/db;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/db;->a([B)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/db;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/db;->a(Lcom/keniu/security/sync/d/d/a/db;)Lcom/keniu/security/sync/d/d/a/da;

    move-result-object v0

    return-object v0
.end method

.method private static a([BLcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/da;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 37749
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/db;->i()Lcom/keniu/security/sync/d/d/a/db;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/db;->a([BLcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/db;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/db;->a(Lcom/keniu/security/sync/d/d/a/db;)Lcom/keniu/security/sync/d/d/a/da;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/keniu/security/sync/d/d/a/da;)Lcom/keniu/security/sync/d/d/a/db;
    .locals 1
    .parameter

    .prologue
    .line 37799
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/db;->i()Lcom/keniu/security/sync/d/d/a/db;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/db;->a(Lcom/keniu/security/sync/d/d/a/da;)Lcom/keniu/security/sync/d/d/a/db;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/da;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 37524
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/da;->e:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic b(Lcom/keniu/security/sync/d/d/a/da;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 37524
    iput p1, p0, Lcom/keniu/security/sync/d/d/a/da;->d:I

    return p1
.end method

.method private static b(Ljava/io/InputStream;)Lcom/keniu/security/sync/d/d/a/da;
    .locals 2
    .parameter

    .prologue
    .line 37765
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/db;->i()Lcom/keniu/security/sync/d/d/a/db;

    move-result-object v0

    .line 37766
    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/db;->b(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 37767
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/db;->a(Lcom/keniu/security/sync/d/d/a/db;)Lcom/keniu/security/sync/d/d/a/da;

    move-result-object v0

    .line 37769
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/da;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 37776
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/db;->i()Lcom/keniu/security/sync/d/d/a/db;

    move-result-object v0

    .line 37777
    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/db;->b(Ljava/io/InputStream;Lcom/b/a/df;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 37778
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/db;->a(Lcom/keniu/security/sync/d/d/a/db;)Lcom/keniu/security/sync/d/d/a/da;

    move-result-object v0

    .line 37780
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Lcom/b/a/dp;)Lcom/keniu/security/sync/d/d/a/db;
    .locals 1
    .parameter

    .prologue
    .line 37806
    new-instance v0, Lcom/keniu/security/sync/d/d/a/db;

    invoke-direct {v0, p0}, Lcom/keniu/security/sync/d/d/a/db;-><init>(Lcom/b/a/dp;)V

    .line 37807
    return-object v0
.end method

.method public static h()Lcom/keniu/security/sync/d/d/a/da;
    .locals 1

    .prologue
    .line 37535
    sget-object v0, Lcom/keniu/security/sync/d/d/a/da;->c:Lcom/keniu/security/sync/d/d/a/da;

    return-object v0
.end method

.method public static final i()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 37544
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/a;->bn()Lcom/b/a/cj;

    move-result-object v0

    return-object v0
.end method

.method static synthetic n()Z
    .locals 1

    .prologue
    .line 37524
    sget-boolean v0, Lcom/keniu/security/sync/d/d/a/da;->j:Z

    return v0
.end method

.method private static o()Lcom/keniu/security/sync/d/d/a/da;
    .locals 1

    .prologue
    .line 37539
    sget-object v0, Lcom/keniu/security/sync/d/d/a/da;->c:Lcom/keniu/security/sync/d/d/a/da;

    return-object v0
.end method

.method private p()Lcom/b/a/i;
    .locals 2

    .prologue
    .line 37649
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/da;->e:Ljava/lang/Object;

    .line 37650
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 37651
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/b/a/i;->a(Ljava/lang/String;)Lcom/b/a/i;

    move-result-object v0

    .line 37653
    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/da;->e:Ljava/lang/Object;

    .line 37656
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/b/a/i;

    goto :goto_0
.end method

.method private q()V
    .locals 1

    .prologue
    .line 37671
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/da;->e:Ljava/lang/Object;

    .line 37672
    const/4 v0, 0x0

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/da;->f:I

    .line 37673
    return-void
.end method

.method private static r()Lcom/keniu/security/sync/d/d/a/db;
    .locals 1

    .prologue
    .line 37796
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/db;->i()Lcom/keniu/security/sync/d/d/a/db;

    move-result-object v0

    return-object v0
.end method

.method private static s()Lcom/keniu/security/sync/d/d/a/db;
    .locals 1

    .prologue
    .line 37797
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/db;->i()Lcom/keniu/security/sync/d/d/a/db;

    move-result-object v0

    return-object v0
.end method

.method private t()Lcom/keniu/security/sync/d/d/a/db;
    .locals 1

    .prologue
    .line 37801
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/db;->i()Lcom/keniu/security/sync/d/d/a/db;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/db;->a(Lcom/keniu/security/sync/d/d/a/da;)Lcom/keniu/security/sync/d/d/a/db;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final B()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 37726
    invoke-super {p0}, Lcom/b/a/dk;->B()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic D()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 37524
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/da;->t()Lcom/keniu/security/sync/d/d/a/db;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic E()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 37524
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/db;->i()Lcom/keniu/security/sync/d/d/a/db;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic F()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 37524
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/da;->t()Lcom/keniu/security/sync/d/d/a/db;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic G()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 37524
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/db;->i()Lcom/keniu/security/sync/d/d/a/db;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic H()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 37524
    sget-object v0, Lcom/keniu/security/sync/d/d/a/da;->c:Lcom/keniu/security/sync/d/d/a/da;

    return-object v0
.end method

.method public final bridge synthetic I()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 37524
    sget-object v0, Lcom/keniu/security/sync/d/d/a/da;->c:Lcom/keniu/security/sync/d/d/a/da;

    return-object v0
.end method

.method protected final synthetic a(Lcom/b/a/dp;)Lcom/b/a/ew;
    .locals 1
    .parameter

    .prologue
    .line 37524
    new-instance v0, Lcom/keniu/security/sync/d/d/a/db;

    invoke-direct {v0, p1}, Lcom/keniu/security/sync/d/d/a/db;-><init>(Lcom/b/a/dp;)V

    return-object v0
.end method

.method public final a(Lcom/b/a/n;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 37693
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/da;->b()I

    .line 37694
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/da;->d:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 37695
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/da;->p()Lcom/b/a/i;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/b/a/n;->a(ILcom/b/a/i;)V

    .line 37697
    :cond_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/da;->d:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 37698
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/da;->f:I

    invoke-virtual {p1, v2, v0}, Lcom/b/a/n;->a(II)V

    .line 37700
    :cond_1
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/da;->b_()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/b/a/gg;->a(Lcom/b/a/n;)V

    .line 37701
    return-void
.end method

.method public final a()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 37676
    iget-byte v0, p0, Lcom/keniu/security/sync/d/d/a/da;->g:B

    .line 37677
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-ne v0, v3, :cond_0

    move v0, v3

    .line 37688
    :goto_0
    return v0

    :cond_0
    move v0, v2

    .line 37677
    goto :goto_0

    .line 37679
    :cond_1
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/da;->j()Z

    move-result v0

    if-nez v0, :cond_2

    .line 37680
    iput-byte v2, p0, Lcom/keniu/security/sync/d/d/a/da;->g:B

    move v0, v2

    .line 37681
    goto :goto_0

    .line 37683
    :cond_2
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/da;->l()Z

    move-result v0

    if-nez v0, :cond_3

    .line 37684
    iput-byte v2, p0, Lcom/keniu/security/sync/d/d/a/da;->g:B

    move v0, v2

    .line 37685
    goto :goto_0

    .line 37687
    :cond_3
    iput-byte v3, p0, Lcom/keniu/security/sync/d/d/a/da;->g:B

    move v0, v3

    .line 37688
    goto :goto_0
.end method

.method public final b()I
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 37705
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/da;->h:I

    .line 37706
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 37719
    :goto_0
    return v0

    .line 37708
    :cond_0
    const/4 v0, 0x0

    .line 37709
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/da;->d:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_1

    .line 37710
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/da;->p()Lcom/b/a/i;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/b/a/n;->c(ILcom/b/a/i;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 37713
    :cond_1
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/da;->d:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_2

    .line 37714
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/da;->f:I

    invoke-static {v3, v1}, Lcom/b/a/n;->d(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 37717
    :cond_2
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/da;->b_()Lcom/b/a/gg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/b/a/gg;->b()I

    move-result v1

    add-int/2addr v0, v1

    .line 37718
    iput v0, p0, Lcom/keniu/security/sync/d/d/a/da;->h:I

    goto :goto_0
.end method

.method protected final g()Lcom/b/a/dv;
    .locals 1

    .prologue
    .line 37549
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/a;->bo()Lcom/b/a/dv;

    move-result-object v0

    return-object v0
.end method

.method public final j()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 37632
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/da;->d:I

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
    .line 37635
    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/da;->e:Ljava/lang/Object;

    .line 37636
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 37637
    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object p0, v0

    move-object v1, p0

    .line 37645
    :goto_0
    return-object v1

    .line 37639
    :cond_0
    check-cast v1, Lcom/b/a/i;

    .line 37641
    invoke-virtual {v1}, Lcom/b/a/i;->b()Ljava/lang/String;

    move-result-object v2

    .line 37642
    invoke-static {v1}, Lcom/b/a/ep;->a(Lcom/b/a/i;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 37643
    iput-object v2, p0, Lcom/keniu/security/sync/d/d/a/da;->e:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 37645
    goto :goto_0
.end method

.method public final l()Z
    .locals 2

    .prologue
    .line 37664
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/da;->d:I

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

.method public final m()I
    .locals 1

    .prologue
    .line 37667
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/da;->f:I

    return v0
.end method
