.class Lcom/antivirus/ui/callmessagefilter/g;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/antivirus/ui/callmessagefilter/fragment/CallMessageTabFragment;

.field final synthetic b:Lcom/antivirus/ui/callmessagefilter/CallMessageFilterActivity;


# direct methods
.method constructor <init>(Lcom/antivirus/ui/callmessagefilter/CallMessageFilterActivity;Lcom/antivirus/ui/callmessagefilter/fragment/CallMessageTabFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/antivirus/ui/callmessagefilter/g;->b:Lcom/antivirus/ui/callmessagefilter/CallMessageFilterActivity;

    iput-object p2, p0, Lcom/antivirus/ui/callmessagefilter/g;->a:Lcom/antivirus/ui/callmessagefilter/fragment/CallMessageTabFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/antivirus/ui/callmessagefilter/g;->a:Lcom/antivirus/ui/callmessagefilter/fragment/CallMessageTabFragment;

    invoke-virtual {v0, p2}, Lcom/antivirus/ui/callmessagefilter/fragment/CallMessageTabFragment;->b(I)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
