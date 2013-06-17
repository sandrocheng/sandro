.class Lcom/antivirus/ui/callmessagefilter/fragment/aa;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/antivirus/ui/callmessagefilter/fragment/v;


# direct methods
.method constructor <init>(Lcom/antivirus/ui/callmessagefilter/fragment/v;)V
    .locals 0

    iput-object p1, p0, Lcom/antivirus/ui/callmessagefilter/fragment/aa;->a:Lcom/antivirus/ui/callmessagefilter/fragment/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
