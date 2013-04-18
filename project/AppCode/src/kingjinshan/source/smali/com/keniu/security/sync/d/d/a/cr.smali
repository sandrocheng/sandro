.class public final Lcom/keniu/security/sync/d/d/a/cr;
.super Lcom/b/a/dk;
.source "Appsvr.java"

# interfaces
.implements Lcom/keniu/security/sync/d/d/a/ct;


# static fields
.field public static final a:I = 0x1

.field public static final b:I = 0x2

.field public static final c:I = 0x3

.field private static final d:Lcom/keniu/security/sync/d/d/a/cr;

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
    .line 7582
    new-instance v0, Lcom/keniu/security/sync/d/d/a/cr;

    invoke-direct {v0}, Lcom/keniu/security/sync/d/d/a/cr;-><init>()V

    .line 7583
    sput-object v0, Lcom/keniu/security/sync/d/d/a/cr;->d:Lcom/keniu/security/sync/d/d/a/cr;

    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->h()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v1

    iput-object v1, v0, Lcom/keniu/security/sync/d/d/a/cr;->f:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gj;->h()Lcom/keniu/security/sync/d/d/a/gj;

    move-result-object v1

    iput-object v1, v0, Lcom/keniu/security/sync/d/d/a/cr;->g:Lcom/keniu/security/sync/d/d/a/gj;

    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gy;->h()Lcom/keniu/security/sync/d/d/a/gy;

    move-result-object v1

    iput-object v1, v0, Lcom/keniu/security/sync/d/d/a/cr;->h:Lcom/keniu/security/sync/d/d/a/gy;

    .line 7584
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 6888
    invoke-direct {p0}, Lcom/b/a/dk;-><init>()V

    .line 6954
    iput-byte v0, p0, Lcom/keniu/security/sync/d/d/a/cr;->i:B

    .line 6986
    iput v0, p0, Lcom/keniu/security/sync/d/d/a/cr;->k:I

    .line 6888
    return-void
.end method

.method synthetic constructor <init>(Lcom/keniu/security/sync/d/d/a/cs;)V
    .locals 1
    .parameter

    .prologue
    .line 6881
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/keniu/security/sync/d/d/a/cr;-><init>(Lcom/keniu/security/sync/d/d/a/cs;B)V

    return-void
.end method

.method private constructor <init>(Lcom/keniu/security/sync/d/d/a/cs;B)V
    .locals 1
    .parameter
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 6886
    invoke-direct {p0, p1}, Lcom/b/a/dk;-><init>(Lcom/b/a/dn;)V

    .line 6954
    iput-byte v0, p0, Lcom/keniu/security/sync/d/d/a/cr;->i:B

    .line 6986
    iput v0, p0, Lcom/keniu/security/sync/d/d/a/cr;->k:I

    .line 6887
    return-void
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/cr;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 6881
    iput p1, p0, Lcom/keniu/security/sync/d/d/a/cr;->e:I

    return p1
.end method

.method private static a(Lcom/b/a/i;)Lcom/keniu/security/sync/d/d/a/cr;
    .locals 1
    .parameter

    .prologue
    .line 7019
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/cs;->i()Lcom/keniu/security/sync/d/d/a/cs;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/cs;->a(Lcom/b/a/i;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/cs;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/cs;->a(Lcom/keniu/security/sync/d/d/a/cs;)Lcom/keniu/security/sync/d/d/a/cr;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/i;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/cr;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 7025
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/cs;->i()Lcom/keniu/security/sync/d/d/a/cs;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/cs;->a(Lcom/b/a/i;Lcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/cs;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/cs;->a(Lcom/keniu/security/sync/d/d/a/cs;)Lcom/keniu/security/sync/d/d/a/cr;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/m;)Lcom/keniu/security/sync/d/d/a/cr;
    .locals 1
    .parameter

    .prologue
    .line 7073
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/cs;->i()Lcom/keniu/security/sync/d/d/a/cs;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/cs;->a(Lcom/b/a/m;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/cs;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/cs;->a(Lcom/keniu/security/sync/d/d/a/cs;)Lcom/keniu/security/sync/d/d/a/cr;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/cr;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 7079
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/cs;->i()Lcom/keniu/security/sync/d/d/a/cs;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/cs;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/cs;

    move-result-object v0

    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/cs;->a(Lcom/keniu/security/sync/d/d/a/cs;)Lcom/keniu/security/sync/d/d/a/cr;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/io/InputStream;)Lcom/keniu/security/sync/d/d/a/cr;
    .locals 1
    .parameter

    .prologue
    .line 7041
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/cs;->i()Lcom/keniu/security/sync/d/d/a/cs;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/cs;->a(Ljava/io/InputStream;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/cs;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/cs;->a(Lcom/keniu/security/sync/d/d/a/cs;)Lcom/keniu/security/sync/d/d/a/cr;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/cr;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 7047
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/cs;->i()Lcom/keniu/security/sync/d/d/a/cs;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/cs;->a(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/cs;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/cs;->a(Lcom/keniu/security/sync/d/d/a/cs;)Lcom/keniu/security/sync/d/d/a/cr;

    move-result-object v0

    return-object v0
.end method

.method private static a([B)Lcom/keniu/security/sync/d/d/a/cr;
    .locals 1
    .parameter

    .prologue
    .line 7030
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/cs;->i()Lcom/keniu/security/sync/d/d/a/cs;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/cs;->a([B)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/cs;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/cs;->a(Lcom/keniu/security/sync/d/d/a/cs;)Lcom/keniu/security/sync/d/d/a/cr;

    move-result-object v0

    return-object v0
.end method

.method private static a([BLcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/cr;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 7036
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/cs;->i()Lcom/keniu/security/sync/d/d/a/cs;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/cs;->a([BLcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/cs;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/cs;->a(Lcom/keniu/security/sync/d/d/a/cs;)Lcom/keniu/security/sync/d/d/a/cr;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/keniu/security/sync/d/d/a/cr;)Lcom/keniu/security/sync/d/d/a/cs;
    .locals 1
    .parameter

    .prologue
    .line 7086
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/cs;->i()Lcom/keniu/security/sync/d/d/a/cs;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/cs;->a(Lcom/keniu/security/sync/d/d/a/cr;)Lcom/keniu/security/sync/d/d/a/cs;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/cr;Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/ge;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 6881
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/cr;->f:Lcom/keniu/security/sync/d/d/a/ge;

    return-object p1
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/cr;Lcom/keniu/security/sync/d/d/a/gj;)Lcom/keniu/security/sync/d/d/a/gj;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 6881
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/cr;->g:Lcom/keniu/security/sync/d/d/a/gj;

    return-object p1
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/cr;Lcom/keniu/security/sync/d/d/a/gy;)Lcom/keniu/security/sync/d/d/a/gy;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 6881
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/cr;->h:Lcom/keniu/security/sync/d/d/a/gy;

    return-object p1
.end method

.method private static b(Ljava/io/InputStream;)Lcom/keniu/security/sync/d/d/a/cr;
    .locals 2
    .parameter

    .prologue
    .line 7052
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/cs;->i()Lcom/keniu/security/sync/d/d/a/cs;

    move-result-object v0

    .line 7053
    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/cs;->b(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7054
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/cs;->a(Lcom/keniu/security/sync/d/d/a/cs;)Lcom/keniu/security/sync/d/d/a/cr;

    move-result-object v0

    .line 7056
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/cr;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 7063
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/cs;->i()Lcom/keniu/security/sync/d/d/a/cs;

    move-result-object v0

    .line 7064
    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/cs;->b(Ljava/io/InputStream;Lcom/b/a/df;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7065
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/cs;->a(Lcom/keniu/security/sync/d/d/a/cs;)Lcom/keniu/security/sync/d/d/a/cr;

    move-result-object v0

    .line 7067
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Lcom/b/a/dp;)Lcom/keniu/security/sync/d/d/a/cs;
    .locals 1
    .parameter

    .prologue
    .line 7093
    new-instance v0, Lcom/keniu/security/sync/d/d/a/cs;

    invoke-direct {v0, p0}, Lcom/keniu/security/sync/d/d/a/cs;-><init>(Lcom/b/a/dp;)V

    .line 7094
    return-object v0
.end method

.method public static h()Lcom/keniu/security/sync/d/d/a/cr;
    .locals 1

    .prologue
    .line 6892
    sget-object v0, Lcom/keniu/security/sync/d/d/a/cr;->d:Lcom/keniu/security/sync/d/d/a/cr;

    return-object v0
.end method

.method public static final i()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 6901
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/a;->x()Lcom/b/a/cj;

    move-result-object v0

    return-object v0
.end method

.method static synthetic s()Z
    .locals 1

    .prologue
    .line 6881
    sget-boolean v0, Lcom/keniu/security/sync/d/d/a/cr;->j:Z

    return v0
.end method

.method private static t()Lcom/keniu/security/sync/d/d/a/cr;
    .locals 1

    .prologue
    .line 6896
    sget-object v0, Lcom/keniu/security/sync/d/d/a/cr;->d:Lcom/keniu/security/sync/d/d/a/cr;

    return-object v0
.end method

.method private u()V
    .locals 1

    .prologue
    .line 6950
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->h()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/cr;->f:Lcom/keniu/security/sync/d/d/a/ge;

    .line 6951
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gj;->h()Lcom/keniu/security/sync/d/d/a/gj;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/cr;->g:Lcom/keniu/security/sync/d/d/a/gj;

    .line 6952
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gy;->h()Lcom/keniu/security/sync/d/d/a/gy;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/cr;->h:Lcom/keniu/security/sync/d/d/a/gy;

    .line 6953
    return-void
.end method

.method private static v()Lcom/keniu/security/sync/d/d/a/cs;
    .locals 1

    .prologue
    .line 7083
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/cs;->i()Lcom/keniu/security/sync/d/d/a/cs;

    move-result-object v0

    return-object v0
.end method

.method private static w()Lcom/keniu/security/sync/d/d/a/cs;
    .locals 1

    .prologue
    .line 7084
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/cs;->i()Lcom/keniu/security/sync/d/d/a/cs;

    move-result-object v0

    return-object v0
.end method

.method private x()Lcom/keniu/security/sync/d/d/a/cs;
    .locals 1

    .prologue
    .line 7088
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/cs;->i()Lcom/keniu/security/sync/d/d/a/cs;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/cs;->a(Lcom/keniu/security/sync/d/d/a/cr;)Lcom/keniu/security/sync/d/d/a/cs;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final B()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 7013
    invoke-super {p0}, Lcom/b/a/dk;->B()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic D()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 6881
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/cr;->x()Lcom/keniu/security/sync/d/d/a/cs;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic E()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 6881
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/cs;->i()Lcom/keniu/security/sync/d/d/a/cs;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic F()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 6881
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/cr;->x()Lcom/keniu/security/sync/d/d/a/cs;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic G()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 6881
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/cs;->i()Lcom/keniu/security/sync/d/d/a/cs;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic H()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 6881
    sget-object v0, Lcom/keniu/security/sync/d/d/a/cr;->d:Lcom/keniu/security/sync/d/d/a/cr;

    return-object v0
.end method

.method public final bridge synthetic I()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 6881
    sget-object v0, Lcom/keniu/security/sync/d/d/a/cr;->d:Lcom/keniu/security/sync/d/d/a/cr;

    return-object v0
.end method

.method protected final synthetic a(Lcom/b/a/dp;)Lcom/b/a/ew;
    .locals 1
    .parameter

    .prologue
    .line 6881
    new-instance v0, Lcom/keniu/security/sync/d/d/a/cs;

    invoke-direct {v0, p1}, Lcom/keniu/security/sync/d/d/a/cs;-><init>(Lcom/b/a/dp;)V

    return-object v0
.end method

.method public final a(Lcom/b/a/n;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 6973
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/cr;->b()I

    .line 6974
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/cr;->e:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 6975
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/cr;->f:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-virtual {p1, v1, v0}, Lcom/b/a/n;->b(ILcom/b/a/ex;)V

    .line 6977
    :cond_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/cr;->e:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 6978
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/cr;->g:Lcom/keniu/security/sync/d/d/a/gj;

    invoke-virtual {p1, v2, v0}, Lcom/b/a/n;->b(ILcom/b/a/ex;)V

    .line 6980
    :cond_1
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/cr;->e:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 6981
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/cr;->h:Lcom/keniu/security/sync/d/d/a/gy;

    invoke-virtual {p1, v0, v1}, Lcom/b/a/n;->b(ILcom/b/a/ex;)V

    .line 6983
    :cond_2
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/cr;->b_()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/b/a/gg;->a(Lcom/b/a/n;)V

    .line 6984
    return-void
.end method

.method public final a()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 6956
    iget-byte v0, p0, Lcom/keniu/security/sync/d/d/a/cr;->i:B

    .line 6957
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-ne v0, v3, :cond_0

    move v0, v3

    .line 6968
    :goto_0
    return v0

    :cond_0
    move v0, v2

    .line 6957
    goto :goto_0

    .line 6959
    :cond_1
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/cr;->j()Z

    move-result v0

    if-nez v0, :cond_2

    .line 6960
    iput-byte v2, p0, Lcom/keniu/security/sync/d/d/a/cr;->i:B

    move v0, v2

    .line 6961
    goto :goto_0

    .line 6963
    :cond_2
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/cr;->f:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/ge;->a()Z

    move-result v0

    if-nez v0, :cond_3

    .line 6964
    iput-byte v2, p0, Lcom/keniu/security/sync/d/d/a/cr;->i:B

    move v0, v2

    .line 6965
    goto :goto_0

    .line 6967
    :cond_3
    iput-byte v3, p0, Lcom/keniu/security/sync/d/d/a/cr;->i:B

    move v0, v3

    .line 6968
    goto :goto_0
.end method

.method public final b()I
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 6988
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/cr;->k:I

    .line 6989
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 7006
    :goto_0
    return v0

    .line 6991
    :cond_0
    const/4 v0, 0x0

    .line 6992
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/cr;->e:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_1

    .line 6993
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/cr;->f:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-static {v2, v0}, Lcom/b/a/n;->e(ILcom/b/a/ex;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 6996
    :cond_1
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/cr;->e:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_2

    .line 6997
    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/cr;->g:Lcom/keniu/security/sync/d/d/a/gj;

    invoke-static {v3, v1}, Lcom/b/a/n;->e(ILcom/b/a/ex;)I

    move-result v1

    add-int/2addr v0, v1

    .line 7000
    :cond_2
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/cr;->e:I

    and-int/lit8 v1, v1, 0x4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    .line 7001
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/keniu/security/sync/d/d/a/cr;->h:Lcom/keniu/security/sync/d/d/a/gy;

    invoke-static {v1, v2}, Lcom/b/a/n;->e(ILcom/b/a/ex;)I

    move-result v1

    add-int/2addr v0, v1

    .line 7004
    :cond_3
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/cr;->b_()Lcom/b/a/gg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/b/a/gg;->b()I

    move-result v1

    add-int/2addr v0, v1

    .line 7005
    iput v0, p0, Lcom/keniu/security/sync/d/d/a/cr;->k:I

    goto :goto_0
.end method

.method protected final g()Lcom/b/a/dv;
    .locals 1

    .prologue
    .line 6906
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/a;->y()Lcom/b/a/dv;

    move-result-object v0

    return-object v0
.end method

.method public final j()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 6914
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/cr;->e:I

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
    .line 6917
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/cr;->f:Lcom/keniu/security/sync/d/d/a/ge;

    return-object v0
.end method

.method public final l()Lcom/keniu/security/sync/d/d/a/gg;
    .locals 1

    .prologue
    .line 6920
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/cr;->f:Lcom/keniu/security/sync/d/d/a/ge;

    return-object v0
.end method

.method public final m()Z
    .locals 2

    .prologue
    .line 6927
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/cr;->e:I

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
    .line 6930
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/cr;->g:Lcom/keniu/security/sync/d/d/a/gj;

    return-object v0
.end method

.method public final o()Lcom/keniu/security/sync/d/d/a/gl;
    .locals 1

    .prologue
    .line 6933
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/cr;->g:Lcom/keniu/security/sync/d/d/a/gj;

    return-object v0
.end method

.method public final p()Z
    .locals 2

    .prologue
    .line 6940
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/cr;->e:I

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
    .line 6943
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/cr;->h:Lcom/keniu/security/sync/d/d/a/gy;

    return-object v0
.end method

.method public final r()Lcom/keniu/security/sync/d/d/a/ha;
    .locals 1

    .prologue
    .line 6946
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/cr;->h:Lcom/keniu/security/sync/d/d/a/gy;

    return-object v0
.end method
