.class Lcom/antivirus/ui/callmessagefilter/fragment/j;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/antivirus/ui/callmessagefilter/v;


# instance fields
.field final synthetic a:Lcom/antivirus/ui/callmessagefilter/fragment/g;


# direct methods
.method constructor <init>(Lcom/antivirus/ui/callmessagefilter/fragment/g;)V
    .locals 0

    iput-object p1, p0, Lcom/antivirus/ui/callmessagefilter/fragment/j;->a:Lcom/antivirus/ui/callmessagefilter/fragment/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/antivirus/ui/callmessagefilter/a/d;Lcom/antivirus/ui/callmessagefilter/a/b;)V
    .locals 3

    sget-object v0, Lcom/antivirus/ui/callmessagefilter/a/d;->d:Lcom/antivirus/ui/callmessagefilter/a/d;

    invoke-virtual {p1, v0}, Lcom/antivirus/ui/callmessagefilter/a/d;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/antivirus/ui/callmessagefilter/a/d;->e:Lcom/antivirus/ui/callmessagefilter/a/d;

    invoke-virtual {p1, v0}, Lcom/antivirus/ui/callmessagefilter/a/d;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/antivirus/ui/callmessagefilter/fragment/j;->a:Lcom/antivirus/ui/callmessagefilter/fragment/g;

    invoke-virtual {v0}, Lcom/antivirus/ui/callmessagefilter/fragment/g;->h()Landroid/support/v4/app/i;

    move-result-object v0

    iget-object v1, p0, Lcom/antivirus/ui/callmessagefilter/fragment/j;->a:Lcom/antivirus/ui/callmessagefilter/fragment/g;

    invoke-virtual {v1}, Lcom/antivirus/ui/callmessagefilter/fragment/g;->h()Landroid/support/v4/app/i;

    move-result-object v1

    const v2, 0x7f090209

    invoke-static {v1, v2}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_1
    return-void
.end method

.method public bridge synthetic a(Lcom/antivirus/ui/callmessagefilter/a/d;Lcom/antivirus/ui/callmessagefilter/d;)V
    .locals 0

    check-cast p2, Lcom/antivirus/ui/callmessagefilter/a/b;

    invoke-virtual {p0, p1, p2}, Lcom/antivirus/ui/callmessagefilter/fragment/j;->a(Lcom/antivirus/ui/callmessagefilter/a/d;Lcom/antivirus/ui/callmessagefilter/a/b;)V

    return-void
.end method

.method public a(Lcom/antivirus/ui/callmessagefilter/b/d;Lcom/antivirus/ui/callmessagefilter/a/b;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic a(Lcom/antivirus/ui/callmessagefilter/b/d;Lcom/antivirus/ui/callmessagefilter/d;)V
    .locals 0

    check-cast p2, Lcom/antivirus/ui/callmessagefilter/a/b;

    invoke-virtual {p0, p1, p2}, Lcom/antivirus/ui/callmessagefilter/fragment/j;->a(Lcom/antivirus/ui/callmessagefilter/b/d;Lcom/antivirus/ui/callmessagefilter/a/b;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/antivirus/ui/callmessagefilter/a/b;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/String;Lcom/antivirus/ui/callmessagefilter/d;)V
    .locals 0

    check-cast p2, Lcom/antivirus/ui/callmessagefilter/a/b;

    invoke-virtual {p0, p1, p2}, Lcom/antivirus/ui/callmessagefilter/fragment/j;->a(Ljava/lang/String;Lcom/antivirus/ui/callmessagefilter/a/b;)V

    return-void
.end method
