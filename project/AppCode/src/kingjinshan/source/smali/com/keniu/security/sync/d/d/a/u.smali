.class public final Lcom/keniu/security/sync/d/d/a/u;
.super Lcom/b/a/dk;
.source "Appsvr.java"

# interfaces
.implements Lcom/keniu/security/sync/d/d/a/w;


# static fields
.field public static final a:I = 0x1

.field public static final b:I = 0x2

.field public static final c:I = 0x3

.field public static final d:I = 0x4

.field public static final e:I = 0x5

.field private static final f:Lcom/keniu/security/sync/d/d/a/u;

.field private static final p:J


# instance fields
.field private g:I

.field private h:Ljava/lang/Object;

.field private i:Ljava/lang/Object;

.field private k:Ljava/lang/Object;

.field private l:I

.field private m:I

.field private n:B

.field private o:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 8291
    new-instance v0, Lcom/keniu/security/sync/d/d/a/u;

    invoke-direct {v0}, Lcom/keniu/security/sync/d/d/a/u;-><init>()V

    .line 8292
    sput-object v0, Lcom/keniu/security/sync/d/d/a/u;->f:Lcom/keniu/security/sync/d/d/a/u;

    const-string v1, ""

    iput-object v1, v0, Lcom/keniu/security/sync/d/d/a/u;->h:Ljava/lang/Object;

    const-string v1, ""

    iput-object v1, v0, Lcom/keniu/security/sync/d/d/a/u;->i:Ljava/lang/Object;

    const-string v1, ""

    iput-object v1, v0, Lcom/keniu/security/sync/d/d/a/u;->k:Ljava/lang/Object;

    iput v2, v0, Lcom/keniu/security/sync/d/d/a/u;->l:I

    iput v2, v0, Lcom/keniu/security/sync/d/d/a/u;->m:I

    .line 8293
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 7619
    invoke-direct {p0}, Lcom/b/a/dk;-><init>()V

    .line 7764
    iput-byte v0, p0, Lcom/keniu/security/sync/d/d/a/u;->n:B

    .line 7810
    iput v0, p0, Lcom/keniu/security/sync/d/d/a/u;->o:I

    .line 7619
    return-void
.end method

.method synthetic constructor <init>(Lcom/keniu/security/sync/d/d/a/v;)V
    .locals 1
    .parameter

    .prologue
    .line 7612
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/keniu/security/sync/d/d/a/u;-><init>(Lcom/keniu/security/sync/d/d/a/v;B)V

    return-void
.end method

.method private constructor <init>(Lcom/keniu/security/sync/d/d/a/v;B)V
    .locals 1
    .parameter
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 7617
    invoke-direct {p0, p1}, Lcom/b/a/dk;-><init>(Lcom/b/a/dn;)V

    .line 7764
    iput-byte v0, p0, Lcom/keniu/security/sync/d/d/a/u;->n:B

    .line 7810
    iput v0, p0, Lcom/keniu/security/sync/d/d/a/u;->o:I

    .line 7618
    return-void
.end method

.method private static A()Lcom/keniu/security/sync/d/d/a/v;
    .locals 1

    .prologue
    .line 7916
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/v;->i()Lcom/keniu/security/sync/d/d/a/v;

    move-result-object v0

    return-object v0
.end method

.method private J()Lcom/keniu/security/sync/d/d/a/v;
    .locals 1

    .prologue
    .line 7920
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/v;->i()Lcom/keniu/security/sync/d/d/a/v;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/v;->a(Lcom/keniu/security/sync/d/d/a/u;)Lcom/keniu/security/sync/d/d/a/v;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/u;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 7612
    iput p1, p0, Lcom/keniu/security/sync/d/d/a/u;->l:I

    return p1
.end method

.method private static a(Lcom/b/a/i;)Lcom/keniu/security/sync/d/d/a/u;
    .locals 1
    .parameter

    .prologue
    .line 7851
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/v;->i()Lcom/keniu/security/sync/d/d/a/v;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/v;->a(Lcom/b/a/i;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/v;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/v;->a(Lcom/keniu/security/sync/d/d/a/v;)Lcom/keniu/security/sync/d/d/a/u;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/i;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/u;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 7857
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/v;->i()Lcom/keniu/security/sync/d/d/a/v;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/v;->a(Lcom/b/a/i;Lcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/v;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/v;->a(Lcom/keniu/security/sync/d/d/a/v;)Lcom/keniu/security/sync/d/d/a/u;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/m;)Lcom/keniu/security/sync/d/d/a/u;
    .locals 1
    .parameter

    .prologue
    .line 7905
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/v;->i()Lcom/keniu/security/sync/d/d/a/v;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/v;->a(Lcom/b/a/m;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/v;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/v;->a(Lcom/keniu/security/sync/d/d/a/v;)Lcom/keniu/security/sync/d/d/a/u;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/u;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 7911
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/v;->i()Lcom/keniu/security/sync/d/d/a/v;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/v;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/v;

    move-result-object v0

    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/v;->a(Lcom/keniu/security/sync/d/d/a/v;)Lcom/keniu/security/sync/d/d/a/u;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/io/InputStream;)Lcom/keniu/security/sync/d/d/a/u;
    .locals 1
    .parameter

    .prologue
    .line 7873
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/v;->i()Lcom/keniu/security/sync/d/d/a/v;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/v;->a(Ljava/io/InputStream;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/v;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/v;->a(Lcom/keniu/security/sync/d/d/a/v;)Lcom/keniu/security/sync/d/d/a/u;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/u;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 7879
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/v;->i()Lcom/keniu/security/sync/d/d/a/v;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/v;->a(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/v;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/v;->a(Lcom/keniu/security/sync/d/d/a/v;)Lcom/keniu/security/sync/d/d/a/u;

    move-result-object v0

    return-object v0
.end method

.method private static a([B)Lcom/keniu/security/sync/d/d/a/u;
    .locals 1
    .parameter

    .prologue
    .line 7862
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/v;->i()Lcom/keniu/security/sync/d/d/a/v;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/v;->a([B)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/v;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/v;->a(Lcom/keniu/security/sync/d/d/a/v;)Lcom/keniu/security/sync/d/d/a/u;

    move-result-object v0

    return-object v0
.end method

.method private static a([BLcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/u;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 7868
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/v;->i()Lcom/keniu/security/sync/d/d/a/v;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/v;->a([BLcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/v;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/v;->a(Lcom/keniu/security/sync/d/d/a/v;)Lcom/keniu/security/sync/d/d/a/u;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/keniu/security/sync/d/d/a/u;)Lcom/keniu/security/sync/d/d/a/v;
    .locals 1
    .parameter

    .prologue
    .line 7918
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/v;->i()Lcom/keniu/security/sync/d/d/a/v;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/v;->a(Lcom/keniu/security/sync/d/d/a/u;)Lcom/keniu/security/sync/d/d/a/v;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/u;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 7612
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/u;->h:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic b(Lcom/keniu/security/sync/d/d/a/u;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 7612
    iput p1, p0, Lcom/keniu/security/sync/d/d/a/u;->m:I

    return p1
.end method

.method private static b(Ljava/io/InputStream;)Lcom/keniu/security/sync/d/d/a/u;
    .locals 2
    .parameter

    .prologue
    .line 7884
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/v;->i()Lcom/keniu/security/sync/d/d/a/v;

    move-result-object v0

    .line 7885
    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/v;->b(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7886
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/v;->a(Lcom/keniu/security/sync/d/d/a/v;)Lcom/keniu/security/sync/d/d/a/u;

    move-result-object v0

    .line 7888
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/u;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 7895
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/v;->i()Lcom/keniu/security/sync/d/d/a/v;

    move-result-object v0

    .line 7896
    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/v;->b(Ljava/io/InputStream;Lcom/b/a/df;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7897
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/v;->a(Lcom/keniu/security/sync/d/d/a/v;)Lcom/keniu/security/sync/d/d/a/u;

    move-result-object v0

    .line 7899
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Lcom/b/a/dp;)Lcom/keniu/security/sync/d/d/a/v;
    .locals 1
    .parameter

    .prologue
    .line 7925
    new-instance v0, Lcom/keniu/security/sync/d/d/a/v;

    invoke-direct {v0, p0}, Lcom/keniu/security/sync/d/d/a/v;-><init>(Lcom/b/a/dp;)V

    .line 7926
    return-object v0
.end method

.method static synthetic b(Lcom/keniu/security/sync/d/d/a/u;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 7612
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/u;->i:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic c(Lcom/keniu/security/sync/d/d/a/u;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 7612
    iput p1, p0, Lcom/keniu/security/sync/d/d/a/u;->g:I

    return p1
.end method

.method static synthetic c(Lcom/keniu/security/sync/d/d/a/u;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 7612
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/u;->k:Ljava/lang/Object;

    return-object p1
.end method

.method public static h()Lcom/keniu/security/sync/d/d/a/u;
    .locals 1

    .prologue
    .line 7623
    sget-object v0, Lcom/keniu/security/sync/d/d/a/u;->f:Lcom/keniu/security/sync/d/d/a/u;

    return-object v0
.end method

.method public static final i()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 7632
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/a;->z()Lcom/b/a/cj;

    move-result-object v0

    return-object v0
.end method

.method static synthetic t()Z
    .locals 1

    .prologue
    .line 7612
    sget-boolean v0, Lcom/keniu/security/sync/d/d/a/u;->j:Z

    return v0
.end method

.method private static u()Lcom/keniu/security/sync/d/d/a/u;
    .locals 1

    .prologue
    .line 7627
    sget-object v0, Lcom/keniu/security/sync/d/d/a/u;->f:Lcom/keniu/security/sync/d/d/a/u;

    return-object v0
.end method

.method private v()Lcom/b/a/i;
    .locals 2

    .prologue
    .line 7662
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/u;->h:Ljava/lang/Object;

    .line 7663
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 7664
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/b/a/i;->a(Ljava/lang/String;)Lcom/b/a/i;

    move-result-object v0

    .line 7666
    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/u;->h:Ljava/lang/Object;

    .line 7669
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/b/a/i;

    goto :goto_0
.end method

.method private w()Lcom/b/a/i;
    .locals 2

    .prologue
    .line 7694
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/u;->i:Ljava/lang/Object;

    .line 7695
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 7696
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/b/a/i;->a(Ljava/lang/String;)Lcom/b/a/i;

    move-result-object v0

    .line 7698
    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/u;->i:Ljava/lang/Object;

    .line 7701
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/b/a/i;

    goto :goto_0
.end method

.method private x()Lcom/b/a/i;
    .locals 2

    .prologue
    .line 7726
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/u;->k:Ljava/lang/Object;

    .line 7727
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 7728
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/b/a/i;->a(Ljava/lang/String;)Lcom/b/a/i;

    move-result-object v0

    .line 7730
    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/u;->k:Ljava/lang/Object;

    .line 7733
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/b/a/i;

    goto :goto_0
.end method

.method private y()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 7758
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/u;->h:Ljava/lang/Object;

    .line 7759
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/u;->i:Ljava/lang/Object;

    .line 7760
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/u;->k:Ljava/lang/Object;

    .line 7761
    iput v1, p0, Lcom/keniu/security/sync/d/d/a/u;->l:I

    .line 7762
    iput v1, p0, Lcom/keniu/security/sync/d/d/a/u;->m:I

    .line 7763
    return-void
.end method

.method private static z()Lcom/keniu/security/sync/d/d/a/v;
    .locals 1

    .prologue
    .line 7915
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/v;->i()Lcom/keniu/security/sync/d/d/a/v;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final B()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 7845
    invoke-super {p0}, Lcom/b/a/dk;->B()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic D()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 7612
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/u;->J()Lcom/keniu/security/sync/d/d/a/v;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic E()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 7612
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/v;->i()Lcom/keniu/security/sync/d/d/a/v;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic F()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 7612
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/u;->J()Lcom/keniu/security/sync/d/d/a/v;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic G()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 7612
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/v;->i()Lcom/keniu/security/sync/d/d/a/v;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic H()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 7612
    sget-object v0, Lcom/keniu/security/sync/d/d/a/u;->f:Lcom/keniu/security/sync/d/d/a/u;

    return-object v0
.end method

.method public final bridge synthetic I()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 7612
    sget-object v0, Lcom/keniu/security/sync/d/d/a/u;->f:Lcom/keniu/security/sync/d/d/a/u;

    return-object v0
.end method

.method protected final synthetic a(Lcom/b/a/dp;)Lcom/b/a/ew;
    .locals 1
    .parameter

    .prologue
    .line 7612
    new-instance v0, Lcom/keniu/security/sync/d/d/a/v;

    invoke-direct {v0, p1}, Lcom/keniu/security/sync/d/d/a/v;-><init>(Lcom/b/a/dp;)V

    return-object v0
.end method

.method public final a(Lcom/b/a/n;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 7791
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/u;->b()I

    .line 7792
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/u;->g:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 7793
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/u;->v()Lcom/b/a/i;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/b/a/n;->a(ILcom/b/a/i;)V

    .line 7795
    :cond_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/u;->g:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 7796
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/u;->w()Lcom/b/a/i;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/b/a/n;->a(ILcom/b/a/i;)V

    .line 7798
    :cond_1
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/u;->g:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_2

    .line 7799
    const/4 v0, 0x3

    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/u;->x()Lcom/b/a/i;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/b/a/n;->a(ILcom/b/a/i;)V

    .line 7801
    :cond_2
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/u;->g:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3

    .line 7802
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/u;->l:I

    invoke-virtual {p1, v3, v0}, Lcom/b/a/n;->a(II)V

    .line 7804
    :cond_3
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/u;->g:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_4

    .line 7805
    const/4 v0, 0x5

    iget v1, p0, Lcom/keniu/security/sync/d/d/a/u;->m:I

    invoke-virtual {p1, v0, v1}, Lcom/b/a/n;->a(II)V

    .line 7807
    :cond_4
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/u;->b_()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/b/a/gg;->a(Lcom/b/a/n;)V

    .line 7808
    return-void
.end method

.method public final a()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 7766
    iget-byte v0, p0, Lcom/keniu/security/sync/d/d/a/u;->n:B

    .line 7767
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-ne v0, v3, :cond_0

    move v0, v3

    .line 7786
    :goto_0
    return v0

    :cond_0
    move v0, v2

    .line 7767
    goto :goto_0

    .line 7769
    :cond_1
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/u;->j()Z

    move-result v0

    if-nez v0, :cond_2

    .line 7770
    iput-byte v2, p0, Lcom/keniu/security/sync/d/d/a/u;->n:B

    move v0, v2

    .line 7771
    goto :goto_0

    .line 7773
    :cond_2
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/u;->l()Z

    move-result v0

    if-nez v0, :cond_3

    .line 7774
    iput-byte v2, p0, Lcom/keniu/security/sync/d/d/a/u;->n:B

    move v0, v2

    .line 7775
    goto :goto_0

    .line 7777
    :cond_3
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/u;->n()Z

    move-result v0

    if-nez v0, :cond_4

    .line 7778
    iput-byte v2, p0, Lcom/keniu/security/sync/d/d/a/u;->n:B

    move v0, v2

    .line 7779
    goto :goto_0

    .line 7781
    :cond_4
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/u;->p()Z

    move-result v0

    if-nez v0, :cond_5

    .line 7782
    iput-byte v2, p0, Lcom/keniu/security/sync/d/d/a/u;->n:B

    move v0, v2

    .line 7783
    goto :goto_0

    .line 7785
    :cond_5
    iput-byte v3, p0, Lcom/keniu/security/sync/d/d/a/u;->n:B

    move v0, v3

    .line 7786
    goto :goto_0
.end method

.method public final b()I
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 7812
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/u;->o:I

    .line 7813
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 7838
    :goto_0
    return v0

    .line 7815
    :cond_0
    const/4 v0, 0x0

    .line 7816
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/u;->g:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_1

    .line 7817
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/u;->v()Lcom/b/a/i;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/b/a/n;->c(ILcom/b/a/i;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 7820
    :cond_1
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/u;->g:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_2

    .line 7821
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/u;->w()Lcom/b/a/i;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/b/a/n;->c(ILcom/b/a/i;)I

    move-result v1

    add-int/2addr v0, v1

    .line 7824
    :cond_2
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/u;->g:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v4, :cond_3

    .line 7825
    const/4 v1, 0x3

    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/u;->x()Lcom/b/a/i;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/b/a/n;->c(ILcom/b/a/i;)I

    move-result v1

    add-int/2addr v0, v1

    .line 7828
    :cond_3
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/u;->g:I

    and-int/lit8 v1, v1, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_4

    .line 7829
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/u;->l:I

    invoke-static {v4, v1}, Lcom/b/a/n;->d(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 7832
    :cond_4
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/u;->g:I

    and-int/lit8 v1, v1, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_5

    .line 7833
    const/4 v1, 0x5

    iget v2, p0, Lcom/keniu/security/sync/d/d/a/u;->m:I

    invoke-static {v1, v2}, Lcom/b/a/n;->d(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 7836
    :cond_5
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/u;->b_()Lcom/b/a/gg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/b/a/gg;->b()I

    move-result v1

    add-int/2addr v0, v1

    .line 7837
    iput v0, p0, Lcom/keniu/security/sync/d/d/a/u;->o:I

    goto :goto_0
.end method

.method protected final g()Lcom/b/a/dv;
    .locals 1

    .prologue
    .line 7637
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/a;->A()Lcom/b/a/dv;

    move-result-object v0

    return-object v0
.end method

.method public final j()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 7645
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/u;->g:I

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
    .line 7648
    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/u;->h:Ljava/lang/Object;

    .line 7649
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 7650
    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object p0, v0

    move-object v1, p0

    .line 7658
    :goto_0
    return-object v1

    .line 7652
    :cond_0
    check-cast v1, Lcom/b/a/i;

    .line 7654
    invoke-virtual {v1}, Lcom/b/a/i;->b()Ljava/lang/String;

    move-result-object v2

    .line 7655
    invoke-static {v1}, Lcom/b/a/ep;->a(Lcom/b/a/i;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7656
    iput-object v2, p0, Lcom/keniu/security/sync/d/d/a/u;->h:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 7658
    goto :goto_0
.end method

.method public final l()Z
    .locals 2

    .prologue
    .line 7677
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/u;->g:I

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
    .line 7680
    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/u;->i:Ljava/lang/Object;

    .line 7681
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 7682
    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object p0, v0

    move-object v1, p0

    .line 7690
    :goto_0
    return-object v1

    .line 7684
    :cond_0
    check-cast v1, Lcom/b/a/i;

    .line 7686
    invoke-virtual {v1}, Lcom/b/a/i;->b()Ljava/lang/String;

    move-result-object v2

    .line 7687
    invoke-static {v1}, Lcom/b/a/ep;->a(Lcom/b/a/i;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7688
    iput-object v2, p0, Lcom/keniu/security/sync/d/d/a/u;->i:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 7690
    goto :goto_0
.end method

.method public final n()Z
    .locals 2

    .prologue
    .line 7709
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/u;->g:I

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
    .line 7712
    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/u;->k:Ljava/lang/Object;

    .line 7713
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 7714
    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object p0, v0

    move-object v1, p0

    .line 7722
    :goto_0
    return-object v1

    .line 7716
    :cond_0
    check-cast v1, Lcom/b/a/i;

    .line 7718
    invoke-virtual {v1}, Lcom/b/a/i;->b()Ljava/lang/String;

    move-result-object v2

    .line 7719
    invoke-static {v1}, Lcom/b/a/ep;->a(Lcom/b/a/i;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7720
    iput-object v2, p0, Lcom/keniu/security/sync/d/d/a/u;->k:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 7722
    goto :goto_0
.end method

.method public final p()Z
    .locals 2

    .prologue
    .line 7741
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/u;->g:I

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
    .line 7744
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/u;->l:I

    return v0
.end method

.method public final r()Z
    .locals 2

    .prologue
    .line 7751
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/u;->g:I

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
    .line 7754
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/u;->m:I

    return v0
.end method
