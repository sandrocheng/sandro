.class final Lorg/antivirus/license/qrreader/general/InactivityTimer$PowerStatusReceiver;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic this$0:Lorg/antivirus/license/qrreader/general/InactivityTimer;


# direct methods
.method private constructor <init>(Lorg/antivirus/license/qrreader/general/InactivityTimer;)V
    .locals 0

    iput-object p1, p0, Lorg/antivirus/license/qrreader/general/InactivityTimer$PowerStatusReceiver;->this$0:Lorg/antivirus/license/qrreader/general/InactivityTimer;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/antivirus/license/qrreader/general/InactivityTimer;Lorg/antivirus/license/qrreader/general/InactivityTimer$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/antivirus/license/qrreader/general/InactivityTimer$PowerStatusReceiver;-><init>(Lorg/antivirus/license/qrreader/general/InactivityTimer;)V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string v0, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "plugged"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/antivirus/license/qrreader/general/InactivityTimer$PowerStatusReceiver;->this$0:Lorg/antivirus/license/qrreader/general/InactivityTimer;

    #calls: Lorg/antivirus/license/qrreader/general/InactivityTimer;->cancel()V
    invoke-static {v0}, Lorg/antivirus/license/qrreader/general/InactivityTimer;->access$200(Lorg/antivirus/license/qrreader/general/InactivityTimer;)V

    :cond_0
    return-void
.end method
