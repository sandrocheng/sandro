.class Lcom/antivirus/antitheft/q;
.super Lcom/antivirus/antitheft/r;


# instance fields
.field final synthetic a:Lcom/antivirus/antitheft/k;


# direct methods
.method constructor <init>(Lcom/antivirus/antitheft/k;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/antivirus/antitheft/q;->a:Lcom/antivirus/antitheft/k;

    invoke-direct {p0, p1, p2}, Lcom/antivirus/antitheft/r;-><init>(Lcom/antivirus/antitheft/k;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/antivirus/antitheft/q;->a:Lcom/antivirus/antitheft/k;

    iget-object v1, p0, Lcom/antivirus/antitheft/q;->c:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/antivirus/antitheft/k;->a(Lcom/antivirus/antitheft/k;Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/antivirus/antitheft/q;->c:Landroid/content/Context;

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/antivirus/antitheft/q;->a:Lcom/antivirus/antitheft/k;

    iget-object v1, p0, Lcom/antivirus/antitheft/q;->c:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/antivirus/antitheft/k;->a(Lcom/antivirus/antitheft/k;Landroid/content/Context;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method
