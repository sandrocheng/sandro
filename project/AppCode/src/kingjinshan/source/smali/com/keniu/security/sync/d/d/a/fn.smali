.class public final Lcom/keniu/security/sync/d/d/a/fn;
.super Lcom/b/a/dk;
.source "Appsvr.java"

# interfaces
.implements Lcom/keniu/security/sync/d/d/a/fp;


# static fields
.field public static final a:I = 0x1

.field public static final b:I = 0x2

.field private static final c:Lcom/keniu/security/sync/d/d/a/fn;

.field private static final i:J


# instance fields
.field private d:I

.field private e:Lcom/keniu/security/sync/d/d/a/ge;

.field private f:Lcom/keniu/security/sync/d/d/a/gy;

.field private g:B

.field private h:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 36393
    new-instance v0, Lcom/keniu/security/sync/d/d/a/fn;

    invoke-direct {v0}, Lcom/keniu/security/sync/d/d/a/fn;-><init>()V

    .line 36394
    sput-object v0, Lcom/keniu/security/sync/d/d/a/fn;->c:Lcom/keniu/security/sync/d/d/a/fn;

    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->h()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v1

    iput-object v1, v0, Lcom/keniu/security/sync/d/d/a/fn;->e:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gy;->h()Lcom/keniu/security/sync/d/d/a/gy;

    move-result-object v1

    iput-object v1, v0, Lcom/keniu/security/sync/d/d/a/fn;->f:Lcom/keniu/security/sync/d/d/a/gy;

    .line 36395
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 35837
    invoke-direct {p0}, Lcom/b/a/dk;-><init>()V

    .line 35889
    iput-byte v0, p0, Lcom/keniu/security/sync/d/d/a/fn;->g:B

    .line 35918
    iput v0, p0, Lcom/keniu/security/sync/d/d/a/fn;->h:I

    .line 35837
    return-void
.end method

.method synthetic constructor <init>(Lcom/keniu/security/sync/d/d/a/fo;)V
    .locals 1
    .parameter

    .prologue
    .line 35830
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/keniu/security/sync/d/d/a/fn;-><init>(Lcom/keniu/security/sync/d/d/a/fo;B)V

    return-void
.end method

.method private constructor <init>(Lcom/keniu/security/sync/d/d/a/fo;B)V
    .locals 1
    .parameter
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 35835
    invoke-direct {p0, p1}, Lcom/b/a/dk;-><init>(Lcom/b/a/dn;)V

    .line 35889
    iput-byte v0, p0, Lcom/keniu/security/sync/d/d/a/fn;->g:B

    .line 35918
    iput v0, p0, Lcom/keniu/security/sync/d/d/a/fn;->h:I

    .line 35836
    return-void
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/fn;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 35830
    iput p1, p0, Lcom/keniu/security/sync/d/d/a/fn;->d:I

    return p1
.end method

.method private static a(Lcom/b/a/i;)Lcom/keniu/security/sync/d/d/a/fn;
    .locals 1
    .parameter

    .prologue
    .line 35947
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/fo;->i()Lcom/keniu/security/sync/d/d/a/fo;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/fo;->a(Lcom/b/a/i;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/fo;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/fo;->a(Lcom/keniu/security/sync/d/d/a/fo;)Lcom/keniu/security/sync/d/d/a/fn;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/i;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/fn;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 35953
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/fo;->i()Lcom/keniu/security/sync/d/d/a/fo;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/fo;->a(Lcom/b/a/i;Lcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/fo;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/fo;->a(Lcom/keniu/security/sync/d/d/a/fo;)Lcom/keniu/security/sync/d/d/a/fn;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/m;)Lcom/keniu/security/sync/d/d/a/fn;
    .locals 1
    .parameter

    .prologue
    .line 36001
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/fo;->i()Lcom/keniu/security/sync/d/d/a/fo;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/fo;->a(Lcom/b/a/m;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/fo;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/fo;->a(Lcom/keniu/security/sync/d/d/a/fo;)Lcom/keniu/security/sync/d/d/a/fn;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/fn;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 36007
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/fo;->i()Lcom/keniu/security/sync/d/d/a/fo;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/fo;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/fo;

    move-result-object v0

    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/fo;->a(Lcom/keniu/security/sync/d/d/a/fo;)Lcom/keniu/security/sync/d/d/a/fn;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/io/InputStream;)Lcom/keniu/security/sync/d/d/a/fn;
    .locals 1
    .parameter

    .prologue
    .line 35969
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/fo;->i()Lcom/keniu/security/sync/d/d/a/fo;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/fo;->a(Ljava/io/InputStream;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/fo;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/fo;->a(Lcom/keniu/security/sync/d/d/a/fo;)Lcom/keniu/security/sync/d/d/a/fn;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/fn;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 35975
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/fo;->i()Lcom/keniu/security/sync/d/d/a/fo;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/fo;->a(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/fo;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/fo;->a(Lcom/keniu/security/sync/d/d/a/fo;)Lcom/keniu/security/sync/d/d/a/fn;

    move-result-object v0

    return-object v0
.end method

.method private static a([B)Lcom/keniu/security/sync/d/d/a/fn;
    .locals 1
    .parameter

    .prologue
    .line 35958
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/fo;->i()Lcom/keniu/security/sync/d/d/a/fo;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/fo;->a([B)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/fo;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/fo;->a(Lcom/keniu/security/sync/d/d/a/fo;)Lcom/keniu/security/sync/d/d/a/fn;

    move-result-object v0

    return-object v0
.end method

.method private static a([BLcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/fn;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 35964
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/fo;->i()Lcom/keniu/security/sync/d/d/a/fo;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/fo;->a([BLcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/fo;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/fo;->a(Lcom/keniu/security/sync/d/d/a/fo;)Lcom/keniu/security/sync/d/d/a/fn;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/keniu/security/sync/d/d/a/fn;)Lcom/keniu/security/sync/d/d/a/fo;
    .locals 1
    .parameter

    .prologue
    .line 36014
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/fo;->i()Lcom/keniu/security/sync/d/d/a/fo;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/fo;->a(Lcom/keniu/security/sync/d/d/a/fn;)Lcom/keniu/security/sync/d/d/a/fo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/fn;Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/ge;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 35830
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/fn;->e:Lcom/keniu/security/sync/d/d/a/ge;

    return-object p1
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/fn;Lcom/keniu/security/sync/d/d/a/gy;)Lcom/keniu/security/sync/d/d/a/gy;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 35830
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/fn;->f:Lcom/keniu/security/sync/d/d/a/gy;

    return-object p1
.end method

.method private static b(Ljava/io/InputStream;)Lcom/keniu/security/sync/d/d/a/fn;
    .locals 2
    .parameter

    .prologue
    .line 35980
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/fo;->i()Lcom/keniu/security/sync/d/d/a/fo;

    move-result-object v0

    .line 35981
    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/fo;->b(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 35982
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/fo;->a(Lcom/keniu/security/sync/d/d/a/fo;)Lcom/keniu/security/sync/d/d/a/fn;

    move-result-object v0

    .line 35984
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/fn;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 35991
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/fo;->i()Lcom/keniu/security/sync/d/d/a/fo;

    move-result-object v0

    .line 35992
    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/fo;->b(Ljava/io/InputStream;Lcom/b/a/df;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 35993
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/fo;->a(Lcom/keniu/security/sync/d/d/a/fo;)Lcom/keniu/security/sync/d/d/a/fn;

    move-result-object v0

    .line 35995
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Lcom/b/a/dp;)Lcom/keniu/security/sync/d/d/a/fo;
    .locals 1
    .parameter

    .prologue
    .line 36021
    new-instance v0, Lcom/keniu/security/sync/d/d/a/fo;

    invoke-direct {v0, p0}, Lcom/keniu/security/sync/d/d/a/fo;-><init>(Lcom/b/a/dp;)V

    .line 36022
    return-object v0
.end method

.method public static h()Lcom/keniu/security/sync/d/d/a/fn;
    .locals 1

    .prologue
    .line 35841
    sget-object v0, Lcom/keniu/security/sync/d/d/a/fn;->c:Lcom/keniu/security/sync/d/d/a/fn;

    return-object v0
.end method

.method public static final i()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 35850
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/a;->bh()Lcom/b/a/cj;

    move-result-object v0

    return-object v0
.end method

.method static synthetic p()Z
    .locals 1

    .prologue
    .line 35830
    sget-boolean v0, Lcom/keniu/security/sync/d/d/a/fn;->j:Z

    return v0
.end method

.method private static q()Lcom/keniu/security/sync/d/d/a/fn;
    .locals 1

    .prologue
    .line 35845
    sget-object v0, Lcom/keniu/security/sync/d/d/a/fn;->c:Lcom/keniu/security/sync/d/d/a/fn;

    return-object v0
.end method

.method private r()V
    .locals 1

    .prologue
    .line 35886
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->h()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/fn;->e:Lcom/keniu/security/sync/d/d/a/ge;

    .line 35887
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gy;->h()Lcom/keniu/security/sync/d/d/a/gy;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/fn;->f:Lcom/keniu/security/sync/d/d/a/gy;

    .line 35888
    return-void
.end method

.method private static s()Lcom/keniu/security/sync/d/d/a/fo;
    .locals 1

    .prologue
    .line 36011
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/fo;->i()Lcom/keniu/security/sync/d/d/a/fo;

    move-result-object v0

    return-object v0
.end method

.method private static t()Lcom/keniu/security/sync/d/d/a/fo;
    .locals 1

    .prologue
    .line 36012
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/fo;->i()Lcom/keniu/security/sync/d/d/a/fo;

    move-result-object v0

    return-object v0
.end method

.method private u()Lcom/keniu/security/sync/d/d/a/fo;
    .locals 1

    .prologue
    .line 36016
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/fo;->i()Lcom/keniu/security/sync/d/d/a/fo;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/fo;->a(Lcom/keniu/security/sync/d/d/a/fn;)Lcom/keniu/security/sync/d/d/a/fo;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final B()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 35941
    invoke-super {p0}, Lcom/b/a/dk;->B()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic D()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 35830
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/fn;->u()Lcom/keniu/security/sync/d/d/a/fo;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic E()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 35830
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/fo;->i()Lcom/keniu/security/sync/d/d/a/fo;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic F()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 35830
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/fn;->u()Lcom/keniu/security/sync/d/d/a/fo;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic G()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 35830
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/fo;->i()Lcom/keniu/security/sync/d/d/a/fo;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic H()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 35830
    sget-object v0, Lcom/keniu/security/sync/d/d/a/fn;->c:Lcom/keniu/security/sync/d/d/a/fn;

    return-object v0
.end method

.method public final bridge synthetic I()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 35830
    sget-object v0, Lcom/keniu/security/sync/d/d/a/fn;->c:Lcom/keniu/security/sync/d/d/a/fn;

    return-object v0
.end method

.method protected final synthetic a(Lcom/b/a/dp;)Lcom/b/a/ew;
    .locals 1
    .parameter

    .prologue
    .line 35830
    new-instance v0, Lcom/keniu/security/sync/d/d/a/fo;

    invoke-direct {v0, p1}, Lcom/keniu/security/sync/d/d/a/fo;-><init>(Lcom/b/a/dp;)V

    return-object v0
.end method

.method public final a(Lcom/b/a/n;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 35908
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/fn;->b()I

    .line 35909
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/fn;->d:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 35910
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/fn;->e:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-virtual {p1, v1, v0}, Lcom/b/a/n;->b(ILcom/b/a/ex;)V

    .line 35912
    :cond_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/fn;->d:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 35913
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/fn;->f:Lcom/keniu/security/sync/d/d/a/gy;

    invoke-virtual {p1, v2, v0}, Lcom/b/a/n;->b(ILcom/b/a/ex;)V

    .line 35915
    :cond_1
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/fn;->b_()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/b/a/gg;->a(Lcom/b/a/n;)V

    .line 35916
    return-void
.end method

.method public final a()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 35891
    iget-byte v0, p0, Lcom/keniu/security/sync/d/d/a/fn;->g:B

    .line 35892
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-ne v0, v3, :cond_0

    move v0, v3

    .line 35903
    :goto_0
    return v0

    :cond_0
    move v0, v2

    .line 35892
    goto :goto_0

    .line 35894
    :cond_1
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/fn;->j()Z

    move-result v0

    if-nez v0, :cond_2

    .line 35895
    iput-byte v2, p0, Lcom/keniu/security/sync/d/d/a/fn;->g:B

    move v0, v2

    .line 35896
    goto :goto_0

    .line 35898
    :cond_2
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/fn;->e:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/ge;->a()Z

    move-result v0

    if-nez v0, :cond_3

    .line 35899
    iput-byte v2, p0, Lcom/keniu/security/sync/d/d/a/fn;->g:B

    move v0, v2

    .line 35900
    goto :goto_0

    .line 35902
    :cond_3
    iput-byte v3, p0, Lcom/keniu/security/sync/d/d/a/fn;->g:B

    move v0, v3

    .line 35903
    goto :goto_0
.end method

.method public final b()I
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 35920
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/fn;->h:I

    .line 35921
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 35934
    :goto_0
    return v0

    .line 35923
    :cond_0
    const/4 v0, 0x0

    .line 35924
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/fn;->d:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_1

    .line 35925
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/fn;->e:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-static {v2, v0}, Lcom/b/a/n;->e(ILcom/b/a/ex;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 35928
    :cond_1
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/fn;->d:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_2

    .line 35929
    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/fn;->f:Lcom/keniu/security/sync/d/d/a/gy;

    invoke-static {v3, v1}, Lcom/b/a/n;->e(ILcom/b/a/ex;)I

    move-result v1

    add-int/2addr v0, v1

    .line 35932
    :cond_2
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/fn;->b_()Lcom/b/a/gg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/b/a/gg;->b()I

    move-result v1

    add-int/2addr v0, v1

    .line 35933
    iput v0, p0, Lcom/keniu/security/sync/d/d/a/fn;->h:I

    goto :goto_0
.end method

.method protected final g()Lcom/b/a/dv;
    .locals 1

    .prologue
    .line 35855
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/a;->bi()Lcom/b/a/dv;

    move-result-object v0

    return-object v0
.end method

.method public final j()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 35863
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/fn;->d:I

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
    .line 35866
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/fn;->e:Lcom/keniu/security/sync/d/d/a/ge;

    return-object v0
.end method

.method public final l()Lcom/keniu/security/sync/d/d/a/gg;
    .locals 1

    .prologue
    .line 35869
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/fn;->e:Lcom/keniu/security/sync/d/d/a/ge;

    return-object v0
.end method

.method public final m()Z
    .locals 2

    .prologue
    .line 35876
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/fn;->d:I

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

.method public final n()Lcom/keniu/security/sync/d/d/a/gy;
    .locals 1

    .prologue
    .line 35879
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/fn;->f:Lcom/keniu/security/sync/d/d/a/gy;

    return-object v0
.end method

.method public final o()Lcom/keniu/security/sync/d/d/a/ha;
    .locals 1

    .prologue
    .line 35882
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/fn;->f:Lcom/keniu/security/sync/d/d/a/gy;

    return-object v0
.end method
