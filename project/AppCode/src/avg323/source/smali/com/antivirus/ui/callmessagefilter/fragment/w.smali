.class Lcom/antivirus/ui/callmessagefilter/fragment/w;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/antivirus/ui/callmessagefilter/fragment/v;


# direct methods
.method constructor <init>(Lcom/antivirus/ui/callmessagefilter/fragment/v;)V
    .locals 0

    iput-object p1, p0, Lcom/antivirus/ui/callmessagefilter/fragment/w;->a:Lcom/antivirus/ui/callmessagefilter/fragment/v;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    new-instance v0, Lcom/antivirus/ui/callmessagefilter/fragment/x;

    invoke-direct {v0, p0}, Lcom/antivirus/ui/callmessagefilter/fragment/x;-><init>(Lcom/antivirus/ui/callmessagefilter/fragment/w;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
