.class Lcom/antivirus/ui/callmessagefilter/fragment/t;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/antivirus/ui/callmessagefilter/fragment/s;


# direct methods
.method constructor <init>(Lcom/antivirus/ui/callmessagefilter/fragment/s;)V
    .locals 0

    iput-object p1, p0, Lcom/antivirus/ui/callmessagefilter/fragment/t;->a:Lcom/antivirus/ui/callmessagefilter/fragment/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/antivirus/ui/callmessagefilter/fragment/t;->a:Lcom/antivirus/ui/callmessagefilter/fragment/s;

    iget-object v0, v0, Lcom/antivirus/ui/callmessagefilter/fragment/s;->Z:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/antivirus/ui/callmessagefilter/fragment/t;->a:Lcom/antivirus/ui/callmessagefilter/fragment/s;

    iget-object v1, v1, Lcom/antivirus/ui/callmessagefilter/fragment/s;->Z:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->focusableViewAvailable(Landroid/view/View;)V

    return-void
.end method
