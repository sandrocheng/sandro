.class Lcom/antivirus/ui/callmessagefilter/z;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Landroid/widget/CheckBox;

.field final synthetic b:Lcom/antivirus/ui/callmessagefilter/y;


# direct methods
.method constructor <init>(Lcom/antivirus/ui/callmessagefilter/y;Landroid/widget/CheckBox;)V
    .locals 0

    iput-object p1, p0, Lcom/antivirus/ui/callmessagefilter/z;->b:Lcom/antivirus/ui/callmessagefilter/y;

    iput-object p2, p0, Lcom/antivirus/ui/callmessagefilter/z;->a:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/antivirus/ui/callmessagefilter/z;->a:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/antivirus/ui/callmessagefilter/z;->b:Lcom/antivirus/ui/callmessagefilter/y;

    invoke-virtual {v0}, Lcom/antivirus/ui/callmessagefilter/y;->b()V

    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
