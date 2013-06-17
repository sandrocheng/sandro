.class Lcom/antivirus/ui/protection/ae;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/antivirus/ui/protection/r;


# direct methods
.method constructor <init>(Lcom/antivirus/ui/protection/r;)V
    .locals 0

    iput-object p1, p0, Lcom/antivirus/ui/protection/ae;->a:Lcom/antivirus/ui/protection/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/antivirus/ui/protection/ae;->a:Lcom/antivirus/ui/protection/r;

    invoke-static {v0}, Lcom/antivirus/ui/protection/r;->A(Lcom/antivirus/ui/protection/r;)Lcom/avg/ui/general/a/a;

    move-result-object v0

    new-instance v1, Lcom/antivirus/ui/protection/af;

    invoke-direct {v1, p0}, Lcom/antivirus/ui/protection/af;-><init>(Lcom/antivirus/ui/protection/ae;)V

    invoke-virtual {v0, v1}, Lcom/avg/ui/general/a/a;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
