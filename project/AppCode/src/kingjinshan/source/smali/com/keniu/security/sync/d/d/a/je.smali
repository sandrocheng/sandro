.class public final Lcom/keniu/security/sync/d/d/a/je;
.super Lcom/b/a/dk;
.source "Loginsvr.java"

# interfaces
.implements Lcom/keniu/security/sync/d/d/a/jg;


# static fields
.field public static final a:I = 0x1

.field public static final b:I = 0x2

.field private static final c:Lcom/keniu/security/sync/d/d/a/je;

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
    .line 5345
    new-instance v0, Lcom/keniu/security/sync/d/d/a/je;

    invoke-direct {v0}, Lcom/keniu/security/sync/d/d/a/je;-><init>()V

    .line 5346
    sput-object v0, Lcom/keniu/security/sync/d/d/a/je;->c:Lcom/keniu/security/sync/d/d/a/je;

    const-string v1, ""

    iput-object v1, v0, Lcom/keniu/security/sync/d/d/a/je;->e:Ljava/lang/Object;

    const-string v1, ""

    iput-object v1, v0, Lcom/keniu/security/sync/d/d/a/je;->f:Ljava/lang/Object;

    .line 5347
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 4885
    invoke-direct {p0}, Lcom/b/a/dk;-><init>()V

    .line 4975
    iput-byte v0, p0, Lcom/keniu/security/sync/d/d/a/je;->g:B

    .line 5004
    iput v0, p0, Lcom/keniu/security/sync/d/d/a/je;->h:I

    .line 4885
    return-void
.end method

.method synthetic constructor <init>(Lcom/keniu/security/sync/d/d/a/jf;)V
    .locals 1
    .parameter

    .prologue
    .line 4878
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/keniu/security/sync/d/d/a/je;-><init>(Lcom/keniu/security/sync/d/d/a/jf;B)V

    return-void
.end method

.method private constructor <init>(Lcom/keniu/security/sync/d/d/a/jf;B)V
    .locals 1
    .parameter
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 4883
    invoke-direct {p0, p1}, Lcom/b/a/dk;-><init>(Lcom/b/a/dn;)V

    .line 4975
    iput-byte v0, p0, Lcom/keniu/security/sync/d/d/a/je;->g:B

    .line 5004
    iput v0, p0, Lcom/keniu/security/sync/d/d/a/je;->h:I

    .line 4884
    return-void
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/je;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 4878
    iput p1, p0, Lcom/keniu/security/sync/d/d/a/je;->d:I

    return p1
.end method

.method private static a(Lcom/b/a/i;)Lcom/keniu/security/sync/d/d/a/je;
    .locals 1
    .parameter

    .prologue
    .line 5033
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/jf;->i()Lcom/keniu/security/sync/d/d/a/jf;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/jf;->a(Lcom/b/a/i;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/jf;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/jf;->a(Lcom/keniu/security/sync/d/d/a/jf;)Lcom/keniu/security/sync/d/d/a/je;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/i;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/je;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 5039
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/jf;->i()Lcom/keniu/security/sync/d/d/a/jf;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/jf;->a(Lcom/b/a/i;Lcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/jf;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/jf;->a(Lcom/keniu/security/sync/d/d/a/jf;)Lcom/keniu/security/sync/d/d/a/je;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/m;)Lcom/keniu/security/sync/d/d/a/je;
    .locals 1
    .parameter

    .prologue
    .line 5087
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/jf;->i()Lcom/keniu/security/sync/d/d/a/jf;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/jf;->a(Lcom/b/a/m;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/jf;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/jf;->a(Lcom/keniu/security/sync/d/d/a/jf;)Lcom/keniu/security/sync/d/d/a/je;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/je;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 5093
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/jf;->i()Lcom/keniu/security/sync/d/d/a/jf;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/jf;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/jf;

    move-result-object v0

    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/jf;->a(Lcom/keniu/security/sync/d/d/a/jf;)Lcom/keniu/security/sync/d/d/a/je;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/io/InputStream;)Lcom/keniu/security/sync/d/d/a/je;
    .locals 1
    .parameter

    .prologue
    .line 5055
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/jf;->i()Lcom/keniu/security/sync/d/d/a/jf;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/jf;->a(Ljava/io/InputStream;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/jf;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/jf;->a(Lcom/keniu/security/sync/d/d/a/jf;)Lcom/keniu/security/sync/d/d/a/je;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/je;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 5061
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/jf;->i()Lcom/keniu/security/sync/d/d/a/jf;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/jf;->a(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/jf;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/jf;->a(Lcom/keniu/security/sync/d/d/a/jf;)Lcom/keniu/security/sync/d/d/a/je;

    move-result-object v0

    return-object v0
.end method

.method private static a([B)Lcom/keniu/security/sync/d/d/a/je;
    .locals 1
    .parameter

    .prologue
    .line 5044
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/jf;->i()Lcom/keniu/security/sync/d/d/a/jf;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/jf;->a([B)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/jf;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/jf;->a(Lcom/keniu/security/sync/d/d/a/jf;)Lcom/keniu/security/sync/d/d/a/je;

    move-result-object v0

    return-object v0
.end method

.method private static a([BLcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/je;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 5050
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/jf;->i()Lcom/keniu/security/sync/d/d/a/jf;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/jf;->a([BLcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/jf;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/jf;->a(Lcom/keniu/security/sync/d/d/a/jf;)Lcom/keniu/security/sync/d/d/a/je;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/keniu/security/sync/d/d/a/je;)Lcom/keniu/security/sync/d/d/a/jf;
    .locals 1
    .parameter

    .prologue
    .line 5100
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/jf;->i()Lcom/keniu/security/sync/d/d/a/jf;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/jf;->a(Lcom/keniu/security/sync/d/d/a/je;)Lcom/keniu/security/sync/d/d/a/jf;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/je;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 4878
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/je;->e:Ljava/lang/Object;

    return-object p1
.end method

.method private static b(Ljava/io/InputStream;)Lcom/keniu/security/sync/d/d/a/je;
    .locals 2
    .parameter

    .prologue
    .line 5066
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/jf;->i()Lcom/keniu/security/sync/d/d/a/jf;

    move-result-object v0

    .line 5067
    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/jf;->b(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5068
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/jf;->a(Lcom/keniu/security/sync/d/d/a/jf;)Lcom/keniu/security/sync/d/d/a/je;

    move-result-object v0

    .line 5070
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/je;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 5077
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/jf;->i()Lcom/keniu/security/sync/d/d/a/jf;

    move-result-object v0

    .line 5078
    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/jf;->b(Ljava/io/InputStream;Lcom/b/a/df;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5079
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/jf;->a(Lcom/keniu/security/sync/d/d/a/jf;)Lcom/keniu/security/sync/d/d/a/je;

    move-result-object v0

    .line 5081
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Lcom/b/a/dp;)Lcom/keniu/security/sync/d/d/a/jf;
    .locals 1
    .parameter

    .prologue
    .line 5107
    new-instance v0, Lcom/keniu/security/sync/d/d/a/jf;

    invoke-direct {v0, p0}, Lcom/keniu/security/sync/d/d/a/jf;-><init>(Lcom/b/a/dp;)V

    .line 5108
    return-object v0
.end method

.method static synthetic b(Lcom/keniu/security/sync/d/d/a/je;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 4878
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/je;->f:Ljava/lang/Object;

    return-object p1
.end method

.method public static h()Lcom/keniu/security/sync/d/d/a/je;
    .locals 1

    .prologue
    .line 4889
    sget-object v0, Lcom/keniu/security/sync/d/d/a/je;->c:Lcom/keniu/security/sync/d/d/a/je;

    return-object v0
.end method

.method public static final i()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 4898
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ih;->r()Lcom/b/a/cj;

    move-result-object v0

    return-object v0
.end method

.method static synthetic n()Z
    .locals 1

    .prologue
    .line 4878
    sget-boolean v0, Lcom/keniu/security/sync/d/d/a/je;->j:Z

    return v0
.end method

.method private static o()Lcom/keniu/security/sync/d/d/a/je;
    .locals 1

    .prologue
    .line 4893
    sget-object v0, Lcom/keniu/security/sync/d/d/a/je;->c:Lcom/keniu/security/sync/d/d/a/je;

    return-object v0
.end method

.method private p()Lcom/b/a/i;
    .locals 2

    .prologue
    .line 4928
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/je;->e:Ljava/lang/Object;

    .line 4929
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 4930
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/b/a/i;->a(Ljava/lang/String;)Lcom/b/a/i;

    move-result-object v0

    .line 4932
    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/je;->e:Ljava/lang/Object;

    .line 4935
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/b/a/i;

    goto :goto_0
.end method

.method private q()Lcom/b/a/i;
    .locals 2

    .prologue
    .line 4960
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/je;->f:Ljava/lang/Object;

    .line 4961
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 4962
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/b/a/i;->a(Ljava/lang/String;)Lcom/b/a/i;

    move-result-object v0

    .line 4964
    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/je;->f:Ljava/lang/Object;

    .line 4967
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/b/a/i;

    goto :goto_0
.end method

.method private r()V
    .locals 1

    .prologue
    .line 4972
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/je;->e:Ljava/lang/Object;

    .line 4973
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/je;->f:Ljava/lang/Object;

    .line 4974
    return-void
.end method

.method private static s()Lcom/keniu/security/sync/d/d/a/jf;
    .locals 1

    .prologue
    .line 5097
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/jf;->i()Lcom/keniu/security/sync/d/d/a/jf;

    move-result-object v0

    return-object v0
.end method

.method private static t()Lcom/keniu/security/sync/d/d/a/jf;
    .locals 1

    .prologue
    .line 5098
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/jf;->i()Lcom/keniu/security/sync/d/d/a/jf;

    move-result-object v0

    return-object v0
.end method

.method private u()Lcom/keniu/security/sync/d/d/a/jf;
    .locals 1

    .prologue
    .line 5102
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/jf;->i()Lcom/keniu/security/sync/d/d/a/jf;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/jf;->a(Lcom/keniu/security/sync/d/d/a/je;)Lcom/keniu/security/sync/d/d/a/jf;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final B()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 5027
    invoke-super {p0}, Lcom/b/a/dk;->B()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic D()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 4878
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/je;->u()Lcom/keniu/security/sync/d/d/a/jf;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic E()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 4878
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/jf;->i()Lcom/keniu/security/sync/d/d/a/jf;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic F()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 4878
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/je;->u()Lcom/keniu/security/sync/d/d/a/jf;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic G()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 4878
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/jf;->i()Lcom/keniu/security/sync/d/d/a/jf;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic H()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 4878
    sget-object v0, Lcom/keniu/security/sync/d/d/a/je;->c:Lcom/keniu/security/sync/d/d/a/je;

    return-object v0
.end method

.method public final bridge synthetic I()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 4878
    sget-object v0, Lcom/keniu/security/sync/d/d/a/je;->c:Lcom/keniu/security/sync/d/d/a/je;

    return-object v0
.end method

.method protected final synthetic a(Lcom/b/a/dp;)Lcom/b/a/ew;
    .locals 1
    .parameter

    .prologue
    .line 4878
    new-instance v0, Lcom/keniu/security/sync/d/d/a/jf;

    invoke-direct {v0, p1}, Lcom/keniu/security/sync/d/d/a/jf;-><init>(Lcom/b/a/dp;)V

    return-object v0
.end method

.method public final a(Lcom/b/a/n;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 4994
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/je;->b()I

    .line 4995
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/je;->d:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 4996
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/je;->p()Lcom/b/a/i;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/b/a/n;->a(ILcom/b/a/i;)V

    .line 4998
    :cond_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/je;->d:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 4999
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/je;->q()Lcom/b/a/i;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/b/a/n;->a(ILcom/b/a/i;)V

    .line 5001
    :cond_1
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/je;->b_()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/b/a/gg;->a(Lcom/b/a/n;)V

    .line 5002
    return-void
.end method

.method public final a()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4977
    iget-byte v0, p0, Lcom/keniu/security/sync/d/d/a/je;->g:B

    .line 4978
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-ne v0, v3, :cond_0

    move v0, v3

    .line 4989
    :goto_0
    return v0

    :cond_0
    move v0, v2

    .line 4978
    goto :goto_0

    .line 4980
    :cond_1
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/je;->j()Z

    move-result v0

    if-nez v0, :cond_2

    .line 4981
    iput-byte v2, p0, Lcom/keniu/security/sync/d/d/a/je;->g:B

    move v0, v2

    .line 4982
    goto :goto_0

    .line 4984
    :cond_2
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/je;->l()Z

    move-result v0

    if-nez v0, :cond_3

    .line 4985
    iput-byte v2, p0, Lcom/keniu/security/sync/d/d/a/je;->g:B

    move v0, v2

    .line 4986
    goto :goto_0

    .line 4988
    :cond_3
    iput-byte v3, p0, Lcom/keniu/security/sync/d/d/a/je;->g:B

    move v0, v3

    .line 4989
    goto :goto_0
.end method

.method public final b()I
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 5006
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/je;->h:I

    .line 5007
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 5020
    :goto_0
    return v0

    .line 5009
    :cond_0
    const/4 v0, 0x0

    .line 5010
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/je;->d:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_1

    .line 5011
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/je;->p()Lcom/b/a/i;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/b/a/n;->c(ILcom/b/a/i;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 5014
    :cond_1
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/je;->d:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_2

    .line 5015
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/je;->q()Lcom/b/a/i;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/b/a/n;->c(ILcom/b/a/i;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5018
    :cond_2
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/je;->b_()Lcom/b/a/gg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/b/a/gg;->b()I

    move-result v1

    add-int/2addr v0, v1

    .line 5019
    iput v0, p0, Lcom/keniu/security/sync/d/d/a/je;->h:I

    goto :goto_0
.end method

.method protected final g()Lcom/b/a/dv;
    .locals 1

    .prologue
    .line 4903
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ih;->s()Lcom/b/a/dv;

    move-result-object v0

    return-object v0
.end method

.method public final j()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 4911
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/je;->d:I

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
    .line 4914
    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/je;->e:Ljava/lang/Object;

    .line 4915
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 4916
    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object p0, v0

    move-object v1, p0

    .line 4924
    :goto_0
    return-object v1

    .line 4918
    :cond_0
    check-cast v1, Lcom/b/a/i;

    .line 4920
    invoke-virtual {v1}, Lcom/b/a/i;->b()Ljava/lang/String;

    move-result-object v2

    .line 4921
    invoke-static {v1}, Lcom/b/a/ep;->a(Lcom/b/a/i;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4922
    iput-object v2, p0, Lcom/keniu/security/sync/d/d/a/je;->e:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 4924
    goto :goto_0
.end method

.method public final l()Z
    .locals 2

    .prologue
    .line 4943
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/je;->d:I

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
    .line 4946
    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/je;->f:Ljava/lang/Object;

    .line 4947
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 4948
    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object p0, v0

    move-object v1, p0

    .line 4956
    :goto_0
    return-object v1

    .line 4950
    :cond_0
    check-cast v1, Lcom/b/a/i;

    .line 4952
    invoke-virtual {v1}, Lcom/b/a/i;->b()Ljava/lang/String;

    move-result-object v2

    .line 4953
    invoke-static {v1}, Lcom/b/a/ep;->a(Lcom/b/a/i;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4954
    iput-object v2, p0, Lcom/keniu/security/sync/d/d/a/je;->f:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 4956
    goto :goto_0
.end method
