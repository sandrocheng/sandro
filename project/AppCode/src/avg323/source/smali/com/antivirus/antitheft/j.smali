.class public Lcom/antivirus/antitheft/j;
.super Lcom/avg/toolkit/b/g;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/avg/toolkit/b/g;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/avg/toolkit/b/e;
    .locals 1

    sget-object v0, Lcom/avg/toolkit/b/e;->c:Lcom/avg/toolkit/b/e;

    return-object v0
.end method

.method public a(Landroid/content/Context;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public a(Landroid/content/Context;Landroid/os/Message;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public a(Landroid/content/Context;Ljava/lang/Object;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public b(Landroid/content/Context;)Z
    .locals 4

    const/4 v3, 0x1

    new-instance v0, Lcom/antivirus/core/f/d;

    invoke-direct {v0}, Lcom/antivirus/core/f/d;-><init>()V

    invoke-virtual {v0, p1}, Lcom/antivirus/core/f/d;->a(Landroid/content/Context;)Z

    new-array v1, v3, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {v0}, Lcom/antivirus/core/f/d;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avg/toolkit/b/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    iput-object v1, p0, Lcom/antivirus/antitheft/j;->f:[Ljava/lang/Object;

    return v3
.end method

.method public b_()I
    .locals 1

    const/16 v0, 0x232f

    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    const-string v0, "Device.updateSIM"

    return-object v0
.end method
