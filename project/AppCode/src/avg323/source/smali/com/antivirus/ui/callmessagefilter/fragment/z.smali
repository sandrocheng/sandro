.class Lcom/antivirus/ui/callmessagefilter/fragment/z;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Landroid/widget/CheckBox;

.field final synthetic b:Lcom/antivirus/ui/callmessagefilter/b/b;

.field final synthetic c:Lcom/antivirus/ui/callmessagefilter/fragment/v;


# direct methods
.method constructor <init>(Lcom/antivirus/ui/callmessagefilter/fragment/v;Landroid/widget/CheckBox;Lcom/antivirus/ui/callmessagefilter/b/b;)V
    .locals 0

    iput-object p1, p0, Lcom/antivirus/ui/callmessagefilter/fragment/z;->c:Lcom/antivirus/ui/callmessagefilter/fragment/v;

    iput-object p2, p0, Lcom/antivirus/ui/callmessagefilter/fragment/z;->a:Landroid/widget/CheckBox;

    iput-object p3, p0, Lcom/antivirus/ui/callmessagefilter/fragment/z;->b:Lcom/antivirus/ui/callmessagefilter/b/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/antivirus/ui/callmessagefilter/fragment/z;->a:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iget-object v1, p0, Lcom/antivirus/ui/callmessagefilter/fragment/z;->b:Lcom/antivirus/ui/callmessagefilter/b/b;

    sget-object v2, Lcom/antivirus/ui/callmessagefilter/b/d;->d:Lcom/antivirus/ui/callmessagefilter/b/d;

    invoke-virtual {v1, v2}, Lcom/antivirus/ui/callmessagefilter/b/b;->a(Lcom/antivirus/ui/callmessagefilter/x;)V

    iget-object v1, p0, Lcom/antivirus/ui/callmessagefilter/fragment/z;->c:Lcom/antivirus/ui/callmessagefilter/fragment/v;

    iget-object v2, p0, Lcom/antivirus/ui/callmessagefilter/fragment/z;->b:Lcom/antivirus/ui/callmessagefilter/b/b;

    invoke-static {v1, v2, v0}, Lcom/antivirus/ui/callmessagefilter/fragment/v;->a(Lcom/antivirus/ui/callmessagefilter/fragment/v;Lcom/antivirus/ui/callmessagefilter/b/b;Z)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
