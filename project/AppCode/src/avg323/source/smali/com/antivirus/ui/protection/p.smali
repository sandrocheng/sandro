.class Lcom/antivirus/ui/protection/p;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/antivirus/ui/protection/n;


# direct methods
.method constructor <init>(Lcom/antivirus/ui/protection/n;)V
    .locals 0

    iput-object p1, p0, Lcom/antivirus/ui/protection/p;->a:Lcom/antivirus/ui/protection/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/antivirus/ui/protection/p;->a:Lcom/antivirus/ui/protection/n;

    invoke-static {v1, v0}, Lcom/antivirus/ui/protection/n;->a(Lcom/antivirus/ui/protection/n;Ljava/io/File;)V

    :goto_0
    iget-object v0, p0, Lcom/antivirus/ui/protection/p;->a:Lcom/antivirus/ui/protection/n;

    invoke-virtual {v0}, Lcom/antivirus/ui/protection/n;->notifyDataSetChanged()V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/antivirus/ui/protection/p;->a:Lcom/antivirus/ui/protection/n;

    invoke-static {v1, v0}, Lcom/antivirus/ui/protection/n;->b(Lcom/antivirus/ui/protection/n;Ljava/io/File;)V

    goto :goto_0
.end method
