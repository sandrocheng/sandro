.class public final Lcom/keniu/security/sync/d/d/a/fe;
.super Lcom/b/a/dk;
.source "Appsvr.java"

# interfaces
.implements Lcom/keniu/security/sync/d/d/a/fg;


# static fields
.field public static final a:I = 0x1

.field public static final b:I = 0x2

.field public static final c:I = 0x3

.field private static final d:Lcom/keniu/security/sync/d/d/a/fe;

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
    .line 9604
    new-instance v0, Lcom/keniu/security/sync/d/d/a/fe;

    invoke-direct {v0}, Lcom/keniu/security/sync/d/d/a/fe;-><init>()V

    .line 9605
    sput-object v0, Lcom/keniu/security/sync/d/d/a/fe;->d:Lcom/keniu/security/sync/d/d/a/fe;

    const-string v1, ""

    iput-object v1, v0, Lcom/keniu/security/sync/d/d/a/fe;->f:Ljava/lang/Object;

    const-string v1, ""

    iput-object v1, v0, Lcom/keniu/security/sync/d/d/a/fe;->g:Ljava/lang/Object;

    const-string v1, ""

    iput-object v1, v0, Lcom/keniu/security/sync/d/d/a/fe;->h:Ljava/lang/Object;

    .line 9606
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 9046
    invoke-direct {p0}, Lcom/b/a/dk;-><init>()V

    .line 9169
    iput-byte v0, p0, Lcom/keniu/security/sync/d/d/a/fe;->i:B

    .line 9205
    iput v0, p0, Lcom/keniu/security/sync/d/d/a/fe;->k:I

    .line 9046
    return-void
.end method

.method synthetic constructor <init>(Lcom/keniu/security/sync/d/d/a/ff;)V
    .locals 1
    .parameter

    .prologue
    .line 9039
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/keniu/security/sync/d/d/a/fe;-><init>(Lcom/keniu/security/sync/d/d/a/ff;B)V

    return-void
.end method

.method private constructor <init>(Lcom/keniu/security/sync/d/d/a/ff;B)V
    .locals 1
    .parameter
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 9044
    invoke-direct {p0, p1}, Lcom/b/a/dk;-><init>(Lcom/b/a/dn;)V

    .line 9169
    iput-byte v0, p0, Lcom/keniu/security/sync/d/d/a/fe;->i:B

    .line 9205
    iput v0, p0, Lcom/keniu/security/sync/d/d/a/fe;->k:I

    .line 9045
    return-void
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/fe;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 9039
    iput p1, p0, Lcom/keniu/security/sync/d/d/a/fe;->e:I

    return p1
.end method

.method private static a(Lcom/b/a/i;)Lcom/keniu/security/sync/d/d/a/fe;
    .locals 1
    .parameter

    .prologue
    .line 9238
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ff;->i()Lcom/keniu/security/sync/d/d/a/ff;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/ff;->a(Lcom/b/a/i;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/ff;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/ff;->a(Lcom/keniu/security/sync/d/d/a/ff;)Lcom/keniu/security/sync/d/d/a/fe;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/i;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/fe;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 9244
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ff;->i()Lcom/keniu/security/sync/d/d/a/ff;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/ff;->a(Lcom/b/a/i;Lcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/ff;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/ff;->a(Lcom/keniu/security/sync/d/d/a/ff;)Lcom/keniu/security/sync/d/d/a/fe;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/m;)Lcom/keniu/security/sync/d/d/a/fe;
    .locals 1
    .parameter

    .prologue
    .line 9292
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ff;->i()Lcom/keniu/security/sync/d/d/a/ff;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/ff;->a(Lcom/b/a/m;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/ff;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/ff;->a(Lcom/keniu/security/sync/d/d/a/ff;)Lcom/keniu/security/sync/d/d/a/fe;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/fe;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 9298
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ff;->i()Lcom/keniu/security/sync/d/d/a/ff;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/ff;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/ff;

    move-result-object v0

    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/ff;->a(Lcom/keniu/security/sync/d/d/a/ff;)Lcom/keniu/security/sync/d/d/a/fe;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/io/InputStream;)Lcom/keniu/security/sync/d/d/a/fe;
    .locals 1
    .parameter

    .prologue
    .line 9260
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ff;->i()Lcom/keniu/security/sync/d/d/a/ff;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/ff;->a(Ljava/io/InputStream;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/ff;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/ff;->a(Lcom/keniu/security/sync/d/d/a/ff;)Lcom/keniu/security/sync/d/d/a/fe;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/fe;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 9266
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ff;->i()Lcom/keniu/security/sync/d/d/a/ff;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/ff;->a(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/ff;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/ff;->a(Lcom/keniu/security/sync/d/d/a/ff;)Lcom/keniu/security/sync/d/d/a/fe;

    move-result-object v0

    return-object v0
.end method

.method private static a([B)Lcom/keniu/security/sync/d/d/a/fe;
    .locals 1
    .parameter

    .prologue
    .line 9249
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ff;->i()Lcom/keniu/security/sync/d/d/a/ff;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/ff;->a([B)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/ff;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/ff;->a(Lcom/keniu/security/sync/d/d/a/ff;)Lcom/keniu/security/sync/d/d/a/fe;

    move-result-object v0

    return-object v0
.end method

.method private static a([BLcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/fe;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 9255
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ff;->i()Lcom/keniu/security/sync/d/d/a/ff;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/ff;->a([BLcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/ff;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/ff;->a(Lcom/keniu/security/sync/d/d/a/ff;)Lcom/keniu/security/sync/d/d/a/fe;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/keniu/security/sync/d/d/a/fe;)Lcom/keniu/security/sync/d/d/a/ff;
    .locals 1
    .parameter

    .prologue
    .line 9305
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ff;->i()Lcom/keniu/security/sync/d/d/a/ff;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/ff;->a(Lcom/keniu/security/sync/d/d/a/fe;)Lcom/keniu/security/sync/d/d/a/ff;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/fe;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 9039
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/fe;->f:Ljava/lang/Object;

    return-object p1
.end method

.method private static b(Ljava/io/InputStream;)Lcom/keniu/security/sync/d/d/a/fe;
    .locals 2
    .parameter

    .prologue
    .line 9271
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ff;->i()Lcom/keniu/security/sync/d/d/a/ff;

    move-result-object v0

    .line 9272
    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/ff;->b(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 9273
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/ff;->a(Lcom/keniu/security/sync/d/d/a/ff;)Lcom/keniu/security/sync/d/d/a/fe;

    move-result-object v0

    .line 9275
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/fe;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 9282
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ff;->i()Lcom/keniu/security/sync/d/d/a/ff;

    move-result-object v0

    .line 9283
    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/ff;->b(Ljava/io/InputStream;Lcom/b/a/df;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 9284
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/ff;->a(Lcom/keniu/security/sync/d/d/a/ff;)Lcom/keniu/security/sync/d/d/a/fe;

    move-result-object v0

    .line 9286
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Lcom/b/a/dp;)Lcom/keniu/security/sync/d/d/a/ff;
    .locals 1
    .parameter

    .prologue
    .line 9312
    new-instance v0, Lcom/keniu/security/sync/d/d/a/ff;

    invoke-direct {v0, p0}, Lcom/keniu/security/sync/d/d/a/ff;-><init>(Lcom/b/a/dp;)V

    .line 9313
    return-object v0
.end method

.method static synthetic b(Lcom/keniu/security/sync/d/d/a/fe;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 9039
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/fe;->g:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic c(Lcom/keniu/security/sync/d/d/a/fe;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 9039
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/fe;->h:Ljava/lang/Object;

    return-object p1
.end method

.method public static h()Lcom/keniu/security/sync/d/d/a/fe;
    .locals 1

    .prologue
    .line 9050
    sget-object v0, Lcom/keniu/security/sync/d/d/a/fe;->d:Lcom/keniu/security/sync/d/d/a/fe;

    return-object v0
.end method

.method public static final i()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 9059
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/a;->D()Lcom/b/a/cj;

    move-result-object v0

    return-object v0
.end method

.method static synthetic p()Z
    .locals 1

    .prologue
    .line 9039
    sget-boolean v0, Lcom/keniu/security/sync/d/d/a/fe;->j:Z

    return v0
.end method

.method private static q()Lcom/keniu/security/sync/d/d/a/fe;
    .locals 1

    .prologue
    .line 9054
    sget-object v0, Lcom/keniu/security/sync/d/d/a/fe;->d:Lcom/keniu/security/sync/d/d/a/fe;

    return-object v0
.end method

.method private r()Lcom/b/a/i;
    .locals 2

    .prologue
    .line 9089
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/fe;->f:Ljava/lang/Object;

    .line 9090
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 9091
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/b/a/i;->a(Ljava/lang/String;)Lcom/b/a/i;

    move-result-object v0

    .line 9093
    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/fe;->f:Ljava/lang/Object;

    .line 9096
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/b/a/i;

    goto :goto_0
.end method

.method private s()Lcom/b/a/i;
    .locals 2

    .prologue
    .line 9121
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/fe;->g:Ljava/lang/Object;

    .line 9122
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 9123
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/b/a/i;->a(Ljava/lang/String;)Lcom/b/a/i;

    move-result-object v0

    .line 9125
    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/fe;->g:Ljava/lang/Object;

    .line 9128
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/b/a/i;

    goto :goto_0
.end method

.method private t()Lcom/b/a/i;
    .locals 2

    .prologue
    .line 9153
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/fe;->h:Ljava/lang/Object;

    .line 9154
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 9155
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/b/a/i;->a(Ljava/lang/String;)Lcom/b/a/i;

    move-result-object v0

    .line 9157
    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/fe;->h:Ljava/lang/Object;

    .line 9160
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/b/a/i;

    goto :goto_0
.end method

.method private u()V
    .locals 1

    .prologue
    .line 9165
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/fe;->f:Ljava/lang/Object;

    .line 9166
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/fe;->g:Ljava/lang/Object;

    .line 9167
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/fe;->h:Ljava/lang/Object;

    .line 9168
    return-void
.end method

.method private static v()Lcom/keniu/security/sync/d/d/a/ff;
    .locals 1

    .prologue
    .line 9302
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ff;->i()Lcom/keniu/security/sync/d/d/a/ff;

    move-result-object v0

    return-object v0
.end method

.method private static w()Lcom/keniu/security/sync/d/d/a/ff;
    .locals 1

    .prologue
    .line 9303
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ff;->i()Lcom/keniu/security/sync/d/d/a/ff;

    move-result-object v0

    return-object v0
.end method

.method private x()Lcom/keniu/security/sync/d/d/a/ff;
    .locals 1

    .prologue
    .line 9307
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ff;->i()Lcom/keniu/security/sync/d/d/a/ff;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/ff;->a(Lcom/keniu/security/sync/d/d/a/fe;)Lcom/keniu/security/sync/d/d/a/ff;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final B()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 9232
    invoke-super {p0}, Lcom/b/a/dk;->B()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic D()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 9039
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/fe;->x()Lcom/keniu/security/sync/d/d/a/ff;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic E()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 9039
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ff;->i()Lcom/keniu/security/sync/d/d/a/ff;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic F()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 9039
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/fe;->x()Lcom/keniu/security/sync/d/d/a/ff;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic G()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 9039
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ff;->i()Lcom/keniu/security/sync/d/d/a/ff;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic H()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 9039
    sget-object v0, Lcom/keniu/security/sync/d/d/a/fe;->d:Lcom/keniu/security/sync/d/d/a/fe;

    return-object v0
.end method

.method public final bridge synthetic I()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 9039
    sget-object v0, Lcom/keniu/security/sync/d/d/a/fe;->d:Lcom/keniu/security/sync/d/d/a/fe;

    return-object v0
.end method

.method protected final synthetic a(Lcom/b/a/dp;)Lcom/b/a/ew;
    .locals 1
    .parameter

    .prologue
    .line 9039
    new-instance v0, Lcom/keniu/security/sync/d/d/a/ff;

    invoke-direct {v0, p1}, Lcom/keniu/security/sync/d/d/a/ff;-><init>(Lcom/b/a/dp;)V

    return-object v0
.end method

.method public final a(Lcom/b/a/n;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 9192
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/fe;->b()I

    .line 9193
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/fe;->e:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 9194
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/fe;->r()Lcom/b/a/i;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/b/a/n;->a(ILcom/b/a/i;)V

    .line 9196
    :cond_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/fe;->e:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 9197
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/fe;->s()Lcom/b/a/i;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/b/a/n;->a(ILcom/b/a/i;)V

    .line 9199
    :cond_1
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/fe;->e:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 9200
    const/4 v0, 0x3

    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/fe;->t()Lcom/b/a/i;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/b/a/n;->a(ILcom/b/a/i;)V

    .line 9202
    :cond_2
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/fe;->b_()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/b/a/gg;->a(Lcom/b/a/n;)V

    .line 9203
    return-void
.end method

.method public final a()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 9171
    iget-byte v0, p0, Lcom/keniu/security/sync/d/d/a/fe;->i:B

    .line 9172
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-ne v0, v3, :cond_0

    move v0, v3

    .line 9187
    :goto_0
    return v0

    :cond_0
    move v0, v2

    .line 9172
    goto :goto_0

    .line 9174
    :cond_1
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/fe;->j()Z

    move-result v0

    if-nez v0, :cond_2

    .line 9175
    iput-byte v2, p0, Lcom/keniu/security/sync/d/d/a/fe;->i:B

    move v0, v2

    .line 9176
    goto :goto_0

    .line 9178
    :cond_2
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/fe;->l()Z

    move-result v0

    if-nez v0, :cond_3

    .line 9179
    iput-byte v2, p0, Lcom/keniu/security/sync/d/d/a/fe;->i:B

    move v0, v2

    .line 9180
    goto :goto_0

    .line 9182
    :cond_3
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/fe;->n()Z

    move-result v0

    if-nez v0, :cond_4

    .line 9183
    iput-byte v2, p0, Lcom/keniu/security/sync/d/d/a/fe;->i:B

    move v0, v2

    .line 9184
    goto :goto_0

    .line 9186
    :cond_4
    iput-byte v3, p0, Lcom/keniu/security/sync/d/d/a/fe;->i:B

    move v0, v3

    .line 9187
    goto :goto_0
.end method

.method public final b()I
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 9207
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/fe;->k:I

    .line 9208
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 9225
    :goto_0
    return v0

    .line 9210
    :cond_0
    const/4 v0, 0x0

    .line 9211
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/fe;->e:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_1

    .line 9212
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/fe;->r()Lcom/b/a/i;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/b/a/n;->c(ILcom/b/a/i;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 9215
    :cond_1
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/fe;->e:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_2

    .line 9216
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/fe;->s()Lcom/b/a/i;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/b/a/n;->c(ILcom/b/a/i;)I

    move-result v1

    add-int/2addr v0, v1

    .line 9219
    :cond_2
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/fe;->e:I

    and-int/lit8 v1, v1, 0x4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    .line 9220
    const/4 v1, 0x3

    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/fe;->t()Lcom/b/a/i;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/b/a/n;->c(ILcom/b/a/i;)I

    move-result v1

    add-int/2addr v0, v1

    .line 9223
    :cond_3
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/fe;->b_()Lcom/b/a/gg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/b/a/gg;->b()I

    move-result v1

    add-int/2addr v0, v1

    .line 9224
    iput v0, p0, Lcom/keniu/security/sync/d/d/a/fe;->k:I

    goto :goto_0
.end method

.method protected final g()Lcom/b/a/dv;
    .locals 1

    .prologue
    .line 9064
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/a;->E()Lcom/b/a/dv;

    move-result-object v0

    return-object v0
.end method

.method public final j()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 9072
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/fe;->e:I

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
    .line 9075
    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/fe;->f:Ljava/lang/Object;

    .line 9076
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 9077
    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object p0, v0

    move-object v1, p0

    .line 9085
    :goto_0
    return-object v1

    .line 9079
    :cond_0
    check-cast v1, Lcom/b/a/i;

    .line 9081
    invoke-virtual {v1}, Lcom/b/a/i;->b()Ljava/lang/String;

    move-result-object v2

    .line 9082
    invoke-static {v1}, Lcom/b/a/ep;->a(Lcom/b/a/i;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 9083
    iput-object v2, p0, Lcom/keniu/security/sync/d/d/a/fe;->f:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 9085
    goto :goto_0
.end method

.method public final l()Z
    .locals 2

    .prologue
    .line 9104
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/fe;->e:I

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
    .line 9107
    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/fe;->g:Ljava/lang/Object;

    .line 9108
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 9109
    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object p0, v0

    move-object v1, p0

    .line 9117
    :goto_0
    return-object v1

    .line 9111
    :cond_0
    check-cast v1, Lcom/b/a/i;

    .line 9113
    invoke-virtual {v1}, Lcom/b/a/i;->b()Ljava/lang/String;

    move-result-object v2

    .line 9114
    invoke-static {v1}, Lcom/b/a/ep;->a(Lcom/b/a/i;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 9115
    iput-object v2, p0, Lcom/keniu/security/sync/d/d/a/fe;->g:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 9117
    goto :goto_0
.end method

.method public final n()Z
    .locals 2

    .prologue
    .line 9136
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/fe;->e:I

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
    .line 9139
    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/fe;->h:Ljava/lang/Object;

    .line 9140
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 9141
    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object p0, v0

    move-object v1, p0

    .line 9149
    :goto_0
    return-object v1

    .line 9143
    :cond_0
    check-cast v1, Lcom/b/a/i;

    .line 9145
    invoke-virtual {v1}, Lcom/b/a/i;->b()Ljava/lang/String;

    move-result-object v2

    .line 9146
    invoke-static {v1}, Lcom/b/a/ep;->a(Lcom/b/a/i;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 9147
    iput-object v2, p0, Lcom/keniu/security/sync/d/d/a/fe;->h:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 9149
    goto :goto_0
.end method
