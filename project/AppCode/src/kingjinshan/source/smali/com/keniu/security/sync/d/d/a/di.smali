.class public final Lcom/keniu/security/sync/d/d/a/di;
.super Lcom/b/a/dk;
.source "Appsvr.java"

# interfaces
.implements Lcom/keniu/security/sync/d/d/a/dk;


# static fields
.field public static final a:I = 0x1

.field public static final b:I = 0x2

.field public static final c:I = 0x3

.field private static final d:Lcom/keniu/security/sync/d/d/a/di;

.field private static final l:J


# instance fields
.field private e:I

.field private f:Lcom/keniu/security/sync/d/d/a/ge;

.field private g:Lcom/keniu/security/sync/d/d/a/gn;

.field private h:I

.field private i:B

.field private k:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 19339
    new-instance v0, Lcom/keniu/security/sync/d/d/a/di;

    invoke-direct {v0}, Lcom/keniu/security/sync/d/d/a/di;-><init>()V

    .line 19340
    sput-object v0, Lcom/keniu/security/sync/d/d/a/di;->d:Lcom/keniu/security/sync/d/d/a/di;

    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->h()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v1

    iput-object v1, v0, Lcom/keniu/security/sync/d/d/a/di;->f:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gn;->h()Lcom/keniu/security/sync/d/d/a/gn;

    move-result-object v1

    iput-object v1, v0, Lcom/keniu/security/sync/d/d/a/di;->g:Lcom/keniu/security/sync/d/d/a/gn;

    const/4 v1, 0x0

    iput v1, v0, Lcom/keniu/security/sync/d/d/a/di;->h:I

    .line 19341
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 18718
    invoke-direct {p0}, Lcom/b/a/dk;-><init>()V

    .line 18781
    iput-byte v0, p0, Lcom/keniu/security/sync/d/d/a/di;->i:B

    .line 18819
    iput v0, p0, Lcom/keniu/security/sync/d/d/a/di;->k:I

    .line 18718
    return-void
.end method

.method synthetic constructor <init>(Lcom/keniu/security/sync/d/d/a/dj;)V
    .locals 1
    .parameter

    .prologue
    .line 18711
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/keniu/security/sync/d/d/a/di;-><init>(Lcom/keniu/security/sync/d/d/a/dj;B)V

    return-void
.end method

.method private constructor <init>(Lcom/keniu/security/sync/d/d/a/dj;B)V
    .locals 1
    .parameter
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 18716
    invoke-direct {p0, p1}, Lcom/b/a/dk;-><init>(Lcom/b/a/dn;)V

    .line 18781
    iput-byte v0, p0, Lcom/keniu/security/sync/d/d/a/di;->i:B

    .line 18819
    iput v0, p0, Lcom/keniu/security/sync/d/d/a/di;->k:I

    .line 18717
    return-void
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/di;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 18711
    iput p1, p0, Lcom/keniu/security/sync/d/d/a/di;->h:I

    return p1
.end method

.method private static a(Lcom/b/a/i;)Lcom/keniu/security/sync/d/d/a/di;
    .locals 1
    .parameter

    .prologue
    .line 18852
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/dj;->s()Lcom/keniu/security/sync/d/d/a/dj;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/dj;->a(Lcom/b/a/i;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/dj;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/dj;->a(Lcom/keniu/security/sync/d/d/a/dj;)Lcom/keniu/security/sync/d/d/a/di;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/i;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/di;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 18858
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/dj;->s()Lcom/keniu/security/sync/d/d/a/dj;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/dj;->a(Lcom/b/a/i;Lcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/dj;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/dj;->a(Lcom/keniu/security/sync/d/d/a/dj;)Lcom/keniu/security/sync/d/d/a/di;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/m;)Lcom/keniu/security/sync/d/d/a/di;
    .locals 1
    .parameter

    .prologue
    .line 18906
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/dj;->s()Lcom/keniu/security/sync/d/d/a/dj;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/dj;->a(Lcom/b/a/m;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/dj;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/dj;->a(Lcom/keniu/security/sync/d/d/a/dj;)Lcom/keniu/security/sync/d/d/a/di;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/di;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 18912
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/dj;->s()Lcom/keniu/security/sync/d/d/a/dj;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/dj;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/dj;

    move-result-object v0

    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/dj;->a(Lcom/keniu/security/sync/d/d/a/dj;)Lcom/keniu/security/sync/d/d/a/di;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/io/InputStream;)Lcom/keniu/security/sync/d/d/a/di;
    .locals 1
    .parameter

    .prologue
    .line 18874
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/dj;->s()Lcom/keniu/security/sync/d/d/a/dj;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/dj;->a(Ljava/io/InputStream;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/dj;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/dj;->a(Lcom/keniu/security/sync/d/d/a/dj;)Lcom/keniu/security/sync/d/d/a/di;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/di;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 18880
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/dj;->s()Lcom/keniu/security/sync/d/d/a/dj;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/dj;->a(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/dj;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/dj;->a(Lcom/keniu/security/sync/d/d/a/dj;)Lcom/keniu/security/sync/d/d/a/di;

    move-result-object v0

    return-object v0
.end method

.method private static a([B)Lcom/keniu/security/sync/d/d/a/di;
    .locals 1
    .parameter

    .prologue
    .line 18863
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/dj;->s()Lcom/keniu/security/sync/d/d/a/dj;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/dj;->a([B)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/dj;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/dj;->a(Lcom/keniu/security/sync/d/d/a/dj;)Lcom/keniu/security/sync/d/d/a/di;

    move-result-object v0

    return-object v0
.end method

.method private static a([BLcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/di;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 18869
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/dj;->s()Lcom/keniu/security/sync/d/d/a/dj;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/dj;->a([BLcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/dj;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/dj;->a(Lcom/keniu/security/sync/d/d/a/dj;)Lcom/keniu/security/sync/d/d/a/di;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/keniu/security/sync/d/d/a/di;)Lcom/keniu/security/sync/d/d/a/dj;
    .locals 1
    .parameter

    .prologue
    .line 18919
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/dj;->s()Lcom/keniu/security/sync/d/d/a/dj;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/dj;->a(Lcom/keniu/security/sync/d/d/a/di;)Lcom/keniu/security/sync/d/d/a/dj;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/di;Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/ge;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 18711
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/di;->f:Lcom/keniu/security/sync/d/d/a/ge;

    return-object p1
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/di;Lcom/keniu/security/sync/d/d/a/gn;)Lcom/keniu/security/sync/d/d/a/gn;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 18711
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/di;->g:Lcom/keniu/security/sync/d/d/a/gn;

    return-object p1
.end method

.method static synthetic b(Lcom/keniu/security/sync/d/d/a/di;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 18711
    iput p1, p0, Lcom/keniu/security/sync/d/d/a/di;->e:I

    return p1
.end method

.method private static b(Ljava/io/InputStream;)Lcom/keniu/security/sync/d/d/a/di;
    .locals 2
    .parameter

    .prologue
    .line 18885
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/dj;->s()Lcom/keniu/security/sync/d/d/a/dj;

    move-result-object v0

    .line 18886
    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/dj;->b(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 18887
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/dj;->a(Lcom/keniu/security/sync/d/d/a/dj;)Lcom/keniu/security/sync/d/d/a/di;

    move-result-object v0

    .line 18889
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/di;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 18896
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/dj;->s()Lcom/keniu/security/sync/d/d/a/dj;

    move-result-object v0

    .line 18897
    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/dj;->b(Ljava/io/InputStream;Lcom/b/a/df;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 18898
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/dj;->a(Lcom/keniu/security/sync/d/d/a/dj;)Lcom/keniu/security/sync/d/d/a/di;

    move-result-object v0

    .line 18900
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Lcom/b/a/dp;)Lcom/keniu/security/sync/d/d/a/dj;
    .locals 1
    .parameter

    .prologue
    .line 18926
    new-instance v0, Lcom/keniu/security/sync/d/d/a/dj;

    invoke-direct {v0, p0}, Lcom/keniu/security/sync/d/d/a/dj;-><init>(Lcom/b/a/dp;)V

    .line 18927
    return-object v0
.end method

.method public static h()Lcom/keniu/security/sync/d/d/a/di;
    .locals 1

    .prologue
    .line 18722
    sget-object v0, Lcom/keniu/security/sync/d/d/a/di;->d:Lcom/keniu/security/sync/d/d/a/di;

    return-object v0
.end method

.method public static final i()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 18731
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/a;->ad()Lcom/b/a/cj;

    move-result-object v0

    return-object v0
.end method

.method public static r()Lcom/keniu/security/sync/d/d/a/dj;
    .locals 1

    .prologue
    .line 18916
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/dj;->s()Lcom/keniu/security/sync/d/d/a/dj;

    move-result-object v0

    return-object v0
.end method

.method static synthetic s()Z
    .locals 1

    .prologue
    .line 18711
    sget-boolean v0, Lcom/keniu/security/sync/d/d/a/di;->j:Z

    return v0
.end method

.method private static t()Lcom/keniu/security/sync/d/d/a/di;
    .locals 1

    .prologue
    .line 18726
    sget-object v0, Lcom/keniu/security/sync/d/d/a/di;->d:Lcom/keniu/security/sync/d/d/a/di;

    return-object v0
.end method

.method private u()V
    .locals 1

    .prologue
    .line 18777
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->h()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/di;->f:Lcom/keniu/security/sync/d/d/a/ge;

    .line 18778
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gn;->h()Lcom/keniu/security/sync/d/d/a/gn;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/di;->g:Lcom/keniu/security/sync/d/d/a/gn;

    .line 18779
    const/4 v0, 0x0

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/di;->h:I

    .line 18780
    return-void
.end method

.method private static v()Lcom/keniu/security/sync/d/d/a/dj;
    .locals 1

    .prologue
    .line 18917
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/dj;->s()Lcom/keniu/security/sync/d/d/a/dj;

    move-result-object v0

    return-object v0
.end method

.method private w()Lcom/keniu/security/sync/d/d/a/dj;
    .locals 1

    .prologue
    .line 18921
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/dj;->s()Lcom/keniu/security/sync/d/d/a/dj;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/dj;->a(Lcom/keniu/security/sync/d/d/a/di;)Lcom/keniu/security/sync/d/d/a/dj;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final B()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 18846
    invoke-super {p0}, Lcom/b/a/dk;->B()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic D()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 18711
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/di;->w()Lcom/keniu/security/sync/d/d/a/dj;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic E()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 18711
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/dj;->s()Lcom/keniu/security/sync/d/d/a/dj;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic F()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 18711
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/di;->w()Lcom/keniu/security/sync/d/d/a/dj;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic G()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 18711
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/dj;->s()Lcom/keniu/security/sync/d/d/a/dj;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic H()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 18711
    sget-object v0, Lcom/keniu/security/sync/d/d/a/di;->d:Lcom/keniu/security/sync/d/d/a/di;

    return-object v0
.end method

.method public final bridge synthetic I()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 18711
    sget-object v0, Lcom/keniu/security/sync/d/d/a/di;->d:Lcom/keniu/security/sync/d/d/a/di;

    return-object v0
.end method

.method protected final synthetic a(Lcom/b/a/dp;)Lcom/b/a/ew;
    .locals 1
    .parameter

    .prologue
    .line 18711
    new-instance v0, Lcom/keniu/security/sync/d/d/a/dj;

    invoke-direct {v0, p1}, Lcom/keniu/security/sync/d/d/a/dj;-><init>(Lcom/b/a/dp;)V

    return-object v0
.end method

.method public final a(Lcom/b/a/n;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 18806
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/di;->b()I

    .line 18807
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/di;->e:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 18808
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/di;->f:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-virtual {p1, v1, v0}, Lcom/b/a/n;->b(ILcom/b/a/ex;)V

    .line 18810
    :cond_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/di;->e:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 18811
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/di;->g:Lcom/keniu/security/sync/d/d/a/gn;

    invoke-virtual {p1, v2, v0}, Lcom/b/a/n;->b(ILcom/b/a/ex;)V

    .line 18813
    :cond_1
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/di;->e:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 18814
    const/4 v0, 0x3

    iget v1, p0, Lcom/keniu/security/sync/d/d/a/di;->h:I

    invoke-virtual {p1, v0, v1}, Lcom/b/a/n;->a(II)V

    .line 18816
    :cond_2
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/di;->b_()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/b/a/gg;->a(Lcom/b/a/n;)V

    .line 18817
    return-void
.end method

.method public final a()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 18783
    iget-byte v0, p0, Lcom/keniu/security/sync/d/d/a/di;->i:B

    .line 18784
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-ne v0, v3, :cond_0

    move v0, v3

    .line 18801
    :goto_0
    return v0

    :cond_0
    move v0, v2

    .line 18784
    goto :goto_0

    .line 18786
    :cond_1
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/di;->j()Z

    move-result v0

    if-nez v0, :cond_2

    .line 18787
    iput-byte v2, p0, Lcom/keniu/security/sync/d/d/a/di;->i:B

    move v0, v2

    .line 18788
    goto :goto_0

    .line 18790
    :cond_2
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/di;->f:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/ge;->a()Z

    move-result v0

    if-nez v0, :cond_3

    .line 18791
    iput-byte v2, p0, Lcom/keniu/security/sync/d/d/a/di;->i:B

    move v0, v2

    .line 18792
    goto :goto_0

    .line 18794
    :cond_3
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/di;->m()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 18795
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/di;->g:Lcom/keniu/security/sync/d/d/a/gn;

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/gn;->a()Z

    move-result v0

    if-nez v0, :cond_4

    .line 18796
    iput-byte v2, p0, Lcom/keniu/security/sync/d/d/a/di;->i:B

    move v0, v2

    .line 18797
    goto :goto_0

    .line 18800
    :cond_4
    iput-byte v3, p0, Lcom/keniu/security/sync/d/d/a/di;->i:B

    move v0, v3

    .line 18801
    goto :goto_0
.end method

.method public final b()I
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 18821
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/di;->k:I

    .line 18822
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 18839
    :goto_0
    return v0

    .line 18824
    :cond_0
    const/4 v0, 0x0

    .line 18825
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/di;->e:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_1

    .line 18826
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/di;->f:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-static {v2, v0}, Lcom/b/a/n;->e(ILcom/b/a/ex;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 18829
    :cond_1
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/di;->e:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_2

    .line 18830
    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/di;->g:Lcom/keniu/security/sync/d/d/a/gn;

    invoke-static {v3, v1}, Lcom/b/a/n;->e(ILcom/b/a/ex;)I

    move-result v1

    add-int/2addr v0, v1

    .line 18833
    :cond_2
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/di;->e:I

    and-int/lit8 v1, v1, 0x4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    .line 18834
    const/4 v1, 0x3

    iget v2, p0, Lcom/keniu/security/sync/d/d/a/di;->h:I

    invoke-static {v1, v2}, Lcom/b/a/n;->d(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 18837
    :cond_3
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/di;->b_()Lcom/b/a/gg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/b/a/gg;->b()I

    move-result v1

    add-int/2addr v0, v1

    .line 18838
    iput v0, p0, Lcom/keniu/security/sync/d/d/a/di;->k:I

    goto :goto_0
.end method

.method protected final g()Lcom/b/a/dv;
    .locals 1

    .prologue
    .line 18736
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/a;->ae()Lcom/b/a/dv;

    move-result-object v0

    return-object v0
.end method

.method public final j()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 18744
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/di;->e:I

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
    .line 18747
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/di;->f:Lcom/keniu/security/sync/d/d/a/ge;

    return-object v0
.end method

.method public final l()Lcom/keniu/security/sync/d/d/a/gg;
    .locals 1

    .prologue
    .line 18750
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/di;->f:Lcom/keniu/security/sync/d/d/a/ge;

    return-object v0
.end method

.method public final m()Z
    .locals 2

    .prologue
    .line 18757
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/di;->e:I

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

.method public final n()Lcom/keniu/security/sync/d/d/a/gn;
    .locals 1

    .prologue
    .line 18760
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/di;->g:Lcom/keniu/security/sync/d/d/a/gn;

    return-object v0
.end method

.method public final o()Lcom/keniu/security/sync/d/d/a/gp;
    .locals 1

    .prologue
    .line 18763
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/di;->g:Lcom/keniu/security/sync/d/d/a/gn;

    return-object v0
.end method

.method public final p()Z
    .locals 2

    .prologue
    .line 18770
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/di;->e:I

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

.method public final q()I
    .locals 1

    .prologue
    .line 18773
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/di;->h:I

    return v0
.end method
