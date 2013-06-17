.class public Lcom/antivirus/ui/callmessagefilter/b/c;
.super Lcom/antivirus/ui/callmessagefilter/j;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/antivirus/ui/callmessagefilter/j;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/antivirus/ui/callmessagefilter/b/b;Lcom/antivirus/ui/callmessagefilter/contacts/a;Lcom/antivirus/ui/callmessagefilter/v;)V
    .locals 4

    const/4 v1, 0x0

    invoke-super {p0, p1, p2, p3, p4}, Lcom/antivirus/ui/callmessagefilter/j;->a(Landroid/content/Context;Lcom/antivirus/ui/callmessagefilter/d;Lcom/antivirus/ui/callmessagefilter/contacts/a;Lcom/antivirus/ui/callmessagefilter/v;)V

    iget-object v0, p0, Lcom/antivirus/ui/callmessagefilter/b/c;->i:Landroid/view/View;

    const v2, 0x7f080080

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/antivirus/ui/callmessagefilter/b/c;->i:Landroid/view/View;

    const v2, 0x7f08007f

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/antivirus/ui/callmessagefilter/b/c;->c:Landroid/widget/CheckBox;

    invoke-virtual {p2}, Lcom/antivirus/ui/callmessagefilter/b/b;->d()Lcom/antivirus/ui/callmessagefilter/x;

    move-result-object v0

    check-cast v0, Lcom/antivirus/ui/callmessagefilter/b/d;

    sget-object v3, Lcom/antivirus/ui/callmessagefilter/b/d;->d:Lcom/antivirus/ui/callmessagefilter/b/d;

    invoke-virtual {v0, v3}, Lcom/antivirus/ui/callmessagefilter/b/d;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {v2, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v2, p0, Lcom/antivirus/ui/callmessagefilter/b/c;->c:Landroid/widget/CheckBox;

    invoke-virtual {p2}, Lcom/antivirus/ui/callmessagefilter/b/b;->d()Lcom/antivirus/ui/callmessagefilter/x;

    move-result-object v0

    check-cast v0, Lcom/antivirus/ui/callmessagefilter/b/d;

    sget-object v3, Lcom/antivirus/ui/callmessagefilter/b/d;->d:Lcom/antivirus/ui/callmessagefilter/b/d;

    invoke-virtual {v0, v3}, Lcom/antivirus/ui/callmessagefilter/b/d;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/CheckBox;->setEnabled(Z)V

    iget-object v0, p0, Lcom/antivirus/ui/callmessagefilter/b/c;->c:Landroid/widget/CheckBox;

    new-instance v1, Lcom/antivirus/ui/callmessagefilter/r;

    invoke-direct {v1, p0}, Lcom/antivirus/ui/callmessagefilter/r;-><init>(Lcom/antivirus/ui/callmessagefilter/j;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public bridge synthetic a(Landroid/content/Context;Lcom/antivirus/ui/callmessagefilter/d;Lcom/antivirus/ui/callmessagefilter/contacts/a;Lcom/antivirus/ui/callmessagefilter/v;)V
    .locals 0

    check-cast p2, Lcom/antivirus/ui/callmessagefilter/b/b;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/antivirus/ui/callmessagefilter/b/c;->a(Landroid/content/Context;Lcom/antivirus/ui/callmessagefilter/b/b;Lcom/antivirus/ui/callmessagefilter/contacts/a;Lcom/antivirus/ui/callmessagefilter/v;)V

    return-void
.end method

.method protected a(Lcom/antivirus/ui/callmessagefilter/b/b;Lcom/antivirus/ui/callmessagefilter/v;Lcom/antivirus/ui/callmessagefilter/b/d;Lcom/antivirus/ui/callmessagefilter/a/d;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/antivirus/ui/callmessagefilter/b/d;->e:Lcom/antivirus/ui/callmessagefilter/b/d;

    invoke-virtual {p3, v0}, Lcom/antivirus/ui/callmessagefilter/b/d;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super/range {p0 .. p5}, Lcom/antivirus/ui/callmessagefilter/j;->a(Lcom/antivirus/ui/callmessagefilter/d;Lcom/antivirus/ui/callmessagefilter/v;Lcom/antivirus/ui/callmessagefilter/b/d;Lcom/antivirus/ui/callmessagefilter/a/d;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/antivirus/ui/callmessagefilter/b/c;->c:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/antivirus/ui/callmessagefilter/b/d;->d:Lcom/antivirus/ui/callmessagefilter/b/d;

    invoke-interface {p2, v0, p1}, Lcom/antivirus/ui/callmessagefilter/v;->a(Lcom/antivirus/ui/callmessagefilter/b/d;Lcom/antivirus/ui/callmessagefilter/d;)V

    goto :goto_0

    :cond_1
    invoke-interface {p2, p3, p1}, Lcom/antivirus/ui/callmessagefilter/v;->a(Lcom/antivirus/ui/callmessagefilter/b/d;Lcom/antivirus/ui/callmessagefilter/d;)V

    goto :goto_0
.end method

.method protected bridge synthetic a(Lcom/antivirus/ui/callmessagefilter/d;Lcom/antivirus/ui/callmessagefilter/v;Lcom/antivirus/ui/callmessagefilter/b/d;Lcom/antivirus/ui/callmessagefilter/a/d;Ljava/lang/String;)V
    .locals 6

    move-object v1, p1

    check-cast v1, Lcom/antivirus/ui/callmessagefilter/b/b;

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/antivirus/ui/callmessagefilter/b/c;->a(Lcom/antivirus/ui/callmessagefilter/b/b;Lcom/antivirus/ui/callmessagefilter/v;Lcom/antivirus/ui/callmessagefilter/b/d;Lcom/antivirus/ui/callmessagefilter/a/d;Ljava/lang/String;)V

    return-void
.end method
