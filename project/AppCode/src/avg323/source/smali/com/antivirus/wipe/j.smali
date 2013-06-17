.class Lcom/antivirus/wipe/j;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/antivirus/wipe/i;


# direct methods
.method constructor <init>(Lcom/antivirus/wipe/i;)V
    .locals 0

    iput-object p1, p0, Lcom/antivirus/wipe/j;->a:Lcom/antivirus/wipe/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/antivirus/wipe/j;->a:Lcom/antivirus/wipe/i;

    iget-object v0, v0, Lcom/antivirus/wipe/i;->b:Lcom/antivirus/wipe/b;

    invoke-static {v0}, Lcom/antivirus/wipe/b;->g(Lcom/antivirus/wipe/b;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/antivirus/wipe/j;->a:Lcom/antivirus/wipe/i;

    iget-object v0, v0, Lcom/antivirus/wipe/i;->b:Lcom/antivirus/wipe/b;

    invoke-static {v0}, Lcom/antivirus/wipe/b;->g(Lcom/antivirus/wipe/b;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    iget-object v0, p0, Lcom/antivirus/wipe/j;->a:Lcom/antivirus/wipe/i;

    iget-object v0, v0, Lcom/antivirus/wipe/i;->b:Lcom/antivirus/wipe/b;

    invoke-static {v0}, Lcom/antivirus/wipe/b;->A(Lcom/antivirus/wipe/b;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/antivirus/wipe/j;->a:Lcom/antivirus/wipe/i;

    iget-object v0, v0, Lcom/antivirus/wipe/i;->b:Lcom/antivirus/wipe/b;

    invoke-static {v0}, Lcom/antivirus/wipe/b;->A(Lcom/antivirus/wipe/b;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_1
    return-void
.end method
