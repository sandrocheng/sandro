.class public final Lcom/avast/android/mobilesecurity/vps/c/d;
.super La/a/h;


# static fields
.field private static final a:Lcom/avast/android/mobilesecurity/vps/c/d;


# instance fields
.field private b:I

.field private c:Ljava/lang/Object;

.field private d:Ljava/lang/Object;

.field private e:B

.field private f:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/avast/android/mobilesecurity/vps/c/d;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/avast/android/mobilesecurity/vps/c/d;-><init>(B)V

    sput-object v0, Lcom/avast/android/mobilesecurity/vps/c/d;->a:Lcom/avast/android/mobilesecurity/vps/c/d;

    const-string v1, ""

    iput-object v1, v0, Lcom/avast/android/mobilesecurity/vps/c/d;->c:Ljava/lang/Object;

    const-string v1, ""

    iput-object v1, v0, Lcom/avast/android/mobilesecurity/vps/c/d;->d:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    const/4 v1, -0x1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, La/a/h;-><init>(B)V

    iput-byte v1, p0, Lcom/avast/android/mobilesecurity/vps/c/d;->e:B

    iput v1, p0, Lcom/avast/android/mobilesecurity/vps/c/d;->f:I

    return-void
.end method

.method private constructor <init>(B)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0}, La/a/h;-><init>()V

    iput-byte v0, p0, Lcom/avast/android/mobilesecurity/vps/c/d;->e:B

    iput v0, p0, Lcom/avast/android/mobilesecurity/vps/c/d;->f:I

    return-void
.end method

.method synthetic constructor <init>(C)V
    .locals 0

    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/vps/c/d;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/avast/android/mobilesecurity/vps/c/d;I)I
    .locals 0

    iput p1, p0, Lcom/avast/android/mobilesecurity/vps/c/d;->b:I

    return p1
.end method

.method public static a()Lcom/avast/android/mobilesecurity/vps/c/d;
    .locals 1

    sget-object v0, Lcom/avast/android/mobilesecurity/vps/c/d;->a:Lcom/avast/android/mobilesecurity/vps/c/d;

    return-object v0
.end method

.method public static a(Ljava/io/InputStream;)Lcom/avast/android/mobilesecurity/vps/c/d;
    .locals 1

    invoke-static {}, Lcom/avast/android/mobilesecurity/vps/c/e;->a()Lcom/avast/android/mobilesecurity/vps/c/e;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/avast/android/mobilesecurity/vps/c/e;->a(Ljava/io/InputStream;)La/a/b;

    move-result-object v0

    check-cast v0, Lcom/avast/android/mobilesecurity/vps/c/e;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/vps/c/e;->a(Lcom/avast/android/mobilesecurity/vps/c/e;)Lcom/avast/android/mobilesecurity/vps/c/d;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/avast/android/mobilesecurity/vps/c/d;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/avast/android/mobilesecurity/vps/c/d;->c:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic b(Lcom/avast/android/mobilesecurity/vps/c/d;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/avast/android/mobilesecurity/vps/c/d;->d:Ljava/lang/Object;

    return-object p1
.end method

.method private g()La/a/c;
    .locals 2

    iget-object v0, p0, Lcom/avast/android/mobilesecurity/vps/c/d;->c:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, La/a/c;->a(Ljava/lang/String;)La/a/c;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/vps/c/d;->c:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, La/a/c;

    goto :goto_0
.end method

.method private h()La/a/c;
    .locals 2

    iget-object v0, p0, Lcom/avast/android/mobilesecurity/vps/c/d;->d:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, La/a/c;->a(Ljava/lang/String;)La/a/c;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/vps/c/d;->d:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, La/a/c;

    goto :goto_0
.end method


# virtual methods
.method public final a(La/a/e;)V
    .locals 3

    const/4 v2, 0x2

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/vps/c/d;->ag()I

    iget v0, p0, Lcom/avast/android/mobilesecurity/vps/c/d;->b:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/vps/c/d;->g()La/a/c;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, La/a/e;->a(ILa/a/c;)V

    :cond_0
    iget v0, p0, Lcom/avast/android/mobilesecurity/vps/c/d;->b:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/vps/c/d;->h()La/a/c;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, La/a/e;->a(ILa/a/c;)V

    :cond_1
    return-void
.end method

.method public final ag()I
    .locals 4

    const/4 v3, 0x2

    const/4 v2, 0x1

    iget v0, p0, Lcom/avast/android/mobilesecurity/vps/c/d;->f:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    iget v1, p0, Lcom/avast/android/mobilesecurity/vps/c/d;->b:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_1

    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/vps/c/d;->g()La/a/c;

    move-result-object v0

    invoke-static {v2, v0}, La/a/e;->b(ILa/a/c;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    :cond_1
    iget v1, p0, Lcom/avast/android/mobilesecurity/vps/c/d;->b:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_2

    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/vps/c/d;->h()La/a/c;

    move-result-object v1

    invoke-static {v3, v1}, La/a/e;->b(ILa/a/c;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iput v0, p0, Lcom/avast/android/mobilesecurity/vps/c/d;->f:I

    goto :goto_0
.end method

.method public final b()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/avast/android/mobilesecurity/vps/c/d;->b:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/avast/android/mobilesecurity/vps/c/d;->c:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, La/a/c;

    invoke-virtual {v0}, La/a/c;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, La/a/j;->a(La/a/c;)Z

    move-result v0

    if-eqz v0, :cond_1

    iput-object v1, p0, Lcom/avast/android/mobilesecurity/vps/c/d;->c:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public final d()Z
    .locals 2

    iget v0, p0, Lcom/avast/android/mobilesecurity/vps/c/d;->b:I

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

.method public final e()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/avast/android/mobilesecurity/vps/c/d;->d:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, La/a/c;

    invoke-virtual {v0}, La/a/c;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, La/a/j;->a(La/a/c;)Z

    move-result v0

    if-eqz v0, :cond_1

    iput-object v1, p0, Lcom/avast/android/mobilesecurity/vps/c/d;->d:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public final f()Z
    .locals 3

    const/4 v0, 0x1

    iget-byte v1, p0, Lcom/avast/android/mobilesecurity/vps/c/d;->e:B

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iput-byte v0, p0, Lcom/avast/android/mobilesecurity/vps/c/d;->e:B

    goto :goto_0
.end method
