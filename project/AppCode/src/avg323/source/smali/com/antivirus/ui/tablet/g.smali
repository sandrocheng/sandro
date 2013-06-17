.class Lcom/antivirus/ui/tablet/g;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/antivirus/ui/tablet/DualPaneActivity;


# direct methods
.method constructor <init>(Lcom/antivirus/ui/tablet/DualPaneActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/antivirus/ui/tablet/g;->a:Lcom/antivirus/ui/tablet/DualPaneActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/antivirus/ui/tablet/g;->a:Lcom/antivirus/ui/tablet/DualPaneActivity;

    invoke-static {v1}, Lcom/antivirus/ui/tablet/DualPaneActivity;->a(Lcom/antivirus/ui/tablet/DualPaneActivity;)Ljava/lang/String;

    move-result-object v1

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/antivirus/ui/tablet/g;->a:Lcom/antivirus/ui/tablet/DualPaneActivity;

    invoke-static {v1}, Lcom/antivirus/ui/tablet/DualPaneActivity;->b(Lcom/antivirus/ui/tablet/DualPaneActivity;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/antivirus/ui/tablet/g;->a:Lcom/antivirus/ui/tablet/DualPaneActivity;

    invoke-static {v1, v0}, Lcom/antivirus/ui/tablet/DualPaneActivity;->a(Lcom/antivirus/ui/tablet/DualPaneActivity;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/antivirus/ui/tablet/g;->a:Lcom/antivirus/ui/tablet/DualPaneActivity;

    invoke-static {v1}, Lcom/antivirus/ui/tablet/DualPaneActivity;->c(Lcom/antivirus/ui/tablet/DualPaneActivity;)Landroid/widget/TabHost;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TabWidget;->setCurrentTab(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "tabClickListener Click Failed. Possible threats: Casting or missing content at view"

    invoke-static {v0}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/String;)V

    goto :goto_0
.end method
