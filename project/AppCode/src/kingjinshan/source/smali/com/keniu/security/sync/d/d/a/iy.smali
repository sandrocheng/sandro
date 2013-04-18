.class public final Lcom/keniu/security/sync/d/d/a/iy;
.super Lcom/b/a/dk;
.source "Loginsvr.java"

# interfaces
.implements Lcom/keniu/security/sync/d/d/a/ja;


# static fields
.field public static final a:I = 0x1

.field public static final b:I = 0x2

.field public static final c:I = 0x3

.field private static final d:Lcom/keniu/security/sync/d/d/a/iy;

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
    .line 7387
    new-instance v0, Lcom/keniu/security/sync/d/d/a/iy;

    invoke-direct {v0}, Lcom/keniu/security/sync/d/d/a/iy;-><init>()V

    .line 7388
    sput-object v0, Lcom/keniu/security/sync/d/d/a/iy;->d:Lcom/keniu/security/sync/d/d/a/iy;

    const-string v1, ""

    iput-object v1, v0, Lcom/keniu/security/sync/d/d/a/iy;->f:Ljava/lang/Object;

    const-string v1, ""

    iput-object v1, v0, Lcom/keniu/security/sync/d/d/a/iy;->g:Ljava/lang/Object;

    const-string v1, ""

    iput-object v1, v0, Lcom/keniu/security/sync/d/d/a/iy;->h:Ljava/lang/Object;

    .line 7389
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 6829
    invoke-direct {p0}, Lcom/b/a/dk;-><init>()V

    .line 6952
    iput-byte v0, p0, Lcom/keniu/security/sync/d/d/a/iy;->i:B

    .line 6988
    iput v0, p0, Lcom/keniu/security/sync/d/d/a/iy;->k:I

    .line 6829
    return-void
.end method

.method synthetic constructor <init>(Lcom/keniu/security/sync/d/d/a/iz;)V
    .locals 1
    .parameter

    .prologue
    .line 6822
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/keniu/security/sync/d/d/a/iy;-><init>(Lcom/keniu/security/sync/d/d/a/iz;B)V

    return-void
.end method

.method private constructor <init>(Lcom/keniu/security/sync/d/d/a/iz;B)V
    .locals 1
    .parameter
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 6827
    invoke-direct {p0, p1}, Lcom/b/a/dk;-><init>(Lcom/b/a/dn;)V

    .line 6952
    iput-byte v0, p0, Lcom/keniu/security/sync/d/d/a/iy;->i:B

    .line 6988
    iput v0, p0, Lcom/keniu/security/sync/d/d/a/iy;->k:I

    .line 6828
    return-void
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/iy;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 6822
    iput p1, p0, Lcom/keniu/security/sync/d/d/a/iy;->e:I

    return p1
.end method

.method private static a(Lcom/b/a/i;)Lcom/keniu/security/sync/d/d/a/iy;
    .locals 1
    .parameter

    .prologue
    .line 7021
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/iz;->i()Lcom/keniu/security/sync/d/d/a/iz;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/iz;->a(Lcom/b/a/i;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/iz;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/iz;->a(Lcom/keniu/security/sync/d/d/a/iz;)Lcom/keniu/security/sync/d/d/a/iy;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/i;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/iy;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 7027
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/iz;->i()Lcom/keniu/security/sync/d/d/a/iz;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/iz;->a(Lcom/b/a/i;Lcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/iz;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/iz;->a(Lcom/keniu/security/sync/d/d/a/iz;)Lcom/keniu/security/sync/d/d/a/iy;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/m;)Lcom/keniu/security/sync/d/d/a/iy;
    .locals 1
    .parameter

    .prologue
    .line 7075
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/iz;->i()Lcom/keniu/security/sync/d/d/a/iz;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/iz;->a(Lcom/b/a/m;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/iz;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/iz;->a(Lcom/keniu/security/sync/d/d/a/iz;)Lcom/keniu/security/sync/d/d/a/iy;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/iy;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 7081
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/iz;->i()Lcom/keniu/security/sync/d/d/a/iz;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/iz;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/iz;

    move-result-object v0

    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/iz;->a(Lcom/keniu/security/sync/d/d/a/iz;)Lcom/keniu/security/sync/d/d/a/iy;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/io/InputStream;)Lcom/keniu/security/sync/d/d/a/iy;
    .locals 1
    .parameter

    .prologue
    .line 7043
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/iz;->i()Lcom/keniu/security/sync/d/d/a/iz;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/iz;->a(Ljava/io/InputStream;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/iz;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/iz;->a(Lcom/keniu/security/sync/d/d/a/iz;)Lcom/keniu/security/sync/d/d/a/iy;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/iy;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 7049
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/iz;->i()Lcom/keniu/security/sync/d/d/a/iz;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/iz;->a(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/iz;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/iz;->a(Lcom/keniu/security/sync/d/d/a/iz;)Lcom/keniu/security/sync/d/d/a/iy;

    move-result-object v0

    return-object v0
.end method

.method private static a([B)Lcom/keniu/security/sync/d/d/a/iy;
    .locals 1
    .parameter

    .prologue
    .line 7032
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/iz;->i()Lcom/keniu/security/sync/d/d/a/iz;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/iz;->a([B)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/iz;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/iz;->a(Lcom/keniu/security/sync/d/d/a/iz;)Lcom/keniu/security/sync/d/d/a/iy;

    move-result-object v0

    return-object v0
.end method

.method private static a([BLcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/iy;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 7038
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/iz;->i()Lcom/keniu/security/sync/d/d/a/iz;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/iz;->a([BLcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/iz;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/iz;->a(Lcom/keniu/security/sync/d/d/a/iz;)Lcom/keniu/security/sync/d/d/a/iy;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/keniu/security/sync/d/d/a/iy;)Lcom/keniu/security/sync/d/d/a/iz;
    .locals 1
    .parameter

    .prologue
    .line 7088
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/iz;->i()Lcom/keniu/security/sync/d/d/a/iz;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/iz;->a(Lcom/keniu/security/sync/d/d/a/iy;)Lcom/keniu/security/sync/d/d/a/iz;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/iy;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 6822
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/iy;->f:Ljava/lang/Object;

    return-object p1
.end method

.method private static b(Ljava/io/InputStream;)Lcom/keniu/security/sync/d/d/a/iy;
    .locals 2
    .parameter

    .prologue
    .line 7054
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/iz;->i()Lcom/keniu/security/sync/d/d/a/iz;

    move-result-object v0

    .line 7055
    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/iz;->b(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7056
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/iz;->a(Lcom/keniu/security/sync/d/d/a/iz;)Lcom/keniu/security/sync/d/d/a/iy;

    move-result-object v0

    .line 7058
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/iy;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 7065
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/iz;->i()Lcom/keniu/security/sync/d/d/a/iz;

    move-result-object v0

    .line 7066
    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/iz;->b(Ljava/io/InputStream;Lcom/b/a/df;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7067
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/iz;->a(Lcom/keniu/security/sync/d/d/a/iz;)Lcom/keniu/security/sync/d/d/a/iy;

    move-result-object v0

    .line 7069
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Lcom/b/a/dp;)Lcom/keniu/security/sync/d/d/a/iz;
    .locals 1
    .parameter

    .prologue
    .line 7095
    new-instance v0, Lcom/keniu/security/sync/d/d/a/iz;

    invoke-direct {v0, p0}, Lcom/keniu/security/sync/d/d/a/iz;-><init>(Lcom/b/a/dp;)V

    .line 7096
    return-object v0
.end method

.method static synthetic b(Lcom/keniu/security/sync/d/d/a/iy;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 6822
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/iy;->g:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic c(Lcom/keniu/security/sync/d/d/a/iy;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 6822
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/iy;->h:Ljava/lang/Object;

    return-object p1
.end method

.method public static h()Lcom/keniu/security/sync/d/d/a/iy;
    .locals 1

    .prologue
    .line 6833
    sget-object v0, Lcom/keniu/security/sync/d/d/a/iy;->d:Lcom/keniu/security/sync/d/d/a/iy;

    return-object v0
.end method

.method public static final i()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 6842
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ih;->x()Lcom/b/a/cj;

    move-result-object v0

    return-object v0
.end method

.method static synthetic p()Z
    .locals 1

    .prologue
    .line 6822
    sget-boolean v0, Lcom/keniu/security/sync/d/d/a/iy;->j:Z

    return v0
.end method

.method private static q()Lcom/keniu/security/sync/d/d/a/iy;
    .locals 1

    .prologue
    .line 6837
    sget-object v0, Lcom/keniu/security/sync/d/d/a/iy;->d:Lcom/keniu/security/sync/d/d/a/iy;

    return-object v0
.end method

.method private r()Lcom/b/a/i;
    .locals 2

    .prologue
    .line 6872
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/iy;->f:Ljava/lang/Object;

    .line 6873
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 6874
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/b/a/i;->a(Ljava/lang/String;)Lcom/b/a/i;

    move-result-object v0

    .line 6876
    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/iy;->f:Ljava/lang/Object;

    .line 6879
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/b/a/i;

    goto :goto_0
.end method

.method private s()Lcom/b/a/i;
    .locals 2

    .prologue
    .line 6904
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/iy;->g:Ljava/lang/Object;

    .line 6905
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 6906
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/b/a/i;->a(Ljava/lang/String;)Lcom/b/a/i;

    move-result-object v0

    .line 6908
    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/iy;->g:Ljava/lang/Object;

    .line 6911
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/b/a/i;

    goto :goto_0
.end method

.method private t()Lcom/b/a/i;
    .locals 2

    .prologue
    .line 6936
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/iy;->h:Ljava/lang/Object;

    .line 6937
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 6938
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/b/a/i;->a(Ljava/lang/String;)Lcom/b/a/i;

    move-result-object v0

    .line 6940
    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/iy;->h:Ljava/lang/Object;

    .line 6943
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/b/a/i;

    goto :goto_0
.end method

.method private u()V
    .locals 1

    .prologue
    .line 6948
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/iy;->f:Ljava/lang/Object;

    .line 6949
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/iy;->g:Ljava/lang/Object;

    .line 6950
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/iy;->h:Ljava/lang/Object;

    .line 6951
    return-void
.end method

.method private static v()Lcom/keniu/security/sync/d/d/a/iz;
    .locals 1

    .prologue
    .line 7085
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/iz;->i()Lcom/keniu/security/sync/d/d/a/iz;

    move-result-object v0

    return-object v0
.end method

.method private static w()Lcom/keniu/security/sync/d/d/a/iz;
    .locals 1

    .prologue
    .line 7086
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/iz;->i()Lcom/keniu/security/sync/d/d/a/iz;

    move-result-object v0

    return-object v0
.end method

.method private x()Lcom/keniu/security/sync/d/d/a/iz;
    .locals 1

    .prologue
    .line 7090
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/iz;->i()Lcom/keniu/security/sync/d/d/a/iz;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/iz;->a(Lcom/keniu/security/sync/d/d/a/iy;)Lcom/keniu/security/sync/d/d/a/iz;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final B()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 7015
    invoke-super {p0}, Lcom/b/a/dk;->B()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic D()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 6822
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/iy;->x()Lcom/keniu/security/sync/d/d/a/iz;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic E()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 6822
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/iz;->i()Lcom/keniu/security/sync/d/d/a/iz;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic F()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 6822
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/iy;->x()Lcom/keniu/security/sync/d/d/a/iz;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic G()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 6822
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/iz;->i()Lcom/keniu/security/sync/d/d/a/iz;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic H()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 6822
    sget-object v0, Lcom/keniu/security/sync/d/d/a/iy;->d:Lcom/keniu/security/sync/d/d/a/iy;

    return-object v0
.end method

.method public final bridge synthetic I()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 6822
    sget-object v0, Lcom/keniu/security/sync/d/d/a/iy;->d:Lcom/keniu/security/sync/d/d/a/iy;

    return-object v0
.end method

.method protected final synthetic a(Lcom/b/a/dp;)Lcom/b/a/ew;
    .locals 1
    .parameter

    .prologue
    .line 6822
    new-instance v0, Lcom/keniu/security/sync/d/d/a/iz;

    invoke-direct {v0, p1}, Lcom/keniu/security/sync/d/d/a/iz;-><init>(Lcom/b/a/dp;)V

    return-object v0
.end method

.method public final a(Lcom/b/a/n;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 6975
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/iy;->b()I

    .line 6976
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/iy;->e:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 6977
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/iy;->r()Lcom/b/a/i;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/b/a/n;->a(ILcom/b/a/i;)V

    .line 6979
    :cond_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/iy;->e:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 6980
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/iy;->s()Lcom/b/a/i;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/b/a/n;->a(ILcom/b/a/i;)V

    .line 6982
    :cond_1
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/iy;->e:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 6983
    const/4 v0, 0x3

    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/iy;->t()Lcom/b/a/i;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/b/a/n;->a(ILcom/b/a/i;)V

    .line 6985
    :cond_2
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/iy;->b_()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/b/a/gg;->a(Lcom/b/a/n;)V

    .line 6986
    return-void
.end method

.method public final a()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 6954
    iget-byte v0, p0, Lcom/keniu/security/sync/d/d/a/iy;->i:B

    .line 6955
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-ne v0, v3, :cond_0

    move v0, v3

    .line 6970
    :goto_0
    return v0

    :cond_0
    move v0, v2

    .line 6955
    goto :goto_0

    .line 6957
    :cond_1
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/iy;->j()Z

    move-result v0

    if-nez v0, :cond_2

    .line 6958
    iput-byte v2, p0, Lcom/keniu/security/sync/d/d/a/iy;->i:B

    move v0, v2

    .line 6959
    goto :goto_0

    .line 6961
    :cond_2
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/iy;->l()Z

    move-result v0

    if-nez v0, :cond_3

    .line 6962
    iput-byte v2, p0, Lcom/keniu/security/sync/d/d/a/iy;->i:B

    move v0, v2

    .line 6963
    goto :goto_0

    .line 6965
    :cond_3
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/iy;->n()Z

    move-result v0

    if-nez v0, :cond_4

    .line 6966
    iput-byte v2, p0, Lcom/keniu/security/sync/d/d/a/iy;->i:B

    move v0, v2

    .line 6967
    goto :goto_0

    .line 6969
    :cond_4
    iput-byte v3, p0, Lcom/keniu/security/sync/d/d/a/iy;->i:B

    move v0, v3

    .line 6970
    goto :goto_0
.end method

.method public final b()I
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 6990
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/iy;->k:I

    .line 6991
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 7008
    :goto_0
    return v0

    .line 6993
    :cond_0
    const/4 v0, 0x0

    .line 6994
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/iy;->e:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_1

    .line 6995
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/iy;->r()Lcom/b/a/i;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/b/a/n;->c(ILcom/b/a/i;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 6998
    :cond_1
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/iy;->e:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_2

    .line 6999
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/iy;->s()Lcom/b/a/i;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/b/a/n;->c(ILcom/b/a/i;)I

    move-result v1

    add-int/2addr v0, v1

    .line 7002
    :cond_2
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/iy;->e:I

    and-int/lit8 v1, v1, 0x4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    .line 7003
    const/4 v1, 0x3

    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/iy;->t()Lcom/b/a/i;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/b/a/n;->c(ILcom/b/a/i;)I

    move-result v1

    add-int/2addr v0, v1

    .line 7006
    :cond_3
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/iy;->b_()Lcom/b/a/gg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/b/a/gg;->b()I

    move-result v1

    add-int/2addr v0, v1

    .line 7007
    iput v0, p0, Lcom/keniu/security/sync/d/d/a/iy;->k:I

    goto :goto_0
.end method

.method protected final g()Lcom/b/a/dv;
    .locals 1

    .prologue
    .line 6847
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ih;->y()Lcom/b/a/dv;

    move-result-object v0

    return-object v0
.end method

.method public final j()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 6855
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/iy;->e:I

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
    .line 6858
    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/iy;->f:Ljava/lang/Object;

    .line 6859
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 6860
    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object p0, v0

    move-object v1, p0

    .line 6868
    :goto_0
    return-object v1

    .line 6862
    :cond_0
    check-cast v1, Lcom/b/a/i;

    .line 6864
    invoke-virtual {v1}, Lcom/b/a/i;->b()Ljava/lang/String;

    move-result-object v2

    .line 6865
    invoke-static {v1}, Lcom/b/a/ep;->a(Lcom/b/a/i;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6866
    iput-object v2, p0, Lcom/keniu/security/sync/d/d/a/iy;->f:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 6868
    goto :goto_0
.end method

.method public final l()Z
    .locals 2

    .prologue
    .line 6887
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/iy;->e:I

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
    .line 6890
    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/iy;->g:Ljava/lang/Object;

    .line 6891
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 6892
    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object p0, v0

    move-object v1, p0

    .line 6900
    :goto_0
    return-object v1

    .line 6894
    :cond_0
    check-cast v1, Lcom/b/a/i;

    .line 6896
    invoke-virtual {v1}, Lcom/b/a/i;->b()Ljava/lang/String;

    move-result-object v2

    .line 6897
    invoke-static {v1}, Lcom/b/a/ep;->a(Lcom/b/a/i;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6898
    iput-object v2, p0, Lcom/keniu/security/sync/d/d/a/iy;->g:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 6900
    goto :goto_0
.end method

.method public final n()Z
    .locals 2

    .prologue
    .line 6919
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/iy;->e:I

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
    .line 6922
    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/iy;->h:Ljava/lang/Object;

    .line 6923
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 6924
    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object p0, v0

    move-object v1, p0

    .line 6932
    :goto_0
    return-object v1

    .line 6926
    :cond_0
    check-cast v1, Lcom/b/a/i;

    .line 6928
    invoke-virtual {v1}, Lcom/b/a/i;->b()Ljava/lang/String;

    move-result-object v2

    .line 6929
    invoke-static {v1}, Lcom/b/a/ep;->a(Lcom/b/a/i;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6930
    iput-object v2, p0, Lcom/keniu/security/sync/d/d/a/iy;->h:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 6932
    goto :goto_0
.end method
