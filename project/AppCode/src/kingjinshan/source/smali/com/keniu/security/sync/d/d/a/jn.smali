.class public final Lcom/keniu/security/sync/d/d/a/jn;
.super Lcom/b/a/dk;
.source "Loginsvr.java"

# interfaces
.implements Lcom/keniu/security/sync/d/d/a/jp;


# static fields
.field public static final a:I = 0x1

.field public static final b:I = 0x2

.field public static final c:I = 0x3

.field public static final d:I = 0x4

.field private static final e:Lcom/keniu/security/sync/d/d/a/jn;

.field private static final n:J


# instance fields
.field private f:I

.field private g:Lcom/keniu/security/sync/d/d/a/ge;

.field private h:Ljava/lang/Object;

.field private i:I

.field private k:Ljava/lang/Object;

.field private l:B

.field private m:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1811
    new-instance v0, Lcom/keniu/security/sync/d/d/a/jn;

    invoke-direct {v0}, Lcom/keniu/security/sync/d/d/a/jn;-><init>()V

    .line 1812
    sput-object v0, Lcom/keniu/security/sync/d/d/a/jn;->e:Lcom/keniu/security/sync/d/d/a/jn;

    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->h()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v1

    iput-object v1, v0, Lcom/keniu/security/sync/d/d/a/jn;->g:Lcom/keniu/security/sync/d/d/a/ge;

    const-string v1, ""

    iput-object v1, v0, Lcom/keniu/security/sync/d/d/a/jn;->h:Ljava/lang/Object;

    const/4 v1, 0x0

    iput v1, v0, Lcom/keniu/security/sync/d/d/a/jn;->i:I

    const-string v1, ""

    iput-object v1, v0, Lcom/keniu/security/sync/d/d/a/jn;->k:Ljava/lang/Object;

    .line 1813
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 1160
    invoke-direct {p0}, Lcom/b/a/dk;-><init>()V

    .line 1275
    iput-byte v0, p0, Lcom/keniu/security/sync/d/d/a/jn;->l:B

    .line 1310
    iput v0, p0, Lcom/keniu/security/sync/d/d/a/jn;->m:I

    .line 1160
    return-void
.end method

.method synthetic constructor <init>(Lcom/keniu/security/sync/d/d/a/jo;)V
    .locals 1
    .parameter

    .prologue
    .line 1153
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/keniu/security/sync/d/d/a/jn;-><init>(Lcom/keniu/security/sync/d/d/a/jo;B)V

    return-void
.end method

.method private constructor <init>(Lcom/keniu/security/sync/d/d/a/jo;B)V
    .locals 1
    .parameter
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 1158
    invoke-direct {p0, p1}, Lcom/b/a/dk;-><init>(Lcom/b/a/dn;)V

    .line 1275
    iput-byte v0, p0, Lcom/keniu/security/sync/d/d/a/jn;->l:B

    .line 1310
    iput v0, p0, Lcom/keniu/security/sync/d/d/a/jn;->m:I

    .line 1159
    return-void
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/jn;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1153
    iput p1, p0, Lcom/keniu/security/sync/d/d/a/jn;->i:I

    return p1
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/jn;Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/ge;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1153
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/jn;->g:Lcom/keniu/security/sync/d/d/a/ge;

    return-object p1
.end method

.method private static a(Lcom/b/a/i;)Lcom/keniu/security/sync/d/d/a/jn;
    .locals 1
    .parameter

    .prologue
    .line 1347
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/jo;->i()Lcom/keniu/security/sync/d/d/a/jo;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/jo;->a(Lcom/b/a/i;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/jo;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/jo;->a(Lcom/keniu/security/sync/d/d/a/jo;)Lcom/keniu/security/sync/d/d/a/jn;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/i;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/jn;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1353
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/jo;->i()Lcom/keniu/security/sync/d/d/a/jo;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/jo;->a(Lcom/b/a/i;Lcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/jo;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/jo;->a(Lcom/keniu/security/sync/d/d/a/jo;)Lcom/keniu/security/sync/d/d/a/jn;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/m;)Lcom/keniu/security/sync/d/d/a/jn;
    .locals 1
    .parameter

    .prologue
    .line 1401
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/jo;->i()Lcom/keniu/security/sync/d/d/a/jo;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/jo;->a(Lcom/b/a/m;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/jo;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/jo;->a(Lcom/keniu/security/sync/d/d/a/jo;)Lcom/keniu/security/sync/d/d/a/jn;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/jn;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1407
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/jo;->i()Lcom/keniu/security/sync/d/d/a/jo;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/jo;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/jo;

    move-result-object v0

    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/jo;->a(Lcom/keniu/security/sync/d/d/a/jo;)Lcom/keniu/security/sync/d/d/a/jn;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/io/InputStream;)Lcom/keniu/security/sync/d/d/a/jn;
    .locals 1
    .parameter

    .prologue
    .line 1369
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/jo;->i()Lcom/keniu/security/sync/d/d/a/jo;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/jo;->a(Ljava/io/InputStream;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/jo;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/jo;->a(Lcom/keniu/security/sync/d/d/a/jo;)Lcom/keniu/security/sync/d/d/a/jn;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/jn;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1375
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/jo;->i()Lcom/keniu/security/sync/d/d/a/jo;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/jo;->a(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/jo;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/jo;->a(Lcom/keniu/security/sync/d/d/a/jo;)Lcom/keniu/security/sync/d/d/a/jn;

    move-result-object v0

    return-object v0
.end method

.method private static a([B)Lcom/keniu/security/sync/d/d/a/jn;
    .locals 1
    .parameter

    .prologue
    .line 1358
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/jo;->i()Lcom/keniu/security/sync/d/d/a/jo;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/jo;->a([B)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/jo;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/jo;->a(Lcom/keniu/security/sync/d/d/a/jo;)Lcom/keniu/security/sync/d/d/a/jn;

    move-result-object v0

    return-object v0
.end method

.method private static a([BLcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/jn;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1364
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/jo;->i()Lcom/keniu/security/sync/d/d/a/jo;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/jo;->a([BLcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/jo;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/jo;->a(Lcom/keniu/security/sync/d/d/a/jo;)Lcom/keniu/security/sync/d/d/a/jn;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/keniu/security/sync/d/d/a/jn;)Lcom/keniu/security/sync/d/d/a/jo;
    .locals 1
    .parameter

    .prologue
    .line 1414
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/jo;->i()Lcom/keniu/security/sync/d/d/a/jo;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/jo;->a(Lcom/keniu/security/sync/d/d/a/jn;)Lcom/keniu/security/sync/d/d/a/jo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/jn;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1153
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/jn;->h:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic b(Lcom/keniu/security/sync/d/d/a/jn;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1153
    iput p1, p0, Lcom/keniu/security/sync/d/d/a/jn;->f:I

    return p1
.end method

.method private static b(Ljava/io/InputStream;)Lcom/keniu/security/sync/d/d/a/jn;
    .locals 2
    .parameter

    .prologue
    .line 1380
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/jo;->i()Lcom/keniu/security/sync/d/d/a/jo;

    move-result-object v0

    .line 1381
    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/jo;->b(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1382
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/jo;->a(Lcom/keniu/security/sync/d/d/a/jo;)Lcom/keniu/security/sync/d/d/a/jn;

    move-result-object v0

    .line 1384
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/jn;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1391
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/jo;->i()Lcom/keniu/security/sync/d/d/a/jo;

    move-result-object v0

    .line 1392
    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/jo;->b(Ljava/io/InputStream;Lcom/b/a/df;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1393
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/jo;->a(Lcom/keniu/security/sync/d/d/a/jo;)Lcom/keniu/security/sync/d/d/a/jn;

    move-result-object v0

    .line 1395
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Lcom/b/a/dp;)Lcom/keniu/security/sync/d/d/a/jo;
    .locals 1
    .parameter

    .prologue
    .line 1421
    new-instance v0, Lcom/keniu/security/sync/d/d/a/jo;

    invoke-direct {v0, p0}, Lcom/keniu/security/sync/d/d/a/jo;-><init>(Lcom/b/a/dp;)V

    .line 1422
    return-object v0
.end method

.method static synthetic b(Lcom/keniu/security/sync/d/d/a/jn;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1153
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/jn;->k:Ljava/lang/Object;

    return-object p1
.end method

.method public static h()Lcom/keniu/security/sync/d/d/a/jn;
    .locals 1

    .prologue
    .line 1164
    sget-object v0, Lcom/keniu/security/sync/d/d/a/jn;->e:Lcom/keniu/security/sync/d/d/a/jn;

    return-object v0
.end method

.method public static final i()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 1173
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ih;->d()Lcom/b/a/cj;

    move-result-object v0

    return-object v0
.end method

.method static synthetic s()Z
    .locals 1

    .prologue
    .line 1153
    sget-boolean v0, Lcom/keniu/security/sync/d/d/a/jn;->j:Z

    return v0
.end method

.method private static t()Lcom/keniu/security/sync/d/d/a/jn;
    .locals 1

    .prologue
    .line 1168
    sget-object v0, Lcom/keniu/security/sync/d/d/a/jn;->e:Lcom/keniu/security/sync/d/d/a/jn;

    return-object v0
.end method

.method private u()Lcom/b/a/i;
    .locals 2

    .prologue
    .line 1216
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/jn;->h:Ljava/lang/Object;

    .line 1217
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1218
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/b/a/i;->a(Ljava/lang/String;)Lcom/b/a/i;

    move-result-object v0

    .line 1220
    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/jn;->h:Ljava/lang/Object;

    .line 1223
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/b/a/i;

    goto :goto_0
.end method

.method private v()Lcom/b/a/i;
    .locals 2

    .prologue
    .line 1258
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/jn;->k:Ljava/lang/Object;

    .line 1259
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1260
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/b/a/i;->a(Ljava/lang/String;)Lcom/b/a/i;

    move-result-object v0

    .line 1262
    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/jn;->k:Ljava/lang/Object;

    .line 1265
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/b/a/i;

    goto :goto_0
.end method

.method private w()V
    .locals 1

    .prologue
    .line 1270
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->h()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/jn;->g:Lcom/keniu/security/sync/d/d/a/ge;

    .line 1271
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/jn;->h:Ljava/lang/Object;

    .line 1272
    const/4 v0, 0x0

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/jn;->i:I

    .line 1273
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/jn;->k:Ljava/lang/Object;

    .line 1274
    return-void
.end method

.method private static x()Lcom/keniu/security/sync/d/d/a/jo;
    .locals 1

    .prologue
    .line 1411
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/jo;->i()Lcom/keniu/security/sync/d/d/a/jo;

    move-result-object v0

    return-object v0
.end method

.method private static y()Lcom/keniu/security/sync/d/d/a/jo;
    .locals 1

    .prologue
    .line 1412
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/jo;->i()Lcom/keniu/security/sync/d/d/a/jo;

    move-result-object v0

    return-object v0
.end method

.method private z()Lcom/keniu/security/sync/d/d/a/jo;
    .locals 1

    .prologue
    .line 1416
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/jo;->i()Lcom/keniu/security/sync/d/d/a/jo;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/jo;->a(Lcom/keniu/security/sync/d/d/a/jn;)Lcom/keniu/security/sync/d/d/a/jo;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final B()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1341
    invoke-super {p0}, Lcom/b/a/dk;->B()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic D()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 1153
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/jn;->z()Lcom/keniu/security/sync/d/d/a/jo;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic E()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 1153
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/jo;->i()Lcom/keniu/security/sync/d/d/a/jo;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic F()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 1153
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/jn;->z()Lcom/keniu/security/sync/d/d/a/jo;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic G()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 1153
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/jo;->i()Lcom/keniu/security/sync/d/d/a/jo;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic H()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 1153
    sget-object v0, Lcom/keniu/security/sync/d/d/a/jn;->e:Lcom/keniu/security/sync/d/d/a/jn;

    return-object v0
.end method

.method public final bridge synthetic I()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 1153
    sget-object v0, Lcom/keniu/security/sync/d/d/a/jn;->e:Lcom/keniu/security/sync/d/d/a/jn;

    return-object v0
.end method

.method protected final synthetic a(Lcom/b/a/dp;)Lcom/b/a/ew;
    .locals 1
    .parameter

    .prologue
    .line 1153
    new-instance v0, Lcom/keniu/security/sync/d/d/a/jo;

    invoke-direct {v0, p1}, Lcom/keniu/security/sync/d/d/a/jo;-><init>(Lcom/b/a/dp;)V

    return-object v0
.end method

.method public final a(Lcom/b/a/n;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 1294
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/jn;->b()I

    .line 1295
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/jn;->f:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 1296
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/jn;->g:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-virtual {p1, v1, v0}, Lcom/b/a/n;->b(ILcom/b/a/ex;)V

    .line 1298
    :cond_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/jn;->f:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 1299
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/jn;->u()Lcom/b/a/i;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/b/a/n;->a(ILcom/b/a/i;)V

    .line 1301
    :cond_1
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/jn;->f:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_2

    .line 1302
    const/4 v0, 0x3

    iget v1, p0, Lcom/keniu/security/sync/d/d/a/jn;->i:I

    invoke-virtual {p1, v0, v1}, Lcom/b/a/n;->a(II)V

    .line 1304
    :cond_2
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/jn;->f:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3

    .line 1305
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/jn;->v()Lcom/b/a/i;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Lcom/b/a/n;->a(ILcom/b/a/i;)V

    .line 1307
    :cond_3
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/jn;->b_()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/b/a/gg;->a(Lcom/b/a/n;)V

    .line 1308
    return-void
.end method

.method public final a()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1277
    iget-byte v0, p0, Lcom/keniu/security/sync/d/d/a/jn;->l:B

    .line 1278
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-ne v0, v3, :cond_0

    move v0, v3

    .line 1289
    :goto_0
    return v0

    :cond_0
    move v0, v2

    .line 1278
    goto :goto_0

    .line 1280
    :cond_1
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/jn;->j()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1281
    iput-byte v2, p0, Lcom/keniu/security/sync/d/d/a/jn;->l:B

    move v0, v2

    .line 1282
    goto :goto_0

    .line 1284
    :cond_2
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/jn;->g:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/ge;->a()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1285
    iput-byte v2, p0, Lcom/keniu/security/sync/d/d/a/jn;->l:B

    move v0, v2

    .line 1286
    goto :goto_0

    .line 1288
    :cond_3
    iput-byte v3, p0, Lcom/keniu/security/sync/d/d/a/jn;->l:B

    move v0, v3

    .line 1289
    goto :goto_0
.end method

.method public final b()I
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 1312
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/jn;->m:I

    .line 1313
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1334
    :goto_0
    return v0

    .line 1315
    :cond_0
    const/4 v0, 0x0

    .line 1316
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/jn;->f:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_1

    .line 1317
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/jn;->g:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-static {v2, v0}, Lcom/b/a/n;->e(ILcom/b/a/ex;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 1320
    :cond_1
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/jn;->f:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_2

    .line 1321
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/jn;->u()Lcom/b/a/i;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/b/a/n;->c(ILcom/b/a/i;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1324
    :cond_2
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/jn;->f:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v4, :cond_3

    .line 1325
    const/4 v1, 0x3

    iget v2, p0, Lcom/keniu/security/sync/d/d/a/jn;->i:I

    invoke-static {v1, v2}, Lcom/b/a/n;->d(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1328
    :cond_3
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/jn;->f:I

    and-int/lit8 v1, v1, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_4

    .line 1329
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/jn;->v()Lcom/b/a/i;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/b/a/n;->c(ILcom/b/a/i;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1332
    :cond_4
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/jn;->b_()Lcom/b/a/gg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/b/a/gg;->b()I

    move-result v1

    add-int/2addr v0, v1

    .line 1333
    iput v0, p0, Lcom/keniu/security/sync/d/d/a/jn;->m:I

    goto :goto_0
.end method

.method protected final g()Lcom/b/a/dv;
    .locals 1

    .prologue
    .line 1178
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ih;->e()Lcom/b/a/dv;

    move-result-object v0

    return-object v0
.end method

.method public final j()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1186
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/jn;->f:I

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
    .line 1189
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/jn;->g:Lcom/keniu/security/sync/d/d/a/ge;

    return-object v0
.end method

.method public final l()Lcom/keniu/security/sync/d/d/a/gg;
    .locals 1

    .prologue
    .line 1192
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/jn;->g:Lcom/keniu/security/sync/d/d/a/ge;

    return-object v0
.end method

.method public final m()Z
    .locals 2

    .prologue
    .line 1199
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/jn;->f:I

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

.method public final n()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1202
    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/jn;->h:Ljava/lang/Object;

    .line 1203
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1204
    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object p0, v0

    move-object v1, p0

    .line 1212
    :goto_0
    return-object v1

    .line 1206
    :cond_0
    check-cast v1, Lcom/b/a/i;

    .line 1208
    invoke-virtual {v1}, Lcom/b/a/i;->b()Ljava/lang/String;

    move-result-object v2

    .line 1209
    invoke-static {v1}, Lcom/b/a/ep;->a(Lcom/b/a/i;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1210
    iput-object v2, p0, Lcom/keniu/security/sync/d/d/a/jn;->h:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 1212
    goto :goto_0
.end method

.method public final o()Z
    .locals 2

    .prologue
    .line 1231
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/jn;->f:I

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

.method public final p()I
    .locals 1

    .prologue
    .line 1234
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/jn;->i:I

    return v0
.end method

.method public final q()Z
    .locals 2

    .prologue
    .line 1241
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/jn;->f:I

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

.method public final r()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1244
    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/jn;->k:Ljava/lang/Object;

    .line 1245
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1246
    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object p0, v0

    move-object v1, p0

    .line 1254
    :goto_0
    return-object v1

    .line 1248
    :cond_0
    check-cast v1, Lcom/b/a/i;

    .line 1250
    invoke-virtual {v1}, Lcom/b/a/i;->b()Ljava/lang/String;

    move-result-object v2

    .line 1251
    invoke-static {v1}, Lcom/b/a/ep;->a(Lcom/b/a/i;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1252
    iput-object v2, p0, Lcom/keniu/security/sync/d/d/a/jn;->k:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 1254
    goto :goto_0
.end method
