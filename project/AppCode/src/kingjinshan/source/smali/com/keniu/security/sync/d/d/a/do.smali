.class public final Lcom/keniu/security/sync/d/d/a/do;
.super Lcom/b/a/dk;
.source "Appsvr.java"

# interfaces
.implements Lcom/keniu/security/sync/d/d/a/dq;


# static fields
.field public static final a:I = 0x1

.field public static final b:I = 0x2

.field public static final c:I = 0x3

.field public static final d:I = 0x4

.field private static final e:Lcom/keniu/security/sync/d/d/a/do;

.field private static final n:J


# instance fields
.field private f:I

.field private g:Ljava/lang/Object;

.field private h:Lcom/b/a/eu;

.field private i:I

.field private k:I

.field private l:B

.field private m:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 18687
    new-instance v0, Lcom/keniu/security/sync/d/d/a/do;

    invoke-direct {v0}, Lcom/keniu/security/sync/d/d/a/do;-><init>()V

    .line 18688
    sput-object v0, Lcom/keniu/security/sync/d/d/a/do;->e:Lcom/keniu/security/sync/d/d/a/do;

    const-string v1, ""

    iput-object v1, v0, Lcom/keniu/security/sync/d/d/a/do;->g:Ljava/lang/Object;

    sget-object v1, Lcom/b/a/et;->a:Lcom/b/a/eu;

    iput-object v1, v0, Lcom/keniu/security/sync/d/d/a/do;->h:Lcom/b/a/eu;

    iput v2, v0, Lcom/keniu/security/sync/d/d/a/do;->i:I

    iput v2, v0, Lcom/keniu/security/sync/d/d/a/do;->k:I

    .line 18689
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 18105
    invoke-direct {p0}, Lcom/b/a/dk;-><init>()V

    .line 18199
    iput-byte v0, p0, Lcom/keniu/security/sync/d/d/a/do;->l:B

    .line 18234
    iput v0, p0, Lcom/keniu/security/sync/d/d/a/do;->m:I

    .line 18105
    return-void
.end method

.method synthetic constructor <init>(Lcom/keniu/security/sync/d/d/a/dp;)V
    .locals 1
    .parameter

    .prologue
    .line 18098
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/keniu/security/sync/d/d/a/do;-><init>(Lcom/keniu/security/sync/d/d/a/dp;B)V

    return-void
.end method

.method private constructor <init>(Lcom/keniu/security/sync/d/d/a/dp;B)V
    .locals 1
    .parameter
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 18103
    invoke-direct {p0, p1}, Lcom/b/a/dk;-><init>(Lcom/b/a/dn;)V

    .line 18199
    iput-byte v0, p0, Lcom/keniu/security/sync/d/d/a/do;->l:B

    .line 18234
    iput v0, p0, Lcom/keniu/security/sync/d/d/a/do;->m:I

    .line 18104
    return-void
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/do;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 18098
    iput p1, p0, Lcom/keniu/security/sync/d/d/a/do;->i:I

    return p1
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/do;)Lcom/b/a/eu;
    .locals 1
    .parameter

    .prologue
    .line 18098
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/do;->h:Lcom/b/a/eu;

    return-object v0
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/do;Lcom/b/a/eu;)Lcom/b/a/eu;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 18098
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/do;->h:Lcom/b/a/eu;

    return-object p1
.end method

.method private static a(Lcom/b/a/i;)Lcom/keniu/security/sync/d/d/a/do;
    .locals 1
    .parameter

    .prologue
    .line 18276
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/dp;->r()Lcom/keniu/security/sync/d/d/a/dp;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/dp;->a(Lcom/b/a/i;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/dp;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/dp;->a(Lcom/keniu/security/sync/d/d/a/dp;)Lcom/keniu/security/sync/d/d/a/do;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/i;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/do;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 18282
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/dp;->r()Lcom/keniu/security/sync/d/d/a/dp;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/dp;->a(Lcom/b/a/i;Lcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/dp;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/dp;->a(Lcom/keniu/security/sync/d/d/a/dp;)Lcom/keniu/security/sync/d/d/a/do;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/m;)Lcom/keniu/security/sync/d/d/a/do;
    .locals 1
    .parameter

    .prologue
    .line 18330
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/dp;->r()Lcom/keniu/security/sync/d/d/a/dp;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/dp;->a(Lcom/b/a/m;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/dp;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/dp;->a(Lcom/keniu/security/sync/d/d/a/dp;)Lcom/keniu/security/sync/d/d/a/do;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/do;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 18336
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/dp;->r()Lcom/keniu/security/sync/d/d/a/dp;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/dp;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/dp;

    move-result-object v0

    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/dp;->a(Lcom/keniu/security/sync/d/d/a/dp;)Lcom/keniu/security/sync/d/d/a/do;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/io/InputStream;)Lcom/keniu/security/sync/d/d/a/do;
    .locals 1
    .parameter

    .prologue
    .line 18298
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/dp;->r()Lcom/keniu/security/sync/d/d/a/dp;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/dp;->a(Ljava/io/InputStream;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/dp;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/dp;->a(Lcom/keniu/security/sync/d/d/a/dp;)Lcom/keniu/security/sync/d/d/a/do;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/do;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 18304
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/dp;->r()Lcom/keniu/security/sync/d/d/a/dp;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/dp;->a(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/dp;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/dp;->a(Lcom/keniu/security/sync/d/d/a/dp;)Lcom/keniu/security/sync/d/d/a/do;

    move-result-object v0

    return-object v0
.end method

.method private static a([B)Lcom/keniu/security/sync/d/d/a/do;
    .locals 1
    .parameter

    .prologue
    .line 18287
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/dp;->r()Lcom/keniu/security/sync/d/d/a/dp;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/dp;->a([B)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/dp;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/dp;->a(Lcom/keniu/security/sync/d/d/a/dp;)Lcom/keniu/security/sync/d/d/a/do;

    move-result-object v0

    return-object v0
.end method

.method private static a([BLcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/do;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 18293
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/dp;->r()Lcom/keniu/security/sync/d/d/a/dp;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/dp;->a([BLcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/dp;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/dp;->a(Lcom/keniu/security/sync/d/d/a/dp;)Lcom/keniu/security/sync/d/d/a/do;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/do;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 18098
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/do;->g:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic b(Lcom/keniu/security/sync/d/d/a/do;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 18098
    iput p1, p0, Lcom/keniu/security/sync/d/d/a/do;->k:I

    return p1
.end method

.method private static b(Ljava/io/InputStream;)Lcom/keniu/security/sync/d/d/a/do;
    .locals 2
    .parameter

    .prologue
    .line 18309
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/dp;->r()Lcom/keniu/security/sync/d/d/a/dp;

    move-result-object v0

    .line 18310
    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/dp;->b(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 18311
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/dp;->a(Lcom/keniu/security/sync/d/d/a/dp;)Lcom/keniu/security/sync/d/d/a/do;

    move-result-object v0

    .line 18313
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/do;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 18320
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/dp;->r()Lcom/keniu/security/sync/d/d/a/dp;

    move-result-object v0

    .line 18321
    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/dp;->b(Ljava/io/InputStream;Lcom/b/a/df;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 18322
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/dp;->a(Lcom/keniu/security/sync/d/d/a/dp;)Lcom/keniu/security/sync/d/d/a/do;

    move-result-object v0

    .line 18324
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Lcom/b/a/dp;)Lcom/keniu/security/sync/d/d/a/dp;
    .locals 1
    .parameter

    .prologue
    .line 18350
    new-instance v0, Lcom/keniu/security/sync/d/d/a/dp;

    invoke-direct {v0, p0}, Lcom/keniu/security/sync/d/d/a/dp;-><init>(Lcom/b/a/dp;)V

    .line 18351
    return-object v0
.end method

.method private static b(Lcom/keniu/security/sync/d/d/a/do;)Lcom/keniu/security/sync/d/d/a/dp;
    .locals 1
    .parameter

    .prologue
    .line 18343
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/dp;->r()Lcom/keniu/security/sync/d/d/a/dp;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/dp;->a(Lcom/keniu/security/sync/d/d/a/do;)Lcom/keniu/security/sync/d/d/a/dp;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(Lcom/keniu/security/sync/d/d/a/do;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 18098
    iput p1, p0, Lcom/keniu/security/sync/d/d/a/do;->f:I

    return p1
.end method

.method public static h()Lcom/keniu/security/sync/d/d/a/do;
    .locals 1

    .prologue
    .line 18109
    sget-object v0, Lcom/keniu/security/sync/d/d/a/do;->e:Lcom/keniu/security/sync/d/d/a/do;

    return-object v0
.end method

.method public static final i()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 18118
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/a;->ab()Lcom/b/a/cj;

    move-result-object v0

    return-object v0
.end method

.method public static r()Lcom/keniu/security/sync/d/d/a/dp;
    .locals 1

    .prologue
    .line 18340
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/dp;->r()Lcom/keniu/security/sync/d/d/a/dp;

    move-result-object v0

    return-object v0
.end method

.method static synthetic s()Z
    .locals 1

    .prologue
    .line 18098
    sget-boolean v0, Lcom/keniu/security/sync/d/d/a/do;->j:Z

    return v0
.end method

.method private static t()Lcom/keniu/security/sync/d/d/a/do;
    .locals 1

    .prologue
    .line 18113
    sget-object v0, Lcom/keniu/security/sync/d/d/a/do;->e:Lcom/keniu/security/sync/d/d/a/do;

    return-object v0
.end method

.method private u()Lcom/b/a/i;
    .locals 2

    .prologue
    .line 18148
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/do;->g:Ljava/lang/Object;

    .line 18149
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 18150
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/b/a/i;->a(Ljava/lang/String;)Lcom/b/a/i;

    move-result-object v0

    .line 18152
    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/do;->g:Ljava/lang/Object;

    .line 18155
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/b/a/i;

    goto :goto_0
.end method

.method private v()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 18194
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/do;->g:Ljava/lang/Object;

    .line 18195
    sget-object v0, Lcom/b/a/et;->a:Lcom/b/a/eu;

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/do;->h:Lcom/b/a/eu;

    .line 18196
    iput v1, p0, Lcom/keniu/security/sync/d/d/a/do;->i:I

    .line 18197
    iput v1, p0, Lcom/keniu/security/sync/d/d/a/do;->k:I

    .line 18198
    return-void
.end method

.method private static w()Lcom/keniu/security/sync/d/d/a/dp;
    .locals 1

    .prologue
    .line 18341
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/dp;->r()Lcom/keniu/security/sync/d/d/a/dp;

    move-result-object v0

    return-object v0
.end method

.method private x()Lcom/keniu/security/sync/d/d/a/dp;
    .locals 1

    .prologue
    .line 18345
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/dp;->r()Lcom/keniu/security/sync/d/d/a/dp;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/dp;->a(Lcom/keniu/security/sync/d/d/a/do;)Lcom/keniu/security/sync/d/d/a/dp;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final B()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 18270
    invoke-super {p0}, Lcom/b/a/dk;->B()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic D()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 18098
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/do;->x()Lcom/keniu/security/sync/d/d/a/dp;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic E()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 18098
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/dp;->r()Lcom/keniu/security/sync/d/d/a/dp;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic F()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 18098
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/do;->x()Lcom/keniu/security/sync/d/d/a/dp;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic G()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 18098
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/dp;->r()Lcom/keniu/security/sync/d/d/a/dp;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic H()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 18098
    sget-object v0, Lcom/keniu/security/sync/d/d/a/do;->e:Lcom/keniu/security/sync/d/d/a/do;

    return-object v0
.end method

.method public final bridge synthetic I()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 18098
    sget-object v0, Lcom/keniu/security/sync/d/d/a/do;->e:Lcom/keniu/security/sync/d/d/a/do;

    return-object v0
.end method

.method protected final synthetic a(Lcom/b/a/dp;)Lcom/b/a/ew;
    .locals 1
    .parameter

    .prologue
    .line 18098
    new-instance v0, Lcom/keniu/security/sync/d/d/a/dp;

    invoke-direct {v0, p1}, Lcom/keniu/security/sync/d/d/a/dp;-><init>(Lcom/b/a/dp;)V

    return-object v0
.end method

.method public final a(I)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 18170
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/do;->h:Lcom/b/a/eu;

    invoke-interface {v0, p1}, Lcom/b/a/eu;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public final a(Lcom/b/a/n;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 18218
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/do;->b()I

    .line 18219
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/do;->f:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 18220
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/do;->u()Lcom/b/a/i;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/b/a/n;->a(ILcom/b/a/i;)V

    .line 18222
    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/do;->h:Lcom/b/a/eu;

    invoke-interface {v1}, Lcom/b/a/eu;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 18223
    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/do;->h:Lcom/b/a/eu;

    invoke-interface {v1, v0}, Lcom/b/a/eu;->a(I)Lcom/b/a/i;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Lcom/b/a/n;->a(ILcom/b/a/i;)V

    .line 18222
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 18225
    :cond_1
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/do;->f:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_2

    .line 18226
    const/4 v0, 0x3

    iget v1, p0, Lcom/keniu/security/sync/d/d/a/do;->i:I

    invoke-virtual {p1, v0, v1}, Lcom/b/a/n;->a(II)V

    .line 18228
    :cond_2
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/do;->f:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_3

    .line 18229
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/do;->k:I

    invoke-virtual {p1, v3, v0}, Lcom/b/a/n;->a(II)V

    .line 18231
    :cond_3
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/do;->b_()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/b/a/gg;->a(Lcom/b/a/n;)V

    .line 18232
    return-void
.end method

.method public final a()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 18201
    iget-byte v0, p0, Lcom/keniu/security/sync/d/d/a/do;->l:B

    .line 18202
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-ne v0, v3, :cond_0

    move v0, v3

    .line 18213
    :goto_0
    return v0

    :cond_0
    move v0, v2

    .line 18202
    goto :goto_0

    .line 18204
    :cond_1
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/do;->j()Z

    move-result v0

    if-nez v0, :cond_2

    .line 18205
    iput-byte v2, p0, Lcom/keniu/security/sync/d/d/a/do;->l:B

    move v0, v2

    .line 18206
    goto :goto_0

    .line 18208
    :cond_2
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/do;->n()Z

    move-result v0

    if-nez v0, :cond_3

    .line 18209
    iput-byte v2, p0, Lcom/keniu/security/sync/d/d/a/do;->l:B

    move v0, v2

    .line 18210
    goto :goto_0

    .line 18212
    :cond_3
    iput-byte v3, p0, Lcom/keniu/security/sync/d/d/a/do;->l:B

    move v0, v3

    .line 18213
    goto :goto_0
.end method

.method public final b()I
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 18236
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/do;->m:I

    .line 18237
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 18263
    :goto_0
    return v0

    .line 18240
    :cond_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/do;->f:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v3, :cond_4

    .line 18241
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/do;->u()Lcom/b/a/i;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/b/a/n;->c(ILcom/b/a/i;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    :goto_1
    move v1, v2

    .line 18246
    :goto_2
    iget-object v3, p0, Lcom/keniu/security/sync/d/d/a/do;->h:Lcom/b/a/eu;

    invoke-interface {v3}, Lcom/b/a/eu;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 18247
    iget-object v3, p0, Lcom/keniu/security/sync/d/d/a/do;->h:Lcom/b/a/eu;

    invoke-interface {v3, v1}, Lcom/b/a/eu;->a(I)Lcom/b/a/i;

    move-result-object v3

    invoke-static {v3}, Lcom/b/a/n;->b(Lcom/b/a/i;)I

    move-result v3

    add-int/2addr v2, v3

    .line 18246
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 18250
    :cond_1
    add-int/2addr v0, v2

    .line 18251
    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/do;->h:Lcom/b/a/eu;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 18253
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/do;->f:I

    and-int/lit8 v1, v1, 0x2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 18254
    const/4 v1, 0x3

    iget v2, p0, Lcom/keniu/security/sync/d/d/a/do;->i:I

    invoke-static {v1, v2}, Lcom/b/a/n;->d(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 18257
    :cond_2
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/do;->f:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v4, :cond_3

    .line 18258
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/do;->k:I

    invoke-static {v4, v1}, Lcom/b/a/n;->d(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 18261
    :cond_3
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/do;->b_()Lcom/b/a/gg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/b/a/gg;->b()I

    move-result v1

    add-int/2addr v0, v1

    .line 18262
    iput v0, p0, Lcom/keniu/security/sync/d/d/a/do;->m:I

    goto :goto_0

    :cond_4
    move v0, v2

    goto :goto_1
.end method

.method protected final g()Lcom/b/a/dv;
    .locals 1

    .prologue
    .line 18123
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/a;->ac()Lcom/b/a/dv;

    move-result-object v0

    return-object v0
.end method

.method public final j()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 18131
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/do;->f:I

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
    .line 18134
    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/do;->g:Ljava/lang/Object;

    .line 18135
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 18136
    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object p0, v0

    move-object v1, p0

    .line 18144
    :goto_0
    return-object v1

    .line 18138
    :cond_0
    check-cast v1, Lcom/b/a/i;

    .line 18140
    invoke-virtual {v1}, Lcom/b/a/i;->b()Ljava/lang/String;

    move-result-object v2

    .line 18141
    invoke-static {v1}, Lcom/b/a/ep;->a(Lcom/b/a/i;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 18142
    iput-object v2, p0, Lcom/keniu/security/sync/d/d/a/do;->g:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 18144
    goto :goto_0
.end method

.method public final l()Ljava/util/List;
    .locals 1

    .prologue
    .line 18164
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/do;->h:Lcom/b/a/eu;

    return-object v0
.end method

.method public final m()I
    .locals 1

    .prologue
    .line 18167
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/do;->h:Lcom/b/a/eu;

    invoke-interface {v0}, Lcom/b/a/eu;->size()I

    move-result v0

    return v0
.end method

.method public final n()Z
    .locals 2

    .prologue
    .line 18177
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/do;->f:I

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

.method public final o()I
    .locals 1

    .prologue
    .line 18180
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/do;->i:I

    return v0
.end method

.method public final p()Z
    .locals 2

    .prologue
    .line 18187
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/do;->f:I

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

.method public final q()I
    .locals 1

    .prologue
    .line 18190
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/do;->k:I

    return v0
.end method
