.class public Lcom/antivirus/ui/callmessagefilter/contacts/f;
.super Lcom/antivirus/ui/callmessagefilter/j;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/antivirus/ui/callmessagefilter/j;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/antivirus/ui/callmessagefilter/contacts/g;Lcom/antivirus/ui/callmessagefilter/contacts/a;Lcom/antivirus/ui/callmessagefilter/v;)V
    .locals 3

    const/16 v2, 0x8

    invoke-super {p0, p1, p2, p3, p4}, Lcom/antivirus/ui/callmessagefilter/j;->a(Landroid/content/Context;Lcom/antivirus/ui/callmessagefilter/d;Lcom/antivirus/ui/callmessagefilter/contacts/a;Lcom/antivirus/ui/callmessagefilter/v;)V

    iget-object v0, p0, Lcom/antivirus/ui/callmessagefilter/contacts/f;->i:Landroid/view/View;

    const v1, 0x7f08007c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/antivirus/ui/callmessagefilter/contacts/f;->i:Landroid/view/View;

    const v1, 0x7f080081

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public bridge synthetic a(Landroid/content/Context;Lcom/antivirus/ui/callmessagefilter/d;Lcom/antivirus/ui/callmessagefilter/contacts/a;Lcom/antivirus/ui/callmessagefilter/v;)V
    .locals 0

    check-cast p2, Lcom/antivirus/ui/callmessagefilter/contacts/g;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/antivirus/ui/callmessagefilter/contacts/f;->a(Landroid/content/Context;Lcom/antivirus/ui/callmessagefilter/contacts/g;Lcom/antivirus/ui/callmessagefilter/contacts/a;Lcom/antivirus/ui/callmessagefilter/v;)V

    return-void
.end method

.method protected a(Lcom/antivirus/ui/callmessagefilter/contacts/g;Lcom/antivirus/ui/callmessagefilter/v;Lcom/antivirus/ui/callmessagefilter/b/d;Lcom/antivirus/ui/callmessagefilter/a/d;Ljava/lang/String;)V
    .locals 0

    invoke-super/range {p0 .. p5}, Lcom/antivirus/ui/callmessagefilter/j;->a(Lcom/antivirus/ui/callmessagefilter/d;Lcom/antivirus/ui/callmessagefilter/v;Lcom/antivirus/ui/callmessagefilter/b/d;Lcom/antivirus/ui/callmessagefilter/a/d;Ljava/lang/String;)V

    invoke-interface {p2, p5, p1}, Lcom/antivirus/ui/callmessagefilter/v;->a(Ljava/lang/String;Lcom/antivirus/ui/callmessagefilter/d;)V

    return-void
.end method

.method protected bridge synthetic a(Lcom/antivirus/ui/callmessagefilter/d;Lcom/antivirus/ui/callmessagefilter/v;Lcom/antivirus/ui/callmessagefilter/b/d;Lcom/antivirus/ui/callmessagefilter/a/d;Ljava/lang/String;)V
    .locals 6

    move-object v1, p1

    check-cast v1, Lcom/antivirus/ui/callmessagefilter/contacts/g;

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/antivirus/ui/callmessagefilter/contacts/f;->a(Lcom/antivirus/ui/callmessagefilter/contacts/g;Lcom/antivirus/ui/callmessagefilter/v;Lcom/antivirus/ui/callmessagefilter/b/d;Lcom/antivirus/ui/callmessagefilter/a/d;Ljava/lang/String;)V

    return-void
.end method
