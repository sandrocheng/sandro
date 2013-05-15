.class public final Lcom/avast/android/mobilesecurity/engine/internal/a/w;
.super Lcom/google/a/l;
.source "WebShieldProto.java"

# interfaces
.implements Lcom/avast/android/mobilesecurity/engine/internal/a/y;


# static fields
.field private static final a:Lcom/avast/android/mobilesecurity/engine/internal/a/w;


# instance fields
.field private b:I

.field private c:J

.field private d:B

.field private e:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 4273
    new-instance v0, Lcom/avast/android/mobilesecurity/engine/internal/a/w;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/avast/android/mobilesecurity/engine/internal/a/w;-><init>(Z)V

    sput-object v0, Lcom/avast/android/mobilesecurity/engine/internal/a/w;->a:Lcom/avast/android/mobilesecurity/engine/internal/a/w;

    .line 4274
    sget-object v0, Lcom/avast/android/mobilesecurity/engine/internal/a/w;->a:Lcom/avast/android/mobilesecurity/engine/internal/a/w;

    invoke-direct {v0}, Lcom/avast/android/mobilesecurity/engine/internal/a/w;->g()V

    .line 4275
    return-void
.end method

.method private constructor <init>(Lcom/avast/android/mobilesecurity/engine/internal/a/x;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 4009
    invoke-direct {p0, p1}, Lcom/google/a/l;-><init>(Lcom/google/a/n;)V

    .line 4036
    iput-byte v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/w;->d:B

    .line 4053
    iput v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/w;->e:I

    .line 4010
    return-void
.end method

.method synthetic constructor <init>(Lcom/avast/android/mobilesecurity/engine/internal/a/x;Lcom/avast/android/mobilesecurity/engine/internal/a/v;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 4004
    invoke-direct {p0, p1}, Lcom/avast/android/mobilesecurity/engine/internal/a/w;-><init>(Lcom/avast/android/mobilesecurity/engine/internal/a/x;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 4011
    invoke-direct {p0}, Lcom/google/a/l;-><init>()V

    .line 4036
    iput-byte v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/w;->d:B

    .line 4053
    iput v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/w;->e:I

    .line 4011
    return-void
.end method

.method static synthetic a(Lcom/avast/android/mobilesecurity/engine/internal/a/w;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 4004
    iput p1, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/w;->b:I

    return p1
.end method

.method static synthetic a(Lcom/avast/android/mobilesecurity/engine/internal/a/w;J)J
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 4004
    iput-wide p1, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/w;->c:J

    return-wide p1
.end method

.method public static a()Lcom/avast/android/mobilesecurity/engine/internal/a/w;
    .locals 1

    .prologue
    .line 4015
    sget-object v0, Lcom/avast/android/mobilesecurity/engine/internal/a/w;->a:Lcom/avast/android/mobilesecurity/engine/internal/a/w;

    return-object v0
.end method

.method public static a(Lcom/avast/android/mobilesecurity/engine/internal/a/w;)Lcom/avast/android/mobilesecurity/engine/internal/a/x;
    .locals 1
    .parameter

    .prologue
    .line 4144
    invoke-static {}, Lcom/avast/android/mobilesecurity/engine/internal/a/w;->d()Lcom/avast/android/mobilesecurity/engine/internal/a/x;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/avast/android/mobilesecurity/engine/internal/a/x;->a(Lcom/avast/android/mobilesecurity/engine/internal/a/w;)Lcom/avast/android/mobilesecurity/engine/internal/a/x;

    move-result-object v0

    return-object v0
.end method

.method public static d()Lcom/avast/android/mobilesecurity/engine/internal/a/x;
    .locals 1

    .prologue
    .line 4141
    invoke-static {}, Lcom/avast/android/mobilesecurity/engine/internal/a/x;->e()Lcom/avast/android/mobilesecurity/engine/internal/a/x;

    move-result-object v0

    return-object v0
.end method

.method private g()V
    .locals 2

    .prologue
    .line 4034
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/w;->c:J

    .line 4035
    return-void
.end method


# virtual methods
.method public synthetic A()Lcom/google/a/ab;
    .locals 1

    .prologue
    .line 4004
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/engine/internal/a/w;->f()Lcom/avast/android/mobilesecurity/engine/internal/a/x;

    move-result-object v0

    return-object v0
.end method

.method public synthetic B()Lcom/google/a/ab;
    .locals 1

    .prologue
    .line 4004
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/engine/internal/a/w;->e()Lcom/avast/android/mobilesecurity/engine/internal/a/x;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/google/a/e;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 4047
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/engine/internal/a/w;->w()I

    .line 4048
    iget v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/w;->b:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v2, :cond_0

    .line 4049
    iget-wide v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/w;->c:J

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/a/e;->c(IJ)V

    .line 4051
    :cond_0
    return-void
.end method

.method public b()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 4027
    iget v1, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/w;->b:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()J
    .locals 2

    .prologue
    .line 4030
    iget-wide v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/w;->c:J

    return-wide v0
.end method

.method public e()Lcom/avast/android/mobilesecurity/engine/internal/a/x;
    .locals 1

    .prologue
    .line 4142
    invoke-static {}, Lcom/avast/android/mobilesecurity/engine/internal/a/w;->d()Lcom/avast/android/mobilesecurity/engine/internal/a/x;

    move-result-object v0

    return-object v0
.end method

.method public f()Lcom/avast/android/mobilesecurity/engine/internal/a/x;
    .locals 1

    .prologue
    .line 4146
    invoke-static {p0}, Lcom/avast/android/mobilesecurity/engine/internal/a/w;->a(Lcom/avast/android/mobilesecurity/engine/internal/a/w;)Lcom/avast/android/mobilesecurity/engine/internal/a/x;

    move-result-object v0

    return-object v0
.end method

.method public final v()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 4038
    iget-byte v1, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/w;->d:B

    .line 4039
    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    if-ne v1, v0, :cond_0

    .line 4042
    :goto_0
    return v0

    .line 4039
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 4041
    :cond_1
    iput-byte v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/w;->d:B

    goto :goto_0
.end method

.method public w()I
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 4055
    iget v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/w;->e:I

    .line 4056
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 4064
    :goto_0
    return v0

    .line 4058
    :cond_0
    const/4 v0, 0x0

    .line 4059
    iget v1, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/w;->b:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v3, :cond_1

    .line 4060
    iget-wide v1, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/w;->c:J

    invoke-static {v3, v1, v2}, Lcom/google/a/e;->f(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 4063
    :cond_1
    iput v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/w;->e:I

    goto :goto_0
.end method
