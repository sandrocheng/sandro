.class public final Lcom/avast/android/mobilesecurity/vps/c/e;
.super La/a/i;


# instance fields
.field private a:I

.field private b:Ljava/lang/Object;

.field private c:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, La/a/i;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/vps/c/e;->b:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/vps/c/e;->c:Ljava/lang/Object;

    return-void
.end method

.method static synthetic a(Lcom/avast/android/mobilesecurity/vps/c/e;)Lcom/avast/android/mobilesecurity/vps/c/d;
    .locals 2

    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/vps/c/e;->c()Lcom/avast/android/mobilesecurity/vps/c/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/vps/c/d;->f()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, La/a/q;

    invoke-direct {v0}, La/a/q;-><init>()V

    invoke-virtual {v0}, La/a/q;->a()La/a/l;

    move-result-object v0

    throw v0

    :cond_0
    return-object v0
.end method

.method static synthetic a()Lcom/avast/android/mobilesecurity/vps/c/e;
    .locals 1

    new-instance v0, Lcom/avast/android/mobilesecurity/vps/c/e;

    invoke-direct {v0}, Lcom/avast/android/mobilesecurity/vps/c/e;-><init>()V

    return-object v0
.end method

.method private b()Lcom/avast/android/mobilesecurity/vps/c/e;
    .locals 4

    new-instance v0, Lcom/avast/android/mobilesecurity/vps/c/e;

    invoke-direct {v0}, Lcom/avast/android/mobilesecurity/vps/c/e;-><init>()V

    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/vps/c/e;->c()Lcom/avast/android/mobilesecurity/vps/c/d;

    move-result-object v1

    invoke-static {}, Lcom/avast/android/mobilesecurity/vps/c/d;->a()Lcom/avast/android/mobilesecurity/vps/c/d;

    move-result-object v2

    if-eq v1, v2, :cond_3

    invoke-virtual {v1}, Lcom/avast/android/mobilesecurity/vps/c/d;->b()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/avast/android/mobilesecurity/vps/c/d;->c()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v3, v0, Lcom/avast/android/mobilesecurity/vps/c/e;->a:I

    or-int/lit8 v3, v3, 0x1

    iput v3, v0, Lcom/avast/android/mobilesecurity/vps/c/e;->a:I

    iput-object v2, v0, Lcom/avast/android/mobilesecurity/vps/c/e;->b:Ljava/lang/Object;

    :cond_1
    invoke-virtual {v1}, Lcom/avast/android/mobilesecurity/vps/c/d;->d()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Lcom/avast/android/mobilesecurity/vps/c/d;->e()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_2
    iget v2, v0, Lcom/avast/android/mobilesecurity/vps/c/e;->a:I

    or-int/lit8 v2, v2, 0x2

    iput v2, v0, Lcom/avast/android/mobilesecurity/vps/c/e;->a:I

    iput-object v1, v0, Lcom/avast/android/mobilesecurity/vps/c/e;->c:Ljava/lang/Object;

    :cond_3
    return-object v0
.end method

.method private c()Lcom/avast/android/mobilesecurity/vps/c/d;
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    new-instance v2, Lcom/avast/android/mobilesecurity/vps/c/d;

    invoke-direct {v2, v1}, Lcom/avast/android/mobilesecurity/vps/c/d;-><init>(C)V

    iget v3, p0, Lcom/avast/android/mobilesecurity/vps/c/e;->a:I

    and-int/lit8 v4, v3, 0x1

    if-ne v4, v0, :cond_1

    :goto_0
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/vps/c/e;->b:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/avast/android/mobilesecurity/vps/c/d;->a(Lcom/avast/android/mobilesecurity/vps/c/d;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v1, v3, 0x2

    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    or-int/lit8 v0, v0, 0x2

    :cond_0
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/vps/c/e;->c:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/avast/android/mobilesecurity/vps/c/d;->b(Lcom/avast/android/mobilesecurity/vps/c/d;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v2, v0}, Lcom/avast/android/mobilesecurity/vps/c/d;->a(Lcom/avast/android/mobilesecurity/vps/c/d;I)I

    return-object v2

    :cond_1
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public final synthetic a(La/a/d;)La/a/b;
    .locals 1

    :cond_0
    :goto_0
    invoke-virtual {p1}, La/a/d;->a()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-virtual {p1, v0}, La/a/d;->b(I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    iget v0, p0, Lcom/avast/android/mobilesecurity/vps/c/e;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/avast/android/mobilesecurity/vps/c/e;->a:I

    invoke-virtual {p1}, La/a/d;->c()La/a/c;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/vps/c/e;->b:Ljava/lang/Object;

    goto :goto_0

    :sswitch_2
    iget v0, p0, Lcom/avast/android/mobilesecurity/vps/c/e;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/avast/android/mobilesecurity/vps/c/e;->a:I

    invoke-virtual {p1}, La/a/d;->c()La/a/c;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/vps/c/e;->c:Ljava/lang/Object;

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/vps/c/e;->b()Lcom/avast/android/mobilesecurity/vps/c/e;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic d()La/a/i;
    .locals 1

    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/vps/c/e;->b()Lcom/avast/android/mobilesecurity/vps/c/e;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic e()La/a/b;
    .locals 1

    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/vps/c/e;->b()Lcom/avast/android/mobilesecurity/vps/c/e;

    move-result-object v0

    return-object v0
.end method
