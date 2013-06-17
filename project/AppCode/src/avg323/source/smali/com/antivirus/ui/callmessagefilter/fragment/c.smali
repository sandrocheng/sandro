.class Lcom/antivirus/ui/callmessagefilter/fragment/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/antivirus/ui/callmessagefilter/d;

.field final synthetic c:Lcom/antivirus/ui/callmessagefilter/fragment/a;


# direct methods
.method constructor <init>(Lcom/antivirus/ui/callmessagefilter/fragment/a;ILcom/antivirus/ui/callmessagefilter/d;)V
    .locals 0

    iput-object p1, p0, Lcom/antivirus/ui/callmessagefilter/fragment/c;->c:Lcom/antivirus/ui/callmessagefilter/fragment/a;

    iput p2, p0, Lcom/antivirus/ui/callmessagefilter/fragment/c;->a:I

    iput-object p3, p0, Lcom/antivirus/ui/callmessagefilter/fragment/c;->b:Lcom/antivirus/ui/callmessagefilter/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget v0, p0, Lcom/antivirus/ui/callmessagefilter/fragment/c;->a:I

    if-ltz v0, :cond_2

    iget-object v0, p0, Lcom/antivirus/ui/callmessagefilter/fragment/c;->c:Lcom/antivirus/ui/callmessagefilter/fragment/a;

    iget-object v0, v0, Lcom/antivirus/ui/callmessagefilter/fragment/a;->c:Lcom/antivirus/ui/callmessagefilter/a;

    iget v1, p0, Lcom/antivirus/ui/callmessagefilter/fragment/c;->a:I

    iget-object v2, p0, Lcom/antivirus/ui/callmessagefilter/fragment/c;->b:Lcom/antivirus/ui/callmessagefilter/d;

    invoke-virtual {v0, v1, v2}, Lcom/antivirus/ui/callmessagefilter/a;->a(ILcom/antivirus/ui/callmessagefilter/d;)V

    :goto_0
    iget-object v0, p0, Lcom/antivirus/ui/callmessagefilter/fragment/c;->c:Lcom/antivirus/ui/callmessagefilter/fragment/a;

    iget-object v0, v0, Lcom/antivirus/ui/callmessagefilter/fragment/a;->c:Lcom/antivirus/ui/callmessagefilter/a;

    invoke-virtual {v0}, Lcom/antivirus/ui/callmessagefilter/a;->getCount()I

    move-result v0

    iget-object v1, p0, Lcom/antivirus/ui/callmessagefilter/fragment/c;->c:Lcom/antivirus/ui/callmessagefilter/fragment/a;

    iget v1, v1, Lcom/antivirus/ui/callmessagefilter/fragment/a;->d:I

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/antivirus/ui/callmessagefilter/fragment/c;->c:Lcom/antivirus/ui/callmessagefilter/fragment/a;

    iget-boolean v0, v0, Lcom/antivirus/ui/callmessagefilter/fragment/a;->h:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/antivirus/ui/callmessagefilter/fragment/c;->c:Lcom/antivirus/ui/callmessagefilter/fragment/a;

    iget-object v0, v0, Lcom/antivirus/ui/callmessagefilter/fragment/a;->c:Lcom/antivirus/ui/callmessagefilter/a;

    invoke-virtual {v0}, Lcom/antivirus/ui/callmessagefilter/a;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/antivirus/ui/callmessagefilter/fragment/c;->c:Lcom/antivirus/ui/callmessagefilter/fragment/a;

    invoke-virtual {v0}, Lcom/antivirus/ui/callmessagefilter/fragment/a;->l()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/antivirus/ui/callmessagefilter/fragment/c;->c:Lcom/antivirus/ui/callmessagefilter/fragment/a;

    invoke-virtual {v0}, Lcom/antivirus/ui/callmessagefilter/fragment/a;->n()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/antivirus/ui/callmessagefilter/fragment/c;->c:Lcom/antivirus/ui/callmessagefilter/fragment/a;

    invoke-virtual {v0}, Lcom/antivirus/ui/callmessagefilter/fragment/a;->N()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->isShown()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/antivirus/ui/callmessagefilter/fragment/c;->c:Lcom/antivirus/ui/callmessagefilter/fragment/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/antivirus/ui/callmessagefilter/fragment/a;->a(Z)V

    iget-object v0, p0, Lcom/antivirus/ui/callmessagefilter/fragment/c;->c:Lcom/antivirus/ui/callmessagefilter/fragment/a;

    iget-object v1, p0, Lcom/antivirus/ui/callmessagefilter/fragment/c;->c:Lcom/antivirus/ui/callmessagefilter/fragment/a;

    iget-object v1, v1, Lcom/antivirus/ui/callmessagefilter/fragment/a;->b:Lcom/antivirus/ui/callmessagefilter/w;

    invoke-interface {v1}, Lcom/antivirus/ui/callmessagefilter/w;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/antivirus/ui/callmessagefilter/fragment/a;->c(I)V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/antivirus/ui/callmessagefilter/fragment/c;->c:Lcom/antivirus/ui/callmessagefilter/fragment/a;

    iget-object v0, v0, Lcom/antivirus/ui/callmessagefilter/fragment/a;->c:Lcom/antivirus/ui/callmessagefilter/a;

    iget-object v1, p0, Lcom/antivirus/ui/callmessagefilter/fragment/c;->b:Lcom/antivirus/ui/callmessagefilter/d;

    invoke-virtual {v0, v1}, Lcom/antivirus/ui/callmessagefilter/a;->a(Lcom/antivirus/ui/callmessagefilter/d;)V

    goto :goto_0
.end method
