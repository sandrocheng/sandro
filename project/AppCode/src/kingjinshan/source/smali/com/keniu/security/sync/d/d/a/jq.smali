.class public final Lcom/keniu/security/sync/d/d/a/jq;
.super Lcom/b/a/dk;
.source "Loginsvr.java"

# interfaces
.implements Lcom/keniu/security/sync/d/d/a/js;


# static fields
.field public static final a:I = 0x1

.field private static final b:Lcom/keniu/security/sync/d/d/a/jq;

.field private static final g:J


# instance fields
.field private c:I

.field private d:Ljava/lang/Object;

.field private e:B

.field private f:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 3393
    new-instance v0, Lcom/keniu/security/sync/d/d/a/jq;

    invoke-direct {v0}, Lcom/keniu/security/sync/d/d/a/jq;-><init>()V

    .line 3394
    sput-object v0, Lcom/keniu/security/sync/d/d/a/jq;->b:Lcom/keniu/security/sync/d/d/a/jq;

    const-string v1, ""

    iput-object v1, v0, Lcom/keniu/security/sync/d/d/a/jq;->d:Ljava/lang/Object;

    .line 3395
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 3031
    invoke-direct {p0}, Lcom/b/a/dk;-><init>()V

    .line 3088
    iput-byte v0, p0, Lcom/keniu/security/sync/d/d/a/jq;->e:B

    .line 3110
    iput v0, p0, Lcom/keniu/security/sync/d/d/a/jq;->f:I

    .line 3031
    return-void
.end method

.method synthetic constructor <init>(Lcom/keniu/security/sync/d/d/a/jr;)V
    .locals 1
    .parameter

    .prologue
    .line 3024
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/keniu/security/sync/d/d/a/jq;-><init>(Lcom/keniu/security/sync/d/d/a/jr;B)V

    return-void
.end method

.method private constructor <init>(Lcom/keniu/security/sync/d/d/a/jr;B)V
    .locals 1
    .parameter
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 3029
    invoke-direct {p0, p1}, Lcom/b/a/dk;-><init>(Lcom/b/a/dn;)V

    .line 3088
    iput-byte v0, p0, Lcom/keniu/security/sync/d/d/a/jq;->e:B

    .line 3110
    iput v0, p0, Lcom/keniu/security/sync/d/d/a/jq;->f:I

    .line 3030
    return-void
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/jq;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 3024
    iput p1, p0, Lcom/keniu/security/sync/d/d/a/jq;->c:I

    return p1
.end method

.method private static a(Lcom/b/a/i;)Lcom/keniu/security/sync/d/d/a/jq;
    .locals 1
    .parameter

    .prologue
    .line 3135
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/jr;->l()Lcom/keniu/security/sync/d/d/a/jr;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/jr;->a(Lcom/b/a/i;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/jr;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/jr;->a(Lcom/keniu/security/sync/d/d/a/jr;)Lcom/keniu/security/sync/d/d/a/jq;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/i;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/jq;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 3141
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/jr;->l()Lcom/keniu/security/sync/d/d/a/jr;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/jr;->a(Lcom/b/a/i;Lcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/jr;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/jr;->a(Lcom/keniu/security/sync/d/d/a/jr;)Lcom/keniu/security/sync/d/d/a/jq;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/m;)Lcom/keniu/security/sync/d/d/a/jq;
    .locals 1
    .parameter

    .prologue
    .line 3189
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/jr;->l()Lcom/keniu/security/sync/d/d/a/jr;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/jr;->a(Lcom/b/a/m;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/jr;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/jr;->a(Lcom/keniu/security/sync/d/d/a/jr;)Lcom/keniu/security/sync/d/d/a/jq;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/jq;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 3195
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/jr;->l()Lcom/keniu/security/sync/d/d/a/jr;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/jr;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/jr;

    move-result-object v0

    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/jr;->a(Lcom/keniu/security/sync/d/d/a/jr;)Lcom/keniu/security/sync/d/d/a/jq;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/io/InputStream;)Lcom/keniu/security/sync/d/d/a/jq;
    .locals 1
    .parameter

    .prologue
    .line 3157
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/jr;->l()Lcom/keniu/security/sync/d/d/a/jr;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/jr;->a(Ljava/io/InputStream;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/jr;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/jr;->a(Lcom/keniu/security/sync/d/d/a/jr;)Lcom/keniu/security/sync/d/d/a/jq;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/jq;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 3163
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/jr;->l()Lcom/keniu/security/sync/d/d/a/jr;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/jr;->a(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/jr;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/jr;->a(Lcom/keniu/security/sync/d/d/a/jr;)Lcom/keniu/security/sync/d/d/a/jq;

    move-result-object v0

    return-object v0
.end method

.method private static a([B)Lcom/keniu/security/sync/d/d/a/jq;
    .locals 1
    .parameter

    .prologue
    .line 3146
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/jr;->l()Lcom/keniu/security/sync/d/d/a/jr;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/jr;->a([B)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/jr;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/jr;->a(Lcom/keniu/security/sync/d/d/a/jr;)Lcom/keniu/security/sync/d/d/a/jq;

    move-result-object v0

    return-object v0
.end method

.method private static a([BLcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/jq;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 3152
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/jr;->l()Lcom/keniu/security/sync/d/d/a/jr;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/jr;->a([BLcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/jr;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/jr;->a(Lcom/keniu/security/sync/d/d/a/jr;)Lcom/keniu/security/sync/d/d/a/jq;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/keniu/security/sync/d/d/a/jq;)Lcom/keniu/security/sync/d/d/a/jr;
    .locals 1
    .parameter

    .prologue
    .line 3202
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/jr;->l()Lcom/keniu/security/sync/d/d/a/jr;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/jr;->a(Lcom/keniu/security/sync/d/d/a/jq;)Lcom/keniu/security/sync/d/d/a/jr;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/jq;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 3024
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/jq;->d:Ljava/lang/Object;

    return-object p1
.end method

.method private static b(Ljava/io/InputStream;)Lcom/keniu/security/sync/d/d/a/jq;
    .locals 2
    .parameter

    .prologue
    .line 3168
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/jr;->l()Lcom/keniu/security/sync/d/d/a/jr;

    move-result-object v0

    .line 3169
    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/jr;->b(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3170
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/jr;->a(Lcom/keniu/security/sync/d/d/a/jr;)Lcom/keniu/security/sync/d/d/a/jq;

    move-result-object v0

    .line 3172
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/jq;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 3179
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/jr;->l()Lcom/keniu/security/sync/d/d/a/jr;

    move-result-object v0

    .line 3180
    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/jr;->b(Ljava/io/InputStream;Lcom/b/a/df;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3181
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/jr;->a(Lcom/keniu/security/sync/d/d/a/jr;)Lcom/keniu/security/sync/d/d/a/jq;

    move-result-object v0

    .line 3183
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Lcom/b/a/dp;)Lcom/keniu/security/sync/d/d/a/jr;
    .locals 1
    .parameter

    .prologue
    .line 3209
    new-instance v0, Lcom/keniu/security/sync/d/d/a/jr;

    invoke-direct {v0, p0}, Lcom/keniu/security/sync/d/d/a/jr;-><init>(Lcom/b/a/dp;)V

    .line 3210
    return-object v0
.end method

.method public static h()Lcom/keniu/security/sync/d/d/a/jq;
    .locals 1

    .prologue
    .line 3035
    sget-object v0, Lcom/keniu/security/sync/d/d/a/jq;->b:Lcom/keniu/security/sync/d/d/a/jq;

    return-object v0
.end method

.method public static final i()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 3044
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ih;->j()Lcom/b/a/cj;

    move-result-object v0

    return-object v0
.end method

.method public static l()Lcom/keniu/security/sync/d/d/a/jr;
    .locals 1

    .prologue
    .line 3199
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/jr;->l()Lcom/keniu/security/sync/d/d/a/jr;

    move-result-object v0

    return-object v0
.end method

.method static synthetic m()Z
    .locals 1

    .prologue
    .line 3024
    sget-boolean v0, Lcom/keniu/security/sync/d/d/a/jq;->j:Z

    return v0
.end method

.method private static n()Lcom/keniu/security/sync/d/d/a/jq;
    .locals 1

    .prologue
    .line 3039
    sget-object v0, Lcom/keniu/security/sync/d/d/a/jq;->b:Lcom/keniu/security/sync/d/d/a/jq;

    return-object v0
.end method

.method private o()Lcom/b/a/i;
    .locals 2

    .prologue
    .line 3074
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/jq;->d:Ljava/lang/Object;

    .line 3075
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3076
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/b/a/i;->a(Ljava/lang/String;)Lcom/b/a/i;

    move-result-object v0

    .line 3078
    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/jq;->d:Ljava/lang/Object;

    .line 3081
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/b/a/i;

    goto :goto_0
.end method

.method private p()V
    .locals 1

    .prologue
    .line 3086
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/jq;->d:Ljava/lang/Object;

    .line 3087
    return-void
.end method

.method private static q()Lcom/keniu/security/sync/d/d/a/jr;
    .locals 1

    .prologue
    .line 3200
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/jr;->l()Lcom/keniu/security/sync/d/d/a/jr;

    move-result-object v0

    return-object v0
.end method

.method private r()Lcom/keniu/security/sync/d/d/a/jr;
    .locals 1

    .prologue
    .line 3204
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/jr;->l()Lcom/keniu/security/sync/d/d/a/jr;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/jr;->a(Lcom/keniu/security/sync/d/d/a/jq;)Lcom/keniu/security/sync/d/d/a/jr;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final B()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 3129
    invoke-super {p0}, Lcom/b/a/dk;->B()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic D()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 3024
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/jq;->r()Lcom/keniu/security/sync/d/d/a/jr;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic E()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 3024
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/jr;->l()Lcom/keniu/security/sync/d/d/a/jr;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic F()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 3024
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/jq;->r()Lcom/keniu/security/sync/d/d/a/jr;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic G()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 3024
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/jr;->l()Lcom/keniu/security/sync/d/d/a/jr;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic H()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 3024
    sget-object v0, Lcom/keniu/security/sync/d/d/a/jq;->b:Lcom/keniu/security/sync/d/d/a/jq;

    return-object v0
.end method

.method public final bridge synthetic I()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 3024
    sget-object v0, Lcom/keniu/security/sync/d/d/a/jq;->b:Lcom/keniu/security/sync/d/d/a/jq;

    return-object v0
.end method

.method protected final synthetic a(Lcom/b/a/dp;)Lcom/b/a/ew;
    .locals 1
    .parameter

    .prologue
    .line 3024
    new-instance v0, Lcom/keniu/security/sync/d/d/a/jr;

    invoke-direct {v0, p1}, Lcom/keniu/security/sync/d/d/a/jr;-><init>(Lcom/b/a/dp;)V

    return-object v0
.end method

.method public final a(Lcom/b/a/n;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 3103
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/jq;->b()I

    .line 3104
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/jq;->c:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 3105
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/jq;->o()Lcom/b/a/i;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/b/a/n;->a(ILcom/b/a/i;)V

    .line 3107
    :cond_0
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/jq;->b_()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/b/a/gg;->a(Lcom/b/a/n;)V

    .line 3108
    return-void
.end method

.method public final a()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 3090
    iget-byte v0, p0, Lcom/keniu/security/sync/d/d/a/jq;->e:B

    .line 3091
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-ne v0, v2, :cond_0

    move v0, v2

    .line 3098
    :goto_0
    return v0

    :cond_0
    move v0, v3

    .line 3091
    goto :goto_0

    .line 3093
    :cond_1
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/jq;->j()Z

    move-result v0

    if-nez v0, :cond_2

    .line 3094
    iput-byte v3, p0, Lcom/keniu/security/sync/d/d/a/jq;->e:B

    move v0, v3

    .line 3095
    goto :goto_0

    .line 3097
    :cond_2
    iput-byte v2, p0, Lcom/keniu/security/sync/d/d/a/jq;->e:B

    move v0, v2

    .line 3098
    goto :goto_0
.end method

.method public final b()I
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 3112
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/jq;->f:I

    .line 3113
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 3122
    :goto_0
    return v0

    .line 3115
    :cond_0
    const/4 v0, 0x0

    .line 3116
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/jq;->c:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_1

    .line 3117
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/jq;->o()Lcom/b/a/i;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/b/a/n;->c(ILcom/b/a/i;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 3120
    :cond_1
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/jq;->b_()Lcom/b/a/gg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/b/a/gg;->b()I

    move-result v1

    add-int/2addr v0, v1

    .line 3121
    iput v0, p0, Lcom/keniu/security/sync/d/d/a/jq;->f:I

    goto :goto_0
.end method

.method protected final g()Lcom/b/a/dv;
    .locals 1

    .prologue
    .line 3049
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ih;->k()Lcom/b/a/dv;

    move-result-object v0

    return-object v0
.end method

.method public final j()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 3057
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/jq;->c:I

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
    .line 3060
    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/jq;->d:Ljava/lang/Object;

    .line 3061
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 3062
    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object p0, v0

    move-object v1, p0

    .line 3070
    :goto_0
    return-object v1

    .line 3064
    :cond_0
    check-cast v1, Lcom/b/a/i;

    .line 3066
    invoke-virtual {v1}, Lcom/b/a/i;->b()Ljava/lang/String;

    move-result-object v2

    .line 3067
    invoke-static {v1}, Lcom/b/a/ep;->a(Lcom/b/a/i;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3068
    iput-object v2, p0, Lcom/keniu/security/sync/d/d/a/jq;->d:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 3070
    goto :goto_0
.end method
