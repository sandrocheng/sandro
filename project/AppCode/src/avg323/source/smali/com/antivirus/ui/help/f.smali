.class public Lcom/antivirus/ui/help/f;
.super Lcom/avg/ui/general/d/h;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/avg/ui/general/d/h;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Lcom/antivirus/c;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected d(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    new-instance v0, Lcom/antivirus/core/b;

    invoke-direct {v0, p1}, Lcom/antivirus/core/b;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/antivirus/core/b;->u()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public e()Ljava/lang/Class;
    .locals 1

    const-class v0, Lcom/antivirus/ui/help/f;

    return-object v0
.end method
