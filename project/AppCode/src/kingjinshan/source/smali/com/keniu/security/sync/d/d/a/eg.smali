.class public final Lcom/keniu/security/sync/d/d/a/eg;
.super Lcom/b/a/dk;
.source "Appsvr.java"

# interfaces
.implements Lcom/keniu/security/sync/d/d/a/ei;


# static fields
.field public static final a:I = 0x1

.field public static final b:I = 0x2

.field public static final c:I = 0x3

.field public static final d:I = 0x4

.field private static final e:Lcom/keniu/security/sync/d/d/a/eg;

.field private static final n:J


# instance fields
.field private f:I

.field private g:Ljava/lang/Object;

.field private h:Ljava/lang/Object;

.field private i:Ljava/lang/Object;

.field private k:I

.field private l:B

.field private m:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 21433
    new-instance v0, Lcom/keniu/security/sync/d/d/a/eg;

    invoke-direct {v0}, Lcom/keniu/security/sync/d/d/a/eg;-><init>()V

    .line 21434
    sput-object v0, Lcom/keniu/security/sync/d/d/a/eg;->e:Lcom/keniu/security/sync/d/d/a/eg;

    const-string v1, ""

    iput-object v1, v0, Lcom/keniu/security/sync/d/d/a/eg;->g:Ljava/lang/Object;

    const-string v1, ""

    iput-object v1, v0, Lcom/keniu/security/sync/d/d/a/eg;->h:Ljava/lang/Object;

    const-string v1, ""

    iput-object v1, v0, Lcom/keniu/security/sync/d/d/a/eg;->i:Ljava/lang/Object;

    const/4 v1, 0x0

    iput v1, v0, Lcom/keniu/security/sync/d/d/a/eg;->k:I

    .line 21435
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 20822
    invoke-direct {p0}, Lcom/b/a/dk;-><init>()V

    .line 20956
    iput-byte v0, p0, Lcom/keniu/security/sync/d/d/a/eg;->l:B

    .line 20995
    iput v0, p0, Lcom/keniu/security/sync/d/d/a/eg;->m:I

    .line 20822
    return-void
.end method

.method synthetic constructor <init>(Lcom/keniu/security/sync/d/d/a/eh;)V
    .locals 1
    .parameter

    .prologue
    .line 20815
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/keniu/security/sync/d/d/a/eg;-><init>(Lcom/keniu/security/sync/d/d/a/eh;B)V

    return-void
.end method

.method private constructor <init>(Lcom/keniu/security/sync/d/d/a/eh;B)V
    .locals 1
    .parameter
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 20820
    invoke-direct {p0, p1}, Lcom/b/a/dk;-><init>(Lcom/b/a/dn;)V

    .line 20956
    iput-byte v0, p0, Lcom/keniu/security/sync/d/d/a/eg;->l:B

    .line 20995
    iput v0, p0, Lcom/keniu/security/sync/d/d/a/eg;->m:I

    .line 20821
    return-void
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/eg;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 20815
    iput p1, p0, Lcom/keniu/security/sync/d/d/a/eg;->k:I

    return p1
.end method

.method private static a(Lcom/b/a/i;)Lcom/keniu/security/sync/d/d/a/eg;
    .locals 1
    .parameter

    .prologue
    .line 21032
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/eh;->i()Lcom/keniu/security/sync/d/d/a/eh;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/eh;->a(Lcom/b/a/i;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/eh;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/eh;->a(Lcom/keniu/security/sync/d/d/a/eh;)Lcom/keniu/security/sync/d/d/a/eg;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/i;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/eg;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 21038
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/eh;->i()Lcom/keniu/security/sync/d/d/a/eh;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/eh;->a(Lcom/b/a/i;Lcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/eh;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/eh;->a(Lcom/keniu/security/sync/d/d/a/eh;)Lcom/keniu/security/sync/d/d/a/eg;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/m;)Lcom/keniu/security/sync/d/d/a/eg;
    .locals 1
    .parameter

    .prologue
    .line 21086
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/eh;->i()Lcom/keniu/security/sync/d/d/a/eh;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/eh;->a(Lcom/b/a/m;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/eh;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/eh;->a(Lcom/keniu/security/sync/d/d/a/eh;)Lcom/keniu/security/sync/d/d/a/eg;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/eg;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 21092
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/eh;->i()Lcom/keniu/security/sync/d/d/a/eh;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/eh;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/eh;

    move-result-object v0

    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/eh;->a(Lcom/keniu/security/sync/d/d/a/eh;)Lcom/keniu/security/sync/d/d/a/eg;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/io/InputStream;)Lcom/keniu/security/sync/d/d/a/eg;
    .locals 1
    .parameter

    .prologue
    .line 21054
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/eh;->i()Lcom/keniu/security/sync/d/d/a/eh;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/eh;->a(Ljava/io/InputStream;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/eh;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/eh;->a(Lcom/keniu/security/sync/d/d/a/eh;)Lcom/keniu/security/sync/d/d/a/eg;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/eg;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 21060
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/eh;->i()Lcom/keniu/security/sync/d/d/a/eh;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/eh;->a(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/eh;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/eh;->a(Lcom/keniu/security/sync/d/d/a/eh;)Lcom/keniu/security/sync/d/d/a/eg;

    move-result-object v0

    return-object v0
.end method

.method private static a([B)Lcom/keniu/security/sync/d/d/a/eg;
    .locals 1
    .parameter

    .prologue
    .line 21043
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/eh;->i()Lcom/keniu/security/sync/d/d/a/eh;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/eh;->a([B)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/eh;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/eh;->a(Lcom/keniu/security/sync/d/d/a/eh;)Lcom/keniu/security/sync/d/d/a/eg;

    move-result-object v0

    return-object v0
.end method

.method private static a([BLcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/eg;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 21049
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/eh;->i()Lcom/keniu/security/sync/d/d/a/eh;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/eh;->a([BLcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/eh;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/eh;->a(Lcom/keniu/security/sync/d/d/a/eh;)Lcom/keniu/security/sync/d/d/a/eg;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/keniu/security/sync/d/d/a/eg;)Lcom/keniu/security/sync/d/d/a/eh;
    .locals 1
    .parameter

    .prologue
    .line 21099
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/eh;->i()Lcom/keniu/security/sync/d/d/a/eh;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/eh;->a(Lcom/keniu/security/sync/d/d/a/eg;)Lcom/keniu/security/sync/d/d/a/eh;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/eg;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 20815
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/eg;->g:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic b(Lcom/keniu/security/sync/d/d/a/eg;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 20815
    iput p1, p0, Lcom/keniu/security/sync/d/d/a/eg;->f:I

    return p1
.end method

.method private static b(Ljava/io/InputStream;)Lcom/keniu/security/sync/d/d/a/eg;
    .locals 2
    .parameter

    .prologue
    .line 21065
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/eh;->i()Lcom/keniu/security/sync/d/d/a/eh;

    move-result-object v0

    .line 21066
    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/eh;->b(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 21067
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/eh;->a(Lcom/keniu/security/sync/d/d/a/eh;)Lcom/keniu/security/sync/d/d/a/eg;

    move-result-object v0

    .line 21069
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/eg;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 21076
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/eh;->i()Lcom/keniu/security/sync/d/d/a/eh;

    move-result-object v0

    .line 21077
    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/eh;->b(Ljava/io/InputStream;Lcom/b/a/df;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 21078
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/eh;->a(Lcom/keniu/security/sync/d/d/a/eh;)Lcom/keniu/security/sync/d/d/a/eg;

    move-result-object v0

    .line 21080
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Lcom/b/a/dp;)Lcom/keniu/security/sync/d/d/a/eh;
    .locals 1
    .parameter

    .prologue
    .line 21106
    new-instance v0, Lcom/keniu/security/sync/d/d/a/eh;

    invoke-direct {v0, p0}, Lcom/keniu/security/sync/d/d/a/eh;-><init>(Lcom/b/a/dp;)V

    .line 21107
    return-object v0
.end method

.method static synthetic b(Lcom/keniu/security/sync/d/d/a/eg;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 20815
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/eg;->h:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic c(Lcom/keniu/security/sync/d/d/a/eg;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 20815
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/eg;->i:Ljava/lang/Object;

    return-object p1
.end method

.method public static h()Lcom/keniu/security/sync/d/d/a/eg;
    .locals 1

    .prologue
    .line 20826
    sget-object v0, Lcom/keniu/security/sync/d/d/a/eg;->e:Lcom/keniu/security/sync/d/d/a/eg;

    return-object v0
.end method

.method public static final i()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 20835
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/a;->aj()Lcom/b/a/cj;

    move-result-object v0

    return-object v0
.end method

.method static synthetic r()Z
    .locals 1

    .prologue
    .line 20815
    sget-boolean v0, Lcom/keniu/security/sync/d/d/a/eg;->j:Z

    return v0
.end method

.method private static s()Lcom/keniu/security/sync/d/d/a/eg;
    .locals 1

    .prologue
    .line 20830
    sget-object v0, Lcom/keniu/security/sync/d/d/a/eg;->e:Lcom/keniu/security/sync/d/d/a/eg;

    return-object v0
.end method

.method private t()Lcom/b/a/i;
    .locals 2

    .prologue
    .line 20865
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/eg;->g:Ljava/lang/Object;

    .line 20866
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 20867
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/b/a/i;->a(Ljava/lang/String;)Lcom/b/a/i;

    move-result-object v0

    .line 20869
    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/eg;->g:Ljava/lang/Object;

    .line 20872
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/b/a/i;

    goto :goto_0
.end method

.method private u()Lcom/b/a/i;
    .locals 2

    .prologue
    .line 20897
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/eg;->h:Ljava/lang/Object;

    .line 20898
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 20899
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/b/a/i;->a(Ljava/lang/String;)Lcom/b/a/i;

    move-result-object v0

    .line 20901
    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/eg;->h:Ljava/lang/Object;

    .line 20904
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/b/a/i;

    goto :goto_0
.end method

.method private v()Lcom/b/a/i;
    .locals 2

    .prologue
    .line 20929
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/eg;->i:Ljava/lang/Object;

    .line 20930
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 20931
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/b/a/i;->a(Ljava/lang/String;)Lcom/b/a/i;

    move-result-object v0

    .line 20933
    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/eg;->i:Ljava/lang/Object;

    .line 20936
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/b/a/i;

    goto :goto_0
.end method

.method private w()V
    .locals 1

    .prologue
    .line 20951
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/eg;->g:Ljava/lang/Object;

    .line 20952
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/eg;->h:Ljava/lang/Object;

    .line 20953
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/eg;->i:Ljava/lang/Object;

    .line 20954
    const/4 v0, 0x0

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/eg;->k:I

    .line 20955
    return-void
.end method

.method private static x()Lcom/keniu/security/sync/d/d/a/eh;
    .locals 1

    .prologue
    .line 21096
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/eh;->i()Lcom/keniu/security/sync/d/d/a/eh;

    move-result-object v0

    return-object v0
.end method

.method private static y()Lcom/keniu/security/sync/d/d/a/eh;
    .locals 1

    .prologue
    .line 21097
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/eh;->i()Lcom/keniu/security/sync/d/d/a/eh;

    move-result-object v0

    return-object v0
.end method

.method private z()Lcom/keniu/security/sync/d/d/a/eh;
    .locals 1

    .prologue
    .line 21101
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/eh;->i()Lcom/keniu/security/sync/d/d/a/eh;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/eh;->a(Lcom/keniu/security/sync/d/d/a/eg;)Lcom/keniu/security/sync/d/d/a/eh;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final B()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 21026
    invoke-super {p0}, Lcom/b/a/dk;->B()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic D()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 20815
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/eg;->z()Lcom/keniu/security/sync/d/d/a/eh;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic E()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 20815
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/eh;->i()Lcom/keniu/security/sync/d/d/a/eh;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic F()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 20815
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/eg;->z()Lcom/keniu/security/sync/d/d/a/eh;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic G()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 20815
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/eh;->i()Lcom/keniu/security/sync/d/d/a/eh;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic H()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 20815
    sget-object v0, Lcom/keniu/security/sync/d/d/a/eg;->e:Lcom/keniu/security/sync/d/d/a/eg;

    return-object v0
.end method

.method public final bridge synthetic I()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 20815
    sget-object v0, Lcom/keniu/security/sync/d/d/a/eg;->e:Lcom/keniu/security/sync/d/d/a/eg;

    return-object v0
.end method

.method protected final synthetic a(Lcom/b/a/dp;)Lcom/b/a/ew;
    .locals 1
    .parameter

    .prologue
    .line 20815
    new-instance v0, Lcom/keniu/security/sync/d/d/a/eh;

    invoke-direct {v0, p1}, Lcom/keniu/security/sync/d/d/a/eh;-><init>(Lcom/b/a/dp;)V

    return-object v0
.end method

.method public final a(Lcom/b/a/n;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 20979
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/eg;->b()I

    .line 20980
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/eg;->f:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 20981
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/eg;->t()Lcom/b/a/i;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/b/a/n;->a(ILcom/b/a/i;)V

    .line 20983
    :cond_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/eg;->f:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 20984
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/eg;->u()Lcom/b/a/i;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/b/a/n;->a(ILcom/b/a/i;)V

    .line 20986
    :cond_1
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/eg;->f:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_2

    .line 20987
    const/4 v0, 0x3

    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/eg;->v()Lcom/b/a/i;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/b/a/n;->a(ILcom/b/a/i;)V

    .line 20989
    :cond_2
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/eg;->f:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3

    .line 20990
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/eg;->k:I

    invoke-virtual {p1, v3, v0}, Lcom/b/a/n;->a(II)V

    .line 20992
    :cond_3
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/eg;->b_()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/b/a/gg;->a(Lcom/b/a/n;)V

    .line 20993
    return-void
.end method

.method public final a()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 20958
    iget-byte v0, p0, Lcom/keniu/security/sync/d/d/a/eg;->l:B

    .line 20959
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-ne v0, v3, :cond_0

    move v0, v3

    .line 20974
    :goto_0
    return v0

    :cond_0
    move v0, v2

    .line 20959
    goto :goto_0

    .line 20961
    :cond_1
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/eg;->j()Z

    move-result v0

    if-nez v0, :cond_2

    .line 20962
    iput-byte v2, p0, Lcom/keniu/security/sync/d/d/a/eg;->l:B

    move v0, v2

    .line 20963
    goto :goto_0

    .line 20965
    :cond_2
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/eg;->l()Z

    move-result v0

    if-nez v0, :cond_3

    .line 20966
    iput-byte v2, p0, Lcom/keniu/security/sync/d/d/a/eg;->l:B

    move v0, v2

    .line 20967
    goto :goto_0

    .line 20969
    :cond_3
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/eg;->n()Z

    move-result v0

    if-nez v0, :cond_4

    .line 20970
    iput-byte v2, p0, Lcom/keniu/security/sync/d/d/a/eg;->l:B

    move v0, v2

    .line 20971
    goto :goto_0

    .line 20973
    :cond_4
    iput-byte v3, p0, Lcom/keniu/security/sync/d/d/a/eg;->l:B

    move v0, v3

    .line 20974
    goto :goto_0
.end method

.method public final b()I
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 20997
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/eg;->m:I

    .line 20998
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 21019
    :goto_0
    return v0

    .line 21000
    :cond_0
    const/4 v0, 0x0

    .line 21001
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/eg;->f:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_1

    .line 21002
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/eg;->t()Lcom/b/a/i;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/b/a/n;->c(ILcom/b/a/i;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 21005
    :cond_1
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/eg;->f:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_2

    .line 21006
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/eg;->u()Lcom/b/a/i;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/b/a/n;->c(ILcom/b/a/i;)I

    move-result v1

    add-int/2addr v0, v1

    .line 21009
    :cond_2
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/eg;->f:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v4, :cond_3

    .line 21010
    const/4 v1, 0x3

    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/eg;->v()Lcom/b/a/i;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/b/a/n;->c(ILcom/b/a/i;)I

    move-result v1

    add-int/2addr v0, v1

    .line 21013
    :cond_3
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/eg;->f:I

    and-int/lit8 v1, v1, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_4

    .line 21014
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/eg;->k:I

    invoke-static {v4, v1}, Lcom/b/a/n;->d(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 21017
    :cond_4
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/eg;->b_()Lcom/b/a/gg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/b/a/gg;->b()I

    move-result v1

    add-int/2addr v0, v1

    .line 21018
    iput v0, p0, Lcom/keniu/security/sync/d/d/a/eg;->m:I

    goto :goto_0
.end method

.method protected final g()Lcom/b/a/dv;
    .locals 1

    .prologue
    .line 20840
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/a;->ak()Lcom/b/a/dv;

    move-result-object v0

    return-object v0
.end method

.method public final j()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 20848
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/eg;->f:I

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
    .line 20851
    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/eg;->g:Ljava/lang/Object;

    .line 20852
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 20853
    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object p0, v0

    move-object v1, p0

    .line 20861
    :goto_0
    return-object v1

    .line 20855
    :cond_0
    check-cast v1, Lcom/b/a/i;

    .line 20857
    invoke-virtual {v1}, Lcom/b/a/i;->b()Ljava/lang/String;

    move-result-object v2

    .line 20858
    invoke-static {v1}, Lcom/b/a/ep;->a(Lcom/b/a/i;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 20859
    iput-object v2, p0, Lcom/keniu/security/sync/d/d/a/eg;->g:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 20861
    goto :goto_0
.end method

.method public final l()Z
    .locals 2

    .prologue
    .line 20880
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/eg;->f:I

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
    .line 20883
    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/eg;->h:Ljava/lang/Object;

    .line 20884
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 20885
    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object p0, v0

    move-object v1, p0

    .line 20893
    :goto_0
    return-object v1

    .line 20887
    :cond_0
    check-cast v1, Lcom/b/a/i;

    .line 20889
    invoke-virtual {v1}, Lcom/b/a/i;->b()Ljava/lang/String;

    move-result-object v2

    .line 20890
    invoke-static {v1}, Lcom/b/a/ep;->a(Lcom/b/a/i;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 20891
    iput-object v2, p0, Lcom/keniu/security/sync/d/d/a/eg;->h:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 20893
    goto :goto_0
.end method

.method public final n()Z
    .locals 2

    .prologue
    .line 20912
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/eg;->f:I

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
    .line 20915
    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/eg;->i:Ljava/lang/Object;

    .line 20916
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 20917
    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object p0, v0

    move-object v1, p0

    .line 20925
    :goto_0
    return-object v1

    .line 20919
    :cond_0
    check-cast v1, Lcom/b/a/i;

    .line 20921
    invoke-virtual {v1}, Lcom/b/a/i;->b()Ljava/lang/String;

    move-result-object v2

    .line 20922
    invoke-static {v1}, Lcom/b/a/ep;->a(Lcom/b/a/i;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 20923
    iput-object v2, p0, Lcom/keniu/security/sync/d/d/a/eg;->i:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 20925
    goto :goto_0
.end method

.method public final p()Z
    .locals 2

    .prologue
    .line 20944
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/eg;->f:I

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
    .line 20947
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/eg;->k:I

    return v0
.end method
