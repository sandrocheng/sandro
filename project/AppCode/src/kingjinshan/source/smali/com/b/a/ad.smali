.class public final Lcom/b/a/ad;
.super Lcom/b/a/dk;
.source "DescriptorProtos.java"

# interfaces
.implements Lcom/b/a/af;


# static fields
.field public static final a:I = 0x1

.field public static final b:I = 0x2

.field public static final c:I = 0x3

.field private static final d:Lcom/b/a/ad;

.field private static final l:J


# instance fields
.field private e:I

.field private f:Ljava/lang/Object;

.field private g:I

.field private h:Lcom/b/a/ag;

.field private i:B

.field private k:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 7515
    new-instance v0, Lcom/b/a/ad;

    invoke-direct {v0}, Lcom/b/a/ad;-><init>()V

    .line 7516
    sput-object v0, Lcom/b/a/ad;->d:Lcom/b/a/ad;

    const-string v1, ""

    iput-object v1, v0, Lcom/b/a/ad;->f:Ljava/lang/Object;

    const/4 v1, 0x0

    iput v1, v0, Lcom/b/a/ad;->g:I

    invoke-static {}, Lcom/b/a/ag;->e()Lcom/b/a/ag;

    move-result-object v1

    iput-object v1, v0, Lcom/b/a/ad;->h:Lcom/b/a/ag;

    .line 7517
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 6958
    invoke-direct {p0}, Lcom/b/a/dk;-><init>()V

    .line 7040
    iput-byte v0, p0, Lcom/b/a/ad;->i:B

    .line 7070
    iput v0, p0, Lcom/b/a/ad;->k:I

    .line 6958
    return-void
.end method

.method synthetic constructor <init>(Lcom/b/a/ae;)V
    .locals 1
    .parameter

    .prologue
    .line 6951
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/b/a/ad;-><init>(Lcom/b/a/ae;B)V

    return-void
.end method

.method private constructor <init>(Lcom/b/a/ae;B)V
    .locals 1
    .parameter
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 6956
    invoke-direct {p0, p1}, Lcom/b/a/dk;-><init>(Lcom/b/a/dn;)V

    .line 7040
    iput-byte v0, p0, Lcom/b/a/ad;->i:B

    .line 7070
    iput v0, p0, Lcom/b/a/ad;->k:I

    .line 6957
    return-void
.end method

.method static synthetic a(Lcom/b/a/ad;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 6951
    iput p1, p0, Lcom/b/a/ad;->g:I

    return p1
.end method

.method private static a(Lcom/b/a/i;)Lcom/b/a/ad;
    .locals 1
    .parameter

    .prologue
    .line 7103
    invoke-static {}, Lcom/b/a/ae;->q()Lcom/b/a/ae;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/b/a/ae;->a(Lcom/b/a/i;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/b/a/ae;

    invoke-static {p0}, Lcom/b/a/ae;->a(Lcom/b/a/ae;)Lcom/b/a/ad;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/i;Lcom/b/a/df;)Lcom/b/a/ad;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 7109
    invoke-static {}, Lcom/b/a/ae;->q()Lcom/b/a/ae;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/b/a/ae;->a(Lcom/b/a/i;Lcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/b/a/ae;

    invoke-static {p0}, Lcom/b/a/ae;->a(Lcom/b/a/ae;)Lcom/b/a/ad;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/m;)Lcom/b/a/ad;
    .locals 1
    .parameter

    .prologue
    .line 7157
    invoke-static {}, Lcom/b/a/ae;->q()Lcom/b/a/ae;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/b/a/ae;->a(Lcom/b/a/m;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/b/a/ae;

    invoke-static {p0}, Lcom/b/a/ae;->a(Lcom/b/a/ae;)Lcom/b/a/ad;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/ad;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 7163
    invoke-static {}, Lcom/b/a/ae;->q()Lcom/b/a/ae;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/b/a/ae;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/ae;

    move-result-object v0

    invoke-static {v0}, Lcom/b/a/ae;->a(Lcom/b/a/ae;)Lcom/b/a/ad;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/io/InputStream;)Lcom/b/a/ad;
    .locals 1
    .parameter

    .prologue
    .line 7125
    invoke-static {}, Lcom/b/a/ae;->q()Lcom/b/a/ae;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/b/a/ae;->a(Ljava/io/InputStream;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/b/a/ae;

    invoke-static {p0}, Lcom/b/a/ae;->a(Lcom/b/a/ae;)Lcom/b/a/ad;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/b/a/ad;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 7131
    invoke-static {}, Lcom/b/a/ae;->q()Lcom/b/a/ae;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/b/a/ae;->a(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/b/a/ae;

    invoke-static {p0}, Lcom/b/a/ae;->a(Lcom/b/a/ae;)Lcom/b/a/ad;

    move-result-object v0

    return-object v0
.end method

.method private static a([B)Lcom/b/a/ad;
    .locals 1
    .parameter

    .prologue
    .line 7114
    invoke-static {}, Lcom/b/a/ae;->q()Lcom/b/a/ae;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/b/a/ae;->a([B)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/b/a/ae;

    invoke-static {p0}, Lcom/b/a/ae;->a(Lcom/b/a/ae;)Lcom/b/a/ad;

    move-result-object v0

    return-object v0
.end method

.method private static a([BLcom/b/a/df;)Lcom/b/a/ad;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 7120
    invoke-static {}, Lcom/b/a/ae;->q()Lcom/b/a/ae;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/b/a/ae;->a([BLcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/b/a/ae;

    invoke-static {p0}, Lcom/b/a/ae;->a(Lcom/b/a/ae;)Lcom/b/a/ad;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/ad;)Lcom/b/a/ae;
    .locals 1
    .parameter

    .prologue
    .line 7170
    invoke-static {}, Lcom/b/a/ae;->q()Lcom/b/a/ae;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/b/a/ae;->a(Lcom/b/a/ad;)Lcom/b/a/ae;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/b/a/ad;Lcom/b/a/ag;)Lcom/b/a/ag;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 6951
    iput-object p1, p0, Lcom/b/a/ad;->h:Lcom/b/a/ag;

    return-object p1
.end method

.method static synthetic a(Lcom/b/a/ad;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 6951
    iput-object p1, p0, Lcom/b/a/ad;->f:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic b(Lcom/b/a/ad;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 6951
    iput p1, p0, Lcom/b/a/ad;->e:I

    return p1
.end method

.method private static b(Ljava/io/InputStream;)Lcom/b/a/ad;
    .locals 2
    .parameter

    .prologue
    .line 7136
    invoke-static {}, Lcom/b/a/ae;->q()Lcom/b/a/ae;

    move-result-object v0

    .line 7137
    invoke-virtual {v0, p0}, Lcom/b/a/ae;->b(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7138
    invoke-static {v0}, Lcom/b/a/ae;->a(Lcom/b/a/ae;)Lcom/b/a/ad;

    move-result-object v0

    .line 7140
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/b/a/ad;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 7147
    invoke-static {}, Lcom/b/a/ae;->q()Lcom/b/a/ae;

    move-result-object v0

    .line 7148
    invoke-virtual {v0, p0, p1}, Lcom/b/a/ae;->b(Ljava/io/InputStream;Lcom/b/a/df;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7149
    invoke-static {v0}, Lcom/b/a/ae;->a(Lcom/b/a/ae;)Lcom/b/a/ad;

    move-result-object v0

    .line 7151
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Lcom/b/a/dp;)Lcom/b/a/ae;
    .locals 1
    .parameter

    .prologue
    .line 7177
    new-instance v0, Lcom/b/a/ae;

    invoke-direct {v0, p0}, Lcom/b/a/ae;-><init>(Lcom/b/a/dp;)V

    .line 7178
    return-object v0
.end method

.method public static e()Lcom/b/a/ad;
    .locals 1

    .prologue
    .line 6962
    sget-object v0, Lcom/b/a/ad;->d:Lcom/b/a/ad;

    return-object v0
.end method

.method public static final f()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 6971
    invoke-static {}, Lcom/b/a/p;->n()Lcom/b/a/cj;

    move-result-object v0

    return-object v0
.end method

.method public static o()Lcom/b/a/ae;
    .locals 1

    .prologue
    .line 7167
    invoke-static {}, Lcom/b/a/ae;->q()Lcom/b/a/ae;

    move-result-object v0

    return-object v0
.end method

.method private static p()Lcom/b/a/ad;
    .locals 1

    .prologue
    .line 6966
    sget-object v0, Lcom/b/a/ad;->d:Lcom/b/a/ad;

    return-object v0
.end method

.method private q()Lcom/b/a/i;
    .locals 2

    .prologue
    .line 7001
    iget-object v0, p0, Lcom/b/a/ad;->f:Ljava/lang/Object;

    .line 7002
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 7003
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/b/a/i;->a(Ljava/lang/String;)Lcom/b/a/i;

    move-result-object v0

    .line 7005
    iput-object v0, p0, Lcom/b/a/ad;->f:Ljava/lang/Object;

    .line 7008
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/b/a/i;

    goto :goto_0
.end method

.method private r()V
    .locals 1

    .prologue
    .line 7036
    const-string v0, ""

    iput-object v0, p0, Lcom/b/a/ad;->f:Ljava/lang/Object;

    .line 7037
    const/4 v0, 0x0

    iput v0, p0, Lcom/b/a/ad;->g:I

    .line 7038
    invoke-static {}, Lcom/b/a/ag;->e()Lcom/b/a/ag;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/ad;->h:Lcom/b/a/ag;

    .line 7039
    return-void
.end method

.method private static s()Lcom/b/a/ae;
    .locals 1

    .prologue
    .line 7168
    invoke-static {}, Lcom/b/a/ae;->q()Lcom/b/a/ae;

    move-result-object v0

    return-object v0
.end method

.method private t()Lcom/b/a/ae;
    .locals 1

    .prologue
    .line 7172
    invoke-static {}, Lcom/b/a/ae;->q()Lcom/b/a/ae;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/b/a/ae;->a(Lcom/b/a/ad;)Lcom/b/a/ae;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final B()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 7097
    invoke-super {p0}, Lcom/b/a/dk;->B()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic D()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 6951
    invoke-direct {p0}, Lcom/b/a/ad;->t()Lcom/b/a/ae;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic E()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 6951
    invoke-static {}, Lcom/b/a/ae;->q()Lcom/b/a/ae;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic F()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 6951
    invoke-direct {p0}, Lcom/b/a/ad;->t()Lcom/b/a/ae;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic G()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 6951
    invoke-static {}, Lcom/b/a/ae;->q()Lcom/b/a/ae;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic H()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 6951
    sget-object v0, Lcom/b/a/ad;->d:Lcom/b/a/ad;

    return-object v0
.end method

.method public final bridge synthetic I()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 6951
    sget-object v0, Lcom/b/a/ad;->d:Lcom/b/a/ad;

    return-object v0
.end method

.method protected final synthetic a(Lcom/b/a/dp;)Lcom/b/a/ew;
    .locals 1
    .parameter

    .prologue
    .line 6951
    new-instance v0, Lcom/b/a/ae;

    invoke-direct {v0, p1}, Lcom/b/a/ae;-><init>(Lcom/b/a/dp;)V

    return-object v0
.end method

.method public final a(Lcom/b/a/n;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 7057
    invoke-virtual {p0}, Lcom/b/a/ad;->b()I

    .line 7058
    iget v0, p0, Lcom/b/a/ad;->e:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 7059
    invoke-direct {p0}, Lcom/b/a/ad;->q()Lcom/b/a/i;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/b/a/n;->a(ILcom/b/a/i;)V

    .line 7061
    :cond_0
    iget v0, p0, Lcom/b/a/ad;->e:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 7062
    iget v0, p0, Lcom/b/a/ad;->g:I

    invoke-virtual {p1, v2, v0}, Lcom/b/a/n;->a(II)V

    .line 7064
    :cond_1
    iget v0, p0, Lcom/b/a/ad;->e:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 7065
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/b/a/ad;->h:Lcom/b/a/ag;

    invoke-virtual {p1, v0, v1}, Lcom/b/a/n;->b(ILcom/b/a/ex;)V

    .line 7067
    :cond_2
    invoke-virtual {p0}, Lcom/b/a/ad;->b_()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/b/a/gg;->a(Lcom/b/a/n;)V

    .line 7068
    return-void
.end method

.method public final a()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 7042
    iget-byte v0, p0, Lcom/b/a/ad;->i:B

    .line 7043
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-ne v0, v2, :cond_0

    move v0, v2

    .line 7052
    :goto_0
    return v0

    :cond_0
    move v0, v3

    .line 7043
    goto :goto_0

    .line 7045
    :cond_1
    invoke-virtual {p0}, Lcom/b/a/ad;->l()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7046
    iget-object v0, p0, Lcom/b/a/ad;->h:Lcom/b/a/ag;

    invoke-virtual {v0}, Lcom/b/a/ag;->a()Z

    move-result v0

    if-nez v0, :cond_2

    .line 7047
    iput-byte v3, p0, Lcom/b/a/ad;->i:B

    move v0, v3

    .line 7048
    goto :goto_0

    .line 7051
    :cond_2
    iput-byte v2, p0, Lcom/b/a/ad;->i:B

    move v0, v2

    .line 7052
    goto :goto_0
.end method

.method public final b()I
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 7072
    iget v0, p0, Lcom/b/a/ad;->k:I

    .line 7073
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 7090
    :goto_0
    return v0

    .line 7075
    :cond_0
    const/4 v0, 0x0

    .line 7076
    iget v1, p0, Lcom/b/a/ad;->e:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_1

    .line 7077
    invoke-direct {p0}, Lcom/b/a/ad;->q()Lcom/b/a/i;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/b/a/n;->c(ILcom/b/a/i;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 7080
    :cond_1
    iget v1, p0, Lcom/b/a/ad;->e:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_2

    .line 7081
    iget v1, p0, Lcom/b/a/ad;->g:I

    invoke-static {v3, v1}, Lcom/b/a/n;->d(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 7084
    :cond_2
    iget v1, p0, Lcom/b/a/ad;->e:I

    and-int/lit8 v1, v1, 0x4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    .line 7085
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/b/a/ad;->h:Lcom/b/a/ag;

    invoke-static {v1, v2}, Lcom/b/a/n;->e(ILcom/b/a/ex;)I

    move-result v1

    add-int/2addr v0, v1

    .line 7088
    :cond_3
    invoke-virtual {p0}, Lcom/b/a/ad;->b_()Lcom/b/a/gg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/b/a/gg;->b()I

    move-result v1

    add-int/2addr v0, v1

    .line 7089
    iput v0, p0, Lcom/b/a/ad;->k:I

    goto :goto_0
.end method

.method protected final g()Lcom/b/a/dv;
    .locals 1

    .prologue
    .line 6976
    invoke-static {}, Lcom/b/a/p;->o()Lcom/b/a/dv;

    move-result-object v0

    return-object v0
.end method

.method public final h_()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 6984
    iget v0, p0, Lcom/b/a/ad;->e:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final i()Ljava/lang/String;
    .locals 3

    .prologue
    .line 6987
    iget-object v1, p0, Lcom/b/a/ad;->f:Ljava/lang/Object;

    .line 6988
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 6989
    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object p0, v0

    move-object v1, p0

    .line 6997
    :goto_0
    return-object v1

    .line 6991
    :cond_0
    check-cast v1, Lcom/b/a/i;

    .line 6993
    invoke-virtual {v1}, Lcom/b/a/i;->b()Ljava/lang/String;

    move-result-object v2

    .line 6994
    invoke-static {v1}, Lcom/b/a/ep;->a(Lcom/b/a/i;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6995
    iput-object v2, p0, Lcom/b/a/ad;->f:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 6997
    goto :goto_0
.end method

.method public final j()Z
    .locals 2

    .prologue
    .line 7016
    iget v0, p0, Lcom/b/a/ad;->e:I

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

.method public final k()I
    .locals 1

    .prologue
    .line 7019
    iget v0, p0, Lcom/b/a/ad;->g:I

    return v0
.end method

.method public final l()Z
    .locals 2

    .prologue
    .line 7026
    iget v0, p0, Lcom/b/a/ad;->e:I

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

.method public final m()Lcom/b/a/ag;
    .locals 1

    .prologue
    .line 7029
    iget-object v0, p0, Lcom/b/a/ad;->h:Lcom/b/a/ag;

    return-object v0
.end method

.method public final n()Lcom/b/a/ai;
    .locals 1

    .prologue
    .line 7032
    iget-object v0, p0, Lcom/b/a/ad;->h:Lcom/b/a/ag;

    return-object v0
.end method
