.class public final Lcom/keniu/security/sync/d/d/a/ea;
.super Lcom/b/a/dk;
.source "Appsvr.java"

# interfaces
.implements Lcom/keniu/security/sync/d/d/a/ec;


# static fields
.field public static final a:I = 0x1

.field public static final b:I = 0x2

.field public static final c:I = 0x3

.field private static final d:Lcom/keniu/security/sync/d/d/a/ea;

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
    .line 30363
    new-instance v0, Lcom/keniu/security/sync/d/d/a/ea;

    invoke-direct {v0}, Lcom/keniu/security/sync/d/d/a/ea;-><init>()V

    .line 30364
    sput-object v0, Lcom/keniu/security/sync/d/d/a/ea;->d:Lcom/keniu/security/sync/d/d/a/ea;

    const-string v1, ""

    iput-object v1, v0, Lcom/keniu/security/sync/d/d/a/ea;->f:Ljava/lang/Object;

    const-string v1, ""

    iput-object v1, v0, Lcom/keniu/security/sync/d/d/a/ea;->g:Ljava/lang/Object;

    const-string v1, ""

    iput-object v1, v0, Lcom/keniu/security/sync/d/d/a/ea;->h:Ljava/lang/Object;

    .line 30365
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 29813
    invoke-direct {p0}, Lcom/b/a/dk;-><init>()V

    .line 29936
    iput-byte v0, p0, Lcom/keniu/security/sync/d/d/a/ea;->i:B

    .line 29968
    iput v0, p0, Lcom/keniu/security/sync/d/d/a/ea;->k:I

    .line 29813
    return-void
.end method

.method synthetic constructor <init>(Lcom/keniu/security/sync/d/d/a/eb;)V
    .locals 1
    .parameter

    .prologue
    .line 29806
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/keniu/security/sync/d/d/a/ea;-><init>(Lcom/keniu/security/sync/d/d/a/eb;B)V

    return-void
.end method

.method private constructor <init>(Lcom/keniu/security/sync/d/d/a/eb;B)V
    .locals 1
    .parameter
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 29811
    invoke-direct {p0, p1}, Lcom/b/a/dk;-><init>(Lcom/b/a/dn;)V

    .line 29936
    iput-byte v0, p0, Lcom/keniu/security/sync/d/d/a/ea;->i:B

    .line 29968
    iput v0, p0, Lcom/keniu/security/sync/d/d/a/ea;->k:I

    .line 29812
    return-void
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/ea;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 29806
    iput p1, p0, Lcom/keniu/security/sync/d/d/a/ea;->e:I

    return p1
.end method

.method private static a(Lcom/b/a/i;)Lcom/keniu/security/sync/d/d/a/ea;
    .locals 1
    .parameter

    .prologue
    .line 30001
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/eb;->i()Lcom/keniu/security/sync/d/d/a/eb;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/eb;->a(Lcom/b/a/i;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/eb;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/eb;->a(Lcom/keniu/security/sync/d/d/a/eb;)Lcom/keniu/security/sync/d/d/a/ea;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/i;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/ea;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 30007
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/eb;->i()Lcom/keniu/security/sync/d/d/a/eb;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/eb;->a(Lcom/b/a/i;Lcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/eb;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/eb;->a(Lcom/keniu/security/sync/d/d/a/eb;)Lcom/keniu/security/sync/d/d/a/ea;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/m;)Lcom/keniu/security/sync/d/d/a/ea;
    .locals 1
    .parameter

    .prologue
    .line 30055
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/eb;->i()Lcom/keniu/security/sync/d/d/a/eb;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/eb;->a(Lcom/b/a/m;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/eb;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/eb;->a(Lcom/keniu/security/sync/d/d/a/eb;)Lcom/keniu/security/sync/d/d/a/ea;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/ea;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 30061
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/eb;->i()Lcom/keniu/security/sync/d/d/a/eb;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/eb;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/eb;

    move-result-object v0

    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/eb;->a(Lcom/keniu/security/sync/d/d/a/eb;)Lcom/keniu/security/sync/d/d/a/ea;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/io/InputStream;)Lcom/keniu/security/sync/d/d/a/ea;
    .locals 1
    .parameter

    .prologue
    .line 30023
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/eb;->i()Lcom/keniu/security/sync/d/d/a/eb;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/eb;->a(Ljava/io/InputStream;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/eb;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/eb;->a(Lcom/keniu/security/sync/d/d/a/eb;)Lcom/keniu/security/sync/d/d/a/ea;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/ea;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 30029
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/eb;->i()Lcom/keniu/security/sync/d/d/a/eb;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/eb;->a(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/eb;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/eb;->a(Lcom/keniu/security/sync/d/d/a/eb;)Lcom/keniu/security/sync/d/d/a/ea;

    move-result-object v0

    return-object v0
.end method

.method private static a([B)Lcom/keniu/security/sync/d/d/a/ea;
    .locals 1
    .parameter

    .prologue
    .line 30012
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/eb;->i()Lcom/keniu/security/sync/d/d/a/eb;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/eb;->a([B)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/eb;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/eb;->a(Lcom/keniu/security/sync/d/d/a/eb;)Lcom/keniu/security/sync/d/d/a/ea;

    move-result-object v0

    return-object v0
.end method

.method private static a([BLcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/ea;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 30018
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/eb;->i()Lcom/keniu/security/sync/d/d/a/eb;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/eb;->a([BLcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/eb;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/eb;->a(Lcom/keniu/security/sync/d/d/a/eb;)Lcom/keniu/security/sync/d/d/a/ea;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/keniu/security/sync/d/d/a/ea;)Lcom/keniu/security/sync/d/d/a/eb;
    .locals 1
    .parameter

    .prologue
    .line 30068
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/eb;->i()Lcom/keniu/security/sync/d/d/a/eb;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/eb;->a(Lcom/keniu/security/sync/d/d/a/ea;)Lcom/keniu/security/sync/d/d/a/eb;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/ea;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 29806
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/ea;->f:Ljava/lang/Object;

    return-object p1
.end method

.method private static b(Ljava/io/InputStream;)Lcom/keniu/security/sync/d/d/a/ea;
    .locals 2
    .parameter

    .prologue
    .line 30034
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/eb;->i()Lcom/keniu/security/sync/d/d/a/eb;

    move-result-object v0

    .line 30035
    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/eb;->b(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 30036
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/eb;->a(Lcom/keniu/security/sync/d/d/a/eb;)Lcom/keniu/security/sync/d/d/a/ea;

    move-result-object v0

    .line 30038
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/ea;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 30045
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/eb;->i()Lcom/keniu/security/sync/d/d/a/eb;

    move-result-object v0

    .line 30046
    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/eb;->b(Ljava/io/InputStream;Lcom/b/a/df;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 30047
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/eb;->a(Lcom/keniu/security/sync/d/d/a/eb;)Lcom/keniu/security/sync/d/d/a/ea;

    move-result-object v0

    .line 30049
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Lcom/b/a/dp;)Lcom/keniu/security/sync/d/d/a/eb;
    .locals 1
    .parameter

    .prologue
    .line 30075
    new-instance v0, Lcom/keniu/security/sync/d/d/a/eb;

    invoke-direct {v0, p0}, Lcom/keniu/security/sync/d/d/a/eb;-><init>(Lcom/b/a/dp;)V

    .line 30076
    return-object v0
.end method

.method static synthetic b(Lcom/keniu/security/sync/d/d/a/ea;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 29806
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/ea;->g:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic c(Lcom/keniu/security/sync/d/d/a/ea;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 29806
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/ea;->h:Ljava/lang/Object;

    return-object p1
.end method

.method public static h()Lcom/keniu/security/sync/d/d/a/ea;
    .locals 1

    .prologue
    .line 29817
    sget-object v0, Lcom/keniu/security/sync/d/d/a/ea;->d:Lcom/keniu/security/sync/d/d/a/ea;

    return-object v0
.end method

.method public static final i()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 29826
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/a;->aL()Lcom/b/a/cj;

    move-result-object v0

    return-object v0
.end method

.method static synthetic p()Z
    .locals 1

    .prologue
    .line 29806
    sget-boolean v0, Lcom/keniu/security/sync/d/d/a/ea;->j:Z

    return v0
.end method

.method private static q()Lcom/keniu/security/sync/d/d/a/ea;
    .locals 1

    .prologue
    .line 29821
    sget-object v0, Lcom/keniu/security/sync/d/d/a/ea;->d:Lcom/keniu/security/sync/d/d/a/ea;

    return-object v0
.end method

.method private r()Lcom/b/a/i;
    .locals 2

    .prologue
    .line 29856
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ea;->f:Ljava/lang/Object;

    .line 29857
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 29858
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/b/a/i;->a(Ljava/lang/String;)Lcom/b/a/i;

    move-result-object v0

    .line 29860
    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ea;->f:Ljava/lang/Object;

    .line 29863
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/b/a/i;

    goto :goto_0
.end method

.method private s()Lcom/b/a/i;
    .locals 2

    .prologue
    .line 29888
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ea;->g:Ljava/lang/Object;

    .line 29889
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 29890
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/b/a/i;->a(Ljava/lang/String;)Lcom/b/a/i;

    move-result-object v0

    .line 29892
    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ea;->g:Ljava/lang/Object;

    .line 29895
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/b/a/i;

    goto :goto_0
.end method

.method private t()Lcom/b/a/i;
    .locals 2

    .prologue
    .line 29920
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ea;->h:Ljava/lang/Object;

    .line 29921
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 29922
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/b/a/i;->a(Ljava/lang/String;)Lcom/b/a/i;

    move-result-object v0

    .line 29924
    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ea;->h:Ljava/lang/Object;

    .line 29927
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/b/a/i;

    goto :goto_0
.end method

.method private u()V
    .locals 1

    .prologue
    .line 29932
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ea;->f:Ljava/lang/Object;

    .line 29933
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ea;->g:Ljava/lang/Object;

    .line 29934
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ea;->h:Ljava/lang/Object;

    .line 29935
    return-void
.end method

.method private static v()Lcom/keniu/security/sync/d/d/a/eb;
    .locals 1

    .prologue
    .line 30065
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/eb;->i()Lcom/keniu/security/sync/d/d/a/eb;

    move-result-object v0

    return-object v0
.end method

.method private static w()Lcom/keniu/security/sync/d/d/a/eb;
    .locals 1

    .prologue
    .line 30066
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/eb;->i()Lcom/keniu/security/sync/d/d/a/eb;

    move-result-object v0

    return-object v0
.end method

.method private x()Lcom/keniu/security/sync/d/d/a/eb;
    .locals 1

    .prologue
    .line 30070
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/eb;->i()Lcom/keniu/security/sync/d/d/a/eb;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/eb;->a(Lcom/keniu/security/sync/d/d/a/ea;)Lcom/keniu/security/sync/d/d/a/eb;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final B()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 29995
    invoke-super {p0}, Lcom/b/a/dk;->B()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic D()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 29806
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ea;->x()Lcom/keniu/security/sync/d/d/a/eb;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic E()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 29806
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/eb;->i()Lcom/keniu/security/sync/d/d/a/eb;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic F()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 29806
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ea;->x()Lcom/keniu/security/sync/d/d/a/eb;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic G()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 29806
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/eb;->i()Lcom/keniu/security/sync/d/d/a/eb;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic H()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 29806
    sget-object v0, Lcom/keniu/security/sync/d/d/a/ea;->d:Lcom/keniu/security/sync/d/d/a/ea;

    return-object v0
.end method

.method public final bridge synthetic I()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 29806
    sget-object v0, Lcom/keniu/security/sync/d/d/a/ea;->d:Lcom/keniu/security/sync/d/d/a/ea;

    return-object v0
.end method

.method protected final synthetic a(Lcom/b/a/dp;)Lcom/b/a/ew;
    .locals 1
    .parameter

    .prologue
    .line 29806
    new-instance v0, Lcom/keniu/security/sync/d/d/a/eb;

    invoke-direct {v0, p1}, Lcom/keniu/security/sync/d/d/a/eb;-><init>(Lcom/b/a/dp;)V

    return-object v0
.end method

.method public final a(Lcom/b/a/n;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 29955
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ea;->b()I

    .line 29956
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ea;->e:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 29957
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ea;->r()Lcom/b/a/i;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/b/a/n;->a(ILcom/b/a/i;)V

    .line 29959
    :cond_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ea;->e:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 29960
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ea;->s()Lcom/b/a/i;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/b/a/n;->a(ILcom/b/a/i;)V

    .line 29962
    :cond_1
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ea;->e:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 29963
    const/4 v0, 0x3

    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ea;->t()Lcom/b/a/i;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/b/a/n;->a(ILcom/b/a/i;)V

    .line 29965
    :cond_2
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ea;->b_()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/b/a/gg;->a(Lcom/b/a/n;)V

    .line 29966
    return-void
.end method

.method public final a()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 29938
    iget-byte v0, p0, Lcom/keniu/security/sync/d/d/a/ea;->i:B

    .line 29939
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-ne v0, v3, :cond_0

    move v0, v3

    .line 29950
    :goto_0
    return v0

    :cond_0
    move v0, v2

    .line 29939
    goto :goto_0

    .line 29941
    :cond_1
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ea;->j()Z

    move-result v0

    if-nez v0, :cond_2

    .line 29942
    iput-byte v2, p0, Lcom/keniu/security/sync/d/d/a/ea;->i:B

    move v0, v2

    .line 29943
    goto :goto_0

    .line 29945
    :cond_2
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ea;->l()Z

    move-result v0

    if-nez v0, :cond_3

    .line 29946
    iput-byte v2, p0, Lcom/keniu/security/sync/d/d/a/ea;->i:B

    move v0, v2

    .line 29947
    goto :goto_0

    .line 29949
    :cond_3
    iput-byte v3, p0, Lcom/keniu/security/sync/d/d/a/ea;->i:B

    move v0, v3

    .line 29950
    goto :goto_0
.end method

.method public final b()I
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 29970
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ea;->k:I

    .line 29971
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 29988
    :goto_0
    return v0

    .line 29973
    :cond_0
    const/4 v0, 0x0

    .line 29974
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/ea;->e:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_1

    .line 29975
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ea;->r()Lcom/b/a/i;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/b/a/n;->c(ILcom/b/a/i;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 29978
    :cond_1
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/ea;->e:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_2

    .line 29979
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ea;->s()Lcom/b/a/i;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/b/a/n;->c(ILcom/b/a/i;)I

    move-result v1

    add-int/2addr v0, v1

    .line 29982
    :cond_2
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/ea;->e:I

    and-int/lit8 v1, v1, 0x4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    .line 29983
    const/4 v1, 0x3

    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ea;->t()Lcom/b/a/i;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/b/a/n;->c(ILcom/b/a/i;)I

    move-result v1

    add-int/2addr v0, v1

    .line 29986
    :cond_3
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ea;->b_()Lcom/b/a/gg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/b/a/gg;->b()I

    move-result v1

    add-int/2addr v0, v1

    .line 29987
    iput v0, p0, Lcom/keniu/security/sync/d/d/a/ea;->k:I

    goto :goto_0
.end method

.method protected final g()Lcom/b/a/dv;
    .locals 1

    .prologue
    .line 29831
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/a;->aM()Lcom/b/a/dv;

    move-result-object v0

    return-object v0
.end method

.method public final j()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 29839
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ea;->e:I

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
    .line 29842
    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/ea;->f:Ljava/lang/Object;

    .line 29843
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 29844
    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object p0, v0

    move-object v1, p0

    .line 29852
    :goto_0
    return-object v1

    .line 29846
    :cond_0
    check-cast v1, Lcom/b/a/i;

    .line 29848
    invoke-virtual {v1}, Lcom/b/a/i;->b()Ljava/lang/String;

    move-result-object v2

    .line 29849
    invoke-static {v1}, Lcom/b/a/ep;->a(Lcom/b/a/i;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 29850
    iput-object v2, p0, Lcom/keniu/security/sync/d/d/a/ea;->f:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 29852
    goto :goto_0
.end method

.method public final l()Z
    .locals 2

    .prologue
    .line 29871
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ea;->e:I

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
    .line 29874
    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/ea;->g:Ljava/lang/Object;

    .line 29875
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 29876
    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object p0, v0

    move-object v1, p0

    .line 29884
    :goto_0
    return-object v1

    .line 29878
    :cond_0
    check-cast v1, Lcom/b/a/i;

    .line 29880
    invoke-virtual {v1}, Lcom/b/a/i;->b()Ljava/lang/String;

    move-result-object v2

    .line 29881
    invoke-static {v1}, Lcom/b/a/ep;->a(Lcom/b/a/i;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 29882
    iput-object v2, p0, Lcom/keniu/security/sync/d/d/a/ea;->g:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 29884
    goto :goto_0
.end method

.method public final n()Z
    .locals 2

    .prologue
    .line 29903
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ea;->e:I

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
    .line 29906
    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/ea;->h:Ljava/lang/Object;

    .line 29907
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 29908
    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object p0, v0

    move-object v1, p0

    .line 29916
    :goto_0
    return-object v1

    .line 29910
    :cond_0
    check-cast v1, Lcom/b/a/i;

    .line 29912
    invoke-virtual {v1}, Lcom/b/a/i;->b()Ljava/lang/String;

    move-result-object v2

    .line 29913
    invoke-static {v1}, Lcom/b/a/ep;->a(Lcom/b/a/i;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 29914
    iput-object v2, p0, Lcom/keniu/security/sync/d/d/a/ea;->h:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 29916
    goto :goto_0
.end method
