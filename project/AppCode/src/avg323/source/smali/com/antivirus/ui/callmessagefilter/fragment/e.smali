.class Lcom/antivirus/ui/callmessagefilter/fragment/e;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Landroid/widget/CheckBox;

.field final synthetic b:Landroid/support/v4/app/i;

.field final synthetic c:Lcom/antivirus/ui/callmessagefilter/d;

.field final synthetic d:Lcom/antivirus/ui/callmessagefilter/fragment/a;


# direct methods
.method constructor <init>(Lcom/antivirus/ui/callmessagefilter/fragment/a;Landroid/widget/CheckBox;Landroid/support/v4/app/i;Lcom/antivirus/ui/callmessagefilter/d;)V
    .locals 0

    iput-object p1, p0, Lcom/antivirus/ui/callmessagefilter/fragment/e;->d:Lcom/antivirus/ui/callmessagefilter/fragment/a;

    iput-object p2, p0, Lcom/antivirus/ui/callmessagefilter/fragment/e;->a:Landroid/widget/CheckBox;

    iput-object p3, p0, Lcom/antivirus/ui/callmessagefilter/fragment/e;->b:Landroid/support/v4/app/i;

    iput-object p4, p0, Lcom/antivirus/ui/callmessagefilter/fragment/e;->c:Lcom/antivirus/ui/callmessagefilter/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/antivirus/ui/callmessagefilter/fragment/e;->a:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/antivirus/c;->w()V

    :cond_0
    iget-object v0, p0, Lcom/antivirus/ui/callmessagefilter/fragment/e;->d:Lcom/antivirus/ui/callmessagefilter/fragment/a;

    iget-object v1, p0, Lcom/antivirus/ui/callmessagefilter/fragment/e;->b:Landroid/support/v4/app/i;

    iget-object v2, p0, Lcom/antivirus/ui/callmessagefilter/fragment/e;->c:Lcom/antivirus/ui/callmessagefilter/d;

    invoke-virtual {v0, v1, v2}, Lcom/antivirus/ui/callmessagefilter/fragment/a;->a(Landroid/content/Context;Lcom/antivirus/ui/callmessagefilter/d;)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
