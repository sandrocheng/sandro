.class Lcom/antivirus/ui/callmessagefilter/fragment/ai;
.super Landroid/database/ContentObserver;


# instance fields
.field final synthetic a:Lcom/antivirus/ui/callmessagefilter/fragment/v;


# direct methods
.method constructor <init>(Lcom/antivirus/ui/callmessagefilter/fragment/v;)V
    .locals 1

    iput-object p1, p0, Lcom/antivirus/ui/callmessagefilter/fragment/ai;->a:Lcom/antivirus/ui/callmessagefilter/fragment/v;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    new-instance v0, Lcom/antivirus/ui/callmessagefilter/fragment/aj;

    invoke-direct {v0, p0}, Lcom/antivirus/ui/callmessagefilter/fragment/aj;-><init>(Lcom/antivirus/ui/callmessagefilter/fragment/ai;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
