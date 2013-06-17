.class Lcom/avg/ui/general/fragments/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/avg/ui/general/fragments/a;


# direct methods
.method constructor <init>(Lcom/avg/ui/general/fragments/a;)V
    .locals 0

    iput-object p1, p0, Lcom/avg/ui/general/fragments/b;->a:Lcom/avg/ui/general/fragments/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/avg/ui/general/fragments/b;->a:Lcom/avg/ui/general/fragments/a;

    iget-object v0, v0, Lcom/avg/ui/general/fragments/a;->ag:Lcom/avg/ui/general/a/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/avg/ui/general/fragments/b;->a:Lcom/avg/ui/general/fragments/a;

    iget-object v0, v0, Lcom/avg/ui/general/fragments/a;->ag:Lcom/avg/ui/general/a/a;

    invoke-virtual {v0}, Lcom/avg/ui/general/a/a;->i()V

    :cond_0
    return-void
.end method
