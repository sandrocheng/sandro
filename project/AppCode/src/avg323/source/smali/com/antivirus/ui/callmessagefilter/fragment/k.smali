.class Lcom/antivirus/ui/callmessagefilter/fragment/k;
.super Landroid/database/ContentObserver;


# instance fields
.field final synthetic a:Lcom/antivirus/ui/callmessagefilter/fragment/g;


# direct methods
.method public constructor <init>(Lcom/antivirus/ui/callmessagefilter/fragment/g;)V
    .locals 1

    iput-object p1, p0, Lcom/antivirus/ui/callmessagefilter/fragment/k;->a:Lcom/antivirus/ui/callmessagefilter/fragment/g;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    new-instance v0, Lcom/antivirus/ui/callmessagefilter/fragment/l;

    invoke-direct {v0, p0}, Lcom/antivirus/ui/callmessagefilter/fragment/l;-><init>(Lcom/antivirus/ui/callmessagefilter/fragment/k;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
