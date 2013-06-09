.class final Lorg/antivirus/antitheft/o;
.super Lorg/antivirus/antitheft/p;


# instance fields
.field final synthetic a:Lorg/antivirus/antitheft/j;


# direct methods
.method constructor <init>(Lorg/antivirus/antitheft/j;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lorg/antivirus/antitheft/o;->a:Lorg/antivirus/antitheft/j;

    invoke-direct {p0, p1, p2}, Lorg/antivirus/antitheft/p;-><init>(Lorg/antivirus/antitheft/j;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    :try_start_0
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lorg/antivirus/antitheft/o;->a:Lorg/antivirus/antitheft/j;

    iget-object v1, p0, Lorg/antivirus/antitheft/o;->b:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lorg/antivirus/antitheft/j;->a(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/antivirus/antitheft/o;->b:Landroid/content/Context;

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/antivirus/antitheft/o;->a:Lorg/antivirus/antitheft/j;

    iget-object v0, p0, Lorg/antivirus/antitheft/o;->b:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/antivirus/antitheft/j;->a(Landroid/content/Context;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/antivirus/core/Logger;->log(Ljava/lang/Exception;)V

    goto :goto_0
.end method
