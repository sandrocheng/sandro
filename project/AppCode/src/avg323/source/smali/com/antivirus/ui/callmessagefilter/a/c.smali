.class public Lcom/antivirus/ui/callmessagefilter/a/c;
.super Lcom/antivirus/ui/callmessagefilter/j;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/antivirus/ui/callmessagefilter/j;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/antivirus/ui/callmessagefilter/a/b;Lcom/antivirus/ui/callmessagefilter/contacts/a;Lcom/antivirus/ui/callmessagefilter/v;)V
    .locals 2

    invoke-super {p0, p1, p2, p3, p4}, Lcom/antivirus/ui/callmessagefilter/j;->a(Landroid/content/Context;Lcom/antivirus/ui/callmessagefilter/d;Lcom/antivirus/ui/callmessagefilter/contacts/a;Lcom/antivirus/ui/callmessagefilter/v;)V

    iget-object v0, p0, Lcom/antivirus/ui/callmessagefilter/a/c;->i:Landroid/view/View;

    const v1, 0x7f08007b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public bridge synthetic a(Landroid/content/Context;Lcom/antivirus/ui/callmessagefilter/d;Lcom/antivirus/ui/callmessagefilter/contacts/a;Lcom/antivirus/ui/callmessagefilter/v;)V
    .locals 0

    check-cast p2, Lcom/antivirus/ui/callmessagefilter/a/b;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/antivirus/ui/callmessagefilter/a/c;->a(Landroid/content/Context;Lcom/antivirus/ui/callmessagefilter/a/b;Lcom/antivirus/ui/callmessagefilter/contacts/a;Lcom/antivirus/ui/callmessagefilter/v;)V

    return-void
.end method
