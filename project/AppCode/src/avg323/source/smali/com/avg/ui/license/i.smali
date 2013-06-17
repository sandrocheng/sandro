.class Lcom/avg/ui/license/i;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/avg/ui/license/a;


# direct methods
.method constructor <init>(Lcom/avg/ui/license/a;)V
    .locals 0

    iput-object p1, p0, Lcom/avg/ui/license/i;->a:Lcom/avg/ui/license/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/avg/ui/license/i;->a:Lcom/avg/ui/license/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/avg/ui/license/a;->a(Lcom/avg/ui/license/a;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    return-void
.end method
