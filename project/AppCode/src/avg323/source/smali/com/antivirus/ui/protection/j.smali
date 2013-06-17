.class Lcom/antivirus/ui/protection/j;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/antivirus/ui/protection/a;


# direct methods
.method constructor <init>(Lcom/antivirus/ui/protection/a;)V
    .locals 0

    iput-object p1, p0, Lcom/antivirus/ui/protection/j;->a:Lcom/antivirus/ui/protection/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/antivirus/ui/protection/j;->a:Lcom/antivirus/ui/protection/a;

    invoke-static {v0}, Lcom/antivirus/ui/protection/a;->f(Lcom/antivirus/ui/protection/a;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    iget-object v0, p0, Lcom/antivirus/ui/protection/j;->a:Lcom/antivirus/ui/protection/a;

    invoke-static {v0}, Lcom/antivirus/ui/protection/a;->g(Lcom/antivirus/ui/protection/a;)V

    iget-object v0, p0, Lcom/antivirus/ui/protection/j;->a:Lcom/antivirus/ui/protection/a;

    invoke-static {v0}, Lcom/antivirus/ui/protection/a;->b(Lcom/antivirus/ui/protection/a;)Lcom/antivirus/ui/protection/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/antivirus/ui/protection/n;->notifyDataSetChanged()V

    return-void
.end method
