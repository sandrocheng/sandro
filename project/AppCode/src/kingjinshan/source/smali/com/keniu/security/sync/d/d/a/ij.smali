.class public final Lcom/keniu/security/sync/d/d/a/ij;
.super Lcom/b/a/dk;
.source "Loginsvr.java"

# interfaces
.implements Lcom/keniu/security/sync/d/d/a/il;


# static fields
.field public static final a:I = 0x1

.field public static final b:I = 0x2

.field public static final c:I = 0x3

.field private static final d:Lcom/keniu/security/sync/d/d/a/ij;

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
    .line 4420
    new-instance v0, Lcom/keniu/security/sync/d/d/a/ij;

    invoke-direct {v0}, Lcom/keniu/security/sync/d/d/a/ij;-><init>()V

    .line 4421
    sput-object v0, Lcom/keniu/security/sync/d/d/a/ij;->d:Lcom/keniu/security/sync/d/d/a/ij;

    const-string v1, ""

    iput-object v1, v0, Lcom/keniu/security/sync/d/d/a/ij;->f:Ljava/lang/Object;

    const-string v1, ""

    iput-object v1, v0, Lcom/keniu/security/sync/d/d/a/ij;->g:Ljava/lang/Object;

    const-string v1, ""

    iput-object v1, v0, Lcom/keniu/security/sync/d/d/a/ij;->h:Ljava/lang/Object;

    .line 4422
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 3862
    invoke-direct {p0}, Lcom/b/a/dk;-><init>()V

    .line 3985
    iput-byte v0, p0, Lcom/keniu/security/sync/d/d/a/ij;->i:B

    .line 4021
    iput v0, p0, Lcom/keniu/security/sync/d/d/a/ij;->k:I

    .line 3862
    return-void
.end method

.method synthetic constructor <init>(Lcom/keniu/security/sync/d/d/a/ik;)V
    .locals 1
    .parameter

    .prologue
    .line 3855
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/keniu/security/sync/d/d/a/ij;-><init>(Lcom/keniu/security/sync/d/d/a/ik;B)V

    return-void
.end method

.method private constructor <init>(Lcom/keniu/security/sync/d/d/a/ik;B)V
    .locals 1
    .parameter
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 3860
    invoke-direct {p0, p1}, Lcom/b/a/dk;-><init>(Lcom/b/a/dn;)V

    .line 3985
    iput-byte v0, p0, Lcom/keniu/security/sync/d/d/a/ij;->i:B

    .line 4021
    iput v0, p0, Lcom/keniu/security/sync/d/d/a/ij;->k:I

    .line 3861
    return-void
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/ij;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 3855
    iput p1, p0, Lcom/keniu/security/sync/d/d/a/ij;->e:I

    return p1
.end method

.method private static a(Lcom/b/a/i;)Lcom/keniu/security/sync/d/d/a/ij;
    .locals 1
    .parameter

    .prologue
    .line 4054
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ik;->i()Lcom/keniu/security/sync/d/d/a/ik;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/ik;->a(Lcom/b/a/i;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/ik;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/ik;->a(Lcom/keniu/security/sync/d/d/a/ik;)Lcom/keniu/security/sync/d/d/a/ij;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/i;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/ij;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 4060
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ik;->i()Lcom/keniu/security/sync/d/d/a/ik;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/ik;->a(Lcom/b/a/i;Lcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/ik;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/ik;->a(Lcom/keniu/security/sync/d/d/a/ik;)Lcom/keniu/security/sync/d/d/a/ij;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/m;)Lcom/keniu/security/sync/d/d/a/ij;
    .locals 1
    .parameter

    .prologue
    .line 4108
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ik;->i()Lcom/keniu/security/sync/d/d/a/ik;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/ik;->a(Lcom/b/a/m;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/ik;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/ik;->a(Lcom/keniu/security/sync/d/d/a/ik;)Lcom/keniu/security/sync/d/d/a/ij;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/ij;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 4114
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ik;->i()Lcom/keniu/security/sync/d/d/a/ik;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/ik;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/ik;

    move-result-object v0

    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/ik;->a(Lcom/keniu/security/sync/d/d/a/ik;)Lcom/keniu/security/sync/d/d/a/ij;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/io/InputStream;)Lcom/keniu/security/sync/d/d/a/ij;
    .locals 1
    .parameter

    .prologue
    .line 4076
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ik;->i()Lcom/keniu/security/sync/d/d/a/ik;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/ik;->a(Ljava/io/InputStream;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/ik;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/ik;->a(Lcom/keniu/security/sync/d/d/a/ik;)Lcom/keniu/security/sync/d/d/a/ij;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/ij;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 4082
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ik;->i()Lcom/keniu/security/sync/d/d/a/ik;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/ik;->a(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/ik;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/ik;->a(Lcom/keniu/security/sync/d/d/a/ik;)Lcom/keniu/security/sync/d/d/a/ij;

    move-result-object v0

    return-object v0
.end method

.method private static a([B)Lcom/keniu/security/sync/d/d/a/ij;
    .locals 1
    .parameter

    .prologue
    .line 4065
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ik;->i()Lcom/keniu/security/sync/d/d/a/ik;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/ik;->a([B)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/ik;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/ik;->a(Lcom/keniu/security/sync/d/d/a/ik;)Lcom/keniu/security/sync/d/d/a/ij;

    move-result-object v0

    return-object v0
.end method

.method private static a([BLcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/ij;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 4071
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ik;->i()Lcom/keniu/security/sync/d/d/a/ik;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/ik;->a([BLcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/ik;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/ik;->a(Lcom/keniu/security/sync/d/d/a/ik;)Lcom/keniu/security/sync/d/d/a/ij;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/keniu/security/sync/d/d/a/ij;)Lcom/keniu/security/sync/d/d/a/ik;
    .locals 1
    .parameter

    .prologue
    .line 4121
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ik;->i()Lcom/keniu/security/sync/d/d/a/ik;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/ik;->a(Lcom/keniu/security/sync/d/d/a/ij;)Lcom/keniu/security/sync/d/d/a/ik;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/ij;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 3855
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/ij;->f:Ljava/lang/Object;

    return-object p1
.end method

.method private static b(Ljava/io/InputStream;)Lcom/keniu/security/sync/d/d/a/ij;
    .locals 2
    .parameter

    .prologue
    .line 4087
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ik;->i()Lcom/keniu/security/sync/d/d/a/ik;

    move-result-object v0

    .line 4088
    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/ik;->b(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4089
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/ik;->a(Lcom/keniu/security/sync/d/d/a/ik;)Lcom/keniu/security/sync/d/d/a/ij;

    move-result-object v0

    .line 4091
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/ij;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 4098
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ik;->i()Lcom/keniu/security/sync/d/d/a/ik;

    move-result-object v0

    .line 4099
    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/ik;->b(Ljava/io/InputStream;Lcom/b/a/df;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4100
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/ik;->a(Lcom/keniu/security/sync/d/d/a/ik;)Lcom/keniu/security/sync/d/d/a/ij;

    move-result-object v0

    .line 4102
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Lcom/b/a/dp;)Lcom/keniu/security/sync/d/d/a/ik;
    .locals 1
    .parameter

    .prologue
    .line 4128
    new-instance v0, Lcom/keniu/security/sync/d/d/a/ik;

    invoke-direct {v0, p0}, Lcom/keniu/security/sync/d/d/a/ik;-><init>(Lcom/b/a/dp;)V

    .line 4129
    return-object v0
.end method

.method static synthetic b(Lcom/keniu/security/sync/d/d/a/ij;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 3855
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/ij;->g:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic c(Lcom/keniu/security/sync/d/d/a/ij;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 3855
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/ij;->h:Ljava/lang/Object;

    return-object p1
.end method

.method public static h()Lcom/keniu/security/sync/d/d/a/ij;
    .locals 1

    .prologue
    .line 3866
    sget-object v0, Lcom/keniu/security/sync/d/d/a/ij;->d:Lcom/keniu/security/sync/d/d/a/ij;

    return-object v0
.end method

.method public static final i()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 3875
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ih;->n()Lcom/b/a/cj;

    move-result-object v0

    return-object v0
.end method

.method static synthetic p()Z
    .locals 1

    .prologue
    .line 3855
    sget-boolean v0, Lcom/keniu/security/sync/d/d/a/ij;->j:Z

    return v0
.end method

.method private static q()Lcom/keniu/security/sync/d/d/a/ij;
    .locals 1

    .prologue
    .line 3870
    sget-object v0, Lcom/keniu/security/sync/d/d/a/ij;->d:Lcom/keniu/security/sync/d/d/a/ij;

    return-object v0
.end method

.method private r()Lcom/b/a/i;
    .locals 2

    .prologue
    .line 3905
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ij;->f:Ljava/lang/Object;

    .line 3906
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3907
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/b/a/i;->a(Ljava/lang/String;)Lcom/b/a/i;

    move-result-object v0

    .line 3909
    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ij;->f:Ljava/lang/Object;

    .line 3912
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/b/a/i;

    goto :goto_0
.end method

.method private s()Lcom/b/a/i;
    .locals 2

    .prologue
    .line 3937
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ij;->g:Ljava/lang/Object;

    .line 3938
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3939
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/b/a/i;->a(Ljava/lang/String;)Lcom/b/a/i;

    move-result-object v0

    .line 3941
    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ij;->g:Ljava/lang/Object;

    .line 3944
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/b/a/i;

    goto :goto_0
.end method

.method private t()Lcom/b/a/i;
    .locals 2

    .prologue
    .line 3969
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ij;->h:Ljava/lang/Object;

    .line 3970
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3971
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/b/a/i;->a(Ljava/lang/String;)Lcom/b/a/i;

    move-result-object v0

    .line 3973
    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ij;->h:Ljava/lang/Object;

    .line 3976
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/b/a/i;

    goto :goto_0
.end method

.method private u()V
    .locals 1

    .prologue
    .line 3981
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ij;->f:Ljava/lang/Object;

    .line 3982
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ij;->g:Ljava/lang/Object;

    .line 3983
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ij;->h:Ljava/lang/Object;

    .line 3984
    return-void
.end method

.method private static v()Lcom/keniu/security/sync/d/d/a/ik;
    .locals 1

    .prologue
    .line 4118
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ik;->i()Lcom/keniu/security/sync/d/d/a/ik;

    move-result-object v0

    return-object v0
.end method

.method private static w()Lcom/keniu/security/sync/d/d/a/ik;
    .locals 1

    .prologue
    .line 4119
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ik;->i()Lcom/keniu/security/sync/d/d/a/ik;

    move-result-object v0

    return-object v0
.end method

.method private x()Lcom/keniu/security/sync/d/d/a/ik;
    .locals 1

    .prologue
    .line 4123
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ik;->i()Lcom/keniu/security/sync/d/d/a/ik;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/ik;->a(Lcom/keniu/security/sync/d/d/a/ij;)Lcom/keniu/security/sync/d/d/a/ik;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final B()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 4048
    invoke-super {p0}, Lcom/b/a/dk;->B()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic D()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 3855
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ij;->x()Lcom/keniu/security/sync/d/d/a/ik;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic E()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 3855
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ik;->i()Lcom/keniu/security/sync/d/d/a/ik;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic F()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 3855
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ij;->x()Lcom/keniu/security/sync/d/d/a/ik;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic G()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 3855
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ik;->i()Lcom/keniu/security/sync/d/d/a/ik;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic H()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 3855
    sget-object v0, Lcom/keniu/security/sync/d/d/a/ij;->d:Lcom/keniu/security/sync/d/d/a/ij;

    return-object v0
.end method

.method public final bridge synthetic I()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 3855
    sget-object v0, Lcom/keniu/security/sync/d/d/a/ij;->d:Lcom/keniu/security/sync/d/d/a/ij;

    return-object v0
.end method

.method protected final synthetic a(Lcom/b/a/dp;)Lcom/b/a/ew;
    .locals 1
    .parameter

    .prologue
    .line 3855
    new-instance v0, Lcom/keniu/security/sync/d/d/a/ik;

    invoke-direct {v0, p1}, Lcom/keniu/security/sync/d/d/a/ik;-><init>(Lcom/b/a/dp;)V

    return-object v0
.end method

.method public final a(Lcom/b/a/n;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 4008
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ij;->b()I

    .line 4009
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ij;->e:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 4010
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ij;->r()Lcom/b/a/i;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/b/a/n;->a(ILcom/b/a/i;)V

    .line 4012
    :cond_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ij;->e:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 4013
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ij;->s()Lcom/b/a/i;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/b/a/n;->a(ILcom/b/a/i;)V

    .line 4015
    :cond_1
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ij;->e:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 4016
    const/4 v0, 0x3

    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ij;->t()Lcom/b/a/i;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/b/a/n;->a(ILcom/b/a/i;)V

    .line 4018
    :cond_2
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ij;->b_()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/b/a/gg;->a(Lcom/b/a/n;)V

    .line 4019
    return-void
.end method

.method public final a()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 3987
    iget-byte v0, p0, Lcom/keniu/security/sync/d/d/a/ij;->i:B

    .line 3988
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-ne v0, v3, :cond_0

    move v0, v3

    .line 4003
    :goto_0
    return v0

    :cond_0
    move v0, v2

    .line 3988
    goto :goto_0

    .line 3990
    :cond_1
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ij;->j()Z

    move-result v0

    if-nez v0, :cond_2

    .line 3991
    iput-byte v2, p0, Lcom/keniu/security/sync/d/d/a/ij;->i:B

    move v0, v2

    .line 3992
    goto :goto_0

    .line 3994
    :cond_2
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ij;->l()Z

    move-result v0

    if-nez v0, :cond_3

    .line 3995
    iput-byte v2, p0, Lcom/keniu/security/sync/d/d/a/ij;->i:B

    move v0, v2

    .line 3996
    goto :goto_0

    .line 3998
    :cond_3
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ij;->n()Z

    move-result v0

    if-nez v0, :cond_4

    .line 3999
    iput-byte v2, p0, Lcom/keniu/security/sync/d/d/a/ij;->i:B

    move v0, v2

    .line 4000
    goto :goto_0

    .line 4002
    :cond_4
    iput-byte v3, p0, Lcom/keniu/security/sync/d/d/a/ij;->i:B

    move v0, v3

    .line 4003
    goto :goto_0
.end method

.method public final b()I
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 4023
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ij;->k:I

    .line 4024
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 4041
    :goto_0
    return v0

    .line 4026
    :cond_0
    const/4 v0, 0x0

    .line 4027
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/ij;->e:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_1

    .line 4028
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ij;->r()Lcom/b/a/i;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/b/a/n;->c(ILcom/b/a/i;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 4031
    :cond_1
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/ij;->e:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_2

    .line 4032
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ij;->s()Lcom/b/a/i;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/b/a/n;->c(ILcom/b/a/i;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4035
    :cond_2
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/ij;->e:I

    and-int/lit8 v1, v1, 0x4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    .line 4036
    const/4 v1, 0x3

    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ij;->t()Lcom/b/a/i;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/b/a/n;->c(ILcom/b/a/i;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4039
    :cond_3
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ij;->b_()Lcom/b/a/gg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/b/a/gg;->b()I

    move-result v1

    add-int/2addr v0, v1

    .line 4040
    iput v0, p0, Lcom/keniu/security/sync/d/d/a/ij;->k:I

    goto :goto_0
.end method

.method protected final g()Lcom/b/a/dv;
    .locals 1

    .prologue
    .line 3880
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ih;->o()Lcom/b/a/dv;

    move-result-object v0

    return-object v0
.end method

.method public final j()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 3888
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ij;->e:I

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
    .line 3891
    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/ij;->f:Ljava/lang/Object;

    .line 3892
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 3893
    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object p0, v0

    move-object v1, p0

    .line 3901
    :goto_0
    return-object v1

    .line 3895
    :cond_0
    check-cast v1, Lcom/b/a/i;

    .line 3897
    invoke-virtual {v1}, Lcom/b/a/i;->b()Ljava/lang/String;

    move-result-object v2

    .line 3898
    invoke-static {v1}, Lcom/b/a/ep;->a(Lcom/b/a/i;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3899
    iput-object v2, p0, Lcom/keniu/security/sync/d/d/a/ij;->f:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 3901
    goto :goto_0
.end method

.method public final l()Z
    .locals 2

    .prologue
    .line 3920
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ij;->e:I

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
    .line 3923
    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/ij;->g:Ljava/lang/Object;

    .line 3924
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 3925
    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object p0, v0

    move-object v1, p0

    .line 3933
    :goto_0
    return-object v1

    .line 3927
    :cond_0
    check-cast v1, Lcom/b/a/i;

    .line 3929
    invoke-virtual {v1}, Lcom/b/a/i;->b()Ljava/lang/String;

    move-result-object v2

    .line 3930
    invoke-static {v1}, Lcom/b/a/ep;->a(Lcom/b/a/i;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3931
    iput-object v2, p0, Lcom/keniu/security/sync/d/d/a/ij;->g:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 3933
    goto :goto_0
.end method

.method public final n()Z
    .locals 2

    .prologue
    .line 3952
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ij;->e:I

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
    .line 3955
    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/ij;->h:Ljava/lang/Object;

    .line 3956
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 3957
    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object p0, v0

    move-object v1, p0

    .line 3965
    :goto_0
    return-object v1

    .line 3959
    :cond_0
    check-cast v1, Lcom/b/a/i;

    .line 3961
    invoke-virtual {v1}, Lcom/b/a/i;->b()Ljava/lang/String;

    move-result-object v2

    .line 3962
    invoke-static {v1}, Lcom/b/a/ep;->a(Lcom/b/a/i;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3963
    iput-object v2, p0, Lcom/keniu/security/sync/d/d/a/ij;->h:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 3965
    goto :goto_0
.end method
