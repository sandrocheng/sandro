.class Lcom/antivirus/ui/callmessagefilter/fragment/b;
.super Landroid/support/v4/a/a;


# instance fields
.field final synthetic m:Lcom/antivirus/ui/callmessagefilter/fragment/a;


# direct methods
.method constructor <init>(Lcom/antivirus/ui/callmessagefilter/fragment/a;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/antivirus/ui/callmessagefilter/fragment/b;->m:Lcom/antivirus/ui/callmessagefilter/fragment/a;

    invoke-direct {p0, p2}, Landroid/support/v4/a/a;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/antivirus/ui/callmessagefilter/fragment/b;->a(Ljava/lang/Void;)V

    return-void
.end method

.method public a(Ljava/lang/Void;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/support/v4/a/a;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/antivirus/ui/callmessagefilter/fragment/b;->m:Lcom/antivirus/ui/callmessagefilter/fragment/a;

    invoke-virtual {v0}, Lcom/antivirus/ui/callmessagefilter/fragment/a;->G()V

    return-void
.end method

.method public synthetic d()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/antivirus/ui/callmessagefilter/fragment/b;->n()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public n()Ljava/lang/Void;
    .locals 2

    iget-object v0, p0, Lcom/antivirus/ui/callmessagefilter/fragment/b;->m:Lcom/antivirus/ui/callmessagefilter/fragment/a;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/antivirus/ui/callmessagefilter/fragment/a;->h:Z

    iget-object v0, p0, Lcom/antivirus/ui/callmessagefilter/fragment/b;->m:Lcom/antivirus/ui/callmessagefilter/fragment/a;

    invoke-virtual {v0}, Lcom/antivirus/ui/callmessagefilter/fragment/a;->K()V

    const/4 v0, 0x0

    return-object v0
.end method
