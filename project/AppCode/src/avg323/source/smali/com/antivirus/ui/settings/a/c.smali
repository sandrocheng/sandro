.class final Lcom/antivirus/ui/settings/a/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/antivirus/ui/settings/a/a;

.field final synthetic b:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/antivirus/ui/settings/a/a;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/antivirus/ui/settings/a/c;->a:Lcom/antivirus/ui/settings/a/a;

    iput-object p2, p0, Lcom/antivirus/ui/settings/a/c;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/antivirus/ui/settings/a/c;->a:Lcom/antivirus/ui/settings/a/a;

    long-to-int v1, p4

    invoke-virtual {v0, v1}, Lcom/antivirus/ui/settings/a/a;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avg/ui/general/b/c;

    const-string v1, "English"

    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/avg/ui/general/b/c;->a:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v0, v0, Lcom/avg/ui/general/b/c;->a:Ljava/lang/String;

    :goto_0
    iget-object v1, p0, Lcom/antivirus/ui/settings/a/c;->b:Landroid/content/Context;

    invoke-static {v1, v0, v3}, Lcom/antivirus/m;->a(Landroid/content/Context;Ljava/lang/String;Landroid/content/SharedPreferences;)V

    iget-object v0, p0, Lcom/antivirus/ui/settings/a/c;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/antivirus/m;->b(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/antivirus/ui/settings/a/c;->b:Landroid/content/Context;

    const/16 v1, 0x61a8

    const/16 v2, 0x9

    invoke-static {v0, v1, v2, v3}, Lcom/antivirus/AVService;->a(Landroid/content/Context;IILandroid/os/Bundle;)V

    iget-object v0, p0, Lcom/antivirus/ui/settings/a/c;->b:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    new-instance v1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/antivirus/ui/settings/a/c;->b:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-static {}, Lcom/antivirus/ui/main/AntivirusMainScreen;->a()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v0, 0x400

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/antivirus/ui/settings/a/c;->b:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method
