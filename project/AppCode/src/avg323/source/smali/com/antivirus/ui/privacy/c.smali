.class Lcom/antivirus/ui/privacy/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/antivirus/ui/privacy/b;


# direct methods
.method constructor <init>(Lcom/antivirus/ui/privacy/b;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/antivirus/ui/privacy/c;->b:Lcom/antivirus/ui/privacy/b;

    iput-object p2, p0, Lcom/antivirus/ui/privacy/c;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/antivirus/ui/privacy/c;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/antivirus/core/b/a/b;->a(Landroid/content/Context;)Lcom/antivirus/core/b/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/antivirus/core/b/a/b;->c()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/antivirus/ui/privacy/c;->b:Lcom/antivirus/ui/privacy/b;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v0}, Lcom/antivirus/ui/privacy/b;->a(Lcom/antivirus/ui/privacy/b;Z)Z

    iget-object v0, p0, Lcom/antivirus/ui/privacy/c;->b:Lcom/antivirus/ui/privacy/b;

    invoke-virtual {v0}, Lcom/antivirus/ui/privacy/b;->h()Landroid/support/v4/app/i;

    move-result-object v0

    new-instance v1, Lcom/antivirus/ui/privacy/d;

    invoke-direct {v1, p0}, Lcom/antivirus/ui/privacy/d;-><init>(Lcom/antivirus/ui/privacy/c;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/i;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
