.class public final Lcom/keniu/security/sync/d/d/a/hy;
.super Lcom/b/a/dk;
.source "Fudsvr.java"

# interfaces
.implements Lcom/keniu/security/sync/d/d/a/ia;


# static fields
.field public static final a:I = 0x1

.field private static final b:Lcom/keniu/security/sync/d/d/a/hy;

.field private static final g:J


# instance fields
.field private c:I

.field private d:Lcom/keniu/security/sync/d/d/a/ge;

.field private e:B

.field private f:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 4449
    new-instance v0, Lcom/keniu/security/sync/d/d/a/hy;

    invoke-direct {v0}, Lcom/keniu/security/sync/d/d/a/hy;-><init>()V

    .line 4450
    sput-object v0, Lcom/keniu/security/sync/d/d/a/hy;->b:Lcom/keniu/security/sync/d/d/a/hy;

    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->h()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v1

    iput-object v1, v0, Lcom/keniu/security/sync/d/d/a/hy;->d:Lcom/keniu/security/sync/d/d/a/ge;

    .line 4451
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 4031
    invoke-direct {p0}, Lcom/b/a/dk;-><init>()V

    .line 4069
    iput-byte v0, p0, Lcom/keniu/security/sync/d/d/a/hy;->e:B

    .line 4095
    iput v0, p0, Lcom/keniu/security/sync/d/d/a/hy;->f:I

    .line 4031
    return-void
.end method

.method synthetic constructor <init>(Lcom/keniu/security/sync/d/d/a/hz;)V
    .locals 1
    .parameter

    .prologue
    .line 4024
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/keniu/security/sync/d/d/a/hy;-><init>(Lcom/keniu/security/sync/d/d/a/hz;B)V

    return-void
.end method

.method private constructor <init>(Lcom/keniu/security/sync/d/d/a/hz;B)V
    .locals 1
    .parameter
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 4029
    invoke-direct {p0, p1}, Lcom/b/a/dk;-><init>(Lcom/b/a/dn;)V

    .line 4069
    iput-byte v0, p0, Lcom/keniu/security/sync/d/d/a/hy;->e:B

    .line 4095
    iput v0, p0, Lcom/keniu/security/sync/d/d/a/hy;->f:I

    .line 4030
    return-void
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/hy;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 4024
    iput p1, p0, Lcom/keniu/security/sync/d/d/a/hy;->c:I

    return p1
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/hy;Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/ge;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 4024
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/hy;->d:Lcom/keniu/security/sync/d/d/a/ge;

    return-object p1
.end method

.method private static a(Lcom/b/a/i;)Lcom/keniu/security/sync/d/d/a/hy;
    .locals 1
    .parameter

    .prologue
    .line 4120
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/hz;->i()Lcom/keniu/security/sync/d/d/a/hz;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/hz;->a(Lcom/b/a/i;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/hz;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/hz;->a(Lcom/keniu/security/sync/d/d/a/hz;)Lcom/keniu/security/sync/d/d/a/hy;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/i;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/hy;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 4126
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/hz;->i()Lcom/keniu/security/sync/d/d/a/hz;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/hz;->a(Lcom/b/a/i;Lcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/hz;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/hz;->a(Lcom/keniu/security/sync/d/d/a/hz;)Lcom/keniu/security/sync/d/d/a/hy;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/m;)Lcom/keniu/security/sync/d/d/a/hy;
    .locals 1
    .parameter

    .prologue
    .line 4174
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/hz;->i()Lcom/keniu/security/sync/d/d/a/hz;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/hz;->a(Lcom/b/a/m;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/hz;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/hz;->a(Lcom/keniu/security/sync/d/d/a/hz;)Lcom/keniu/security/sync/d/d/a/hy;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/hy;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 4180
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/hz;->i()Lcom/keniu/security/sync/d/d/a/hz;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/hz;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/hz;

    move-result-object v0

    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/hz;->a(Lcom/keniu/security/sync/d/d/a/hz;)Lcom/keniu/security/sync/d/d/a/hy;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/io/InputStream;)Lcom/keniu/security/sync/d/d/a/hy;
    .locals 1
    .parameter

    .prologue
    .line 4142
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/hz;->i()Lcom/keniu/security/sync/d/d/a/hz;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/hz;->a(Ljava/io/InputStream;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/hz;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/hz;->a(Lcom/keniu/security/sync/d/d/a/hz;)Lcom/keniu/security/sync/d/d/a/hy;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/hy;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 4148
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/hz;->i()Lcom/keniu/security/sync/d/d/a/hz;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/hz;->a(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/hz;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/hz;->a(Lcom/keniu/security/sync/d/d/a/hz;)Lcom/keniu/security/sync/d/d/a/hy;

    move-result-object v0

    return-object v0
.end method

.method private static a([B)Lcom/keniu/security/sync/d/d/a/hy;
    .locals 1
    .parameter

    .prologue
    .line 4131
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/hz;->i()Lcom/keniu/security/sync/d/d/a/hz;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/hz;->a([B)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/hz;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/hz;->a(Lcom/keniu/security/sync/d/d/a/hz;)Lcom/keniu/security/sync/d/d/a/hy;

    move-result-object v0

    return-object v0
.end method

.method private static a([BLcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/hy;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 4137
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/hz;->i()Lcom/keniu/security/sync/d/d/a/hz;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/hz;->a([BLcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/hz;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/hz;->a(Lcom/keniu/security/sync/d/d/a/hz;)Lcom/keniu/security/sync/d/d/a/hy;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/keniu/security/sync/d/d/a/hy;)Lcom/keniu/security/sync/d/d/a/hz;
    .locals 1
    .parameter

    .prologue
    .line 4187
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/hz;->i()Lcom/keniu/security/sync/d/d/a/hz;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/hz;->a(Lcom/keniu/security/sync/d/d/a/hy;)Lcom/keniu/security/sync/d/d/a/hz;

    move-result-object v0

    return-object v0
.end method

.method private static b(Ljava/io/InputStream;)Lcom/keniu/security/sync/d/d/a/hy;
    .locals 2
    .parameter

    .prologue
    .line 4153
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/hz;->i()Lcom/keniu/security/sync/d/d/a/hz;

    move-result-object v0

    .line 4154
    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/hz;->b(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4155
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/hz;->a(Lcom/keniu/security/sync/d/d/a/hz;)Lcom/keniu/security/sync/d/d/a/hy;

    move-result-object v0

    .line 4157
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/hy;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 4164
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/hz;->i()Lcom/keniu/security/sync/d/d/a/hz;

    move-result-object v0

    .line 4165
    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/hz;->b(Ljava/io/InputStream;Lcom/b/a/df;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4166
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/hz;->a(Lcom/keniu/security/sync/d/d/a/hz;)Lcom/keniu/security/sync/d/d/a/hy;

    move-result-object v0

    .line 4168
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Lcom/b/a/dp;)Lcom/keniu/security/sync/d/d/a/hz;
    .locals 1
    .parameter

    .prologue
    .line 4194
    new-instance v0, Lcom/keniu/security/sync/d/d/a/hz;

    invoke-direct {v0, p0}, Lcom/keniu/security/sync/d/d/a/hz;-><init>(Lcom/b/a/dp;)V

    .line 4195
    return-object v0
.end method

.method public static h()Lcom/keniu/security/sync/d/d/a/hy;
    .locals 1

    .prologue
    .line 4035
    sget-object v0, Lcom/keniu/security/sync/d/d/a/hy;->b:Lcom/keniu/security/sync/d/d/a/hy;

    return-object v0
.end method

.method public static final i()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 4044
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/hh;->p()Lcom/b/a/cj;

    move-result-object v0

    return-object v0
.end method

.method static synthetic m()Z
    .locals 1

    .prologue
    .line 4024
    sget-boolean v0, Lcom/keniu/security/sync/d/d/a/hy;->j:Z

    return v0
.end method

.method private static n()Lcom/keniu/security/sync/d/d/a/hy;
    .locals 1

    .prologue
    .line 4039
    sget-object v0, Lcom/keniu/security/sync/d/d/a/hy;->b:Lcom/keniu/security/sync/d/d/a/hy;

    return-object v0
.end method

.method private o()V
    .locals 1

    .prologue
    .line 4067
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->h()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/hy;->d:Lcom/keniu/security/sync/d/d/a/ge;

    .line 4068
    return-void
.end method

.method private static p()Lcom/keniu/security/sync/d/d/a/hz;
    .locals 1

    .prologue
    .line 4184
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/hz;->i()Lcom/keniu/security/sync/d/d/a/hz;

    move-result-object v0

    return-object v0
.end method

.method private static q()Lcom/keniu/security/sync/d/d/a/hz;
    .locals 1

    .prologue
    .line 4185
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/hz;->i()Lcom/keniu/security/sync/d/d/a/hz;

    move-result-object v0

    return-object v0
.end method

.method private r()Lcom/keniu/security/sync/d/d/a/hz;
    .locals 1

    .prologue
    .line 4189
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/hz;->i()Lcom/keniu/security/sync/d/d/a/hz;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/hz;->a(Lcom/keniu/security/sync/d/d/a/hy;)Lcom/keniu/security/sync/d/d/a/hz;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final B()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 4114
    invoke-super {p0}, Lcom/b/a/dk;->B()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic D()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 4024
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/hy;->r()Lcom/keniu/security/sync/d/d/a/hz;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic E()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 4024
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/hz;->i()Lcom/keniu/security/sync/d/d/a/hz;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic F()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 4024
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/hy;->r()Lcom/keniu/security/sync/d/d/a/hz;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic G()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 4024
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/hz;->i()Lcom/keniu/security/sync/d/d/a/hz;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic H()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 4024
    sget-object v0, Lcom/keniu/security/sync/d/d/a/hy;->b:Lcom/keniu/security/sync/d/d/a/hy;

    return-object v0
.end method

.method public final bridge synthetic I()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 4024
    sget-object v0, Lcom/keniu/security/sync/d/d/a/hy;->b:Lcom/keniu/security/sync/d/d/a/hy;

    return-object v0
.end method

.method protected final synthetic a(Lcom/b/a/dp;)Lcom/b/a/ew;
    .locals 1
    .parameter

    .prologue
    .line 4024
    new-instance v0, Lcom/keniu/security/sync/d/d/a/hz;

    invoke-direct {v0, p1}, Lcom/keniu/security/sync/d/d/a/hz;-><init>(Lcom/b/a/dp;)V

    return-object v0
.end method

.method public final a(Lcom/b/a/n;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 4088
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/hy;->b()I

    .line 4089
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/hy;->c:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 4090
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/hy;->d:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-virtual {p1, v1, v0}, Lcom/b/a/n;->b(ILcom/b/a/ex;)V

    .line 4092
    :cond_0
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/hy;->b_()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/b/a/gg;->a(Lcom/b/a/n;)V

    .line 4093
    return-void
.end method

.method public final a()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4071
    iget-byte v0, p0, Lcom/keniu/security/sync/d/d/a/hy;->e:B

    .line 4072
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-ne v0, v3, :cond_0

    move v0, v3

    .line 4083
    :goto_0
    return v0

    :cond_0
    move v0, v2

    .line 4072
    goto :goto_0

    .line 4074
    :cond_1
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/hy;->j()Z

    move-result v0

    if-nez v0, :cond_2

    .line 4075
    iput-byte v2, p0, Lcom/keniu/security/sync/d/d/a/hy;->e:B

    move v0, v2

    .line 4076
    goto :goto_0

    .line 4078
    :cond_2
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/hy;->d:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/ge;->a()Z

    move-result v0

    if-nez v0, :cond_3

    .line 4079
    iput-byte v2, p0, Lcom/keniu/security/sync/d/d/a/hy;->e:B

    move v0, v2

    .line 4080
    goto :goto_0

    .line 4082
    :cond_3
    iput-byte v3, p0, Lcom/keniu/security/sync/d/d/a/hy;->e:B

    move v0, v3

    .line 4083
    goto :goto_0
.end method

.method public final b()I
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 4097
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/hy;->f:I

    .line 4098
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 4107
    :goto_0
    return v0

    .line 4100
    :cond_0
    const/4 v0, 0x0

    .line 4101
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/hy;->c:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_1

    .line 4102
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/hy;->d:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-static {v2, v0}, Lcom/b/a/n;->e(ILcom/b/a/ex;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 4105
    :cond_1
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/hy;->b_()Lcom/b/a/gg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/b/a/gg;->b()I

    move-result v1

    add-int/2addr v0, v1

    .line 4106
    iput v0, p0, Lcom/keniu/security/sync/d/d/a/hy;->f:I

    goto :goto_0
.end method

.method protected final g()Lcom/b/a/dv;
    .locals 1

    .prologue
    .line 4049
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/hh;->q()Lcom/b/a/dv;

    move-result-object v0

    return-object v0
.end method

.method public final j()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 4057
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/hy;->c:I

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
    .line 4060
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/hy;->d:Lcom/keniu/security/sync/d/d/a/ge;

    return-object v0
.end method

.method public final l()Lcom/keniu/security/sync/d/d/a/gg;
    .locals 1

    .prologue
    .line 4063
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/hy;->d:Lcom/keniu/security/sync/d/d/a/ge;

    return-object v0
.end method
