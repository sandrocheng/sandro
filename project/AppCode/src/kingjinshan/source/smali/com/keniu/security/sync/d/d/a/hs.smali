.class public final Lcom/keniu/security/sync/d/d/a/hs;
.super Lcom/b/a/dk;
.source "Fudsvr.java"

# interfaces
.implements Lcom/keniu/security/sync/d/d/a/hu;


# static fields
.field public static final a:I = 0x1

.field public static final b:I = 0x2

.field private static final c:Lcom/keniu/security/sync/d/d/a/hs;

.field private static final i:J


# instance fields
.field private d:I

.field private e:Lcom/keniu/security/sync/d/d/a/ge;

.field private f:Lcom/keniu/security/sync/d/d/a/gn;

.field private g:B

.field private h:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 3504
    new-instance v0, Lcom/keniu/security/sync/d/d/a/hs;

    invoke-direct {v0}, Lcom/keniu/security/sync/d/d/a/hs;-><init>()V

    .line 3505
    sput-object v0, Lcom/keniu/security/sync/d/d/a/hs;->c:Lcom/keniu/security/sync/d/d/a/hs;

    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->h()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v1

    iput-object v1, v0, Lcom/keniu/security/sync/d/d/a/hs;->e:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gn;->h()Lcom/keniu/security/sync/d/d/a/gn;

    move-result-object v1

    iput-object v1, v0, Lcom/keniu/security/sync/d/d/a/hs;->f:Lcom/keniu/security/sync/d/d/a/gn;

    .line 3506
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 2936
    invoke-direct {p0}, Lcom/b/a/dk;-><init>()V

    .line 2988
    iput-byte v0, p0, Lcom/keniu/security/sync/d/d/a/hs;->g:B

    .line 3023
    iput v0, p0, Lcom/keniu/security/sync/d/d/a/hs;->h:I

    .line 2936
    return-void
.end method

.method synthetic constructor <init>(Lcom/keniu/security/sync/d/d/a/ht;)V
    .locals 1
    .parameter

    .prologue
    .line 2929
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/keniu/security/sync/d/d/a/hs;-><init>(Lcom/keniu/security/sync/d/d/a/ht;B)V

    return-void
.end method

.method private constructor <init>(Lcom/keniu/security/sync/d/d/a/ht;B)V
    .locals 1
    .parameter
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 2934
    invoke-direct {p0, p1}, Lcom/b/a/dk;-><init>(Lcom/b/a/dn;)V

    .line 2988
    iput-byte v0, p0, Lcom/keniu/security/sync/d/d/a/hs;->g:B

    .line 3023
    iput v0, p0, Lcom/keniu/security/sync/d/d/a/hs;->h:I

    .line 2935
    return-void
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/hs;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2929
    iput p1, p0, Lcom/keniu/security/sync/d/d/a/hs;->d:I

    return p1
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/hs;Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/ge;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2929
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/hs;->e:Lcom/keniu/security/sync/d/d/a/ge;

    return-object p1
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/hs;Lcom/keniu/security/sync/d/d/a/gn;)Lcom/keniu/security/sync/d/d/a/gn;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2929
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/hs;->f:Lcom/keniu/security/sync/d/d/a/gn;

    return-object p1
.end method

.method private static a(Lcom/b/a/i;)Lcom/keniu/security/sync/d/d/a/hs;
    .locals 1
    .parameter

    .prologue
    .line 3052
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ht;->i()Lcom/keniu/security/sync/d/d/a/ht;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/ht;->a(Lcom/b/a/i;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/ht;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/ht;->a(Lcom/keniu/security/sync/d/d/a/ht;)Lcom/keniu/security/sync/d/d/a/hs;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/i;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/hs;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 3058
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ht;->i()Lcom/keniu/security/sync/d/d/a/ht;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/ht;->a(Lcom/b/a/i;Lcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/ht;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/ht;->a(Lcom/keniu/security/sync/d/d/a/ht;)Lcom/keniu/security/sync/d/d/a/hs;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/m;)Lcom/keniu/security/sync/d/d/a/hs;
    .locals 1
    .parameter

    .prologue
    .line 3106
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ht;->i()Lcom/keniu/security/sync/d/d/a/ht;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/ht;->a(Lcom/b/a/m;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/ht;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/ht;->a(Lcom/keniu/security/sync/d/d/a/ht;)Lcom/keniu/security/sync/d/d/a/hs;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/hs;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 3112
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ht;->i()Lcom/keniu/security/sync/d/d/a/ht;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/ht;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/ht;

    move-result-object v0

    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/ht;->a(Lcom/keniu/security/sync/d/d/a/ht;)Lcom/keniu/security/sync/d/d/a/hs;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/io/InputStream;)Lcom/keniu/security/sync/d/d/a/hs;
    .locals 1
    .parameter

    .prologue
    .line 3074
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ht;->i()Lcom/keniu/security/sync/d/d/a/ht;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/ht;->a(Ljava/io/InputStream;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/ht;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/ht;->a(Lcom/keniu/security/sync/d/d/a/ht;)Lcom/keniu/security/sync/d/d/a/hs;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/hs;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 3080
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ht;->i()Lcom/keniu/security/sync/d/d/a/ht;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/ht;->a(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/ht;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/ht;->a(Lcom/keniu/security/sync/d/d/a/ht;)Lcom/keniu/security/sync/d/d/a/hs;

    move-result-object v0

    return-object v0
.end method

.method public static a([B)Lcom/keniu/security/sync/d/d/a/hs;
    .locals 1
    .parameter

    .prologue
    .line 3063
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ht;->i()Lcom/keniu/security/sync/d/d/a/ht;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/ht;->a([B)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/ht;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/ht;->a(Lcom/keniu/security/sync/d/d/a/ht;)Lcom/keniu/security/sync/d/d/a/hs;

    move-result-object v0

    return-object v0
.end method

.method private static a([BLcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/hs;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 3069
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ht;->i()Lcom/keniu/security/sync/d/d/a/ht;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/ht;->a([BLcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/ht;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/ht;->a(Lcom/keniu/security/sync/d/d/a/ht;)Lcom/keniu/security/sync/d/d/a/hs;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/keniu/security/sync/d/d/a/hs;)Lcom/keniu/security/sync/d/d/a/ht;
    .locals 1
    .parameter

    .prologue
    .line 3119
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ht;->i()Lcom/keniu/security/sync/d/d/a/ht;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/ht;->a(Lcom/keniu/security/sync/d/d/a/hs;)Lcom/keniu/security/sync/d/d/a/ht;

    move-result-object v0

    return-object v0
.end method

.method private static b(Ljava/io/InputStream;)Lcom/keniu/security/sync/d/d/a/hs;
    .locals 2
    .parameter

    .prologue
    .line 3085
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ht;->i()Lcom/keniu/security/sync/d/d/a/ht;

    move-result-object v0

    .line 3086
    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/ht;->b(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3087
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/ht;->a(Lcom/keniu/security/sync/d/d/a/ht;)Lcom/keniu/security/sync/d/d/a/hs;

    move-result-object v0

    .line 3089
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/hs;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 3096
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ht;->i()Lcom/keniu/security/sync/d/d/a/ht;

    move-result-object v0

    .line 3097
    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/ht;->b(Ljava/io/InputStream;Lcom/b/a/df;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3098
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/ht;->a(Lcom/keniu/security/sync/d/d/a/ht;)Lcom/keniu/security/sync/d/d/a/hs;

    move-result-object v0

    .line 3100
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Lcom/b/a/dp;)Lcom/keniu/security/sync/d/d/a/ht;
    .locals 1
    .parameter

    .prologue
    .line 3126
    new-instance v0, Lcom/keniu/security/sync/d/d/a/ht;

    invoke-direct {v0, p0}, Lcom/keniu/security/sync/d/d/a/ht;-><init>(Lcom/b/a/dp;)V

    .line 3127
    return-object v0
.end method

.method public static h()Lcom/keniu/security/sync/d/d/a/hs;
    .locals 1

    .prologue
    .line 2940
    sget-object v0, Lcom/keniu/security/sync/d/d/a/hs;->c:Lcom/keniu/security/sync/d/d/a/hs;

    return-object v0
.end method

.method public static final i()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 2949
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/hh;->l()Lcom/b/a/cj;

    move-result-object v0

    return-object v0
.end method

.method static synthetic p()Z
    .locals 1

    .prologue
    .line 2929
    sget-boolean v0, Lcom/keniu/security/sync/d/d/a/hs;->j:Z

    return v0
.end method

.method private static q()Lcom/keniu/security/sync/d/d/a/hs;
    .locals 1

    .prologue
    .line 2944
    sget-object v0, Lcom/keniu/security/sync/d/d/a/hs;->c:Lcom/keniu/security/sync/d/d/a/hs;

    return-object v0
.end method

.method private r()V
    .locals 1

    .prologue
    .line 2985
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->h()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/hs;->e:Lcom/keniu/security/sync/d/d/a/ge;

    .line 2986
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gn;->h()Lcom/keniu/security/sync/d/d/a/gn;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/hs;->f:Lcom/keniu/security/sync/d/d/a/gn;

    .line 2987
    return-void
.end method

.method private static s()Lcom/keniu/security/sync/d/d/a/ht;
    .locals 1

    .prologue
    .line 3116
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ht;->i()Lcom/keniu/security/sync/d/d/a/ht;

    move-result-object v0

    return-object v0
.end method

.method private static t()Lcom/keniu/security/sync/d/d/a/ht;
    .locals 1

    .prologue
    .line 3117
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ht;->i()Lcom/keniu/security/sync/d/d/a/ht;

    move-result-object v0

    return-object v0
.end method

.method private u()Lcom/keniu/security/sync/d/d/a/ht;
    .locals 1

    .prologue
    .line 3121
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ht;->i()Lcom/keniu/security/sync/d/d/a/ht;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/ht;->a(Lcom/keniu/security/sync/d/d/a/hs;)Lcom/keniu/security/sync/d/d/a/ht;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final B()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 3046
    invoke-super {p0}, Lcom/b/a/dk;->B()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic D()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 2929
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/hs;->u()Lcom/keniu/security/sync/d/d/a/ht;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic E()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 2929
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ht;->i()Lcom/keniu/security/sync/d/d/a/ht;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic F()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 2929
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/hs;->u()Lcom/keniu/security/sync/d/d/a/ht;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic G()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 2929
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ht;->i()Lcom/keniu/security/sync/d/d/a/ht;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic H()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 2929
    sget-object v0, Lcom/keniu/security/sync/d/d/a/hs;->c:Lcom/keniu/security/sync/d/d/a/hs;

    return-object v0
.end method

.method public final bridge synthetic I()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 2929
    sget-object v0, Lcom/keniu/security/sync/d/d/a/hs;->c:Lcom/keniu/security/sync/d/d/a/hs;

    return-object v0
.end method

.method protected final synthetic a(Lcom/b/a/dp;)Lcom/b/a/ew;
    .locals 1
    .parameter

    .prologue
    .line 2929
    new-instance v0, Lcom/keniu/security/sync/d/d/a/ht;

    invoke-direct {v0, p1}, Lcom/keniu/security/sync/d/d/a/ht;-><init>(Lcom/b/a/dp;)V

    return-object v0
.end method

.method public final a(Lcom/b/a/n;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 3013
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/hs;->b()I

    .line 3014
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/hs;->d:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 3015
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/hs;->e:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-virtual {p1, v1, v0}, Lcom/b/a/n;->b(ILcom/b/a/ex;)V

    .line 3017
    :cond_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/hs;->d:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 3018
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/hs;->f:Lcom/keniu/security/sync/d/d/a/gn;

    invoke-virtual {p1, v2, v0}, Lcom/b/a/n;->b(ILcom/b/a/ex;)V

    .line 3020
    :cond_1
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/hs;->b_()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/b/a/gg;->a(Lcom/b/a/n;)V

    .line 3021
    return-void
.end method

.method public final a()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2990
    iget-byte v0, p0, Lcom/keniu/security/sync/d/d/a/hs;->g:B

    .line 2991
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-ne v0, v3, :cond_0

    move v0, v3

    .line 3008
    :goto_0
    return v0

    :cond_0
    move v0, v2

    .line 2991
    goto :goto_0

    .line 2993
    :cond_1
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/hs;->j()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2994
    iput-byte v2, p0, Lcom/keniu/security/sync/d/d/a/hs;->g:B

    move v0, v2

    .line 2995
    goto :goto_0

    .line 2997
    :cond_2
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/hs;->e:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/ge;->a()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2998
    iput-byte v2, p0, Lcom/keniu/security/sync/d/d/a/hs;->g:B

    move v0, v2

    .line 2999
    goto :goto_0

    .line 3001
    :cond_3
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/hs;->m()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3002
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/hs;->f:Lcom/keniu/security/sync/d/d/a/gn;

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/gn;->a()Z

    move-result v0

    if-nez v0, :cond_4

    .line 3003
    iput-byte v2, p0, Lcom/keniu/security/sync/d/d/a/hs;->g:B

    move v0, v2

    .line 3004
    goto :goto_0

    .line 3007
    :cond_4
    iput-byte v3, p0, Lcom/keniu/security/sync/d/d/a/hs;->g:B

    move v0, v3

    .line 3008
    goto :goto_0
.end method

.method public final b()I
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 3025
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/hs;->h:I

    .line 3026
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 3039
    :goto_0
    return v0

    .line 3028
    :cond_0
    const/4 v0, 0x0

    .line 3029
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/hs;->d:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_1

    .line 3030
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/hs;->e:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-static {v2, v0}, Lcom/b/a/n;->e(ILcom/b/a/ex;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 3033
    :cond_1
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/hs;->d:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_2

    .line 3034
    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/hs;->f:Lcom/keniu/security/sync/d/d/a/gn;

    invoke-static {v3, v1}, Lcom/b/a/n;->e(ILcom/b/a/ex;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3037
    :cond_2
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/hs;->b_()Lcom/b/a/gg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/b/a/gg;->b()I

    move-result v1

    add-int/2addr v0, v1

    .line 3038
    iput v0, p0, Lcom/keniu/security/sync/d/d/a/hs;->h:I

    goto :goto_0
.end method

.method protected final g()Lcom/b/a/dv;
    .locals 1

    .prologue
    .line 2954
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/hh;->m()Lcom/b/a/dv;

    move-result-object v0

    return-object v0
.end method

.method public final j()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 2962
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/hs;->d:I

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
    .line 2965
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/hs;->e:Lcom/keniu/security/sync/d/d/a/ge;

    return-object v0
.end method

.method public final l()Lcom/keniu/security/sync/d/d/a/gg;
    .locals 1

    .prologue
    .line 2968
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/hs;->e:Lcom/keniu/security/sync/d/d/a/ge;

    return-object v0
.end method

.method public final m()Z
    .locals 2

    .prologue
    .line 2975
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/hs;->d:I

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

.method public final n()Lcom/keniu/security/sync/d/d/a/gn;
    .locals 1

    .prologue
    .line 2978
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/hs;->f:Lcom/keniu/security/sync/d/d/a/gn;

    return-object v0
.end method

.method public final o()Lcom/keniu/security/sync/d/d/a/gp;
    .locals 1

    .prologue
    .line 2981
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/hs;->f:Lcom/keniu/security/sync/d/d/a/gn;

    return-object v0
.end method
