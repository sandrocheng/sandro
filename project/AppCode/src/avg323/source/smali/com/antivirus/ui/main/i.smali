.class Lcom/antivirus/ui/main/i;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/antivirus/ui/main/c;


# direct methods
.method constructor <init>(Lcom/antivirus/ui/main/c;)V
    .locals 0

    iput-object p1, p0, Lcom/antivirus/ui/main/i;->a:Lcom/antivirus/ui/main/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    iget-object v0, p0, Lcom/antivirus/ui/main/i;->a:Lcom/antivirus/ui/main/c;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/antivirus/ui/main/i;->a:Lcom/antivirus/ui/main/c;

    invoke-static {v2}, Lcom/antivirus/ui/main/c;->n(Lcom/antivirus/ui/main/c;)Lcom/avg/ui/general/a/a;

    move-result-object v2

    const-class v3, Lcom/antivirus/ui/performance/AvPerformanceActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/antivirus/ui/main/c;->a(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/antivirus/ui/main/i;->a:Lcom/antivirus/ui/main/c;

    invoke-static {v0}, Lcom/antivirus/ui/main/c;->o(Lcom/antivirus/ui/main/c;)Lcom/avg/ui/general/a/a;

    move-result-object v0

    const-string v1, "category_app_landing"

    const-string v2, "action_performance"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/avg/toolkit/c/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method
