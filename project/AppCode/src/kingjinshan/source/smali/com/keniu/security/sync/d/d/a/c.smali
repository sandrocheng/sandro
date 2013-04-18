.class public final Lcom/keniu/security/sync/d/d/a/c;
.super Lcom/b/a/dk;
.source "Appsvr.java"

# interfaces
.implements Lcom/keniu/security/sync/d/d/a/e;


# static fields
.field public static final a:I = 0x1

.field public static final b:I = 0x2

.field private static final c:Lcom/keniu/security/sync/d/d/a/c;

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
    .line 25094
    new-instance v0, Lcom/keniu/security/sync/d/d/a/c;

    invoke-direct {v0}, Lcom/keniu/security/sync/d/d/a/c;-><init>()V

    .line 25095
    sput-object v0, Lcom/keniu/security/sync/d/d/a/c;->c:Lcom/keniu/security/sync/d/d/a/c;

    const-string v1, ""

    iput-object v1, v0, Lcom/keniu/security/sync/d/d/a/c;->e:Ljava/lang/Object;

    const-string v1, ""

    iput-object v1, v0, Lcom/keniu/security/sync/d/d/a/c;->f:Ljava/lang/Object;

    .line 25096
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 24634
    invoke-direct {p0}, Lcom/b/a/dk;-><init>()V

    .line 24724
    iput-byte v0, p0, Lcom/keniu/security/sync/d/d/a/c;->g:B

    .line 24753
    iput v0, p0, Lcom/keniu/security/sync/d/d/a/c;->h:I

    .line 24634
    return-void
.end method

.method synthetic constructor <init>(Lcom/keniu/security/sync/d/d/a/d;)V
    .locals 1
    .parameter

    .prologue
    .line 24627
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/keniu/security/sync/d/d/a/c;-><init>(Lcom/keniu/security/sync/d/d/a/d;B)V

    return-void
.end method

.method private constructor <init>(Lcom/keniu/security/sync/d/d/a/d;B)V
    .locals 1
    .parameter
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 24632
    invoke-direct {p0, p1}, Lcom/b/a/dk;-><init>(Lcom/b/a/dn;)V

    .line 24724
    iput-byte v0, p0, Lcom/keniu/security/sync/d/d/a/c;->g:B

    .line 24753
    iput v0, p0, Lcom/keniu/security/sync/d/d/a/c;->h:I

    .line 24633
    return-void
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/c;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 24627
    iput p1, p0, Lcom/keniu/security/sync/d/d/a/c;->d:I

    return p1
.end method

.method private static a(Lcom/b/a/i;)Lcom/keniu/security/sync/d/d/a/c;
    .locals 1
    .parameter

    .prologue
    .line 24782
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/d;->i()Lcom/keniu/security/sync/d/d/a/d;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/d;->a(Lcom/b/a/i;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/d;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/d;->a(Lcom/keniu/security/sync/d/d/a/d;)Lcom/keniu/security/sync/d/d/a/c;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/i;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/c;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 24788
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/d;->i()Lcom/keniu/security/sync/d/d/a/d;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/d;->a(Lcom/b/a/i;Lcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/d;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/d;->a(Lcom/keniu/security/sync/d/d/a/d;)Lcom/keniu/security/sync/d/d/a/c;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/m;)Lcom/keniu/security/sync/d/d/a/c;
    .locals 1
    .parameter

    .prologue
    .line 24836
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/d;->i()Lcom/keniu/security/sync/d/d/a/d;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/d;->a(Lcom/b/a/m;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/d;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/d;->a(Lcom/keniu/security/sync/d/d/a/d;)Lcom/keniu/security/sync/d/d/a/c;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/c;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 24842
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/d;->i()Lcom/keniu/security/sync/d/d/a/d;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/d;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/d;

    move-result-object v0

    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/d;->a(Lcom/keniu/security/sync/d/d/a/d;)Lcom/keniu/security/sync/d/d/a/c;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/io/InputStream;)Lcom/keniu/security/sync/d/d/a/c;
    .locals 1
    .parameter

    .prologue
    .line 24804
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/d;->i()Lcom/keniu/security/sync/d/d/a/d;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/d;->a(Ljava/io/InputStream;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/d;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/d;->a(Lcom/keniu/security/sync/d/d/a/d;)Lcom/keniu/security/sync/d/d/a/c;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/c;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 24810
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/d;->i()Lcom/keniu/security/sync/d/d/a/d;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/d;->a(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/d;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/d;->a(Lcom/keniu/security/sync/d/d/a/d;)Lcom/keniu/security/sync/d/d/a/c;

    move-result-object v0

    return-object v0
.end method

.method private static a([B)Lcom/keniu/security/sync/d/d/a/c;
    .locals 1
    .parameter

    .prologue
    .line 24793
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/d;->i()Lcom/keniu/security/sync/d/d/a/d;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/d;->a([B)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/d;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/d;->a(Lcom/keniu/security/sync/d/d/a/d;)Lcom/keniu/security/sync/d/d/a/c;

    move-result-object v0

    return-object v0
.end method

.method private static a([BLcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/c;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 24799
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/d;->i()Lcom/keniu/security/sync/d/d/a/d;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/d;->a([BLcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/d;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/d;->a(Lcom/keniu/security/sync/d/d/a/d;)Lcom/keniu/security/sync/d/d/a/c;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/keniu/security/sync/d/d/a/c;)Lcom/keniu/security/sync/d/d/a/d;
    .locals 1
    .parameter

    .prologue
    .line 24849
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/d;->i()Lcom/keniu/security/sync/d/d/a/d;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/d;->a(Lcom/keniu/security/sync/d/d/a/c;)Lcom/keniu/security/sync/d/d/a/d;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/c;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 24627
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/c;->e:Ljava/lang/Object;

    return-object p1
.end method

.method private static b(Ljava/io/InputStream;)Lcom/keniu/security/sync/d/d/a/c;
    .locals 2
    .parameter

    .prologue
    .line 24815
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/d;->i()Lcom/keniu/security/sync/d/d/a/d;

    move-result-object v0

    .line 24816
    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/d;->b(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 24817
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/d;->a(Lcom/keniu/security/sync/d/d/a/d;)Lcom/keniu/security/sync/d/d/a/c;

    move-result-object v0

    .line 24819
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/c;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 24826
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/d;->i()Lcom/keniu/security/sync/d/d/a/d;

    move-result-object v0

    .line 24827
    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/d;->b(Ljava/io/InputStream;Lcom/b/a/df;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 24828
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/d;->a(Lcom/keniu/security/sync/d/d/a/d;)Lcom/keniu/security/sync/d/d/a/c;

    move-result-object v0

    .line 24830
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Lcom/b/a/dp;)Lcom/keniu/security/sync/d/d/a/d;
    .locals 1
    .parameter

    .prologue
    .line 24856
    new-instance v0, Lcom/keniu/security/sync/d/d/a/d;

    invoke-direct {v0, p0}, Lcom/keniu/security/sync/d/d/a/d;-><init>(Lcom/b/a/dp;)V

    .line 24857
    return-object v0
.end method

.method static synthetic b(Lcom/keniu/security/sync/d/d/a/c;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 24627
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/c;->f:Ljava/lang/Object;

    return-object p1
.end method

.method public static h()Lcom/keniu/security/sync/d/d/a/c;
    .locals 1

    .prologue
    .line 24638
    sget-object v0, Lcom/keniu/security/sync/d/d/a/c;->c:Lcom/keniu/security/sync/d/d/a/c;

    return-object v0
.end method

.method public static final i()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 24647
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/a;->av()Lcom/b/a/cj;

    move-result-object v0

    return-object v0
.end method

.method static synthetic n()Z
    .locals 1

    .prologue
    .line 24627
    sget-boolean v0, Lcom/keniu/security/sync/d/d/a/c;->j:Z

    return v0
.end method

.method private static o()Lcom/keniu/security/sync/d/d/a/c;
    .locals 1

    .prologue
    .line 24642
    sget-object v0, Lcom/keniu/security/sync/d/d/a/c;->c:Lcom/keniu/security/sync/d/d/a/c;

    return-object v0
.end method

.method private p()Lcom/b/a/i;
    .locals 2

    .prologue
    .line 24677
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/c;->e:Ljava/lang/Object;

    .line 24678
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 24679
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/b/a/i;->a(Ljava/lang/String;)Lcom/b/a/i;

    move-result-object v0

    .line 24681
    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/c;->e:Ljava/lang/Object;

    .line 24684
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/b/a/i;

    goto :goto_0
.end method

.method private q()Lcom/b/a/i;
    .locals 2

    .prologue
    .line 24709
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/c;->f:Ljava/lang/Object;

    .line 24710
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 24711
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/b/a/i;->a(Ljava/lang/String;)Lcom/b/a/i;

    move-result-object v0

    .line 24713
    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/c;->f:Ljava/lang/Object;

    .line 24716
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/b/a/i;

    goto :goto_0
.end method

.method private r()V
    .locals 1

    .prologue
    .line 24721
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/c;->e:Ljava/lang/Object;

    .line 24722
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/c;->f:Ljava/lang/Object;

    .line 24723
    return-void
.end method

.method private static s()Lcom/keniu/security/sync/d/d/a/d;
    .locals 1

    .prologue
    .line 24846
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/d;->i()Lcom/keniu/security/sync/d/d/a/d;

    move-result-object v0

    return-object v0
.end method

.method private static t()Lcom/keniu/security/sync/d/d/a/d;
    .locals 1

    .prologue
    .line 24847
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/d;->i()Lcom/keniu/security/sync/d/d/a/d;

    move-result-object v0

    return-object v0
.end method

.method private u()Lcom/keniu/security/sync/d/d/a/d;
    .locals 1

    .prologue
    .line 24851
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/d;->i()Lcom/keniu/security/sync/d/d/a/d;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/d;->a(Lcom/keniu/security/sync/d/d/a/c;)Lcom/keniu/security/sync/d/d/a/d;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final B()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 24776
    invoke-super {p0}, Lcom/b/a/dk;->B()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic D()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 24627
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/c;->u()Lcom/keniu/security/sync/d/d/a/d;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic E()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 24627
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/d;->i()Lcom/keniu/security/sync/d/d/a/d;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic F()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 24627
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/c;->u()Lcom/keniu/security/sync/d/d/a/d;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic G()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 24627
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/d;->i()Lcom/keniu/security/sync/d/d/a/d;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic H()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 24627
    sget-object v0, Lcom/keniu/security/sync/d/d/a/c;->c:Lcom/keniu/security/sync/d/d/a/c;

    return-object v0
.end method

.method public final bridge synthetic I()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 24627
    sget-object v0, Lcom/keniu/security/sync/d/d/a/c;->c:Lcom/keniu/security/sync/d/d/a/c;

    return-object v0
.end method

.method protected final synthetic a(Lcom/b/a/dp;)Lcom/b/a/ew;
    .locals 1
    .parameter

    .prologue
    .line 24627
    new-instance v0, Lcom/keniu/security/sync/d/d/a/d;

    invoke-direct {v0, p1}, Lcom/keniu/security/sync/d/d/a/d;-><init>(Lcom/b/a/dp;)V

    return-object v0
.end method

.method public final a(Lcom/b/a/n;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 24743
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/c;->b()I

    .line 24744
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/c;->d:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 24745
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/c;->p()Lcom/b/a/i;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/b/a/n;->a(ILcom/b/a/i;)V

    .line 24747
    :cond_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/c;->d:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 24748
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/c;->q()Lcom/b/a/i;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/b/a/n;->a(ILcom/b/a/i;)V

    .line 24750
    :cond_1
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/c;->b_()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/b/a/gg;->a(Lcom/b/a/n;)V

    .line 24751
    return-void
.end method

.method public final a()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 24726
    iget-byte v0, p0, Lcom/keniu/security/sync/d/d/a/c;->g:B

    .line 24727
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-ne v0, v3, :cond_0

    move v0, v3

    .line 24738
    :goto_0
    return v0

    :cond_0
    move v0, v2

    .line 24727
    goto :goto_0

    .line 24729
    :cond_1
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/c;->j()Z

    move-result v0

    if-nez v0, :cond_2

    .line 24730
    iput-byte v2, p0, Lcom/keniu/security/sync/d/d/a/c;->g:B

    move v0, v2

    .line 24731
    goto :goto_0

    .line 24733
    :cond_2
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/c;->l()Z

    move-result v0

    if-nez v0, :cond_3

    .line 24734
    iput-byte v2, p0, Lcom/keniu/security/sync/d/d/a/c;->g:B

    move v0, v2

    .line 24735
    goto :goto_0

    .line 24737
    :cond_3
    iput-byte v3, p0, Lcom/keniu/security/sync/d/d/a/c;->g:B

    move v0, v3

    .line 24738
    goto :goto_0
.end method

.method public final b()I
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 24755
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/c;->h:I

    .line 24756
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 24769
    :goto_0
    return v0

    .line 24758
    :cond_0
    const/4 v0, 0x0

    .line 24759
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/c;->d:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_1

    .line 24760
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/c;->p()Lcom/b/a/i;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/b/a/n;->c(ILcom/b/a/i;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 24763
    :cond_1
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/c;->d:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_2

    .line 24764
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/c;->q()Lcom/b/a/i;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/b/a/n;->c(ILcom/b/a/i;)I

    move-result v1

    add-int/2addr v0, v1

    .line 24767
    :cond_2
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/c;->b_()Lcom/b/a/gg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/b/a/gg;->b()I

    move-result v1

    add-int/2addr v0, v1

    .line 24768
    iput v0, p0, Lcom/keniu/security/sync/d/d/a/c;->h:I

    goto :goto_0
.end method

.method protected final g()Lcom/b/a/dv;
    .locals 1

    .prologue
    .line 24652
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/a;->aw()Lcom/b/a/dv;

    move-result-object v0

    return-object v0
.end method

.method public final j()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 24660
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/c;->d:I

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
    .line 24663
    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/c;->e:Ljava/lang/Object;

    .line 24664
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 24665
    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object p0, v0

    move-object v1, p0

    .line 24673
    :goto_0
    return-object v1

    .line 24667
    :cond_0
    check-cast v1, Lcom/b/a/i;

    .line 24669
    invoke-virtual {v1}, Lcom/b/a/i;->b()Ljava/lang/String;

    move-result-object v2

    .line 24670
    invoke-static {v1}, Lcom/b/a/ep;->a(Lcom/b/a/i;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 24671
    iput-object v2, p0, Lcom/keniu/security/sync/d/d/a/c;->e:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 24673
    goto :goto_0
.end method

.method public final l()Z
    .locals 2

    .prologue
    .line 24692
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/c;->d:I

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
    .line 24695
    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/c;->f:Ljava/lang/Object;

    .line 24696
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 24697
    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object p0, v0

    move-object v1, p0

    .line 24705
    :goto_0
    return-object v1

    .line 24699
    :cond_0
    check-cast v1, Lcom/b/a/i;

    .line 24701
    invoke-virtual {v1}, Lcom/b/a/i;->b()Ljava/lang/String;

    move-result-object v2

    .line 24702
    invoke-static {v1}, Lcom/b/a/ep;->a(Lcom/b/a/i;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 24703
    iput-object v2, p0, Lcom/keniu/security/sync/d/d/a/c;->f:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 24705
    goto :goto_0
.end method
