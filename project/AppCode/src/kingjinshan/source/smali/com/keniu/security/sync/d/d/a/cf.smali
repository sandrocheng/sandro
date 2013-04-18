.class public final Lcom/keniu/security/sync/d/d/a/cf;
.super Lcom/b/a/dk;
.source "Appsvr.java"

# interfaces
.implements Lcom/keniu/security/sync/d/d/a/ch;


# static fields
.field public static final a:I = 0x1

.field public static final b:I = 0x2

.field public static final c:I = 0x3

.field public static final d:I = 0x4

.field private static final e:Lcom/keniu/security/sync/d/d/a/cf;

.field private static final n:J


# instance fields
.field private f:I

.field private g:Lcom/keniu/security/sync/d/d/a/ge;

.field private h:Lcom/keniu/security/sync/d/d/a/gj;

.field private i:Ljava/util/List;

.field private k:Lcom/keniu/security/sync/d/d/a/gy;

.field private l:B

.field private m:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 12001
    new-instance v0, Lcom/keniu/security/sync/d/d/a/cf;

    invoke-direct {v0}, Lcom/keniu/security/sync/d/d/a/cf;-><init>()V

    .line 12002
    sput-object v0, Lcom/keniu/security/sync/d/d/a/cf;->e:Lcom/keniu/security/sync/d/d/a/cf;

    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->h()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v1

    iput-object v1, v0, Lcom/keniu/security/sync/d/d/a/cf;->g:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gj;->h()Lcom/keniu/security/sync/d/d/a/gj;

    move-result-object v1

    iput-object v1, v0, Lcom/keniu/security/sync/d/d/a/cf;->h:Lcom/keniu/security/sync/d/d/a/gj;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/keniu/security/sync/d/d/a/cf;->i:Ljava/util/List;

    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gy;->h()Lcom/keniu/security/sync/d/d/a/gy;

    move-result-object v1

    iput-object v1, v0, Lcom/keniu/security/sync/d/d/a/cf;->k:Lcom/keniu/security/sync/d/d/a/gy;

    .line 12003
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 11044
    invoke-direct {p0}, Lcom/b/a/dk;-><init>()V

    .line 11132
    iput-byte v0, p0, Lcom/keniu/security/sync/d/d/a/cf;->l:B

    .line 11167
    iput v0, p0, Lcom/keniu/security/sync/d/d/a/cf;->m:I

    .line 11044
    return-void
.end method

.method synthetic constructor <init>(Lcom/keniu/security/sync/d/d/a/cg;)V
    .locals 1
    .parameter

    .prologue
    .line 11037
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/keniu/security/sync/d/d/a/cf;-><init>(Lcom/keniu/security/sync/d/d/a/cg;B)V

    return-void
.end method

.method private constructor <init>(Lcom/keniu/security/sync/d/d/a/cg;B)V
    .locals 1
    .parameter
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 11042
    invoke-direct {p0, p1}, Lcom/b/a/dk;-><init>(Lcom/b/a/dn;)V

    .line 11132
    iput-byte v0, p0, Lcom/keniu/security/sync/d/d/a/cf;->l:B

    .line 11167
    iput v0, p0, Lcom/keniu/security/sync/d/d/a/cf;->m:I

    .line 11043
    return-void
.end method

.method private static A()Lcom/keniu/security/sync/d/d/a/cg;
    .locals 1

    .prologue
    .line 11269
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/cg;->i()Lcom/keniu/security/sync/d/d/a/cg;

    move-result-object v0

    return-object v0
.end method

.method private J()Lcom/keniu/security/sync/d/d/a/cg;
    .locals 1

    .prologue
    .line 11273
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/cg;->i()Lcom/keniu/security/sync/d/d/a/cg;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/cg;->a(Lcom/keniu/security/sync/d/d/a/cf;)Lcom/keniu/security/sync/d/d/a/cg;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/cf;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 11037
    iput p1, p0, Lcom/keniu/security/sync/d/d/a/cf;->f:I

    return p1
.end method

.method private static a(Lcom/b/a/i;)Lcom/keniu/security/sync/d/d/a/cf;
    .locals 1
    .parameter

    .prologue
    .line 11204
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/cg;->i()Lcom/keniu/security/sync/d/d/a/cg;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/cg;->a(Lcom/b/a/i;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/cg;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/cg;->a(Lcom/keniu/security/sync/d/d/a/cg;)Lcom/keniu/security/sync/d/d/a/cf;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/i;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/cf;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 11210
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/cg;->i()Lcom/keniu/security/sync/d/d/a/cg;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/cg;->a(Lcom/b/a/i;Lcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/cg;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/cg;->a(Lcom/keniu/security/sync/d/d/a/cg;)Lcom/keniu/security/sync/d/d/a/cf;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/m;)Lcom/keniu/security/sync/d/d/a/cf;
    .locals 1
    .parameter

    .prologue
    .line 11258
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/cg;->i()Lcom/keniu/security/sync/d/d/a/cg;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/cg;->a(Lcom/b/a/m;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/cg;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/cg;->a(Lcom/keniu/security/sync/d/d/a/cg;)Lcom/keniu/security/sync/d/d/a/cf;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/cf;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 11264
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/cg;->i()Lcom/keniu/security/sync/d/d/a/cg;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/cg;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/cg;

    move-result-object v0

    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/cg;->a(Lcom/keniu/security/sync/d/d/a/cg;)Lcom/keniu/security/sync/d/d/a/cf;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/io/InputStream;)Lcom/keniu/security/sync/d/d/a/cf;
    .locals 1
    .parameter

    .prologue
    .line 11226
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/cg;->i()Lcom/keniu/security/sync/d/d/a/cg;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/cg;->a(Ljava/io/InputStream;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/cg;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/cg;->a(Lcom/keniu/security/sync/d/d/a/cg;)Lcom/keniu/security/sync/d/d/a/cf;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/cf;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 11232
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/cg;->i()Lcom/keniu/security/sync/d/d/a/cg;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/cg;->a(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/cg;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/cg;->a(Lcom/keniu/security/sync/d/d/a/cg;)Lcom/keniu/security/sync/d/d/a/cf;

    move-result-object v0

    return-object v0
.end method

.method private static a([B)Lcom/keniu/security/sync/d/d/a/cf;
    .locals 1
    .parameter

    .prologue
    .line 11215
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/cg;->i()Lcom/keniu/security/sync/d/d/a/cg;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/cg;->a([B)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/cg;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/cg;->a(Lcom/keniu/security/sync/d/d/a/cg;)Lcom/keniu/security/sync/d/d/a/cf;

    move-result-object v0

    return-object v0
.end method

.method private static a([BLcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/cf;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 11221
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/cg;->i()Lcom/keniu/security/sync/d/d/a/cg;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/cg;->a([BLcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/cg;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/cg;->a(Lcom/keniu/security/sync/d/d/a/cg;)Lcom/keniu/security/sync/d/d/a/cf;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/cf;Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/ge;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 11037
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/cf;->g:Lcom/keniu/security/sync/d/d/a/ge;

    return-object p1
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/cf;Lcom/keniu/security/sync/d/d/a/gj;)Lcom/keniu/security/sync/d/d/a/gj;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 11037
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/cf;->h:Lcom/keniu/security/sync/d/d/a/gj;

    return-object p1
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/cf;Lcom/keniu/security/sync/d/d/a/gy;)Lcom/keniu/security/sync/d/d/a/gy;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 11037
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/cf;->k:Lcom/keniu/security/sync/d/d/a/gy;

    return-object p1
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/cf;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 11037
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/cf;->i:Ljava/util/List;

    return-object v0
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/cf;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 11037
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/cf;->i:Ljava/util/List;

    return-object p1
.end method

.method private static b(Ljava/io/InputStream;)Lcom/keniu/security/sync/d/d/a/cf;
    .locals 2
    .parameter

    .prologue
    .line 11237
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/cg;->i()Lcom/keniu/security/sync/d/d/a/cg;

    move-result-object v0

    .line 11238
    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/cg;->b(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 11239
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/cg;->a(Lcom/keniu/security/sync/d/d/a/cg;)Lcom/keniu/security/sync/d/d/a/cf;

    move-result-object v0

    .line 11241
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/cf;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 11248
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/cg;->i()Lcom/keniu/security/sync/d/d/a/cg;

    move-result-object v0

    .line 11249
    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/cg;->b(Ljava/io/InputStream;Lcom/b/a/df;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 11250
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/cg;->a(Lcom/keniu/security/sync/d/d/a/cg;)Lcom/keniu/security/sync/d/d/a/cf;

    move-result-object v0

    .line 11252
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Lcom/b/a/dp;)Lcom/keniu/security/sync/d/d/a/cg;
    .locals 1
    .parameter

    .prologue
    .line 11278
    new-instance v0, Lcom/keniu/security/sync/d/d/a/cg;

    invoke-direct {v0, p0}, Lcom/keniu/security/sync/d/d/a/cg;-><init>(Lcom/b/a/dp;)V

    .line 11279
    return-object v0
.end method

.method private static b(Lcom/keniu/security/sync/d/d/a/cf;)Lcom/keniu/security/sync/d/d/a/cg;
    .locals 1
    .parameter

    .prologue
    .line 11271
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/cg;->i()Lcom/keniu/security/sync/d/d/a/cg;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/cg;->a(Lcom/keniu/security/sync/d/d/a/cf;)Lcom/keniu/security/sync/d/d/a/cg;

    move-result-object v0

    return-object v0
.end method

.method public static h()Lcom/keniu/security/sync/d/d/a/cf;
    .locals 1

    .prologue
    .line 11048
    sget-object v0, Lcom/keniu/security/sync/d/d/a/cf;->e:Lcom/keniu/security/sync/d/d/a/cf;

    return-object v0
.end method

.method public static final i()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 11057
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/a;->J()Lcom/b/a/cj;

    move-result-object v0

    return-object v0
.end method

.method static synthetic v()Z
    .locals 1

    .prologue
    .line 11037
    sget-boolean v0, Lcom/keniu/security/sync/d/d/a/cf;->j:Z

    return v0
.end method

.method static synthetic w()Z
    .locals 1

    .prologue
    .line 11037
    sget-boolean v0, Lcom/keniu/security/sync/d/d/a/cf;->j:Z

    return v0
.end method

.method private static x()Lcom/keniu/security/sync/d/d/a/cf;
    .locals 1

    .prologue
    .line 11052
    sget-object v0, Lcom/keniu/security/sync/d/d/a/cf;->e:Lcom/keniu/security/sync/d/d/a/cf;

    return-object v0
.end method

.method private y()V
    .locals 1

    .prologue
    .line 11127
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->h()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/cf;->g:Lcom/keniu/security/sync/d/d/a/ge;

    .line 11128
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gj;->h()Lcom/keniu/security/sync/d/d/a/gj;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/cf;->h:Lcom/keniu/security/sync/d/d/a/gj;

    .line 11129
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/cf;->i:Ljava/util/List;

    .line 11130
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gy;->h()Lcom/keniu/security/sync/d/d/a/gy;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/cf;->k:Lcom/keniu/security/sync/d/d/a/gy;

    .line 11131
    return-void
.end method

.method private static z()Lcom/keniu/security/sync/d/d/a/cg;
    .locals 1

    .prologue
    .line 11268
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/cg;->i()Lcom/keniu/security/sync/d/d/a/cg;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final B()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 11198
    invoke-super {p0}, Lcom/b/a/dk;->B()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic D()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 11037
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/cf;->J()Lcom/keniu/security/sync/d/d/a/cg;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic E()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 11037
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/cg;->i()Lcom/keniu/security/sync/d/d/a/cg;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic F()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 11037
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/cf;->J()Lcom/keniu/security/sync/d/d/a/cg;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic G()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 11037
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/cg;->i()Lcom/keniu/security/sync/d/d/a/cg;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic H()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 11037
    sget-object v0, Lcom/keniu/security/sync/d/d/a/cf;->e:Lcom/keniu/security/sync/d/d/a/cf;

    return-object v0
.end method

.method public final bridge synthetic I()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 11037
    sget-object v0, Lcom/keniu/security/sync/d/d/a/cf;->e:Lcom/keniu/security/sync/d/d/a/cf;

    return-object v0
.end method

.method protected final synthetic a(Lcom/b/a/dp;)Lcom/b/a/ew;
    .locals 1
    .parameter

    .prologue
    .line 11037
    new-instance v0, Lcom/keniu/security/sync/d/d/a/cg;

    invoke-direct {v0, p1}, Lcom/keniu/security/sync/d/d/a/cg;-><init>(Lcom/b/a/dp;)V

    return-object v0
.end method

.method public final a(I)Lcom/keniu/security/sync/d/d/a/gj;
    .locals 1
    .parameter

    .prologue
    .line 11106
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/cf;->i:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/gj;

    return-object p0
.end method

.method public final a(Lcom/b/a/n;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 11151
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/cf;->b()I

    .line 11152
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/cf;->f:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 11153
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/cf;->g:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-virtual {p1, v1, v0}, Lcom/b/a/n;->b(ILcom/b/a/ex;)V

    .line 11155
    :cond_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/cf;->f:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 11156
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/cf;->h:Lcom/keniu/security/sync/d/d/a/gj;

    invoke-virtual {p1, v2, v0}, Lcom/b/a/n;->b(ILcom/b/a/ex;)V

    .line 11158
    :cond_1
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/cf;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 11159
    const/4 v2, 0x3

    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/cf;->i:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/ex;

    invoke-virtual {p1, v2, v0}, Lcom/b/a/n;->b(ILcom/b/a/ex;)V

    .line 11158
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 11161
    :cond_2
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/cf;->f:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_3

    .line 11162
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/cf;->k:Lcom/keniu/security/sync/d/d/a/gy;

    invoke-virtual {p1, v3, v0}, Lcom/b/a/n;->b(ILcom/b/a/ex;)V

    .line 11164
    :cond_3
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/cf;->b_()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/b/a/gg;->a(Lcom/b/a/n;)V

    .line 11165
    return-void
.end method

.method public final a()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 11134
    iget-byte v0, p0, Lcom/keniu/security/sync/d/d/a/cf;->l:B

    .line 11135
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-ne v0, v3, :cond_0

    move v0, v3

    .line 11146
    :goto_0
    return v0

    :cond_0
    move v0, v2

    .line 11135
    goto :goto_0

    .line 11137
    :cond_1
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/cf;->j()Z

    move-result v0

    if-nez v0, :cond_2

    .line 11138
    iput-byte v2, p0, Lcom/keniu/security/sync/d/d/a/cf;->l:B

    move v0, v2

    .line 11139
    goto :goto_0

    .line 11141
    :cond_2
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/cf;->g:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/ge;->a()Z

    move-result v0

    if-nez v0, :cond_3

    .line 11142
    iput-byte v2, p0, Lcom/keniu/security/sync/d/d/a/cf;->l:B

    move v0, v2

    .line 11143
    goto :goto_0

    .line 11145
    :cond_3
    iput-byte v3, p0, Lcom/keniu/security/sync/d/d/a/cf;->l:B

    move v0, v3

    .line 11146
    goto :goto_0
.end method

.method public final b()I
    .locals 6

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 11169
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/cf;->m:I

    .line 11170
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 11191
    :goto_0
    return v0

    .line 11173
    :cond_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/cf;->f:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v3, :cond_4

    .line 11174
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/cf;->g:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-static {v3, v0}, Lcom/b/a/n;->e(ILcom/b/a/ex;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 11177
    :goto_1
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/cf;->f:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v4, :cond_1

    .line 11178
    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/cf;->h:Lcom/keniu/security/sync/d/d/a/gj;

    invoke-static {v4, v1}, Lcom/b/a/n;->e(ILcom/b/a/ex;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    move v1, v2

    move v2, v0

    .line 11181
    :goto_2
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/cf;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 11182
    const/4 v3, 0x3

    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/cf;->i:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/ex;

    invoke-static {v3, v0}, Lcom/b/a/n;->e(ILcom/b/a/ex;)I

    move-result v0

    add-int/2addr v0, v2

    .line 11181
    add-int/lit8 v1, v1, 0x1

    move v2, v0

    goto :goto_2

    .line 11185
    :cond_2
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/cf;->f:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v5, :cond_3

    .line 11186
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/cf;->k:Lcom/keniu/security/sync/d/d/a/gy;

    invoke-static {v5, v0}, Lcom/b/a/n;->e(ILcom/b/a/ex;)I

    move-result v0

    add-int/2addr v0, v2

    .line 11189
    :goto_3
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/cf;->b_()Lcom/b/a/gg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/b/a/gg;->b()I

    move-result v1

    add-int/2addr v0, v1

    .line 11190
    iput v0, p0, Lcom/keniu/security/sync/d/d/a/cf;->m:I

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_3

    :cond_4
    move v0, v2

    goto :goto_1
.end method

.method public final b(I)Lcom/keniu/security/sync/d/d/a/gl;
    .locals 1
    .parameter

    .prologue
    .line 11110
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/cf;->i:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/gl;

    return-object p0
.end method

.method protected final g()Lcom/b/a/dv;
    .locals 1

    .prologue
    .line 11062
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/a;->K()Lcom/b/a/dv;

    move-result-object v0

    return-object v0
.end method

.method public final j()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 11070
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/cf;->f:I

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
    .line 11073
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/cf;->g:Lcom/keniu/security/sync/d/d/a/ge;

    return-object v0
.end method

.method public final l()Lcom/keniu/security/sync/d/d/a/gg;
    .locals 1

    .prologue
    .line 11076
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/cf;->g:Lcom/keniu/security/sync/d/d/a/ge;

    return-object v0
.end method

.method public final m()Z
    .locals 2

    .prologue
    .line 11083
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/cf;->f:I

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
    .line 11086
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/cf;->h:Lcom/keniu/security/sync/d/d/a/gj;

    return-object v0
.end method

.method public final o()Lcom/keniu/security/sync/d/d/a/gl;
    .locals 1

    .prologue
    .line 11089
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/cf;->h:Lcom/keniu/security/sync/d/d/a/gj;

    return-object v0
.end method

.method public final p()Ljava/util/List;
    .locals 1

    .prologue
    .line 11096
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/cf;->i:Ljava/util/List;

    return-object v0
.end method

.method public final q()Ljava/util/List;
    .locals 1

    .prologue
    .line 11100
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/cf;->i:Ljava/util/List;

    return-object v0
.end method

.method public final r()I
    .locals 1

    .prologue
    .line 11103
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/cf;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final s()Z
    .locals 2

    .prologue
    .line 11117
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/cf;->f:I

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

.method public final t()Lcom/keniu/security/sync/d/d/a/gy;
    .locals 1

    .prologue
    .line 11120
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/cf;->k:Lcom/keniu/security/sync/d/d/a/gy;

    return-object v0
.end method

.method public final u()Lcom/keniu/security/sync/d/d/a/ha;
    .locals 1

    .prologue
    .line 11123
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/cf;->k:Lcom/keniu/security/sync/d/d/a/gy;

    return-object v0
.end method
