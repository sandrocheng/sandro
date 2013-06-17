.class Lcom/avg/ui/license/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/avg/ui/license/b;


# direct methods
.method constructor <init>(Lcom/avg/ui/license/b;Z)V
    .locals 0

    iput-object p1, p0, Lcom/avg/ui/license/c;->b:Lcom/avg/ui/license/b;

    iput-boolean p2, p0, Lcom/avg/ui/license/c;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/avg/ui/license/c;->b:Lcom/avg/ui/license/b;

    iget-object v0, v0, Lcom/avg/ui/license/b;->a:Lcom/avg/ui/license/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/avg/ui/license/a;->a(Lcom/avg/ui/license/a;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    iget-boolean v0, p0, Lcom/avg/ui/license/c;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/avg/ui/license/c;->b:Lcom/avg/ui/license/b;

    iget-object v0, v0, Lcom/avg/ui/license/b;->a:Lcom/avg/ui/license/a;

    invoke-static {v0}, Lcom/avg/ui/license/a;->g(Lcom/avg/ui/license/a;)Lcom/avg/ui/general/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avg/ui/general/a/a;->o()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/avg/ui/license/c;->b:Lcom/avg/ui/license/b;

    iget-object v0, v0, Lcom/avg/ui/license/b;->a:Lcom/avg/ui/license/a;

    invoke-static {v0}, Lcom/avg/ui/license/a;->h(Lcom/avg/ui/license/a;)Lcom/avg/ui/general/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avg/ui/general/a/a;->finish()V

    :cond_0
    return-void
.end method
