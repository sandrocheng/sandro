.class public final Lcom/keniu/security/sync/d/d/a/fq;
.super Lcom/b/a/dk;
.source "Appsvr.java"

# interfaces
.implements Lcom/keniu/security/sync/d/d/a/fs;


# static fields
.field public static final a:I = 0x1

.field public static final b:I = 0x2

.field public static final c:I = 0x3

.field private static final d:Lcom/keniu/security/sync/d/d/a/fq;

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
    .line 36972
    new-instance v0, Lcom/keniu/security/sync/d/d/a/fq;

    invoke-direct {v0}, Lcom/keniu/security/sync/d/d/a/fq;-><init>()V

    .line 36973
    sput-object v0, Lcom/keniu/security/sync/d/d/a/fq;->d:Lcom/keniu/security/sync/d/d/a/fq;

    const-string v1, ""

    iput-object v1, v0, Lcom/keniu/security/sync/d/d/a/fq;->f:Ljava/lang/Object;

    const-string v1, ""

    iput-object v1, v0, Lcom/keniu/security/sync/d/d/a/fq;->g:Ljava/lang/Object;

    const-string v1, ""

    iput-object v1, v0, Lcom/keniu/security/sync/d/d/a/fq;->h:Ljava/lang/Object;

    .line 36974
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 36422
    invoke-direct {p0}, Lcom/b/a/dk;-><init>()V

    .line 36545
    iput-byte v0, p0, Lcom/keniu/security/sync/d/d/a/fq;->i:B

    .line 36577
    iput v0, p0, Lcom/keniu/security/sync/d/d/a/fq;->k:I

    .line 36422
    return-void
.end method

.method synthetic constructor <init>(Lcom/keniu/security/sync/d/d/a/fr;)V
    .locals 1
    .parameter

    .prologue
    .line 36415
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/keniu/security/sync/d/d/a/fq;-><init>(Lcom/keniu/security/sync/d/d/a/fr;B)V

    return-void
.end method

.method private constructor <init>(Lcom/keniu/security/sync/d/d/a/fr;B)V
    .locals 1
    .parameter
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 36420
    invoke-direct {p0, p1}, Lcom/b/a/dk;-><init>(Lcom/b/a/dn;)V

    .line 36545
    iput-byte v0, p0, Lcom/keniu/security/sync/d/d/a/fq;->i:B

    .line 36577
    iput v0, p0, Lcom/keniu/security/sync/d/d/a/fq;->k:I

    .line 36421
    return-void
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/fq;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 36415
    iput p1, p0, Lcom/keniu/security/sync/d/d/a/fq;->e:I

    return p1
.end method

.method private static a(Lcom/b/a/i;)Lcom/keniu/security/sync/d/d/a/fq;
    .locals 1
    .parameter

    .prologue
    .line 36610
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/fr;->i()Lcom/keniu/security/sync/d/d/a/fr;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/fr;->a(Lcom/b/a/i;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/fr;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/fr;->a(Lcom/keniu/security/sync/d/d/a/fr;)Lcom/keniu/security/sync/d/d/a/fq;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/i;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/fq;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 36616
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/fr;->i()Lcom/keniu/security/sync/d/d/a/fr;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/fr;->a(Lcom/b/a/i;Lcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/fr;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/fr;->a(Lcom/keniu/security/sync/d/d/a/fr;)Lcom/keniu/security/sync/d/d/a/fq;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/m;)Lcom/keniu/security/sync/d/d/a/fq;
    .locals 1
    .parameter

    .prologue
    .line 36664
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/fr;->i()Lcom/keniu/security/sync/d/d/a/fr;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/fr;->a(Lcom/b/a/m;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/fr;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/fr;->a(Lcom/keniu/security/sync/d/d/a/fr;)Lcom/keniu/security/sync/d/d/a/fq;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/fq;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 36670
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/fr;->i()Lcom/keniu/security/sync/d/d/a/fr;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/fr;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/fr;

    move-result-object v0

    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/fr;->a(Lcom/keniu/security/sync/d/d/a/fr;)Lcom/keniu/security/sync/d/d/a/fq;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/io/InputStream;)Lcom/keniu/security/sync/d/d/a/fq;
    .locals 1
    .parameter

    .prologue
    .line 36632
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/fr;->i()Lcom/keniu/security/sync/d/d/a/fr;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/fr;->a(Ljava/io/InputStream;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/fr;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/fr;->a(Lcom/keniu/security/sync/d/d/a/fr;)Lcom/keniu/security/sync/d/d/a/fq;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/fq;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 36638
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/fr;->i()Lcom/keniu/security/sync/d/d/a/fr;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/fr;->a(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/fr;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/fr;->a(Lcom/keniu/security/sync/d/d/a/fr;)Lcom/keniu/security/sync/d/d/a/fq;

    move-result-object v0

    return-object v0
.end method

.method private static a([B)Lcom/keniu/security/sync/d/d/a/fq;
    .locals 1
    .parameter

    .prologue
    .line 36621
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/fr;->i()Lcom/keniu/security/sync/d/d/a/fr;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/fr;->a([B)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/fr;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/fr;->a(Lcom/keniu/security/sync/d/d/a/fr;)Lcom/keniu/security/sync/d/d/a/fq;

    move-result-object v0

    return-object v0
.end method

.method private static a([BLcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/fq;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 36627
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/fr;->i()Lcom/keniu/security/sync/d/d/a/fr;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/fr;->a([BLcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/fr;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/fr;->a(Lcom/keniu/security/sync/d/d/a/fr;)Lcom/keniu/security/sync/d/d/a/fq;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/keniu/security/sync/d/d/a/fq;)Lcom/keniu/security/sync/d/d/a/fr;
    .locals 1
    .parameter

    .prologue
    .line 36677
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/fr;->i()Lcom/keniu/security/sync/d/d/a/fr;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/fr;->a(Lcom/keniu/security/sync/d/d/a/fq;)Lcom/keniu/security/sync/d/d/a/fr;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/fq;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 36415
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/fq;->f:Ljava/lang/Object;

    return-object p1
.end method

.method private static b(Ljava/io/InputStream;)Lcom/keniu/security/sync/d/d/a/fq;
    .locals 2
    .parameter

    .prologue
    .line 36643
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/fr;->i()Lcom/keniu/security/sync/d/d/a/fr;

    move-result-object v0

    .line 36644
    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/fr;->b(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 36645
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/fr;->a(Lcom/keniu/security/sync/d/d/a/fr;)Lcom/keniu/security/sync/d/d/a/fq;

    move-result-object v0

    .line 36647
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/fq;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 36654
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/fr;->i()Lcom/keniu/security/sync/d/d/a/fr;

    move-result-object v0

    .line 36655
    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/fr;->b(Ljava/io/InputStream;Lcom/b/a/df;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 36656
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/fr;->a(Lcom/keniu/security/sync/d/d/a/fr;)Lcom/keniu/security/sync/d/d/a/fq;

    move-result-object v0

    .line 36658
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Lcom/b/a/dp;)Lcom/keniu/security/sync/d/d/a/fr;
    .locals 1
    .parameter

    .prologue
    .line 36684
    new-instance v0, Lcom/keniu/security/sync/d/d/a/fr;

    invoke-direct {v0, p0}, Lcom/keniu/security/sync/d/d/a/fr;-><init>(Lcom/b/a/dp;)V

    .line 36685
    return-object v0
.end method

.method static synthetic b(Lcom/keniu/security/sync/d/d/a/fq;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 36415
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/fq;->g:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic c(Lcom/keniu/security/sync/d/d/a/fq;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 36415
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/fq;->h:Ljava/lang/Object;

    return-object p1
.end method

.method public static h()Lcom/keniu/security/sync/d/d/a/fq;
    .locals 1

    .prologue
    .line 36426
    sget-object v0, Lcom/keniu/security/sync/d/d/a/fq;->d:Lcom/keniu/security/sync/d/d/a/fq;

    return-object v0
.end method

.method public static final i()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 36435
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/a;->bj()Lcom/b/a/cj;

    move-result-object v0

    return-object v0
.end method

.method static synthetic p()Z
    .locals 1

    .prologue
    .line 36415
    sget-boolean v0, Lcom/keniu/security/sync/d/d/a/fq;->j:Z

    return v0
.end method

.method private static q()Lcom/keniu/security/sync/d/d/a/fq;
    .locals 1

    .prologue
    .line 36430
    sget-object v0, Lcom/keniu/security/sync/d/d/a/fq;->d:Lcom/keniu/security/sync/d/d/a/fq;

    return-object v0
.end method

.method private r()Lcom/b/a/i;
    .locals 2

    .prologue
    .line 36465
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/fq;->f:Ljava/lang/Object;

    .line 36466
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 36467
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/b/a/i;->a(Ljava/lang/String;)Lcom/b/a/i;

    move-result-object v0

    .line 36469
    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/fq;->f:Ljava/lang/Object;

    .line 36472
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/b/a/i;

    goto :goto_0
.end method

.method private s()Lcom/b/a/i;
    .locals 2

    .prologue
    .line 36497
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/fq;->g:Ljava/lang/Object;

    .line 36498
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 36499
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/b/a/i;->a(Ljava/lang/String;)Lcom/b/a/i;

    move-result-object v0

    .line 36501
    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/fq;->g:Ljava/lang/Object;

    .line 36504
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/b/a/i;

    goto :goto_0
.end method

.method private t()Lcom/b/a/i;
    .locals 2

    .prologue
    .line 36529
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/fq;->h:Ljava/lang/Object;

    .line 36530
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 36531
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/b/a/i;->a(Ljava/lang/String;)Lcom/b/a/i;

    move-result-object v0

    .line 36533
    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/fq;->h:Ljava/lang/Object;

    .line 36536
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/b/a/i;

    goto :goto_0
.end method

.method private u()V
    .locals 1

    .prologue
    .line 36541
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/fq;->f:Ljava/lang/Object;

    .line 36542
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/fq;->g:Ljava/lang/Object;

    .line 36543
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/fq;->h:Ljava/lang/Object;

    .line 36544
    return-void
.end method

.method private static v()Lcom/keniu/security/sync/d/d/a/fr;
    .locals 1

    .prologue
    .line 36674
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/fr;->i()Lcom/keniu/security/sync/d/d/a/fr;

    move-result-object v0

    return-object v0
.end method

.method private static w()Lcom/keniu/security/sync/d/d/a/fr;
    .locals 1

    .prologue
    .line 36675
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/fr;->i()Lcom/keniu/security/sync/d/d/a/fr;

    move-result-object v0

    return-object v0
.end method

.method private x()Lcom/keniu/security/sync/d/d/a/fr;
    .locals 1

    .prologue
    .line 36679
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/fr;->i()Lcom/keniu/security/sync/d/d/a/fr;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/fr;->a(Lcom/keniu/security/sync/d/d/a/fq;)Lcom/keniu/security/sync/d/d/a/fr;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final B()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 36604
    invoke-super {p0}, Lcom/b/a/dk;->B()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic D()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 36415
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/fq;->x()Lcom/keniu/security/sync/d/d/a/fr;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic E()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 36415
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/fr;->i()Lcom/keniu/security/sync/d/d/a/fr;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic F()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 36415
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/fq;->x()Lcom/keniu/security/sync/d/d/a/fr;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic G()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 36415
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/fr;->i()Lcom/keniu/security/sync/d/d/a/fr;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic H()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 36415
    sget-object v0, Lcom/keniu/security/sync/d/d/a/fq;->d:Lcom/keniu/security/sync/d/d/a/fq;

    return-object v0
.end method

.method public final bridge synthetic I()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 36415
    sget-object v0, Lcom/keniu/security/sync/d/d/a/fq;->d:Lcom/keniu/security/sync/d/d/a/fq;

    return-object v0
.end method

.method protected final synthetic a(Lcom/b/a/dp;)Lcom/b/a/ew;
    .locals 1
    .parameter

    .prologue
    .line 36415
    new-instance v0, Lcom/keniu/security/sync/d/d/a/fr;

    invoke-direct {v0, p1}, Lcom/keniu/security/sync/d/d/a/fr;-><init>(Lcom/b/a/dp;)V

    return-object v0
.end method

.method public final a(Lcom/b/a/n;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 36564
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/fq;->b()I

    .line 36565
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/fq;->e:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 36566
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/fq;->r()Lcom/b/a/i;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/b/a/n;->a(ILcom/b/a/i;)V

    .line 36568
    :cond_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/fq;->e:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 36569
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/fq;->s()Lcom/b/a/i;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/b/a/n;->a(ILcom/b/a/i;)V

    .line 36571
    :cond_1
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/fq;->e:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 36572
    const/4 v0, 0x3

    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/fq;->t()Lcom/b/a/i;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/b/a/n;->a(ILcom/b/a/i;)V

    .line 36574
    :cond_2
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/fq;->b_()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/b/a/gg;->a(Lcom/b/a/n;)V

    .line 36575
    return-void
.end method

.method public final a()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 36547
    iget-byte v0, p0, Lcom/keniu/security/sync/d/d/a/fq;->i:B

    .line 36548
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-ne v0, v3, :cond_0

    move v0, v3

    .line 36559
    :goto_0
    return v0

    :cond_0
    move v0, v2

    .line 36548
    goto :goto_0

    .line 36550
    :cond_1
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/fq;->j()Z

    move-result v0

    if-nez v0, :cond_2

    .line 36551
    iput-byte v2, p0, Lcom/keniu/security/sync/d/d/a/fq;->i:B

    move v0, v2

    .line 36552
    goto :goto_0

    .line 36554
    :cond_2
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/fq;->l()Z

    move-result v0

    if-nez v0, :cond_3

    .line 36555
    iput-byte v2, p0, Lcom/keniu/security/sync/d/d/a/fq;->i:B

    move v0, v2

    .line 36556
    goto :goto_0

    .line 36558
    :cond_3
    iput-byte v3, p0, Lcom/keniu/security/sync/d/d/a/fq;->i:B

    move v0, v3

    .line 36559
    goto :goto_0
.end method

.method public final b()I
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 36579
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/fq;->k:I

    .line 36580
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 36597
    :goto_0
    return v0

    .line 36582
    :cond_0
    const/4 v0, 0x0

    .line 36583
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/fq;->e:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_1

    .line 36584
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/fq;->r()Lcom/b/a/i;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/b/a/n;->c(ILcom/b/a/i;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 36587
    :cond_1
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/fq;->e:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_2

    .line 36588
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/fq;->s()Lcom/b/a/i;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/b/a/n;->c(ILcom/b/a/i;)I

    move-result v1

    add-int/2addr v0, v1

    .line 36591
    :cond_2
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/fq;->e:I

    and-int/lit8 v1, v1, 0x4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    .line 36592
    const/4 v1, 0x3

    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/fq;->t()Lcom/b/a/i;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/b/a/n;->c(ILcom/b/a/i;)I

    move-result v1

    add-int/2addr v0, v1

    .line 36595
    :cond_3
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/fq;->b_()Lcom/b/a/gg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/b/a/gg;->b()I

    move-result v1

    add-int/2addr v0, v1

    .line 36596
    iput v0, p0, Lcom/keniu/security/sync/d/d/a/fq;->k:I

    goto :goto_0
.end method

.method protected final g()Lcom/b/a/dv;
    .locals 1

    .prologue
    .line 36440
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/a;->bk()Lcom/b/a/dv;

    move-result-object v0

    return-object v0
.end method

.method public final j()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 36448
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/fq;->e:I

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
    .line 36451
    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/fq;->f:Ljava/lang/Object;

    .line 36452
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 36453
    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object p0, v0

    move-object v1, p0

    .line 36461
    :goto_0
    return-object v1

    .line 36455
    :cond_0
    check-cast v1, Lcom/b/a/i;

    .line 36457
    invoke-virtual {v1}, Lcom/b/a/i;->b()Ljava/lang/String;

    move-result-object v2

    .line 36458
    invoke-static {v1}, Lcom/b/a/ep;->a(Lcom/b/a/i;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 36459
    iput-object v2, p0, Lcom/keniu/security/sync/d/d/a/fq;->f:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 36461
    goto :goto_0
.end method

.method public final l()Z
    .locals 2

    .prologue
    .line 36480
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/fq;->e:I

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
    .line 36483
    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/fq;->g:Ljava/lang/Object;

    .line 36484
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 36485
    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object p0, v0

    move-object v1, p0

    .line 36493
    :goto_0
    return-object v1

    .line 36487
    :cond_0
    check-cast v1, Lcom/b/a/i;

    .line 36489
    invoke-virtual {v1}, Lcom/b/a/i;->b()Ljava/lang/String;

    move-result-object v2

    .line 36490
    invoke-static {v1}, Lcom/b/a/ep;->a(Lcom/b/a/i;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 36491
    iput-object v2, p0, Lcom/keniu/security/sync/d/d/a/fq;->g:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 36493
    goto :goto_0
.end method

.method public final n()Z
    .locals 2

    .prologue
    .line 36512
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/fq;->e:I

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
    .line 36515
    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/fq;->h:Ljava/lang/Object;

    .line 36516
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 36517
    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object p0, v0

    move-object v1, p0

    .line 36525
    :goto_0
    return-object v1

    .line 36519
    :cond_0
    check-cast v1, Lcom/b/a/i;

    .line 36521
    invoke-virtual {v1}, Lcom/b/a/i;->b()Ljava/lang/String;

    move-result-object v2

    .line 36522
    invoke-static {v1}, Lcom/b/a/ep;->a(Lcom/b/a/i;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 36523
    iput-object v2, p0, Lcom/keniu/security/sync/d/d/a/fq;->h:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 36525
    goto :goto_0
.end method
