.class public final Lcom/keniu/security/sync/d/d/a/l;
.super Lcom/b/a/dk;
.source "Appsvr.java"

# interfaces
.implements Lcom/keniu/security/sync/d/d/a/n;


# static fields
.field public static final a:I = 0x1

.field public static final b:I = 0x2

.field public static final c:I = 0x3

.field private static final d:Lcom/keniu/security/sync/d/d/a/l;

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
    .line 27268
    new-instance v0, Lcom/keniu/security/sync/d/d/a/l;

    invoke-direct {v0}, Lcom/keniu/security/sync/d/d/a/l;-><init>()V

    .line 27269
    sput-object v0, Lcom/keniu/security/sync/d/d/a/l;->d:Lcom/keniu/security/sync/d/d/a/l;

    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->h()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v1

    iput-object v1, v0, Lcom/keniu/security/sync/d/d/a/l;->f:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gj;->h()Lcom/keniu/security/sync/d/d/a/gj;

    move-result-object v1

    iput-object v1, v0, Lcom/keniu/security/sync/d/d/a/l;->g:Lcom/keniu/security/sync/d/d/a/gj;

    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gy;->h()Lcom/keniu/security/sync/d/d/a/gy;

    move-result-object v1

    iput-object v1, v0, Lcom/keniu/security/sync/d/d/a/l;->h:Lcom/keniu/security/sync/d/d/a/gy;

    .line 27270
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 26574
    invoke-direct {p0}, Lcom/b/a/dk;-><init>()V

    .line 26640
    iput-byte v0, p0, Lcom/keniu/security/sync/d/d/a/l;->i:B

    .line 26672
    iput v0, p0, Lcom/keniu/security/sync/d/d/a/l;->k:I

    .line 26574
    return-void
.end method

.method synthetic constructor <init>(Lcom/keniu/security/sync/d/d/a/m;)V
    .locals 1
    .parameter

    .prologue
    .line 26567
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/keniu/security/sync/d/d/a/l;-><init>(Lcom/keniu/security/sync/d/d/a/m;B)V

    return-void
.end method

.method private constructor <init>(Lcom/keniu/security/sync/d/d/a/m;B)V
    .locals 1
    .parameter
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 26572
    invoke-direct {p0, p1}, Lcom/b/a/dk;-><init>(Lcom/b/a/dn;)V

    .line 26640
    iput-byte v0, p0, Lcom/keniu/security/sync/d/d/a/l;->i:B

    .line 26672
    iput v0, p0, Lcom/keniu/security/sync/d/d/a/l;->k:I

    .line 26573
    return-void
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/l;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 26567
    iput p1, p0, Lcom/keniu/security/sync/d/d/a/l;->e:I

    return p1
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/l;Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/ge;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 26567
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/l;->f:Lcom/keniu/security/sync/d/d/a/ge;

    return-object p1
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/l;Lcom/keniu/security/sync/d/d/a/gj;)Lcom/keniu/security/sync/d/d/a/gj;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 26567
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/l;->g:Lcom/keniu/security/sync/d/d/a/gj;

    return-object p1
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/l;Lcom/keniu/security/sync/d/d/a/gy;)Lcom/keniu/security/sync/d/d/a/gy;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 26567
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/l;->h:Lcom/keniu/security/sync/d/d/a/gy;

    return-object p1
.end method

.method private static a(Lcom/b/a/i;)Lcom/keniu/security/sync/d/d/a/l;
    .locals 1
    .parameter

    .prologue
    .line 26705
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/m;->i()Lcom/keniu/security/sync/d/d/a/m;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/m;->a(Lcom/b/a/i;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/m;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/m;->a(Lcom/keniu/security/sync/d/d/a/m;)Lcom/keniu/security/sync/d/d/a/l;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/i;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/l;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 26711
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/m;->i()Lcom/keniu/security/sync/d/d/a/m;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/m;->a(Lcom/b/a/i;Lcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/m;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/m;->a(Lcom/keniu/security/sync/d/d/a/m;)Lcom/keniu/security/sync/d/d/a/l;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/m;)Lcom/keniu/security/sync/d/d/a/l;
    .locals 1
    .parameter

    .prologue
    .line 26759
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/m;->i()Lcom/keniu/security/sync/d/d/a/m;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/m;->a(Lcom/b/a/m;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/m;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/m;->a(Lcom/keniu/security/sync/d/d/a/m;)Lcom/keniu/security/sync/d/d/a/l;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/l;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 26765
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/m;->i()Lcom/keniu/security/sync/d/d/a/m;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/m;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/m;

    move-result-object v0

    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/m;->a(Lcom/keniu/security/sync/d/d/a/m;)Lcom/keniu/security/sync/d/d/a/l;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/io/InputStream;)Lcom/keniu/security/sync/d/d/a/l;
    .locals 1
    .parameter

    .prologue
    .line 26727
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/m;->i()Lcom/keniu/security/sync/d/d/a/m;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/m;->a(Ljava/io/InputStream;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/m;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/m;->a(Lcom/keniu/security/sync/d/d/a/m;)Lcom/keniu/security/sync/d/d/a/l;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/l;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 26733
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/m;->i()Lcom/keniu/security/sync/d/d/a/m;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/m;->a(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/m;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/m;->a(Lcom/keniu/security/sync/d/d/a/m;)Lcom/keniu/security/sync/d/d/a/l;

    move-result-object v0

    return-object v0
.end method

.method private static a([B)Lcom/keniu/security/sync/d/d/a/l;
    .locals 1
    .parameter

    .prologue
    .line 26716
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/m;->i()Lcom/keniu/security/sync/d/d/a/m;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/m;->a([B)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/m;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/m;->a(Lcom/keniu/security/sync/d/d/a/m;)Lcom/keniu/security/sync/d/d/a/l;

    move-result-object v0

    return-object v0
.end method

.method private static a([BLcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/l;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 26722
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/m;->i()Lcom/keniu/security/sync/d/d/a/m;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/m;->a([BLcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/m;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/m;->a(Lcom/keniu/security/sync/d/d/a/m;)Lcom/keniu/security/sync/d/d/a/l;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/keniu/security/sync/d/d/a/l;)Lcom/keniu/security/sync/d/d/a/m;
    .locals 1
    .parameter

    .prologue
    .line 26772
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/m;->i()Lcom/keniu/security/sync/d/d/a/m;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/m;->a(Lcom/keniu/security/sync/d/d/a/l;)Lcom/keniu/security/sync/d/d/a/m;

    move-result-object v0

    return-object v0
.end method

.method private static b(Ljava/io/InputStream;)Lcom/keniu/security/sync/d/d/a/l;
    .locals 2
    .parameter

    .prologue
    .line 26738
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/m;->i()Lcom/keniu/security/sync/d/d/a/m;

    move-result-object v0

    .line 26739
    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/m;->b(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 26740
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/m;->a(Lcom/keniu/security/sync/d/d/a/m;)Lcom/keniu/security/sync/d/d/a/l;

    move-result-object v0

    .line 26742
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/l;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 26749
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/m;->i()Lcom/keniu/security/sync/d/d/a/m;

    move-result-object v0

    .line 26750
    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/m;->b(Ljava/io/InputStream;Lcom/b/a/df;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 26751
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/m;->a(Lcom/keniu/security/sync/d/d/a/m;)Lcom/keniu/security/sync/d/d/a/l;

    move-result-object v0

    .line 26753
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Lcom/b/a/dp;)Lcom/keniu/security/sync/d/d/a/m;
    .locals 1
    .parameter

    .prologue
    .line 26779
    new-instance v0, Lcom/keniu/security/sync/d/d/a/m;

    invoke-direct {v0, p0}, Lcom/keniu/security/sync/d/d/a/m;-><init>(Lcom/b/a/dp;)V

    .line 26780
    return-object v0
.end method

.method public static h()Lcom/keniu/security/sync/d/d/a/l;
    .locals 1

    .prologue
    .line 26578
    sget-object v0, Lcom/keniu/security/sync/d/d/a/l;->d:Lcom/keniu/security/sync/d/d/a/l;

    return-object v0
.end method

.method public static final i()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 26587
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/a;->aB()Lcom/b/a/cj;

    move-result-object v0

    return-object v0
.end method

.method static synthetic s()Z
    .locals 1

    .prologue
    .line 26567
    sget-boolean v0, Lcom/keniu/security/sync/d/d/a/l;->j:Z

    return v0
.end method

.method private static t()Lcom/keniu/security/sync/d/d/a/l;
    .locals 1

    .prologue
    .line 26582
    sget-object v0, Lcom/keniu/security/sync/d/d/a/l;->d:Lcom/keniu/security/sync/d/d/a/l;

    return-object v0
.end method

.method private u()V
    .locals 1

    .prologue
    .line 26636
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->h()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/l;->f:Lcom/keniu/security/sync/d/d/a/ge;

    .line 26637
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gj;->h()Lcom/keniu/security/sync/d/d/a/gj;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/l;->g:Lcom/keniu/security/sync/d/d/a/gj;

    .line 26638
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gy;->h()Lcom/keniu/security/sync/d/d/a/gy;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/l;->h:Lcom/keniu/security/sync/d/d/a/gy;

    .line 26639
    return-void
.end method

.method private static v()Lcom/keniu/security/sync/d/d/a/m;
    .locals 1

    .prologue
    .line 26769
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/m;->i()Lcom/keniu/security/sync/d/d/a/m;

    move-result-object v0

    return-object v0
.end method

.method private static w()Lcom/keniu/security/sync/d/d/a/m;
    .locals 1

    .prologue
    .line 26770
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/m;->i()Lcom/keniu/security/sync/d/d/a/m;

    move-result-object v0

    return-object v0
.end method

.method private x()Lcom/keniu/security/sync/d/d/a/m;
    .locals 1

    .prologue
    .line 26774
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/m;->i()Lcom/keniu/security/sync/d/d/a/m;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/m;->a(Lcom/keniu/security/sync/d/d/a/l;)Lcom/keniu/security/sync/d/d/a/m;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final B()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 26699
    invoke-super {p0}, Lcom/b/a/dk;->B()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic D()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 26567
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/l;->x()Lcom/keniu/security/sync/d/d/a/m;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic E()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 26567
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/m;->i()Lcom/keniu/security/sync/d/d/a/m;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic F()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 26567
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/l;->x()Lcom/keniu/security/sync/d/d/a/m;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic G()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 26567
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/m;->i()Lcom/keniu/security/sync/d/d/a/m;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic H()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 26567
    sget-object v0, Lcom/keniu/security/sync/d/d/a/l;->d:Lcom/keniu/security/sync/d/d/a/l;

    return-object v0
.end method

.method public final bridge synthetic I()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 26567
    sget-object v0, Lcom/keniu/security/sync/d/d/a/l;->d:Lcom/keniu/security/sync/d/d/a/l;

    return-object v0
.end method

.method protected final synthetic a(Lcom/b/a/dp;)Lcom/b/a/ew;
    .locals 1
    .parameter

    .prologue
    .line 26567
    new-instance v0, Lcom/keniu/security/sync/d/d/a/m;

    invoke-direct {v0, p1}, Lcom/keniu/security/sync/d/d/a/m;-><init>(Lcom/b/a/dp;)V

    return-object v0
.end method

.method public final a(Lcom/b/a/n;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 26659
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/l;->b()I

    .line 26660
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/l;->e:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 26661
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/l;->f:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-virtual {p1, v1, v0}, Lcom/b/a/n;->b(ILcom/b/a/ex;)V

    .line 26663
    :cond_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/l;->e:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 26664
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/l;->g:Lcom/keniu/security/sync/d/d/a/gj;

    invoke-virtual {p1, v2, v0}, Lcom/b/a/n;->b(ILcom/b/a/ex;)V

    .line 26666
    :cond_1
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/l;->e:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 26667
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/l;->h:Lcom/keniu/security/sync/d/d/a/gy;

    invoke-virtual {p1, v0, v1}, Lcom/b/a/n;->b(ILcom/b/a/ex;)V

    .line 26669
    :cond_2
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/l;->b_()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/b/a/gg;->a(Lcom/b/a/n;)V

    .line 26670
    return-void
.end method

.method public final a()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 26642
    iget-byte v0, p0, Lcom/keniu/security/sync/d/d/a/l;->i:B

    .line 26643
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-ne v0, v3, :cond_0

    move v0, v3

    .line 26654
    :goto_0
    return v0

    :cond_0
    move v0, v2

    .line 26643
    goto :goto_0

    .line 26645
    :cond_1
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/l;->j()Z

    move-result v0

    if-nez v0, :cond_2

    .line 26646
    iput-byte v2, p0, Lcom/keniu/security/sync/d/d/a/l;->i:B

    move v0, v2

    .line 26647
    goto :goto_0

    .line 26649
    :cond_2
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/l;->f:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/ge;->a()Z

    move-result v0

    if-nez v0, :cond_3

    .line 26650
    iput-byte v2, p0, Lcom/keniu/security/sync/d/d/a/l;->i:B

    move v0, v2

    .line 26651
    goto :goto_0

    .line 26653
    :cond_3
    iput-byte v3, p0, Lcom/keniu/security/sync/d/d/a/l;->i:B

    move v0, v3

    .line 26654
    goto :goto_0
.end method

.method public final b()I
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 26674
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/l;->k:I

    .line 26675
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 26692
    :goto_0
    return v0

    .line 26677
    :cond_0
    const/4 v0, 0x0

    .line 26678
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/l;->e:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_1

    .line 26679
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/l;->f:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-static {v2, v0}, Lcom/b/a/n;->e(ILcom/b/a/ex;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 26682
    :cond_1
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/l;->e:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_2

    .line 26683
    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/l;->g:Lcom/keniu/security/sync/d/d/a/gj;

    invoke-static {v3, v1}, Lcom/b/a/n;->e(ILcom/b/a/ex;)I

    move-result v1

    add-int/2addr v0, v1

    .line 26686
    :cond_2
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/l;->e:I

    and-int/lit8 v1, v1, 0x4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    .line 26687
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/keniu/security/sync/d/d/a/l;->h:Lcom/keniu/security/sync/d/d/a/gy;

    invoke-static {v1, v2}, Lcom/b/a/n;->e(ILcom/b/a/ex;)I

    move-result v1

    add-int/2addr v0, v1

    .line 26690
    :cond_3
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/l;->b_()Lcom/b/a/gg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/b/a/gg;->b()I

    move-result v1

    add-int/2addr v0, v1

    .line 26691
    iput v0, p0, Lcom/keniu/security/sync/d/d/a/l;->k:I

    goto :goto_0
.end method

.method protected final g()Lcom/b/a/dv;
    .locals 1

    .prologue
    .line 26592
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/a;->aC()Lcom/b/a/dv;

    move-result-object v0

    return-object v0
.end method

.method public final j()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 26600
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/l;->e:I

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
    .line 26603
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/l;->f:Lcom/keniu/security/sync/d/d/a/ge;

    return-object v0
.end method

.method public final l()Lcom/keniu/security/sync/d/d/a/gg;
    .locals 1

    .prologue
    .line 26606
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/l;->f:Lcom/keniu/security/sync/d/d/a/ge;

    return-object v0
.end method

.method public final m()Z
    .locals 2

    .prologue
    .line 26613
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/l;->e:I

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
    .line 26616
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/l;->g:Lcom/keniu/security/sync/d/d/a/gj;

    return-object v0
.end method

.method public final o()Lcom/keniu/security/sync/d/d/a/gl;
    .locals 1

    .prologue
    .line 26619
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/l;->g:Lcom/keniu/security/sync/d/d/a/gj;

    return-object v0
.end method

.method public final p()Z
    .locals 2

    .prologue
    .line 26626
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/l;->e:I

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
    .line 26629
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/l;->h:Lcom/keniu/security/sync/d/d/a/gy;

    return-object v0
.end method

.method public final r()Lcom/keniu/security/sync/d/d/a/ha;
    .locals 1

    .prologue
    .line 26632
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/l;->h:Lcom/keniu/security/sync/d/d/a/gy;

    return-object v0
.end method
