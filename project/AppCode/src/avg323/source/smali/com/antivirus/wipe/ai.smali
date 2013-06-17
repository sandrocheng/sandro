.class Lcom/antivirus/wipe/ai;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/antivirus/wipe/ah;


# direct methods
.method constructor <init>(Lcom/antivirus/wipe/ah;)V
    .locals 0

    iput-object p1, p0, Lcom/antivirus/wipe/ai;->a:Lcom/antivirus/wipe/ah;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/antivirus/wipe/ai;->a:Lcom/antivirus/wipe/ah;

    iget-object v0, v0, Lcom/antivirus/wipe/ah;->b:Lcom/antivirus/wipe/ag;

    iget-object v0, v0, Lcom/antivirus/wipe/ag;->b:Lcom/antivirus/wipe/ab;

    invoke-static {v0}, Lcom/antivirus/wipe/ab;->a(Lcom/antivirus/wipe/ab;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/antivirus/wipe/ai;->a:Lcom/antivirus/wipe/ah;

    iget-object v0, v0, Lcom/antivirus/wipe/ah;->b:Lcom/antivirus/wipe/ag;

    iget-object v0, v0, Lcom/antivirus/wipe/ag;->b:Lcom/antivirus/wipe/ab;

    invoke-static {v0}, Lcom/antivirus/wipe/ab;->a(Lcom/antivirus/wipe/ab;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    iget-object v0, p0, Lcom/antivirus/wipe/ai;->a:Lcom/antivirus/wipe/ah;

    iget-object v0, v0, Lcom/antivirus/wipe/ah;->b:Lcom/antivirus/wipe/ag;

    iget-object v0, v0, Lcom/antivirus/wipe/ag;->b:Lcom/antivirus/wipe/ab;

    invoke-static {v0}, Lcom/antivirus/wipe/ab;->q(Lcom/antivirus/wipe/ab;)Lcom/avg/ui/general/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avg/ui/general/a/a;->finish()V

    return-void
.end method
