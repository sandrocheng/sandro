.class Lcom/avg/ui/general/d/f;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/avg/ui/general/d/b;


# direct methods
.method constructor <init>(Lcom/avg/ui/general/d/b;)V
    .locals 0

    iput-object p1, p0, Lcom/avg/ui/general/d/f;->a:Lcom/avg/ui/general/d/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/avg/ui/general/d/f;->a:Lcom/avg/ui/general/d/b;

    invoke-static {v0}, Lcom/avg/ui/general/d/b;->d(Lcom/avg/ui/general/d/b;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    return-void
.end method
