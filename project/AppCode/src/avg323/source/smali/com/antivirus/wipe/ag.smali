.class Lcom/antivirus/wipe/ag;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/app/ProgressDialog;

.field final synthetic b:Lcom/antivirus/wipe/ab;


# direct methods
.method constructor <init>(Lcom/antivirus/wipe/ab;Landroid/app/ProgressDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/antivirus/wipe/ag;->b:Lcom/antivirus/wipe/ab;

    iput-object p2, p0, Lcom/antivirus/wipe/ag;->a:Landroid/app/ProgressDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    new-instance v0, Lcom/antivirus/wipe/ak;

    iget-object v1, p0, Lcom/antivirus/wipe/ag;->b:Lcom/antivirus/wipe/ab;

    invoke-static {v1}, Lcom/antivirus/wipe/ab;->l(Lcom/antivirus/wipe/ab;)Lcom/avg/ui/general/a/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/antivirus/wipe/ak;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/antivirus/wipe/ak;->h()Z

    move-result v0

    iget-object v1, p0, Lcom/antivirus/wipe/ag;->b:Lcom/antivirus/wipe/ab;

    invoke-static {v1}, Lcom/antivirus/wipe/ab;->w(Lcom/antivirus/wipe/ab;)Lcom/avg/ui/general/a/a;

    move-result-object v1

    new-instance v2, Lcom/antivirus/wipe/ah;

    invoke-direct {v2, p0, v0}, Lcom/antivirus/wipe/ah;-><init>(Lcom/antivirus/wipe/ag;Z)V

    invoke-virtual {v1, v2}, Lcom/avg/ui/general/a/a;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
