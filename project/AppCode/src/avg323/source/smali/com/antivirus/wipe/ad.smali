.class Lcom/antivirus/wipe/ad;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic a:Lcom/antivirus/wipe/ab;


# direct methods
.method constructor <init>(Lcom/antivirus/wipe/ab;)V
    .locals 0

    iput-object p1, p0, Lcom/antivirus/wipe/ad;->a:Lcom/antivirus/wipe/ab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/antivirus/wipe/ad;->a:Lcom/antivirus/wipe/ab;

    invoke-static {v0}, Lcom/antivirus/wipe/ab;->c(Lcom/antivirus/wipe/ab;)Lcom/avg/ui/general/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avg/ui/general/a/a;->finish()V

    return-void
.end method
